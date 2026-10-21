Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lemon?download=true
inline.NumInlined: 160
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@FindRulePrecedences:bb.a
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !2

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %.loopexit.sink.split, label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %i.n, i64 32
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.e, %bb.f
  %.sink = phi ptr [ %i.n, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %.sink, ptr %i.b, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.sink.split, %.preheader, %bb.f
  %i.ae = phi ptr [ null, %.preheader ], [ null, %bb.f ], [ %.sink, %.loopexit.sink.split ], [ null, %bb.d ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next37, %i.i
  br i1 %i.af, label %bb.b, label %.critedge, !llvm.loop !3

.critedge:                                        ; preds = %.loopexit, %bb.b, %.preheader24, %.lr.ph33
  %i.ag = getelementptr i8, ptr %.02331, i64 128
  %.023 = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not = icmp eq ptr %.023, null
  br i1 %.not, label %._crit_edge, label %.lr.ph33, !llvm.loop !4

._crit_edge:                                      ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @FindFirstSets(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 48
  store i32 0, ptr %i.h, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 8              ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.b ]
  %i.m = getelementptr i8, ptr %0, i64 44
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp slt i32 %i.n, %i.l
  br i1 %i.o, label %.lr.ph84, label %.preheader74

.lr.ph84:                                         ; preds = %._crit_edge
  %i.p = load i32, ptr @size, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %0, i64 72
  %i.s = sext i32 %i.n to i64
  br label %bb.c

.preheader74:                                     ; preds = %SetNew.exit, %._crit_edge
  %i.t = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.split.us, label %.lr.ph97.outer

bb.c:                                             ; preds = %.lr.ph84, %SetNew.exit
  %indvars.iv128 = phi i64 [ %i.s, %.lr.ph84 ], [ %indvars.iv.next129, %SetNew.exit ] ; 2 uses
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.q, i64 noundef 1) #40 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %SetNew.exit

bb.d:                                             ; preds = %bb.c
  tail call void @memory_error()
  unreachable

SetNew.exit:                                      ; preds = %bb.c
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %indvars.iv128
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 40
  store ptr %i.w, ptr %i.ab, align 8
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.ac = load i32, ptr %i.a, align 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next129, %i.ad
  br i1 %i.ae, label %bb.c, label %.preheader74, !llvm.loop !57

.preheader74.splitthread-pre-split:               ; preds = %.thread, %._crit_edge98
  %.05592.pr = load ptr, ptr %i.t, align 8        ; 2 uses
  %.not93 = icmp eq ptr %.05592.pr, null
  br i1 %.not93, label %.preheader72, label %.lr.ph97.outer.backedge

.lr.ph97.outer:                                   ; preds = %.preheader74, %.lr.ph97.outer.backedge
  %.05595.ph = phi ptr [ %.05595.ph.be, %.lr.ph97.outer.backedge ], [ %i.u, %.preheader74 ]
  %i.af = phi i1 [ %.be, %.lr.ph97.outer.backedge ], [ true, %.preheader74 ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.outer, %bb.g
  %.05595 = phi ptr [ %.055, %bb.g ], [ %.05595.ph, %.lr.ph97.outer ] ; 5 uses
  %i.ag = load ptr, ptr %.05595, align 8          ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  %i.ai = load i32, ptr %i.ah, align 8
  %.not69 = icmp eq i32 %i.ai, 0
  br i1 %.not69, label %.preheader73, label %bb.g

.preheader73:                                     ; preds = %.lr.ph97
  %i.aj = getelementptr i8, ptr %.05595, i64 24
  %i.ak = load i32, ptr %i.aj, align 8            ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader73
  %i.am = getelementptr i8, ptr %.05595, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %wide.trip.count = zext nneg i32 %i.ak to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph86, %bb.f
  %indvars.iv131 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next132, %bb.f ] ; 3 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv131
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 48
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %._crit_edge87.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.e, !llvm.loop !58

._crit_edge87.loopexit:                           ; preds = %bb.e
  %i.at = trunc nuw nsw i64 %indvars.iv131 to i32
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit, %.preheader73
  %.260.lcssa = phi i32 [ 0, %.preheader73 ], [ %i.at, %._crit_edge87.loopexit ]
  %i.au = icmp eq i32 %.260.lcssa, %i.ak
  br i1 %i.au, label %.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge87, %.lr.ph97
  %i.av = getelementptr i8, ptr %.05595, i64 128
  %.055 = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not = icmp eq ptr %.055, null
  br i1 %.not, label %._crit_edge98, label %.lr.ph97, !llvm.loop !59

.thread:                                          ; preds = %._crit_edge87, %bb.f
  %i.aw = getelementptr i8, ptr %i.ag, i64 48
  store i32 1, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %.05595, i64 128
  %.055150 = load ptr, ptr %i.ax, align 8         ; 2 uses
  %.not151 = icmp eq ptr %.055150, null
  br i1 %.not151, label %.preheader74.splitthread-pre-split, label %.lr.ph97.outer.backedge

.lr.ph97.outer.backedge:                          ; preds = %.thread, %.preheader74.splitthread-pre-split
  %.05595.ph.be = phi ptr [ %.055150, %.thread ], [ %.05592.pr, %.preheader74.splitthread-pre-split ]
  %.be = phi i1 [ false, %.thread ], [ true, %.preheader74.splitthread-pre-split ]
  br label %.lr.ph97.outer, !llvm.loop !59

._crit_edge98:                                    ; preds = %bb.g
  br i1 %i.af, label %.preheader72, label %.preheader74.splitthread-pre-split, !llvm.loop !60

.preheader72:                                     ; preds = %.preheader74.splitthread-pre-split, %._crit_edge98
  %.pre = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ay = icmp eq ptr %.pre, null
  br i1 %i.ay, label %.split.us, label %.lr.ph117

.preheader72.split120thread-pre-split:            ; preds = %._crit_edge118
  %.156112.pr = load ptr, ptr %i.t, align 8       ; 2 uses
  %.not67113 = icmp eq ptr %.156112.pr, null
  br i1 %.not67113, label %.split.us, label %.lr.ph117.backedge

.lr.ph117:                                        ; preds = %.preheader72, %.lr.ph117.backedge
  %.156115 = phi ptr [ %.156115.be, %.lr.ph117.backedge ], [ %.pre, %.preheader72 ] ; 4 uses
  %.2114 = phi i32 [ %.2114.be, %.lr.ph117.backedge ], [ 0, %.preheader72 ] ; 2 uses
  %i.az = load ptr, ptr %.156115, align 8         ; 3 uses
  %i.ba = getelementptr i8, ptr %.156115, i64 24  ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph103, label %.loopexit

.lr.ph103:                                        ; preds = %.lr.ph117
  %i.bd = getelementptr i8, ptr %.156115, i64 32
  %i.be = getelementptr i8, ptr %i.az, i64 40     ; 3 uses
  %i.bf = getelementptr i8, ptr %i.az, i64 48
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph103, %bb.u
  %i.bg = phi i32 [ %i.bb, %.lr.ph103 ], [ %i.dq, %bb.u ]
  %indvars.iv134 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next135, %bb.u ] ; 2 uses
  %.3101 = phi i32 [ %.2114, %.lr.ph103 ], [ %.5, %bb.u ] ; 6 uses
  %1 = load ptr, ptr %i.bd, align 8
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %indvars.iv134
  %i.bi = load ptr, ptr %i.bh, align 8            ; 7 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 12
  %i.bk = load i32, ptr %i.bj, align 4
  switch i32 %i.bk, label %bb.k [
    i32 0, label %bb.i
    i32 2, label %.preheader
  ]

.preheader:                                       ; preds = %bb.h
  %i.bl = getelementptr i8, ptr %i.bi, i64 88     ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %.preheader
  %i.bo = getelementptr i8, ptr %i.bi, i64 96
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = load ptr, ptr %i.be, align 8
  %i.bq = getelementptr i8, ptr %i.bi, i64 8
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr i8, ptr %i.bp, i64 %i.bs  ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1
  store i8 1, ptr %i.bt, align 1
  %.not.i = icmp eq i8 %i.bu, 0
  %i.bv = zext i1 %.not.i to i32
  %i.bw = add i32 %.3101, %i.bv
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph110, %bb.j
  %indvars.iv137 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next138, %bb.j ] ; 2 uses
  %.4109 = phi i32 [ %.3101, %.lr.ph110 ], [ %i.ch, %bb.j ]
  %i.bx = load ptr, ptr %i.be, align 8
  %i.by = load ptr, ptr %i.bo, align 8
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %indvars.iv137
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1
  store i8 1, ptr %i.ce, align 1
  %.not.i70 = icmp eq i8 %i.cf, 0
  %i.cg = zext i1 %.not.i70 to i32
  %i.ch = add i32 %.4109, %i.cg                   ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.ci = load i32, ptr %i.bl, align 8
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.next138, %i.cj
  br i1 %i.ck, label %bb.j, label %.loopexit, !llvm.loop !61

bb.k:                                             ; preds = %bb.h
  %i.cl = icmp eq ptr %i.az, %i.bi
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = load i32, ptr %i.bf, align 8
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.loopexit, label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.co = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.cp = getelementptr i8, ptr %i.bi, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %i.cr = load i32, ptr @size, align 4            ; 4 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.preheader.i, label %SetUnion.exit

.lr.ph.preheader.i:                               ; preds = %bb.m
  %wide.trip.count.i = zext nneg i32 %i.cr to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ct = icmp eq i32 %i.cr, 1
  br i1 %i.ct, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.r ] ; 4 uses
  %.010.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.r ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.r ]
  %i.cu = getelementptr i8, ptr %i.cq, i64 %indvars.iv.i
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.1, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.cx = getelementptr i8, ptr %i.co, i64 %indvars.iv.i ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.o, label %.lr.ph.i.1

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.cx, align 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.o, %bb.n, %.lr.ph.i
  %.1.i = phi i32 [ %.010.i, %.lr.ph.i ], [ 1, %bb.o ], [ %.010.i, %bb.n ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cq, i64 %indvars.iv.next.i
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.1
  %i.dd = getelementptr i8, ptr %i.co, i64 %indvars.iv.next.i ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.dd, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph.i.1
  %.1.i.1 = phi i32 [ %.1.i, %.lr.ph.i.1 ], [ 1, %bb.q ], [ %.1.i, %bb.p ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %SetUnion.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

SetUnion.exit.loopexit.unr-lcssa:                 ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %SetUnion.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %SetUnion.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %SetUnion.exit.loopexit.unr-lcssa ] ; 2 uses
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i.1, %SetUnion.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod210 = trunc i32 %i.cr to i1
  tail call void @llvm.assume(i1 %lcmp.mod210)
  %i.dg = getelementptr i8, ptr %i.cq, i64 %indvars.iv.i.epil.init
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %SetUnion.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.dj = getelementptr i8, ptr %i.co, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.t, label %SetUnion.exit

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.dj, align 1
  br label %SetUnion.exit

SetUnion.exit:                                    ; preds = %SetUnion.exit.loopexit.unr-lcssa, %bb.t, %bb.s, %.lr.ph.i.epil.preheader, %bb.m
  %.0.lcssa.i = phi i32 [ 0, %bb.m ], [ %.1.i.1, %SetUnion.exit.loopexit.unr-lcssa ], [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ], [ 1, %bb.t ], [ %.010.i.epil.init, %bb.s ]
  %i.dm = add i32 %.0.lcssa.i, %.3101             ; 2 uses
  %i.dn = getelementptr i8, ptr %i.bi, i64 48
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %.loopexit, label %SetUnion.exit._crit_edge

SetUnion.exit._crit_edge:                         ; preds = %SetUnion.exit
  %.pre140.a = load i32, ptr %i.ba, align 8
  br label %bb.u

bb.u:                                             ; preds = %SetUnion.exit._crit_edge, %bb.l
  %i.dq = phi i32 [ %i.bg, %bb.l ], [ %.pre140.a, %SetUnion.exit._crit_edge ] ; 2 uses
  %.5 = phi i32 [ %.3101, %bb.l ], [ %i.dm, %SetUnion.exit._crit_edge ] ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next135, %i.dr
  br i1 %i.ds, label %bb.h, label %.loopexit, !llvm.loop !62

.loopexit:                                        ; preds = %SetUnion.exit, %bb.l, %bb.u, %bb.j, %.lr.ph117, %.preheader, %bb.i
  %.6 = phi i32 [ %i.bw, %bb.i ], [ %i.ch, %bb.j ], [ %.3101, %.preheader ], [ %.2114, %.lr.ph117 ], [ %i.dm, %SetUnion.exit ], [ %.3101, %bb.l ], [ %.5, %bb.u ] ; 2 uses
  %i.dt = getelementptr i8, ptr %.156115, i64 128
  %.156 = load ptr, ptr %i.dt, align 8            ; 2 uses
  %.not67 = icmp eq ptr %.156, null
  br i1 %.not67, label %._crit_edge118, label %.lr.ph117.backedge

.lr.ph117.backedge:                               ; preds = %.loopexit, %.preheader72.split120thread-pre-split
  %.156115.be = phi ptr [ %.156, %.loopexit ], [ %.156112.pr, %.preheader72.split120thread-pre-split ]
  %.2114.be = phi i32 [ %.6, %.loopexit ], [ 0, %.preheader72.split120thread-pre-split ]
  br label %.lr.ph117, !llvm.loop !63

._crit_edge118:                                   ; preds = %.loopexit
  %i.du = icmp eq i32 %.6, 0
  br i1 %i.du, label %.split.us, label %.preheader72.split120thread-pre-split, !llvm.loop !64

.split.us:                                        ; preds = %.preheader72.split120thread-pre-split, %._crit_edge118, %.preheader74, %.preheader72
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noalias nonnull ptr @SetNew() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @size, align 4
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 1) #40 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @memory_error()
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @SetAdd(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr i8, ptr %0, i64 %i.a       ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  store i8 1, ptr %i.b, align 1
  %.not = icmp eq i8 %i.c, 0
  %i.d = zext i1 %.not to i32
  ret i32 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @SetUnion(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr @size, align 4             ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %i.a, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %.010 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.d = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %.lr.ph.1

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.g, align 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b, %bb.c, %.lr.ph
  %.1 = phi i32 [ %.010, %.lr.ph ], [ 1, %bb.c ], [ %.010, %bb.b ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %indvars.iv.next
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.m = getelementptr i8, ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.m, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.1
  %.1.1 = phi i32 [ %.1, %.lr.ph.1 ], [ 1, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.010.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod13 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.p = getelementptr i8, ptr %1, i64 %indvars.iv.epil.init
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  %i.s = getelementptr i8, ptr %0, i64 %indvars.iv.epil.init ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.s, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %bb.g, %.lr.ph.epil.preheader, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.010.epil.init, %.lr.ph.epil.preheader ], [ 1, %bb.h ], [ %.010.epil.init, %bb.g ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @FindStates(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr @current, align 8
  store ptr @current, ptr @currentend, align 8
  store ptr null, ptr @basis, align 8
  store ptr @basis, ptr @basisend, align 8
  tail call void @Configtable_init()
  %i.a = getelementptr i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @x2a, align 8              ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Symbol_find.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.b, align 1               ; 2 uses
  %.not5.i.i = icmp eq i8 %i.e, 0
  br i1 %.not5.i.i, label %strhash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i8 [ %i.k, %.lr.ph.i.i ], [ %i.e, %bb.c ]
  %.07.i.i = phi i32 [ %i.j, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.036.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.b, %bb.c ]
  %i.g = mul i32 %.07.i.i, 13
  %i.h = getelementptr i8, ptr %.036.i.i, i64 1   ; 2 uses
  %i.i = sext i8 %i.f to i32
  %i.j = add i32 %i.g, %i.i                       ; 2 uses
  %i.k = load i8, ptr %i.h, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %strhash.exit.i, label %.lr.ph.i.i, !llvm.loop !6

strhash.exit.i:                                   ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.j, %.lr.ph.i.i ]
  %i.l = load i32, ptr %i.c, align 8
  %i.m = add i32 %i.l, -1
  %i.n = and i32 %i.m, %.0.lcssa.i.i
  %i.o = getelementptr i8, ptr %i.c, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %.010.i = load ptr, ptr %i.r, align 8           ; 2 uses
  %.not11.i = icmp eq ptr %.010.i, null
  br i1 %.not11.i, label %Symbol_find.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %strhash.exit.i, %bb.d
  %.012.i = phi ptr [ %.0.i, %bb.d ], [ %.010.i, %strhash.exit.i ] ; 3 uses
  %i.s = getelementptr i8, ptr %.012.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @strcmp(ptr noundef %i.t, ptr noundef nonnull readonly dereferenceable(1) %i.b) #44
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %Symbol_find.exit, label %bb.d
end_hunk_0
begin_hunk_1_@State_find:bb.a
  %i.s = getelementptr i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext i32 %i.r to i64
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.u
  %.01434 = load ptr, ptr %i.v, align 8           ; 2 uses
  %.not1535 = icmp eq ptr %.01434, null
  br i1 %.not1535, label %.critedge, label %.lr.ph.split

.critedge.thread.i.us:                            ; preds = %statehash.exit, %statecmp.exit.thread.us
  %.016.us = phi ptr [ %.0.us, %statecmp.exit.thread.us ], [ %.014, %statehash.exit ] ; 3 uses
  %i.w = getelementptr i8, ptr %.016.us, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %.not18 = icmp eq ptr %i.x, null
  br i1 %.not18, label %.split.us, label %statecmp.exit.thread.us

statecmp.exit.thread.us:                          ; preds = %.critedge.thread.i.us
  %i.y = getelementptr i8, ptr %.016.us, i64 16
  %.0.us = load ptr, ptr %i.y, align 8            ; 2 uses
  %.not.us = icmp eq ptr %.0.us, null
  br i1 %.not.us, label %.critedge, label %.critedge.thread.i.us, !llvm.loop !69

.lr.ph.split:                                     ; preds = %statehash.exit.thread, %statecmp.exit.thread
  %.016 = phi ptr [ %.0, %statecmp.exit.thread ], [ %.01434, %statehash.exit.thread ] ; 3 uses
  %i.z = getelementptr i8, ptr %.016, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not19 = icmp eq ptr %i.aa, null
  br i1 %.not19, label %statecmp.exit.thread, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.split, %bb.d
  %.01624.i = phi ptr [ %i.ar, %bb.d ], [ %0, %.lr.ph.split ] ; 3 uses
  %.01723.i = phi ptr [ %i.ap, %bb.d ], [ %i.aa, %.lr.ph.split ] ; 3 uses
  %i.ab = load ptr, ptr %.01723.i, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 88
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %.01624.i, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 88
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = sub i32 %i.ad, %i.ag                    ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i9
  %i.aj = getelementptr i8, ptr %.01723.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %.01624.i, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = sub i32 %i.ak, %i.am
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i9
  %.1.i = phi i32 [ %i.an, %bb.c ], [ %i.ah, %.lr.ph.i9 ]
  %.1.fr.i = freeze i32 %.1.i
  %i.ao = getelementptr i8, ptr %.01723.i, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr i8, ptr %.01624.i, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp eq i32 %.1.fr.i, 0                 ; 2 uses
  %i.at = icmp ne ptr %i.ap, null                 ; 2 uses
  %or.cond.i = select i1 %i.as, i1 %i.at, i1 false
  %i.au = icmp ne ptr %i.ar, null                 ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 %i.au, i1 false
  br i1 %or.cond3.i, label %.lr.ph.i9, label %.critedge.i, !llvm.loop !17

.critedge.i:                                      ; preds = %bb.d
  %not. = xor i1 %i.as, true
  %i.av = select i1 %not., i1 true, i1 %i.au
  %i.aw = select i1 %i.av, i1 true, i1 %i.at
  br i1 %i.aw, label %statecmp.exit.thread, label %.split.us

statecmp.exit.thread:                             ; preds = %.lr.ph.split, %.critedge.i
  %i.ax = getelementptr i8, ptr %.016, i64 16
  %.0 = load ptr, ptr %i.ax, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !69

.split.us:                                        ; preds = %.critedge.i, %.critedge.thread.i.us
  %.us-phi = phi ptr [ %.016.us, %.critedge.thread.i.us ], [ %.016, %.critedge.i ]
  %i.ay = load ptr, ptr %.us-phi, align 8
  br label %.critedge

.critedge:                                        ; preds = %statecmp.exit.thread, %statecmp.exit.thread.us, %statehash.exit.thread, %statehash.exit, %.split.us, %bb.a
  %.08 = phi ptr [ null, %bb.a ], [ %i.ay, %.split.us ], [ null, %statehash.exit ], [ null, %statehash.exit.thread ], [ null, %statecmp.exit.thread.us ], [ null, %statecmp.exit.thread ]
  ret ptr %.08
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @Plink_copy(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi ptr [ %.08, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.08 = phi ptr [ %i.c, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.b = getelementptr i8, ptr %.08, i64 8        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  store ptr %i.a, ptr %i.b, align 8
  store ptr %.08, ptr %0, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @Plink_delete(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %.not6 = icmp eq ptr %0, null
  br i1 %.not6, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %plink_freelist.promoted = load ptr, ptr @plink_freelist, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.08 = phi ptr [ %i.b, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.057 = phi ptr [ %.08, %.lr.ph ], [ %plink_freelist.promoted, %.lr.ph.preheader ]
  %i.a = getelementptr i8, ptr %.08, i64 8        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr %.057, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %.08, ptr @plink_freelist, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @Configlist_return() local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @current, align 8
  store ptr null, ptr @current, align 8
  store ptr null, ptr @currentend, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) uwtable
define hidden void @Configlist_eat(ptr noundef %0) local_unnamed_addr #13 {
bb.a:
  %.not9 = icmp eq ptr %0, null
  br i1 %.not9, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %freelist.promoted = load ptr, ptr @freelist, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.011 = phi ptr [ %i.b, %bb.c ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.0810 = phi ptr [ %.011, %bb.c ], [ %freelist.promoted, %.lr.ph.preheader ]
  %i.a = getelementptr i8, ptr %.011, i64 56      ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %.011, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.d) #42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  store ptr %.0810, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.c
  store ptr %.011, ptr @freelist, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @Configlist_closure(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.04469 = load ptr, ptr @current, align 8       ; 2 uses
  %.not70 = icmp eq ptr %.04469, null
  br i1 %.not70, label %._crit_edge, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = getelementptr i8, ptr %0, i64 224
  %i.c = getelementptr i8, ptr %0, i64 80         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph72, %.loopexit57
  %.04471 = phi ptr [ %.04469, %.lr.ph72 ], [ %.044, %.loopexit57 ] ; 4 uses
  %i.d = load ptr, ptr %.04471, align 8           ; 3 uses
  %i.e = getelementptr i8, ptr %.04471, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 3 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not48 = icmp slt i32 %i.f, %i.h
  br i1 %.not48, label %bb.c, label %.loopexit57

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.d, label %.loopexit57

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %.lr.ph68

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8
  %.not49 = icmp eq ptr %i.m, %i.t
  br i1 %.not49, label %.loopexit57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = getelementptr i8, ptr %i.d, i64 48
  %i.w = load i32, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.m, align 8
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.u, i32 noundef %i.w, ptr noundef @.str.7, ptr noundef %i.x)
  %i.y = load i32, ptr %i.c, align 8
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.c, align 8
  %.04365.pre = load ptr, ptr %i.q, align 8       ; 2 uses
  %.not5066 = icmp eq ptr %.04365.pre, null
  br i1 %.not5066, label %.loopexit57, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.d, %bb.f
  %.04365100 = phi ptr [ %.04365.pre, %bb.f ], [ %i.r, %bb.d ]
  %i.aa = getelementptr i8, ptr %.04471, i64 24   ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph68, %bb.ah
  %.04367 = phi ptr [ %.04365100, %.lr.ph68 ], [ %.043, %bb.ah ] ; 3 uses
  %i.ab = load ptr, ptr @x4a, align 8             ; 10 uses
  %i.ac = icmp eq ptr %i.ab, null                 ; 2 uses
  br i1 %i.ac, label %Configtable_find.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %.04367, i64 88
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = mul i32 %i.ae, 37
  %i.ag = load i32, ptr %i.ab, align 8
  %i.ah = add i32 %i.ag, -1
  %i.ai = and i32 %i.ah, %i.af
  %i.aj = getelementptr i8, ptr %i.ab, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %.010.i.i = load ptr, ptr %i.am, align 8        ; 2 uses
  %.not11.i.i = icmp eq ptr %.010.i.i, null
  br i1 %.not11.i.i, label %Configtable_find.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %Configcmp.exit.thread.i.i
  %.012.i.i = phi ptr [ %.0.i.i, %Configcmp.exit.thread.i.i ], [ %.010.i.i, %bb.h ] ; 2 uses
  %i.an = load ptr, ptr %.012.i.i, align 8        ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 88
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.aq, %i.ae
  br i1 %i.ar, label %Configcmp.exit.i.i, label %Configcmp.exit.thread.i.i

Configcmp.exit.i.i:                               ; preds = %.lr.ph.i.i
  %i.as = getelementptr i8, ptr %i.an, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %Configtable_find.exit.i, label %Configcmp.exit.thread.i.i

Configcmp.exit.thread.i.i:                        ; preds = %Configcmp.exit.i.i, %.lr.ph.i.i
  %i.av = getelementptr i8, ptr %.012.i.i, i64 8
  %.0.i.i = load ptr, ptr %i.av, align 8          ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %Configtable_find.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !8

Configtable_find.exit.i:                          ; preds = %Configcmp.exit.i.i
  %i.aw = icmp eq ptr %i.an, null
  br i1 %i.aw, label %Configtable_find.exit.thread.i, label %Configlist_add.exit

Configtable_find.exit.thread.i:                   ; preds = %Configcmp.exit.thread.i.i, %Configtable_find.exit.i, %bb.h, %bb.g
  %i.ax = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #40 ; 11 uses
  store ptr %.04367, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 8      ; 2 uses
  store i32 0, ptr %i.ay, align 8
  %i.az = load i32, ptr @size, align 4
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call noalias ptr @calloc(i64 noundef %i.ba, i64 noundef 1) #40 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.i, label %SetNew.exit.i

bb.i:                                             ; preds = %Configtable_find.exit.thread.i
  tail call void @memory_error()
  unreachable

SetNew.exit.i:                                    ; preds = %Configtable_find.exit.thread.i
  %i.bd = getelementptr i8, ptr %i.ax, i64 16
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %i.ax, i64 56
  %i.bf = load ptr, ptr @currentend, align 8
  store ptr %i.ax, ptr %i.bf, align 8
  store ptr %i.be, ptr @currentend, align 8
  br i1 %i.ac, label %Configlist_add.exit, label %bb.j

bb.j:                                             ; preds = %SetNew.exit.i
  %i.bg = load ptr, ptr %i.ax, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 88
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bj = mul i32 %i.bi, 37
  %i.bk = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.bl = add i32 %i.bj, %i.bk                    ; 2 uses
  %i.bm = load i32, ptr %i.ab, align 8            ; 3 uses
  %i.bn = add i32 %i.bm, -1
  %i.bo = and i32 %i.bn, %i.bl
  %i.bp = getelementptr i8, ptr %i.ab, i64 16     ; 6 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = zext i32 %i.bo to i64                   ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.bq, i64 %i.br
  %.05165.i = load ptr, ptr %i.bs, align 8        ; 2 uses
  %.not66.i = icmp eq ptr %.05165.i, null
  br i1 %.not66.i, label %._crit_edge.i, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.j, %Configcmp.exit.thread.i
  %.05167.i = phi ptr [ %.051.i, %Configcmp.exit.thread.i ], [ %.05165.i, %bb.j ] ; 2 uses
  %i.bt = load ptr, ptr %.05167.i, align 8        ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 88
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = icmp eq i32 %i.bw, %i.bi
  br i1 %i.bx, label %Configcmp.exit.i, label %Configcmp.exit.thread.i

Configcmp.exit.i:                                 ; preds = %.lr.ph.i52
  %i.by = getelementptr i8, ptr %i.bt, i64 8
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.bz, %i.bk
  br i1 %i.ca, label %Configlist_add.exit, label %Configcmp.exit.thread.i

Configcmp.exit.thread.i:                          ; preds = %Configcmp.exit.i, %.lr.ph.i52
  %i.cb = getelementptr i8, ptr %.05167.i, i64 8
  %.051.i = load ptr, ptr %i.cb, align 8          ; 2 uses
  %.not.i53 = icmp eq ptr %.051.i, null
  br i1 %.not.i53, label %._crit_edge.i, label %.lr.ph.i52, !llvm.loop !18

._crit_edge.i:                                    ; preds = %Configcmp.exit.thread.i, %bb.j
  %i.cc = getelementptr i8, ptr %i.ab, i64 4      ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 4            ; 3 uses
  %.not60.i = icmp slt i32 %i.cd, %i.bm
  br i1 %.not60.i, label %._crit_edge._crit_edge.i, label %bb.k

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.phi.trans.insert.i = getelementptr i8, ptr %i.ab, i64 8
  %.pre79.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.o

bb.k:                                             ; preds = %._crit_edge.i
  %i.ce = shl i32 %i.bm, 1                        ; 4 uses
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = tail call noalias ptr @calloc(i64 noundef %i.cf, i64 noundef 32) #40 ; 5 uses
  %.not62.i = icmp eq ptr %i.cg, null
  br i1 %.not62.i, label %Configlist_add.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %i.ch = getelementptr [24 x i8], ptr %i.cg, i64 %i.cf ; 2 uses
  %i.ci = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph72.i, label %.preheader.._crit_edge73_crit_edge.i

.preheader.._crit_edge73_crit_edge.i:             ; preds = %.preheader.i
  %.pre88.i = add i32 %i.ce, -1
  br label %._crit_edge73.i

.lr.ph72.i:                                       ; preds = %.preheader.i
  %i.ck = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  %i.cl = add i32 %i.ce, -1                       ; 2 uses
  %.pre76.i = load ptr, ptr %i.ck, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph72.i
  %i.cm = phi i32 [ %i.ci, %.lr.ph72.i ], [ %i.de, %bb.n ]
  %i.cn = phi ptr [ %.pre76.i, %.lr.ph72.i ], [ %i.dg, %bb.n ] ; 2 uses
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph72.i ], [ %indvars.iv.next.i55, %bb.n ] ; 3 uses
  %i.co = getelementptr [24 x i8], ptr %i.cn, i64 %indvars.iv.i54 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 88
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = mul i32 %i.cs, 37
  %i.cu = getelementptr i8, ptr %i.cp, i64 8
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = add i32 %i.ct, %i.cv
  %i.cx = and i32 %i.cw, %i.cl
  %i.cy = getelementptr [24 x i8], ptr %i.cg, i64 %indvars.iv.i54 ; 5 uses
  %i.cz = zext i32 %i.cx to i64
  %i.da = getelementptr [8 x i8], ptr %i.ch, i64 %i.cz ; 4 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not61.i = icmp eq ptr %i.db, null
  br i1 %.not61.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr i8, ptr %i.cy, i64 8
  %i.dd = getelementptr i8, ptr %i.db, i64 16
  store ptr %i.dc, ptr %i.dd, align 8
  %.pre.i = load ptr, ptr %i.ck, align 8
  %.pre77.i = load ptr, ptr %i.da, align 8
  %.pre78.i = load i32, ptr %i.cc, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.de = phi i32 [ %.pre78.i, %bb.m ], [ %i.cm, %bb.l ] ; 2 uses
  %i.df = phi ptr [ %.pre77.i, %bb.m ], [ null, %bb.l ]
  %i.dg = phi ptr [ %.pre.i, %bb.m ], [ %i.cn, %bb.l ]
  %i.dh = getelementptr i8, ptr %i.cy, i64 8
  store ptr %i.df, ptr %i.dh, align 8
  %i.di = load ptr, ptr %i.co, align 8
  store ptr %i.di, ptr %i.cy, align 8
  %i.dj = getelementptr i8, ptr %i.cy, i64 16
  store ptr %i.da, ptr %i.dj, align 8
  store ptr %i.cy, ptr %i.da, align 8
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.dk = sext i32 %i.de to i64
  %i.dl = icmp slt i64 %indvars.iv.next.i55, %i.dk
  br i1 %i.dl, label %bb.l, label %._crit_edge73.i, !llvm.loop !19

._crit_edge73.i:                                  ; preds = %bb.n, %.preheader.._crit_edge73_crit_edge.i
  %.pre83.pre-phi.i = phi i32 [ %.pre88.i, %.preheader.._crit_edge73_crit_edge.i ], [ %i.cl, %bb.n ]
  store i32 %i.ce, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx.i, align 8
  store ptr %i.ch, ptr %i.bp, align 8
  %.pre84.i = and i32 %.pre83.pre-phi.i, %i.bl
  %.pre86.i = zext i32 %.pre84.i to i64
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge73.i, %._crit_edge._crit_edge.i
  %.pre-phi87.i = phi i64 [ %i.br, %._crit_edge._crit_edge.i ], [ %.pre86.i, %._crit_edge73.i ] ; 4 uses
  %i.dm = phi ptr [ %.pre79.i, %._crit_edge._crit_edge.i ], [ %i.cg, %._crit_edge73.i ]
  %i.dn = add i32 %i.cd, 1
  store i32 %i.dn, ptr %i.cc, align 4
  %i.do = sext i32 %i.cd to i64
  %i.dp = getelementptr [24 x i8], ptr %i.dm, i64 %i.do ; 5 uses
  store ptr %i.ax, ptr %i.dp, align 8
  %i.dq = load ptr, ptr %i.bp, align 8
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %.pre-phi87.i
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not63.i = icmp eq ptr %i.ds, null
  br i1 %.not63.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = getelementptr i8, ptr %i.dp, i64 8
  %i.du = getelementptr i8, ptr %i.ds, i64 16
  store ptr %i.dt, ptr %i.du, align 8
  %.pre80.i = load ptr, ptr %i.bp, align 8
  %.phi.trans.insert81.i = getelementptr [8 x i8], ptr %.pre80.i, i64 %.pre-phi87.i
  %.pre82.i = load ptr, ptr %.phi.trans.insert81.i, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dv = phi ptr [ %.pre82.i, %bb.p ], [ null, %bb.o ]
  %i.dw = getelementptr i8, ptr %i.dp, i64 8
  store ptr %i.dv, ptr %i.dw, align 8
  %i.dx = load ptr, ptr %i.bp, align 8
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %.pre-phi87.i
  store ptr %i.dp, ptr %i.dy, align 8
  %i.dz = load ptr, ptr %i.bp, align 8
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.pre-phi87.i
  %i.eb = getelementptr i8, ptr %i.dp, i64 16
  store ptr %i.ea, ptr %i.eb, align 8
  br label %Configlist_add.exit

Configlist_add.exit:                              ; preds = %Configcmp.exit.i, %bb.q, %bb.k, %SetNew.exit.i, %Configtable_find.exit.i
  %.0.i = phi ptr [ %i.an, %Configtable_find.exit.i ], [ %i.ax, %SetNew.exit.i ], [ %i.ax, %bb.q ], [ %i.ax, %bb.k ], [ %i.ax, %Configcmp.exit.i ] ; 2 uses
  %i.ec = getelementptr i8, ptr %.0.i, i64 16     ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %SetUnion.exit, %Configlist_add.exit
  %.042.in.a = phi i32 [ %i.f, %Configlist_add.exit ], [ %.042, %SetUnion.exit ]
  %.042 = add i32 %.042.in.a, 1                   ; 4 uses
  %1 = load i32, ptr %i.g, align 8
  %i.ed = icmp slt i32 %.042, %1
  br i1 %i.ed, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.ee = load ptr, ptr %i.i, align 8
  %i.ef = sext i32 %.042 to i64
  %i.eg = getelementptr [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8            ; 6 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 12
  %i.ej = load i32, ptr %i.ei, align 4
  switch i32 %i.ej, label %bb.v [
    i32 0, label %bb.t
    i32 2, label %.preheader
  ]

.preheader:                                       ; preds = %bb.s
  %i.ek = getelementptr i8, ptr %i.eh, i64 88     ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.en = getelementptr i8, ptr %i.eh, i64 96
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eo = load ptr, ptr %i.ec, align 8
  %i.ep = getelementptr i8, ptr %i.eh, i64 8
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr i8, ptr %i.eo, i64 %i.er
  store i8 1, ptr %i.es, align 1
  br label %.loopexit

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %i.et = load ptr, ptr %i.ec, align 8
  %i.eu = load ptr, ptr %i.en, align 8
  %i.ev = getelementptr [8 x i8], ptr %i.eu, i64 %indvars.iv
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr i8, ptr %i.et, i64 %i.ez
  store i8 1, ptr %i.fa, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fb = load i32, ptr %i.ek, align 8
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next, %i.fc
  br i1 %i.fd, label %bb.u, label %.loopexit, !llvm.loop !70

bb.v:                                             ; preds = %bb.s
  %i.fe = load ptr, ptr %i.ec, align 8            ; 3 uses
  %i.ff = getelementptr i8, ptr %i.eh, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8            ; 3 uses
  %i.fh = load i32, ptr @size, align 4            ; 4 uses
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.preheader.i, label %SetUnion.exit

.lr.ph.preheader.i:                               ; preds = %bb.v
  %wide.trip.count.i = zext nneg i32 %i.fh to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.fj = icmp eq i32 %i.fh, 1
  br i1 %i.fj, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.aa ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.aa ]
  %i.fk = getelementptr i8, ptr %i.fg, i64 %indvars.iv.i
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %.lr.ph.i.1, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.fn = getelementptr i8, ptr %i.fe, i64 %indvars.iv.i ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %bb.x, label %.lr.ph.i.1

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.fn, align 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.x, %bb.w, %.lr.ph.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fg, i64 %indvars.iv.next.i
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.1
  %i.ft = getelementptr i8, ptr %i.fe, i64 %indvars.iv.next.i ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.ft, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %SetUnion.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

SetUnion.exit.loopexit.unr-lcssa:                 ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %SetUnion.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %SetUnion.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %SetUnion.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i32 %i.fh to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.fw = getelementptr i8, ptr %i.fg, i64 %indvars.iv.i.epil.init
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %SetUnion.exit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.fz = getelementptr i8, ptr %i.fe, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = icmp eq i8 %i.ga, 0
  br i1 %i.gb, label %bb.ac, label %SetUnion.exit

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.fz, align 1
  br label %SetUnion.exit

SetUnion.exit:                                    ; preds = %SetUnion.exit.loopexit.unr-lcssa, %bb.ac, %bb.ab, %.lr.ph.i.epil.preheader, %bb.v
  %i.gc = getelementptr i8, ptr %i.eh, i64 48
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %.loopexit, label %bb.r, !llvm.loop !71

.loopexit:                                        ; preds = %SetUnion.exit, %bb.r, %bb.u, %.preheader, %bb.t
  %i.gf = load i32, ptr %i.g, align 8
  %i.gg = icmp eq i32 %.042, %i.gf
  br i1 %i.gg, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %.loopexit
  %i.gh = load ptr, ptr @plink_freelist, align 8  ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.ae, label %Plink_add.exit

bb.ae:                                            ; preds = %bb.ad
  %i.gj = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #40 ; 10 uses
  store ptr %i.gj, ptr @plink_freelist, align 8
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.af, label %.preheader.i.i

bb.af:                                            ; preds = %bb.ae
  %i.gl = load ptr, ptr @stderr, align 8
  %i.gm = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.gl, i32 noundef 2, ptr noundef @.str.80) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

.preheader.i.i:                                   ; preds = %bb.ae, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.2, %.preheader.i.i ], [ 0, %bb.ae ] ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gn = getelementptr [16 x i8], ptr %i.gj, i64 %indvars.iv.next.i.i
  %i.go = getelementptr [16 x i8], ptr %i.gj, i64 %indvars.iv.i.i
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  store ptr %i.gn, ptr %i.gp, align 8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.gq = getelementptr [16 x i8], ptr %i.gj, i64 %indvars.iv.next.i.i.1
  %i.gr = getelementptr [16 x i8], ptr %i.gj, i64 %indvars.iv.next.i.i
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  store ptr %i.gq, ptr %i.gs, align 8
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 3 uses
  %i.gt = getelementptr [16 x i8], ptr %i.gj, i64 %indvars.iv.next.i.i.2
  %i.gu = getelementptr [16 x i8], ptr %i.gj, i64 %indvars.iv.next.i.i.1
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  store ptr %i.gt, ptr %i.gv, align 8
  %exitcond.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, 99
  br i1 %exitcond.not.i.i.2, label %bb.ag, label %.preheader.i.i, !llvm.loop !20

bb.ag:                                            ; preds = %.preheader.i.i
  %i.gw = getelementptr i8, ptr %i.gj, i64 1592
  store ptr null, ptr %i.gw, align 8
  br label %Plink_add.exit

Plink_add.exit:                                   ; preds = %bb.ad, %bb.ag
  %i.gx = phi ptr [ %i.gj, %bb.ag ], [ %i.gh, %bb.ad ] ; 3 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 8      ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8
  store ptr %i.gz, ptr @plink_freelist, align 8
  %i.ha = load ptr, ptr %i.aa, align 8
  store ptr %i.ha, ptr %i.gy, align 8
  store ptr %i.gx, ptr %i.aa, align 8
  store ptr %.0.i, ptr %i.gx, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %Plink_add.exit
  %i.hb = getelementptr i8, ptr %.04367, i64 120
  %.043 = load ptr, ptr %i.hb, align 8            ; 2 uses
  %.not50 = icmp eq ptr %.043, null
  br i1 %.not50, label %.loopexit57, label %bb.g, !llvm.loop !72

.loopexit57:                                      ; preds = %bb.ah, %bb.e, %bb.f, %bb.c, %bb.b
  %i.hc = getelementptr i8, ptr %.04471, i64 56
  %.044 = load ptr, ptr %i.hc, align 8            ; 2 uses
  %.not = icmp eq ptr %.044, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !73

._crit_edge:                                      ; preds = %.loopexit57, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @Configlist_sort() local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [30 x ptr], align 16              ; 6 uses
  %i.b = load ptr, ptr @current, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.a, i8 0, i64 240, i1 false)
  %.not59.i = icmp eq ptr %i.b, null
  br i1 %.not59.i, label %.preheader.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %.03160.i = phi ptr [ %i.d, %.critedge.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.03160.i, i64 56  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  store ptr null, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %merge.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %merge.exit.i ] ; 3 uses
  %.02857.i = phi ptr [ %.03160.i, %.lr.ph.i ], [ %.038.i.i, %merge.exit.i ] ; 6 uses
  %i.e = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %.not35.i = icmp eq ptr %i.f, null
  br i1 %.not35.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %.02857.i, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 88
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 88
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sub i32 %i.i, %i.l                       ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %Configcmp.exit6

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.02857.i, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.f, i64 8
  %i.r = load i32, ptr %i.q, align 8
  %i.s = sub i32 %i.p, %i.r
  br label %Configcmp.exit6

Configcmp.exit6:                                  ; preds = %bb.c, %bb.d
  %.0.i5 = phi i32 [ %i.s, %bb.d ], [ %i.m, %bb.c ]
  %i.t = icmp slt i32 %.0.i5, 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %Configcmp.exit6
  %i.u = getelementptr i8, ptr %.02857.i, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  br label %bb.g

bb.f:                                             ; preds = %Configcmp.exit6
  %i.w = getelementptr i8, ptr %i.f, i64 56
  %i.x = load ptr, ptr %i.w, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.042.i.i = phi ptr [ %i.f, %bb.e ], [ %i.x, %bb.f ] ; 3 uses
  %.039.i.i = phi ptr [ %i.v, %bb.e ], [ %.02857.i, %bb.f ] ; 3 uses
  %.038.i.i = phi ptr [ %.02857.i, %bb.e ], [ %i.f, %bb.f ] ; 4 uses
  %i.y = icmp ne ptr %.039.i.i, null              ; 2 uses
  %i.z = icmp ne ptr %.042.i.i, null
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph.i.i, label %merge.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.k
  %.149.i.i = phi ptr [ %.2.i.i, %bb.k ], [ %.038.i.i, %bb.g ]
  %.14048.i.i = phi ptr [ %.241.i.i, %bb.k ], [ %.039.i.i, %bb.g ] ; 6 uses
  %.14347.i.i = phi ptr [ %.244.i.i, %bb.k ], [ %.042.i.i, %bb.g ] ; 6 uses
  %i.ab = load ptr, ptr %.14048.i.i, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 88
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %.14347.i.i, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 88
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = sub i32 %i.ad, %i.ag                    ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %Configcmp.exit4

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aj = getelementptr i8, ptr %.14048.i.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %.14347.i.i, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = sub i32 %i.ak, %i.am
  br label %Configcmp.exit4

Configcmp.exit4:                                  ; preds = %.lr.ph.i.i, %bb.h
  %.0.i3 = phi i32 [ %i.an, %bb.h ], [ %i.ah, %.lr.ph.i.i ]
  %i.ao = icmp slt i32 %.0.i3, 1
  %i.ap = getelementptr i8, ptr %.149.i.i, i64 56 ; 2 uses
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %Configcmp.exit4
  store ptr %.14048.i.i, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %.14048.i.i, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %bb.k

bb.j:                                             ; preds = %Configcmp.exit4
  store ptr %.14347.i.i, ptr %i.ap, align 8
  %i.as = getelementptr i8, ptr %.14347.i.i, i64 56
  %i.at = load ptr, ptr %i.as, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.244.i.i = phi ptr [ %.14347.i.i, %bb.i ], [ %i.at, %bb.j ] ; 3 uses
  %.241.i.i = phi ptr [ %i.ar, %bb.i ], [ %.14048.i.i, %bb.j ] ; 3 uses
  %.2.i.i = phi ptr [ %.14048.i.i, %bb.i ], [ %.14347.i.i, %bb.j ] ; 2 uses
  %i.au = icmp ne ptr %.241.i.i, null             ; 2 uses
  %i.av = icmp ne ptr %.244.i.i, null
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.lr.ph.i.i, label %merge.exit.i, !llvm.loop !12

merge.exit.i:                                     ; preds = %bb.k, %bb.g
  %.143.lcssa.i.i = phi ptr [ %.042.i.i, %bb.g ], [ %.244.i.i, %bb.k ]
  %.140.lcssa.i.i = phi ptr [ %.039.i.i, %bb.g ], [ %.241.i.i, %bb.k ]
  %.1.lcssa.i.i = phi ptr [ %.038.i.i, %bb.g ], [ %.2.i.i, %bb.k ]
end_hunk_1
begin_hunk_2_@buildshifts:bb.a
  store ptr %i.ee, ptr %i.eg, align 8
  %exitcond.not.i.i53.2 = icmp eq i64 %indvars.iv.next.i.i52.2, 99
  br i1 %exitcond.not.i.i53.2, label %bb.aa, label %.preheader.i.i50, !llvm.loop !0

bb.aa:                                            ; preds = %.preheader.i.i50
  %i.eh = getelementptr i8, ptr %i.du, i64 4784
  store ptr null, ptr %i.eh, align 8
  br label %Action_add.exit54

Action_add.exit54:                                ; preds = %bb.x, %bb.aa
  %i.ei = phi ptr [ %i.du, %bb.aa ], [ %i.ds, %bb.x ] ; 6 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 32     ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  store ptr %i.ek, ptr @Action_new.actionfreelist, align 8
  %i.el = load ptr, ptr %i.b, align 8
  store ptr %i.el, ptr %i.ej, align 8
  store ptr %i.ei, ptr %i.b, align 8
  %i.em = getelementptr i8, ptr %i.ei, i64 8
  store i32 0, ptr %i.em, align 8
  store ptr %i.af, ptr %i.ei, align 8
  %i.en = getelementptr i8, ptr %i.ei, i64 24
  store ptr null, ptr %i.en, align 8
  %i.eo = getelementptr i8, ptr %i.ei, i64 16
  store ptr %i.ck, ptr %i.eo, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %Action_add.exit, %.preheader, %Action_add.exit54, %bb.c, %bb.b
  %i.ep = getelementptr i8, ptr %.166, i64 56
  %.1 = load ptr, ptr %i.ep, align 8              ; 2 uses
  %.not41 = icmp eq ptr %.1, null
  br i1 %.not41, label %._crit_edge, label %bb.b, !llvm.loop !79

._crit_edge:                                      ; preds = %.loopexit, %bb.a, %.preheader57
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @same_symbol(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %.not16 = icmp eq i32 %i.e, 2
  br i1 %.not16, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 88
  %i.i = load i32, ptr %i.h, align 8
  %.not17 = icmp eq i32 %i.g, %i.i
  br i1 %.not17, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !22

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8
  %.not18 = icmp eq ptr %i.p, %i.r
  br i1 %.not18, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %.preheader, %bb.d, %bb.c, %bb.b, %bb.a
  %.013 = phi i32 [ 0, %bb.d ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %.preheader ], [ 0, %bb.f ], [ 1, %bb.e ]
  ret i32 %.013
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @Configlist_reset() local_unnamed_addr #9 {
bb.a:
  store ptr null, ptr @current, align 8
  store ptr @current, ptr @currentend, align 8
  store ptr null, ptr @basis, align 8
  store ptr @basis, ptr @basisend, align 8
  %i.a = load ptr, ptr @x4a, align 8              ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Configtable_clear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 4        ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %Configtable_clear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 8
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph11.i, label %._crit_edge.i

.lr.ph11.i:                                       ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph11.i
  %indvars.iv13.i = phi i64 [ 0, %.lr.ph11.i ], [ %indvars.iv.next14.i, %bb.d ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv13.i
  store ptr null, ptr %i.j, align 8
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1 ; 2 uses
  %i.k = load i32, ptr %i.a, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next14.i, %i.l
  br i1 %i.m, label %bb.d, label %._crit_edge.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  store i32 0, ptr %i.c, align 4
  br label %Configtable_clear.exit

Configtable_clear.exit:                           ; preds = %bb.a, %bb.b, %._crit_edge.i
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @Plink_add(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @plink_freelist, align 8   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %Plink_new.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #40 ; 10 uses
  store ptr %i.c, ptr @plink_freelist, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 2, ptr noundef @.str.80) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.2, %.preheader.i ], [ 0, %bb.b ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.g = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv.next.i
  %i.h = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.j = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv.next.i.1
  %i.k = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv.next.i
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 3 uses
  %i.m = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv.next.i.2
  %i.n = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv.next.i.1
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 99
  br i1 %exitcond.not.i.2, label %bb.d, label %.preheader.i, !llvm.loop !20

bb.d:                                             ; preds = %.preheader.i
  %i.p = getelementptr i8, ptr %i.c, i64 1592
  store ptr null, ptr %i.p, align 8
  br label %Plink_new.exit

Plink_new.exit:                                   ; preds = %bb.a, %bb.d
  %i.q = phi ptr [ %i.c, %bb.d ], [ %i.a, %bb.a ] ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8        ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr @plink_freelist, align 8
  %i.t = load ptr, ptr %0, align 8
  store ptr %i.t, ptr %i.r, align 8
  store ptr %i.q, ptr %0, align 8
  store ptr %1, ptr %i.q, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @FindLinks(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph38, label %._crit_edge52

.preheader:                                       ; preds = %._crit_edge
  %i.d = icmp sgt i32 %i.m, 0
  br i1 %i.d, label %.lr.ph51, label %._crit_edge52

.lr.ph38:                                         ; preds = %bb.a, %._crit_edge
  %i.e = phi i32 [ %i.m, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %1 = load ptr, ptr %0, align 8
  %i.f = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not32 = icmp eq ptr %i.g, null
  br i1 %.not32, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph38
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not3334 = icmp eq ptr %i.i, null
  br i1 %.not3334, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.02535 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = getelementptr i8, ptr %.02535, i64 40
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.02535, i64 56
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.l, null
  br i1 %.not33, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !80

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph38, %._crit_edge.loopexit, %bb.b
  %i.m = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.e, %bb.b ], [ %i.e, %.lr.ph38 ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph38, label %.preheader, !llvm.loop !81

.lr.ph51:                                         ; preds = %.preheader, %._crit_edge49
  %i.p = phi i32 [ %i.av, %._crit_edge49 ], [ %i.m, %.preheader ] ; 2 uses
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %._crit_edge49 ], [ 0, %.preheader ] ; 2 uses
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv54
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %._crit_edge49, label %bb.c

bb.c:                                             ; preds = %.lr.ph51
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not3045 = icmp eq ptr %i.u, null
  br i1 %.not3045, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.c, %._crit_edge44
  %.146 = phi ptr [ %i.au, %._crit_edge44 ], [ %i.u, %bb.c ] ; 3 uses
  %i.v = getelementptr i8, ptr %.146, i64 32
  %.039 = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not3140 = icmp eq ptr %.039, null
  br i1 %.not3140, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph48, %Plink_add.exit
  %.041 = phi ptr [ %.0, %Plink_add.exit ], [ %.039, %.lr.ph48 ] ; 2 uses
  %i.w = load ptr, ptr %.041, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 24       ; 2 uses
  %i.y = load ptr, ptr @plink_freelist, align 8   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.d, label %Plink_add.exit

bb.d:                                             ; preds = %.lr.ph43
  %i.aa = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #40 ; 10 uses
  store ptr %i.aa, ptr @plink_freelist, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.e, label %.preheader.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr @stderr, align 8
  %i.ad = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ac, i32 noundef 2, ptr noundef @.str.80) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.2, %.preheader.i.i ], [ 0, %bb.d ] ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ae = getelementptr [16 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i
  %i.af = getelementptr [16 x i8], ptr %i.aa, i64 %indvars.iv.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ah = getelementptr [16 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.1
  %i.ai = getelementptr [16 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %i.aj, align 8
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 3 uses
  %i.ak = getelementptr [16 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.2
  %i.al = getelementptr [16 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.1
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store ptr %i.ak, ptr %i.am, align 8
  %exitcond.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, 99
  br i1 %exitcond.not.i.i.2, label %bb.f, label %.preheader.i.i, !llvm.loop !20

bb.f:                                             ; preds = %.preheader.i.i
  %i.an = getelementptr i8, ptr %i.aa, i64 1592
  store ptr null, ptr %i.an, align 8
  br label %Plink_add.exit

Plink_add.exit:                                   ; preds = %.lr.ph43, %bb.f
  %i.ao = phi ptr [ %i.aa, %bb.f ], [ %i.y, %.lr.ph43 ] ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8      ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  store ptr %i.aq, ptr @plink_freelist, align 8
  %i.ar = load ptr, ptr %i.x, align 8
  store ptr %i.ar, ptr %i.ap, align 8
  store ptr %i.ao, ptr %i.x, align 8
  store ptr %.146, ptr %i.ao, align 8
  %i.as = getelementptr i8, ptr %.041, i64 8
  %.0 = load ptr, ptr %i.as, align 8              ; 2 uses
  %.not31 = icmp eq ptr %.0, null
  br i1 %.not31, label %._crit_edge44, label %.lr.ph43, !llvm.loop !82

._crit_edge44:                                    ; preds = %Plink_add.exit, %.lr.ph48
  %i.at = getelementptr i8, ptr %.146, i64 56
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.au, null
  br i1 %.not30, label %._crit_edge49.loopexit, label %.lr.ph48, !llvm.loop !83

._crit_edge49.loopexit:                           ; preds = %._crit_edge44
  %.pre57.a = load i32, ptr %i.a, align 8
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %.lr.ph51, %._crit_edge49.loopexit, %bb.c
  %i.av = phi i32 [ %.pre57.a, %._crit_edge49.loopexit ], [ %i.p, %bb.c ], [ %i.p, %.lr.ph51 ] ; 2 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next55, %i.aw
  br i1 %i.ax, label %.lr.ph51, label %._crit_edge52, !llvm.loop !84

._crit_edge52:                                    ; preds = %._crit_edge49, %bb.a, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @FindFollowSets(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph40, label %.split.us

.preheader:                                       ; preds = %._crit_edge
  %i.d = icmp sgt i32 %i.k, 0
  br i1 %i.d, label %.preheader.split, label %.split.us

.lr.ph40:                                         ; preds = %bb.a, %._crit_edge
  %i.e = phi i32 [ %i.k, %._crit_edge ], [ %i.b, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %1 = load ptr, ptr %0, align 8
  %i.f = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.02535 = load ptr, ptr %i.h, align 8           ; 2 uses
  %.not3236 = icmp eq ptr %.02535, null
  br i1 %.not3236, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.02537 = phi ptr [ %.025, %.lr.ph ], [ %.02535, %.lr.ph40 ] ; 2 uses
  %i.i = getelementptr i8, ptr %.02537, i64 48
  store i32 1, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.02537, i64 56
  %.025 = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not32 = icmp eq ptr %.025, null
  br i1 %.not32, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !85

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph40
  %i.k = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.e, %.lr.ph40 ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph40, label %.preheader, !llvm.loop !86

.preheader.split:                                 ; preds = %.preheader, %._crit_edge60
  %i.n = phi i32 [ %i.as, %._crit_edge60 ], [ %i.k, %.preheader ] ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph59, label %.split.us

.lr.ph59:                                         ; preds = %.preheader.split, %._crit_edge54
  %i.p = phi i32 [ %i.as, %._crit_edge54 ], [ %i.n, %.preheader.split ]
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %._crit_edge54 ], [ 0, %.preheader.split ] ; 2 uses
  %.057 = phi i32 [ %.1.lcssa, %._crit_edge54 ], [ 0, %.preheader.split ] ; 2 uses
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv64
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.12648 = load ptr, ptr %i.t, align 8           ; 2 uses
  %.not2949 = icmp eq ptr %.12648, null
  br i1 %.not2949, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph59, %bb.e
  %.12651 = phi ptr [ %.126, %bb.e ], [ %.12648, %.lr.ph59 ] ; 4 uses
  %.150 = phi i32 [ %.4, %bb.e ], [ %.057, %.lr.ph59 ] ; 4 uses
  %i.u = getelementptr i8, ptr %.12651, i64 48    ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph53
  %i.x = getelementptr i8, ptr %.12651, i64 24
  %.02441 = load ptr, ptr %i.x, align 8           ; 2 uses
  %.not3042 = icmp eq ptr %.02441, null
  br i1 %.not3042, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.b
  %i.y = getelementptr i8, ptr %.12651, i64 16
  %i.z = load i32, ptr @size, align 4             ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph46.split, label %._crit_edge47

.lr.ph46.splitthread-pre-split:                   ; preds = %SetUnion.exit.thread
  %.pr = load i32, ptr @size, align 4
  br label %.lr.ph46.split

.lr.ph46.split:                                   ; preds = %.lr.ph46, %.lr.ph46.splitthread-pre-split
  %i.ab = phi i32 [ %.pr, %.lr.ph46.splitthread-pre-split ], [ %i.z, %.lr.ph46 ] ; 2 uses
  %.02444 = phi ptr [ %.024, %.lr.ph46.splitthread-pre-split ], [ %.02441, %.lr.ph46 ] ; 3 uses
  %.243 = phi i32 [ %.3, %.lr.ph46.splitthread-pre-split ], [ %.150, %.lr.ph46 ] ; 2 uses
  %i.ac = load ptr, ptr %.02444, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8
  %i.ag = icmp sgt i32 %i.ab, 0
  br i1 %i.ag, label %.lr.ph.preheader.i, label %SetUnion.exit.thread

.lr.ph.preheader.i:                               ; preds = %.lr.ph46.split
  %wide.trip.count.i = zext nneg i32 %i.ab to i64 ; 2 uses
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %.thread, %.lr.ph.preheader.i
  %indvars.iv.i.ph = phi i64 [ %indvars.iv.next.i72, %.thread ], [ 0, %.lr.ph.preheader.i ]
  %.not31 = phi i1 [ false, %.thread ], [ true, %.lr.ph.preheader.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %indvars.iv.i.ph, %.lr.ph.i.outer ] ; 5 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 %indvars.iv.i
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr i8, ptr %i.ae, i64 %indvars.iv.i
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SetUnion.exit, label %.lr.ph.i, !llvm.loop !5

.thread:                                          ; preds = %bb.c
  %i.an = getelementptr i8, ptr %i.ae, i64 %indvars.iv.i
  store i8 1, ptr %i.an, align 1
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i
  br i1 %exitcond.not.i73, label %SetUnion.exit.thread75, label %.lr.ph.i.outer, !llvm.loop !5

SetUnion.exit:                                    ; preds = %bb.d
  br i1 %.not31, label %SetUnion.exit.thread, label %SetUnion.exit.thread75

SetUnion.exit.thread75:                           ; preds = %.thread, %SetUnion.exit
  %i.ao = load ptr, ptr %.02444, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 48
  store i32 1, ptr %i.ap, align 8
  br label %SetUnion.exit.thread

SetUnion.exit.thread:                             ; preds = %.lr.ph46.split, %SetUnion.exit, %SetUnion.exit.thread75
  %.3 = phi i32 [ 1, %SetUnion.exit.thread75 ], [ %.243, %SetUnion.exit ], [ %.243, %.lr.ph46.split ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.02444, i64 8
  %.024 = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not30 = icmp eq ptr %.024, null
  br i1 %.not30, label %._crit_edge47, label %.lr.ph46.splitthread-pre-split, !llvm.loop !87

._crit_edge47:                                    ; preds = %SetUnion.exit.thread, %.lr.ph46, %bb.b
  %.2.lcssa = phi i32 [ %.150, %bb.b ], [ %.150, %.lr.ph46 ], [ %.3, %SetUnion.exit.thread ]
  store i32 0, ptr %i.u, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph53, %._crit_edge47
  %.4 = phi i32 [ %.150, %.lr.ph53 ], [ %.2.lcssa, %._crit_edge47 ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.12651, i64 56
  %.126 = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not29 = icmp eq ptr %.126, null
  br i1 %.not29, label %._crit_edge54.loopexit, label %.lr.ph53, !llvm.loop !88

._crit_edge54.loopexit:                           ; preds = %bb.e
  %.pre67.a = load i32, ptr %i.a, align 8
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %.lr.ph59
  %i.as = phi i32 [ %i.p, %.lr.ph59 ], [ %.pre67.a, %._crit_edge54.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.057, %.lr.ph59 ], [ %.4, %._crit_edge54.loopexit ] ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next65, %i.at
  br i1 %i.au, label %.lr.ph59, label %._crit_edge60, !llvm.loop !89

._crit_edge60:                                    ; preds = %._crit_edge54
  %i.av = icmp eq i32 %.1.lcssa, 0
  br i1 %i.av, label %.split.us, label %.preheader.split, !llvm.loop !90

.split.us:                                        ; preds = %.preheader.split, %._crit_edge60, %bb.a, %.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @FindActions(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 6 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 44         ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph109, %._crit_edge
  %i.f = phi i32 [ %i.b, %.lr.ph109 ], [ %i.bg, %._crit_edge ]
  %indvars.iv141 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next142, %._crit_edge ] ; 2 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv141
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.071102 = load ptr, ptr %i.j, align 8          ; 2 uses
  %.not86103 = icmp eq ptr %.071102, null
  br i1 %.not86103, label %._crit_edge, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.b
  %Action_new.actionfreelist.promoted = load ptr, ptr @Action_new.actionfreelist, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 24       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph106, %.loopexit
  %.071104 = phi ptr [ %.071102, %.lr.ph106 ], [ %.071, %.loopexit ] ; 5 uses
  %i.l = phi ptr [ %Action_new.actionfreelist.promoted, %.lr.ph106 ], [ %i.be, %.loopexit ] ; 3 uses
  %i.m = load ptr, ptr %.071104, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %.071104, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %.preheader96, label %.loopexit

.preheader96:                                     ; preds = %bb.c
  %i.s = load i32, ptr %i.d, align 4              ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader96
  %i.u = getelementptr i8, ptr %.071104, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %i.v = phi i32 [ %i.s, %.lr.ph ], [ %i.ba, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.w = phi ptr [ %i.l, %.lr.ph ], [ %i.bb, %bb.i ] ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1
  %.not87 = icmp eq i8 %i.z, 0
  br i1 %.not87, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.e, align 8
end_hunk_2
begin_hunk_3_@FindActions:bb.a
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call fastcc ptr @Action_sort(ptr noundef %i.dw) ; 3 uses
  store ptr %i.dx, ptr %i.dv, align 8
  %.not83112 = icmp eq ptr %i.dx, null
  br i1 %.not83112, label %.critedge, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.s, %.critedge2
  %.068113 = phi ptr [ %i.gb, %.critedge2 ], [ %i.dx, %bb.s ] ; 4 uses
  %i.dy = getelementptr i8, ptr %.068113, i64 32  ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  %.not84 = icmp eq ptr %i.dz, null
  br i1 %.not84, label %.critedge, label %.preheader95

.preheader95:                                     ; preds = %.lr.ph115
  %i.ea = getelementptr i8, ptr %.068113, i64 8   ; 6 uses
  %i.eb = getelementptr i8, ptr %.068113, i64 16
  br label %bb.t

bb.t:                                             ; preds = %.preheader95, %resolve_conflict.exit
  %.067111 = phi ptr [ %i.dz, %.preheader95 ], [ %i.ga, %resolve_conflict.exit ] ; 6 uses
  %i.ec = load ptr, ptr %.067111, align 8
  %i.ed = load ptr, ptr %.068113, align 8         ; 3 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %bb.u, label %.critedge2

bb.u:                                             ; preds = %bb.t
  %i.ef = load i32, ptr %i.ea, align 8            ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.eh = getelementptr i8, ptr %.067111, i64 8   ; 5 uses
  %i.ei = load i32, ptr %i.eh, align 8
  switch i32 %i.ei, label %resolve_conflict.exit [
    i32 0, label %bb.w
    i32 2, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  store i32 4, ptr %i.eh, align 8
  %.pr.pre.i = load i32, ptr %i.ea, align 8       ; 2 uses
  %i.ej = icmp eq i32 %.pr.pre.i, 0
  br i1 %i.ej, label %resolve_conflict.exit, label %.thread.i

bb.x:                                             ; preds = %bb.v
  %i.ek = getelementptr i8, ptr %.067111, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = getelementptr i8, ptr %i.el, i64 80
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ep = getelementptr i8, ptr %i.ed, i64 32
  %i.eq = load i32, ptr %i.ep, align 8            ; 3 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.es = getelementptr i8, ptr %i.en, i64 32
  %i.et = load i32, ptr %i.es, align 8            ; 3 uses
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  store i32 5, ptr %i.eh, align 8
  br label %resolve_conflict.exit

bb.ab:                                            ; preds = %bb.z
  %i.ev = icmp samesign ugt i32 %i.eq, %i.et
  br i1 %i.ev, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 8, ptr %i.eh, align 8
  br label %resolve_conflict.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ew = icmp samesign ult i32 %i.eq, %i.et
  br i1 %i.ew, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 7, ptr %i.ea, align 8
  br label %resolve_conflict.exit

bb.af:                                            ; preds = %bb.ad
  %i.ex = getelementptr i8, ptr %i.ed, i64 36
  %i.ey = load i32, ptr %i.ex, align 4
  switch i32 %i.ey, label %bb.ai [
    i32 1, label %bb.ag
    i32 0, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  store i32 8, ptr %i.eh, align 8
  br label %resolve_conflict.exit

bb.ah:                                            ; preds = %bb.af
  store i32 7, ptr %i.ea, align 8
  br label %resolve_conflict.exit

bb.ai:                                            ; preds = %bb.af
  store i32 3, ptr %i.ea, align 8
  br label %resolve_conflict.exit

.thread.i:                                        ; preds = %bb.w, %bb.u
  %.056.i = phi i32 [ 1, %bb.w ], [ 0, %bb.u ]    ; 6 uses
  %i.ez = phi i32 [ %.pr.pre.i, %bb.w ], [ %i.ef, %bb.u ]
  %i.fa = icmp eq i32 %i.ez, 2
  br i1 %i.fa, label %bb.aj, label %resolve_conflict.exit

bb.aj:                                            ; preds = %.thread.i
  %i.fb = getelementptr i8, ptr %.067111, i64 8   ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 8
  %i.fd = icmp eq i32 %i.fc, 2
  br i1 %i.fd, label %bb.ak, label %resolve_conflict.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fe = load ptr, ptr %i.eb, align 8
  %i.ff = getelementptr i8, ptr %i.fe, i64 80
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fh = getelementptr i8, ptr %.067111, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr i8, ptr %i.fi, i64 80
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = icmp eq ptr %i.fg, null
  %i.fm = icmp eq ptr %i.fk, null
  %or.cond.i = select i1 %i.fl, i1 true, i1 %i.fm
  br i1 %or.cond.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fn = getelementptr i8, ptr %i.fg, i64 32
  %i.fo = load i32, ptr %i.fn, align 8            ; 4 uses
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fq = getelementptr i8, ptr %i.fk, i64 32
  %i.fr = load i32, ptr %i.fq, align 8            ; 4 uses
  %i.fs = icmp slt i32 %i.fr, 0
  %i.ft = icmp eq i32 %i.fo, %i.fr
  %or.cond54.i = or i1 %i.fs, %i.ft
  br i1 %or.cond54.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  store i32 6, ptr %i.fb, align 8
  %i.fu = add nuw nsw i32 %.056.i, 1
  br label %resolve_conflict.exit

bb.ao:                                            ; preds = %bb.am
  %i.fv = icmp samesign ugt i32 %i.fo, %i.fr
  br i1 %i.fv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 8, ptr %i.fb, align 8
  br label %resolve_conflict.exit

bb.aq:                                            ; preds = %bb.ao
  %i.fw = icmp samesign ult i32 %i.fo, %i.fr
  br i1 %i.fw, label %bb.ar, label %resolve_conflict.exit

bb.ar:                                            ; preds = %bb.aq
  store i32 8, ptr %i.ea, align 8
  br label %resolve_conflict.exit

resolve_conflict.exit:                            ; preds = %bb.v, %bb.w, %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.ah, %bb.ai, %.thread.i, %bb.aj, %bb.an, %bb.ap, %bb.aq, %bb.ar
  %.1.i = phi i32 [ 1, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ %i.fu, %bb.an ], [ %.056.i, %bb.ap ], [ %.056.i, %bb.ar ], [ %.056.i, %bb.aq ], [ %.056.i, %bb.aj ], [ %.056.i, %.thread.i ], [ 0, %bb.v ], [ 1, %bb.w ]
  %i.fx = load i32, ptr %i.dr, align 8
  %i.fy = add i32 %i.fx, %.1.i
  store i32 %i.fy, ptr %i.dr, align 8
  %i.fz = getelementptr i8, ptr %.067111, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8            ; 2 uses
  %.not85 = icmp eq ptr %i.ga, null
  br i1 %.not85, label %.critedge2, label %bb.t, !llvm.loop !94

.critedge2:                                       ; preds = %bb.t, %resolve_conflict.exit
  %i.gb = load ptr, ptr %i.dy, align 8            ; 2 uses
  %.not83 = icmp eq ptr %i.gb, null
  br i1 %.not83, label %.critedge, label %.lr.ph115, !llvm.loop !95

.critedge:                                        ; preds = %.lr.ph115, %.critedge2, %bb.s
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.gc = load i32, ptr %i.a, align 8             ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp slt i64 %indvars.iv.next145, %i.gd
  br i1 %i.ge, label %bb.s, label %._crit_edge119, !llvm.loop !96

._crit_edge119:                                   ; preds = %.critedge, %Action_add.exit92
  %i.gf = phi i32 [ %i.dp, %Action_add.exit92 ], [ %i.gc, %.critedge ]
  %i.gg = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.069120 = load ptr, ptr %i.gg, align 8         ; 2 uses
  %.not79121 = icmp eq ptr %.069120, null
  br i1 %.not79121, label %.preheader94, label %.lr.ph124

.preheader94.loopexit:                            ; preds = %.lr.ph124
  %.pre151 = load i32, ptr %i.a, align 8
  br label %.preheader94

.preheader94:                                     ; preds = %.preheader94.loopexit, %._crit_edge119
  %i.gh = phi i32 [ %.pre151, %.preheader94.loopexit ], [ %i.gf, %._crit_edge119 ] ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph132, label %.preheader

.lr.ph124:                                        ; preds = %._crit_edge119, %.lr.ph124
  %.069122 = phi ptr [ %.069, %.lr.ph124 ], [ %.069120, %._crit_edge119 ] ; 2 uses
  %i.gj = getelementptr i8, ptr %.069122, i64 104
  store i32 0, ptr %i.gj, align 8
  %i.gk = getelementptr i8, ptr %.069122, i64 128
  %.069 = load ptr, ptr %i.gk, align 8            ; 2 uses
  %.not79 = icmp eq ptr %.069, null
  br i1 %.not79, label %.preheader94.loopexit, label %.lr.ph124, !llvm.loop !97

.preheader:                                       ; preds = %._crit_edge130, %.preheader94
  %.1133 = load ptr, ptr %i.gg, align 8           ; 2 uses
  %.not80134 = icmp eq ptr %.1133, null
  br i1 %.not80134, label %._crit_edge137, label %.lr.ph136

.lr.ph136:                                        ; preds = %.preheader
  %i.gl = getelementptr i8, ptr %0, i64 224
  %i.gm = getelementptr i8, ptr %0, i64 80        ; 2 uses
  br label %bb.au

.lr.ph132:                                        ; preds = %.preheader94, %._crit_edge130
  %i.gn = phi i32 [ %i.gy, %._crit_edge130 ], [ %i.gh, %.preheader94 ]
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %._crit_edge130 ], [ 0, %.preheader94 ] ; 2 uses
  %1 = load ptr, ptr %0, align 8
  %i.go = getelementptr [8 x i8], ptr %1, i64 %indvars.iv147
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr i8, ptr %i.gp, i64 24
  %.0125 = load ptr, ptr %i.gq, align 8           ; 2 uses
  %.not82126 = icmp eq ptr %.0125, null
  br i1 %.not82126, label %._crit_edge130, label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph132, %bb.at
  %.0127 = phi ptr [ %.0, %bb.at ], [ %.0125, %.lr.ph132 ] ; 3 uses
  %i.gr = getelementptr i8, ptr %.0127, i64 8
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = icmp eq i32 %i.gs, 2
  br i1 %i.gt, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph129
  %i.gu = getelementptr i8, ptr %.0127, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = getelementptr i8, ptr %i.gv, i64 104
  store i32 1, ptr %i.gw, align 8
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph129, %bb.as
  %i.gx = getelementptr i8, ptr %.0127, i64 32
  %.0 = load ptr, ptr %i.gx, align 8              ; 2 uses
  %.not82 = icmp eq ptr %.0, null
  br i1 %.not82, label %._crit_edge130.loopexit, label %.lr.ph129, !llvm.loop !98

._crit_edge130.loopexit:                          ; preds = %bb.at
  %.pre152.a = load i32, ptr %i.a, align 8
  br label %._crit_edge130

._crit_edge130:                                   ; preds = %._crit_edge130.loopexit, %.lr.ph132
  %i.gy = phi i32 [ %.pre152.a, %._crit_edge130.loopexit ], [ %i.gn, %.lr.ph132 ] ; 2 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = icmp slt i64 %indvars.iv.next148, %i.gz
  br i1 %i.ha, label %.lr.ph132, label %.preheader, !llvm.loop !99

bb.au:                                            ; preds = %.lr.ph136, %bb.aw
  %.1135 = phi ptr [ %.1133, %.lr.ph136 ], [ %.1, %bb.aw ] ; 3 uses
  %i.hb = getelementptr i8, ptr %.1135, i64 104
  %i.hc = load i32, ptr %i.hb, align 8
  %.not81 = icmp eq i32 %i.hc, 0
  br i1 %.not81, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hd = load ptr, ptr %i.gl, align 8
  %i.he = getelementptr i8, ptr %.1135, i64 20
  %i.hf = load i32, ptr %i.he, align 4
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.hd, i32 noundef %i.hf, ptr noundef @.str.6)
  %i.hg = load i32, ptr %i.gm, align 8
  %i.hh = add i32 %i.hg, 1
  store i32 %i.hh, ptr %i.gm, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.hi = getelementptr i8, ptr %.1135, i64 128
  %.1 = load ptr, ptr %i.hi, align 8              ; 2 uses
  %.not80 = icmp eq ptr %.1, null
  br i1 %.not80, label %._crit_edge137, label %bb.au, !llvm.loop !100

._crit_edge137:                                   ; preds = %bb.aw, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @Action_sort(ptr noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = alloca [30 x ptr], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.a, i8 0, i64 240, i1 false)
  %.not59.i = icmp eq ptr %0, null
  br i1 %.not59.i, label %.preheader.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %.03160.i = phi ptr [ %i.c, %.critedge.i ], [ %0, %bb.a ] ; 2 uses
  %i.b = getelementptr i8, ptr %.03160.i, i64 32  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %merge.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %merge.exit.i ] ; 3 uses
  %.02857.i = phi ptr [ %.03160.i, %.lr.ph.i ], [ %.038.i.i, %merge.exit.i ] ; 8 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %.not35.i = icmp eq ptr %i.e, null
  br i1 %.not35.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.02857.i, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sub i32 %i.h, %i.k                       ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %actioncmp.exit11

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.02857.i, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sub i32 %i.o, %i.q                       ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %actioncmp.exit11

bb.e:                                             ; preds = %bb.d
  switch i32 %i.o, label %.thread18.i10 [
    i32 2, label %bb.f
    i32 10, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr i8, ptr %.02857.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 88
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.e, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 88
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = sub i32 %i.w, %i.aa                     ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread18.i10, label %actioncmp.exit11

.thread18.i10:                                    ; preds = %bb.f, %bb.e
  %i.ad = ptrtoint ptr %i.e to i64
  %i.ae = ptrtoint ptr %.02857.i to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 48
  %i.ah = trunc i64 %i.ag to i32
  br label %actioncmp.exit11

actioncmp.exit11:                                 ; preds = %bb.c, %bb.d, %bb.f, %.thread18.i10
  %.2.i9 = phi i32 [ %i.ah, %.thread18.i10 ], [ %i.ab, %bb.f ], [ %i.r, %bb.d ], [ %i.l, %bb.c ]
  %i.ai = icmp slt i32 %.2.i9, 1
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %actioncmp.exit11
  %i.aj = getelementptr i8, ptr %.02857.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %bb.i

bb.h:                                             ; preds = %actioncmp.exit11
  %i.al = getelementptr i8, ptr %i.e, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.042.i.i = phi ptr [ %i.e, %bb.g ], [ %i.am, %bb.h ] ; 3 uses
  %.039.i.i = phi ptr [ %i.ak, %bb.g ], [ %.02857.i, %bb.h ] ; 3 uses
  %.038.i.i = phi ptr [ %.02857.i, %bb.g ], [ %i.e, %bb.h ] ; 4 uses
  %i.an = icmp ne ptr %.039.i.i, null             ; 2 uses
  %i.ao = icmp ne ptr %.042.i.i, null
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %.lr.ph.i.i, label %merge.exit.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.o
  %.149.i.i = phi ptr [ %.2.i.i, %bb.o ], [ %.038.i.i, %bb.i ]
  %.14048.i.i = phi ptr [ %.241.i.i, %bb.o ], [ %.039.i.i, %bb.i ] ; 8 uses
  %.14347.i.i = phi ptr [ %.244.i.i, %bb.o ], [ %.042.i.i, %bb.i ] ; 8 uses
  %i.aq = load ptr, ptr %.14048.i.i, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = load ptr, ptr %.14347.i.i, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = sub i32 %i.as, %i.av                    ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %actioncmp.exit8

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ay = getelementptr i8, ptr %.14048.i.i, i64 8
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr i8, ptr %.14347.i.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = sub i32 %i.az, %i.bb                    ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %actioncmp.exit8

bb.k:                                             ; preds = %bb.j
  switch i32 %i.az, label %.thread18.i7 [
    i32 2, label %bb.l
    i32 10, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.be = getelementptr i8, ptr %.14048.i.i, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 88
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %.14347.i.i, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 88
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = sub i32 %i.bh, %i.bl                    ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread18.i7, label %actioncmp.exit8

.thread18.i7:                                     ; preds = %bb.l, %bb.k
  %i.bo = ptrtoint ptr %.14347.i.i to i64
  %i.bp = ptrtoint ptr %.14048.i.i to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 48
  %i.bs = trunc i64 %i.br to i32
  br label %actioncmp.exit8

actioncmp.exit8:                                  ; preds = %.lr.ph.i.i, %bb.j, %bb.l, %.thread18.i7
  %.2.i6 = phi i32 [ %i.bs, %.thread18.i7 ], [ %i.bm, %bb.l ], [ %i.bc, %bb.j ], [ %i.aw, %.lr.ph.i.i ]
  %i.bt = icmp slt i32 %.2.i6, 1
  %i.bu = getelementptr i8, ptr %.149.i.i, i64 32 ; 2 uses
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %actioncmp.exit8
  store ptr %.14048.i.i, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %.14048.i.i, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %bb.o

bb.n:                                             ; preds = %actioncmp.exit8
  store ptr %.14347.i.i, ptr %i.bu, align 8
  %i.bx = getelementptr i8, ptr %.14347.i.i, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.244.i.i = phi ptr [ %.14347.i.i, %bb.m ], [ %i.by, %bb.n ] ; 3 uses
  %.241.i.i = phi ptr [ %i.bw, %bb.m ], [ %.14048.i.i, %bb.n ] ; 3 uses
  %.2.i.i = phi ptr [ %.14048.i.i, %bb.m ], [ %.14347.i.i, %bb.n ] ; 2 uses
  %i.bz = icmp ne ptr %.241.i.i, null             ; 2 uses
end_hunk_3
begin_hunk_4_@Reprint:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef @.str.88, ptr noundef %i.b) ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.045 = phi i32 [ 10, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i64 @strlen(ptr noundef %i.k) #44
  %i.m = trunc i64 %i.l to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.045, i32 %i.m) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 10, %bb.a ], [ %spec.select, %bb.b ] ; 3 uses
  %i.n = add nuw i32 %.0.lcssa, 5
  %i.o = sdiv i32 76, %i.n
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1) ; 2 uses
  %i.p = add i32 %i.e, -1
  %i.q = add i32 %i.p, %spec.store.select
  %i.r = sdiv i32 %i.q, %spec.store.select        ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %._crit_edge
  %i.t = getelementptr i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph53, %._crit_edge50
  %.13651 = phi i32 [ 0, %.lr.ph53 ], [ %i.ah, %._crit_edge50 ] ; 3 uses
  %i.u = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef @.str.89) ; 0 uses
  %i.v = load i32, ptr %i.d, align 8
  %i.w = icmp slt i32 %.13651, %i.v
  br i1 %i.w, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %bb.c, %.lr.ph49
  %.03447 = phi i32 [ %i.ad, %.lr.ph49 ], [ %.13651, %bb.c ] ; 3 uses
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = sext i32 %.03447 to i64
  %i.z = getelementptr [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef @.str.90, i32 noundef %.03447, i32 noundef %.0.lcssa, i32 noundef %.0.lcssa, ptr noundef %i.ab) ; 0 uses
  %i.ad = add i32 %.03447, %i.r                   ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph49, label %._crit_edge50, !llvm.loop !156

._crit_edge50:                                    ; preds = %.lr.ph49, %bb.c
  %i.ag = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef @.str.9) ; 0 uses
  %i.ah = add nuw nsw i32 %.13651, 1              ; 2 uses
  %exitcond62.not = icmp eq i32 %i.ah, %i.r
  br i1 %exitcond62.not, label %._crit_edge54, label %bb.c, !llvm.loop !157

._crit_edge54:                                    ; preds = %._crit_edge50, %._crit_edge
  %i.ai = getelementptr i8, ptr %0, i64 8
  %.03755 = load ptr, ptr %i.ai, align 8          ; 2 uses
  %.not56 = icmp eq ptr %.03755, null
  br i1 %.not56, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %._crit_edge54, %bb.e
  %.03757 = phi ptr [ %.037, %bb.e ], [ %.03755, %._crit_edge54 ] ; 3 uses
  %i.aj = load ptr, ptr @stdout, align 8
  tail call void @rule_print(ptr noundef %i.aj, ptr noundef nonnull %.03757)
  %i.ak = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef @.str.91) ; 0 uses
  %i.al = getelementptr i8, ptr %.03757, i64 80
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not42 = icmp eq ptr %i.am, null
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph59
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef @.str.92, ptr noundef %i.an) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph59
  %i.ap = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef @.str.9) ; 0 uses
  %i.aq = getelementptr i8, ptr %.03757, i64 128
  %.037 = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not = icmp eq ptr %.037, null
  br i1 %.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !158

._crit_edge60:                                    ; preds = %bb.e, %._crit_edge54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @SetSize(i32 noundef %0) local_unnamed_addr #27 {
bb.a:
  %i.a = add i32 %0, 1
  store i32 %i.a, ptr @size, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: read, target_mem: none) uwtable
define hidden noalias noundef ptr @State_arrayof() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @x3a, align 8              ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = sext i32 %i.d to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 8) #40 ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.j = and i64 %wide.trip.count, 3              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub nsw i64 %wide.trip.count, %i.l     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.m = getelementptr [32 x i8], ptr %i.i, i64 %index
  %i.n = getelementptr [32 x i8], ptr %i.i, i64 %index
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = getelementptr [32 x i8], ptr %i.i, i64 %index
  %i.q = getelementptr i8, ptr %i.p, i64 64
  %i.r = getelementptr [32 x i8], ptr %i.i, i64 %index
  %i.s = getelementptr i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.m, align 8
  %i.u = load ptr, ptr %i.o, align 8
  %i.v = insertelement <2 x ptr> poison, ptr %i.t, i64 0
  %i.w = insertelement <2 x ptr> %i.v, ptr %i.u, i64 1
  %i.x = load ptr, ptr %i.q, align 8
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = insertelement <2 x ptr> poison, ptr %i.x, i64 0
  %i.aa = insertelement <2 x ptr> %i.z, ptr %i.y, i64 1
  %i.ab = getelementptr [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store <2 x ptr> %i.w, ptr %i.ab, align 8
  store <2 x ptr> %i.aa, ptr %i.ac, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %scalar.ph.preheader, label %vector.body, !llvm.loop !159

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr [32 x i8], ptr %i.i, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  store ptr %i.af, ptr %i.ag, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !160

.loopexit:                                        ; preds = %scalar.ph, %.preheader, %bb.b, %bb.a
  %.09 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.f, %.preheader ], [ %i.f, %scalar.ph ]
  ret ptr %.09
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @CompressTables(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph190, label %._crit_edge213

.lr.ph190:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 96
  br label %bb.b

.preheader148:                                    ; preds = %.loopexit
  %i.e = icmp sgt i32 %i.bc, 0
  br i1 %i.e, label %.lr.ph198, label %._crit_edge213

bb.b:                                             ; preds = %.lr.ph190, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24       ; 3 uses
  %.0116156 = load ptr, ptr %i.i, align 8         ; 3 uses
  %.not130157 = icmp eq ptr %.0116156, null
  br i1 %.not130157, label %.loopexit, label %.lr.ph163

.lr.ph163:                                        ; preds = %bb.b, %bb.f
  %.0116161 = phi ptr [ %.0116, %bb.f ], [ %.0116156, %bb.b ] ; 5 uses
  %.0160 = phi i32 [ %.1146, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %.0109159 = phi i32 [ %.1110, %bb.f ], [ 0, %bb.b ] ; 5 uses
  %.0111158 = phi ptr [ %.1112, %bb.f ], [ null, %bb.b ] ; 5 uses
  %i.j = getelementptr i8, ptr %.0116161, i64 8
  %i.k = load i32, ptr %i.j, align 8
  switch i32 %i.k, label %bb.f [
    i32 0, label %.thread
    i32 2, label %bb.c
  ]

.thread:                                          ; preds = %.lr.ph163
  %i.l = load ptr, ptr %.0116161, align 8
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = icmp eq ptr %i.l, %i.m
  %spec.select = select i1 %i.n, i32 1, i32 %.0160
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph163
  %i.o = getelementptr i8, ptr %.0116161, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8
  %.not136 = icmp ne i32 %i.r, 0
  %i.s = icmp eq ptr %i.p, %.0111158
  %or.cond139 = select i1 %.not136, i1 true, i1 %i.s
  br i1 %or.cond139, label %bb.f, label %.preheader149

.preheader149:                                    ; preds = %bb.c
  %.0114.in151 = getelementptr i8, ptr %.0116161, i64 32
  %.0114152 = load ptr, ptr %.0114.in151, align 8 ; 2 uses
  %.not137153 = icmp eq ptr %.0114152, null
  br i1 %.not137153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader149, %bb.e
  %.0114155 = phi ptr [ %.0114, %bb.e ], [ %.0114152, %.preheader149 ] ; 3 uses
  %.0107154 = phi i32 [ %.1108, %bb.e ], [ 1, %.preheader149 ] ; 2 uses
  %i.t = getelementptr i8, ptr %.0114155, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %.not138 = icmp eq i32 %i.u, 2
  br i1 %.not138, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %.0114155, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.w, %i.p
  %i.y = zext i1 %i.x to i32
  %spec.select143 = add i32 %.0107154, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.1108 = phi i32 [ %.0107154, %.lr.ph ], [ %spec.select143, %bb.d ] ; 2 uses
  %.0114.in = getelementptr i8, ptr %.0114155, i64 32
  %.0114 = load ptr, ptr %.0114.in, align 8       ; 2 uses
  %.not137 = icmp eq ptr %.0114, null
  br i1 %.not137, label %._crit_edge, label %.lr.ph, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.e, %.preheader149
  %.0107.lcssa = phi i32 [ 1, %.preheader149 ], [ %.1108, %bb.e ] ; 2 uses
  %i.z = icmp sgt i32 %.0107.lcssa, %.0109159
  %spec.select141 = select i1 %i.z, ptr %i.p, ptr %.0111158
  %spec.select142 = tail call i32 @llvm.smax.i32(i32 %.0107.lcssa, i32 %.0109159)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph163, %.thread, %._crit_edge, %bb.c
  %.1146 = phi i32 [ %.0160, %.lr.ph163 ], [ %.0160, %bb.c ], [ %.0160, %._crit_edge ], [ %spec.select, %.thread ] ; 2 uses
  %.1112 = phi ptr [ %.0111158, %.lr.ph163 ], [ %.0111158, %bb.c ], [ %spec.select141, %._crit_edge ], [ %.0111158, %.thread ] ; 5 uses
  %.1110 = phi i32 [ %.0109159, %.lr.ph163 ], [ %.0109159, %bb.c ], [ %spec.select142, %._crit_edge ], [ %.0109159, %.thread ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.0116161, i64 32
  %.0116 = load ptr, ptr %i.aa, align 8           ; 2 uses
  %.not130 = icmp eq ptr %.0116, null
  br i1 %.not130, label %._crit_edge164, label %.lr.ph163, !llvm.loop !162

._crit_edge164:                                   ; preds = %bb.f
  %i.ab = icmp slt i32 %.1110, 1
  %i.ac = icmp ne i32 %.1146, 0
  %i.ad = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %i.ad, label %.loopexit, label %.lr.ph171

.lr.ph171:                                        ; preds = %._crit_edge164, %bb.h
  %.1117170 = phi ptr [ %.1117, %bb.h ], [ %.0116156, %._crit_edge164 ] ; 4 uses
  %i.ae = getelementptr i8, ptr %.1117170, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph171
  %i.ah = getelementptr i8, ptr %.1117170, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, %.1112
  br i1 %i.aj, label %._crit_edge172, label %bb.h

bb.h:                                             ; preds = %.lr.ph171, %bb.g
  %i.ak = getelementptr i8, ptr %.1117170, i64 32
  %.1117 = load ptr, ptr %i.ak, align 8           ; 2 uses
  %.not131 = icmp eq ptr %.1117, null
  br i1 %.not131, label %._crit_edge172, label %.lr.ph171, !llvm.loop !163

._crit_edge172:                                   ; preds = %bb.h, %bb.g
  %.1117.lcssa = phi ptr [ null, %bb.h ], [ %.1117170, %bb.g ] ; 2 uses
  %i.al = tail call ptr @Symbol_new(ptr noundef @.str.54)
  store ptr %i.al, ptr %.1117.lcssa, align 8
  %.2118.in176 = getelementptr i8, ptr %.1117.lcssa, i64 32
  %.2118177 = load ptr, ptr %.2118.in176, align 8 ; 2 uses
  %.not132178 = icmp eq ptr %.2118177, null
  br i1 %.not132178, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %._crit_edge172, %bb.k
  %.2118179 = phi ptr [ %.2118, %bb.k ], [ %.2118177, %._crit_edge172 ] ; 3 uses
  %i.am = getelementptr i8, ptr %.2118179, i64 8  ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph181
  %i.ap = getelementptr i8, ptr %.2118179, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.aq, %.1112
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 9, ptr %i.am, align 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph181, %bb.i, %bb.j
  %.2118.in = getelementptr i8, ptr %.2118179, i64 32
  %.2118 = load ptr, ptr %.2118.in, align 8       ; 2 uses
  %.not132 = icmp eq ptr %.2118, null
  br i1 %.not132, label %._crit_edge182, label %.lr.ph181, !llvm.loop !164

._crit_edge182:                                   ; preds = %bb.k, %._crit_edge172
  %i.as = load ptr, ptr %i.i, align 8
  %i.at = tail call fastcc ptr @Action_sort(ptr noundef %i.as) ; 3 uses
  store ptr %i.at, ptr %i.i, align 8
  %cond183 = icmp eq ptr %i.at, null
  br i1 %cond183, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %._crit_edge182, %bb.m
  %.3184 = phi ptr [ %i.az, %bb.m ], [ %i.at, %._crit_edge182 ] ; 3 uses
  %i.au = getelementptr i8, ptr %.3184, i64 8
  %i.av = load i32, ptr %i.au, align 8
  switch i32 %i.av, label %bb.m [
    i32 0, label %.loopexit
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph186
  %i.aw = getelementptr i8, ptr %.3184, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not134 = icmp eq ptr %i.ax, %.1112
  br i1 %.not134, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph186, %bb.l
  %i.ay = getelementptr i8, ptr %.3184, i64 32
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %cond = icmp eq ptr %i.az, null
  br i1 %cond, label %._crit_edge187, label %.lr.ph186, !llvm.loop !165

._crit_edge187:                                   ; preds = %bb.m, %._crit_edge182
  %i.ba = getelementptr i8, ptr %i.h, i64 64
  store i32 1, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.h, i64 56
  store ptr %.1112, ptr %i.bb, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.lr.ph186, %bb.b, %._crit_edge187, %._crit_edge164
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i32, ptr %i.a, align 8             ; 3 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %bb.b, label %.preheader148, !llvm.loop !166

.preheader147:                                    ; preds = %._crit_edge196
  %i.bf = icmp sgt i32 %i.bv, 0
  br i1 %i.bf, label %.lr.ph212, label %._crit_edge213

.lr.ph212:                                        ; preds = %.preheader147
  %i.bg = getelementptr i8, ptr %0, i64 44
  br label %bb.r

.lr.ph198:                                        ; preds = %.preheader148, %._crit_edge196
  %i.bh = phi i32 [ %i.bv, %._crit_edge196 ], [ %i.bc, %.preheader148 ]
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %._crit_edge196 ], [ 0, %.preheader148 ] ; 2 uses
  %1 = load ptr, ptr %0, align 8
  %i.bi = getelementptr [8 x i8], ptr %1, i64 %indvars.iv215
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 24
  %.4191 = load ptr, ptr %i.bk, align 8           ; 2 uses
  %.not126192 = icmp eq ptr %.4191, null
  br i1 %.not126192, label %._crit_edge196, label %.lr.ph195

.lr.ph195:                                        ; preds = %.lr.ph198, %bb.q
  %.4193 = phi ptr [ %.4, %bb.q ], [ %.4191, %.lr.ph198 ] ; 3 uses
  %i.bl = getelementptr i8, ptr %.4193, i64 8     ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %.not127 = icmp eq i32 %i.bm, 0
  br i1 %.not127, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.lr.ph195
  %i.bn = getelementptr i8, ptr %.4193, i64 16    ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 64
  %i.bq = load i32, ptr %i.bp, align 8
  %.not128 = icmp eq i32 %i.bq, 0
  br i1 %.not128, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr i8, ptr %i.bo, i64 56     ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %.not129 = icmp eq ptr %i.bs, null
  br i1 %.not129, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 10, ptr %i.bl, align 8
  %i.bt = load ptr, ptr %i.br, align 8
  store ptr %i.bt, ptr %i.bn, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p, %.lr.ph195
  %i.bu = getelementptr i8, ptr %.4193, i64 32
  %.4 = load ptr, ptr %i.bu, align 8              ; 2 uses
  %.not126 = icmp eq ptr %.4, null
  br i1 %.not126, label %._crit_edge196.loopexit, label %.lr.ph195, !llvm.loop !167

._crit_edge196.loopexit:                          ; preds = %bb.q
  %.pre.a = load i32, ptr %i.a, align 8
  br label %._crit_edge196

._crit_edge196:                                   ; preds = %._crit_edge196.loopexit, %.lr.ph198
  %i.bv = phi i32 [ %.pre.a, %._crit_edge196.loopexit ], [ %i.bh, %.lr.ph198 ] ; 4 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next216, %i.bw
  br i1 %i.bx, label %.lr.ph198, label %.preheader147, !llvm.loop !168

bb.r:                                             ; preds = %.lr.ph212, %._crit_edge210
  %i.by = phi i32 [ %i.bv, %.lr.ph212 ], [ %i.de, %._crit_edge210 ]
  %indvars.iv218 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next219, %._crit_edge210 ] ; 2 uses
  %i.bz = load ptr, ptr %0, align 8
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %indvars.iv218
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 24     ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not206 = icmp eq ptr %i.cd, null
  br i1 %.not206, label %._crit_edge210, label %.lr.ph209

.lr.ph209:                                        ; preds = %bb.r, %bb.w
  %.5207 = phi ptr [ %.0113, %bb.w ], [ %i.cd, %bb.r ] ; 7 uses
  %i.ce = getelementptr i8, ptr %.5207, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8            ; 4 uses
  %i.cg = getelementptr i8, ptr %.5207, i64 8     ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %.not122 = icmp eq i32 %i.ch, 10
  br i1 %.not122, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.lr.ph209
  %i.ci = getelementptr i8, ptr %.5207, i64 16    ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 96
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr i8, ptr %i.cj, i64 24
  %i.co = load i32, ptr %i.cn, align 8
  %.not123 = icmp eq i32 %i.co, 1
  br i1 %.not123, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %.5207, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = load i32, ptr %i.bg, align 4
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.u
  %.1115199 = load ptr, ptr %i.cc, align 8        ; 2 uses
  %.not124200 = icmp eq ptr %.1115199, null
  br i1 %.not124200, label %.critedge, label %.lr.ph202

.lr.ph202:                                        ; preds = %.preheader, %.critedge3
  %.1115201 = phi ptr [ %.1115, %.critedge3 ], [ %.1115199, %.preheader ] ; 4 uses
  %i.cu = icmp eq ptr %.1115201, %.5207
  br i1 %i.cu, label %.critedge3, label %bb.v

bb.v:                                             ; preds = %.lr.ph202
  %i.cv = load ptr, ptr %.1115201, align 8
  %i.cw = load ptr, ptr %i.cj, align 8
  %.not125 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not125, label %.critedge, label %.critedge3

.critedge3:                                       ; preds = %.lr.ph202, %bb.v
  %i.cx = getelementptr i8, ptr %.1115201, i64 32
  %.1115 = load ptr, ptr %i.cx, align 8           ; 2 uses
  %.not124 = icmp eq ptr %.1115, null
  br i1 %.not124, label %.critedge, label %.lr.ph202, !llvm.loop !169

.critedge:                                        ; preds = %bb.v, %.critedge3, %.preheader
  %.1115.lcssa = phi ptr [ null, %.preheader ], [ null, %.critedge3 ], [ %.1115201, %bb.v ] ; 3 uses
  %i.cy = load ptr, ptr %.1115.lcssa, align 8
  %i.cz = getelementptr i8, ptr %.5207, i64 24
  store ptr %i.cy, ptr %i.cz, align 8
  %i.da = getelementptr i8, ptr %.1115.lcssa, i64 8
  %i.db = load i32, ptr %i.da, align 8
  store i32 %i.db, ptr %i.cg, align 8
  %i.dc = getelementptr i8, ptr %.1115.lcssa, i64 16
  %i.dd = load i64, ptr %i.dc, align 8
  store i64 %i.dd, ptr %i.ci, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %.lr.ph209, %.critedge
  %.0113 = phi ptr [ %i.cf, %.lr.ph209 ], [ %i.cf, %bb.s ], [ %i.cf, %bb.t ], [ %i.cf, %bb.u ], [ %.5207, %.critedge ] ; 2 uses
  %.not = icmp eq ptr %.0113, null
  br i1 %.not, label %._crit_edge210.loopexit, label %.lr.ph209, !llvm.loop !170

._crit_edge210.loopexit:                          ; preds = %bb.w
  %.pre221.a = load i32, ptr %i.a, align 8
  br label %._crit_edge210

._crit_edge210:                                   ; preds = %._crit_edge210.loopexit, %bb.r
  %i.de = phi i32 [ %.pre221.a, %._crit_edge210.loopexit ], [ %i.by, %bb.r ] ; 2 uses
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next219, %i.df
  br i1 %i.dg, label %bb.r, label %._crit_edge213, !llvm.loop !171

._crit_edge213:                                   ; preds = %._crit_edge210, %bb.a, %.preheader148, %.preheader147
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define hidden void @ResortStates(ptr nofree noundef captures(none) %0) local_unnamed_addr #28 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 56
  %i.e = getelementptr i8, ptr %0, i64 52
  %i.f = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 44         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 88
  %i.i = getelementptr i8, ptr %0, i64 48
  %i.j = getelementptr i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph52, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 36
  %i.o = getelementptr i8, ptr %i.m, i64 32       ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 48       ; 2 uses
  store i32 -1, ptr %i.p, align 8
  store <4 x i32> <i32 0, i32 0, i32 -2147483647, i32 -2147483647>, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.m, i64 24
  %.047 = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not4348 = icmp eq ptr %.047, null
  br i1 %.not4348, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %compute_action.exit.thread
  %i.r = phi i32 [ %i.bl, %compute_action.exit.thread ], [ 0, %bb.b ] ; 5 uses
  %i.s = phi i32 [ %i.bm, %compute_action.exit.thread ], [ 0, %bb.b ] ; 5 uses
  %.049 = phi ptr [ %.0, %compute_action.exit.thread ], [ %.047, %bb.b ] ; 8 uses
  %i.t = getelementptr i8, ptr %.049, i64 8
  %i.u = load i32, ptr %i.t, align 8
  switch i32 %i.u, label %compute_action.exit.thread [
    i32 0, label %bb.c
    i32 10, label %bb.d
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 1, label %bb.k
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %.049, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8
  br label %compute_action.exit

bb.d:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %.049, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = load i32, ptr %i.g, align 4
  %.not.i = icmp slt i32 %i.ab, %i.ac
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %.not17.i = icmp eq i32 %i.ab, %i.ag
  br i1 %.not17.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = load i32, ptr %i.f, align 8
  %i.ai = getelementptr i8, ptr %.049, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 92
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = add i32 %i.al, %i.ah
  br label %compute_action.exit

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.an = load i32, ptr %i.i, align 8
  %i.ao = getelementptr i8, ptr %.049, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 92
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add i32 %i.ar, %i.an
  br label %compute_action.exit

bb.i:                                             ; preds = %.lr.ph
  %i.at = load i32, ptr %i.f, align 8
  %i.au = getelementptr i8, ptr %.049, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 92
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add i32 %i.ax, %i.at
end_hunk_4
begin_hunk_5_@ReportTable:bb.a
    i32 10, label %bb.bo
    i32 2, label %bb.bp
    i32 3, label %bb.bq
    i32 1, label %bb.br
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.qz = getelementptr i8, ptr %.08321046, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = getelementptr i8, ptr %i.ra, i64 16
  %i.rc = load i32, ptr %i.rb, align 8
  br label %compute_action.exit

bb.bo:                                            ; preds = %bb.bm
  %i.rd = load i32, ptr %i.e, align 8
  %i.re = getelementptr i8, ptr %.08321046, i64 16
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = getelementptr i8, ptr %i.rf, i64 92
  %i.rh = load i32, ptr %i.rg, align 4
  %i.ri = add i32 %i.rh, %i.rd
  br label %compute_action.exit

bb.bp:                                            ; preds = %bb.bm
  %i.rj = load i32, ptr %i.o, align 8
  %i.rk = getelementptr i8, ptr %.08321046, i64 16
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = getelementptr i8, ptr %i.rl, i64 92
  %i.rn = load i32, ptr %i.rm, align 4
  %i.ro = add i32 %i.rn, %i.rj
  br label %compute_action.exit

bb.bq:                                            ; preds = %bb.bm
  %i.rp = load i32, ptr %i.i, align 4
  br label %compute_action.exit

bb.br:                                            ; preds = %bb.bm
  %i.rq = load i32, ptr %i.k, align 8
  br label %compute_action.exit

compute_action.exit:                              ; preds = %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br
  %.0.i947 = phi i32 [ %i.rq, %bb.br ], [ %i.rc, %bb.bn ], [ %i.rp, %bb.bq ], [ %i.ri, %bb.bo ], [ %i.ro, %bb.bp ] ; 2 uses
  %i.rr = icmp slt i32 %.0.i947, 0
  br i1 %i.rr, label %compute_action.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %compute_action.exit
  call void @acttab_action(ptr noundef nonnull %i.py, i32 noundef %i.qv, i32 noundef %.0.i947)
  br label %compute_action.exit.thread

compute_action.exit.thread:                       ; preds = %bb.bm, %compute_action.exit, %.lr.ph1048, %bb.bs
  %i.rs = getelementptr i8, ptr %.08321046, i64 32
  %.0832 = load ptr, ptr %i.rs, align 8           ; 2 uses
  %.not923 = icmp eq ptr %.0832, null
  br i1 %.not923, label %._crit_edge1049, label %.lr.ph1048, !llvm.loop !197

._crit_edge1049:                                  ; preds = %compute_action.exit.thread, %bb.bl
  %i.rt = call i32 @acttab_insert(ptr noundef nonnull %i.py, i32 noundef 1) ; 3 uses
  %i.ru = getelementptr i8, ptr %i.qp, i64 40
  store i32 %i.rt, ptr %i.ru, align 8
  %spec.select926 = call i32 @llvm.smin.i32(i32 %i.rt, i32 %.080210571381)
  %spec.select935 = call i32 @llvm.smax.i32(i32 %i.rt, i32 %.080010581380)
  br label %bb.cf

bb.bt:                                            ; preds = %.lr.ph1382
  br i1 %.not9221051, label %._crit_edge1055, label %.lr.ph1054

.lr.ph1054:                                       ; preds = %bb.bt, %compute_action.exit952.thread
  %.18331052 = phi ptr [ %.1833, %compute_action.exit952.thread ], [ %.18331050, %bb.bt ] ; 7 uses
  %i.rv = load ptr, ptr %.18331052, align 8
  %i.rw = getelementptr i8, ptr %i.rv, i64 8
  %i.rx = load i32, ptr %i.rw, align 8            ; 4 uses
  %i.ry = load i32, ptr %i.fv, align 4
  %i.rz = icmp slt i32 %i.rx, %i.ry
  br i1 %i.rz, label %compute_action.exit952.thread, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph1054
  %i.sa = load i32, ptr %i.go, align 8
  %i.sb = icmp eq i32 %i.rx, %i.sa
  br i1 %i.sb, label %compute_action.exit952.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sc = getelementptr i8, ptr %.18331052, i64 8
  %i.sd = load i32, ptr %i.sc, align 8
  switch i32 %i.sd, label %compute_action.exit952.thread [
    i32 0, label %bb.bw
    i32 10, label %bb.bx
    i32 2, label %bb.cb
    i32 3, label %bb.cc
    i32 1, label %bb.cd
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.se = getelementptr i8, ptr %.18331052, i64 16
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = getelementptr i8, ptr %i.sf, i64 16
  %i.sh = load i32, ptr %i.sg, align 8
  br label %compute_action.exit952

bb.bx:                                            ; preds = %bb.bv
  %i.si = load ptr, ptr %i.mz, align 8            ; 2 uses
  %i.sj = icmp eq ptr %i.si, null
  br i1 %i.sj, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.sk = getelementptr i8, ptr %i.si, i64 8
  %i.sl = load i32, ptr %i.sk, align 8
  %.not17.i951 = icmp eq i32 %i.rx, %i.sl
  br i1 %.not17.i951, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.sm = load i32, ptr %i.o, align 8
  %i.sn = getelementptr i8, ptr %.18331052, i64 16
  %i.so = load ptr, ptr %i.sn, align 8
  %i.sp = getelementptr i8, ptr %i.so, i64 92
  %i.sq = load i32, ptr %i.sp, align 4
  %i.sr = add i32 %i.sq, %i.sm
  br label %compute_action.exit952

bb.ca:                                            ; preds = %bb.by
  %i.ss = load i32, ptr %i.e, align 8
  %i.st = getelementptr i8, ptr %.18331052, i64 16
  %i.su = load ptr, ptr %i.st, align 8
  %i.sv = getelementptr i8, ptr %i.su, i64 92
  %i.sw = load i32, ptr %i.sv, align 4
  %i.sx = add i32 %i.sw, %i.ss
  br label %compute_action.exit952

bb.cb:                                            ; preds = %bb.bv
  %i.sy = load i32, ptr %i.o, align 8
  %i.sz = getelementptr i8, ptr %.18331052, i64 16
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = getelementptr i8, ptr %i.ta, i64 92
  %i.tc = load i32, ptr %i.tb, align 4
  %i.td = add i32 %i.tc, %i.sy
  br label %compute_action.exit952

bb.cc:                                            ; preds = %bb.bv
  %i.te = load i32, ptr %i.i, align 4
  br label %compute_action.exit952

bb.cd:                                            ; preds = %bb.bv
  %i.tf = load i32, ptr %i.k, align 8
  br label %compute_action.exit952

compute_action.exit952:                           ; preds = %bb.bw, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd
  %.0.i949 = phi i32 [ %i.tf, %bb.cd ], [ %i.sh, %bb.bw ], [ %i.sr, %bb.bz ], [ %i.sx, %bb.ca ], [ %i.td, %bb.cb ], [ %i.te, %bb.cc ] ; 2 uses
  %i.tg = icmp slt i32 %.0.i949, 0
  br i1 %i.tg, label %compute_action.exit952.thread, label %bb.ce

bb.ce:                                            ; preds = %compute_action.exit952
  call void @acttab_action(ptr noundef nonnull %i.py, i32 noundef %i.rx, i32 noundef %.0.i949)
  br label %compute_action.exit952.thread

compute_action.exit952.thread:                    ; preds = %bb.bv, %compute_action.exit952, %bb.bu, %.lr.ph1054, %bb.ce
  %i.th = getelementptr i8, ptr %.18331052, i64 32
  %.1833 = load ptr, ptr %i.th, align 8           ; 2 uses
  %.not922 = icmp eq ptr %.1833, null
  br i1 %.not922, label %._crit_edge1055, label %.lr.ph1054, !llvm.loop !198

._crit_edge1055:                                  ; preds = %compute_action.exit952.thread, %bb.bt
  %i.ti = call i32 @acttab_insert(ptr noundef nonnull %i.py, i32 noundef 0) ; 3 uses
  %i.tj = getelementptr i8, ptr %i.qp, i64 44
  store i32 %i.ti, ptr %i.tj, align 4
  %spec.select927 = call i32 @llvm.smin.i32(i32 %i.ti, i32 %.079710591379)
  %spec.select936 = call i32 @llvm.smax.i32(i32 %i.ti, i32 %.079510601378)
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge1055, %._crit_edge1049
  %.2804 = phi i32 [ %spec.select926, %._crit_edge1049 ], [ %.080210571381, %._crit_edge1055 ] ; 3 uses
  %.1801 = phi i32 [ %spec.select935, %._crit_edge1049 ], [ %.080010581380, %._crit_edge1055 ] ; 3 uses
  %.2799 = phi i32 [ %.079710591379, %._crit_edge1049 ], [ %spec.select927, %._crit_edge1055 ] ; 3 uses
  %.1796 = phi i32 [ %.079510601378, %._crit_edge1049 ], [ %spec.select936, %._crit_edge1055 ] ; 3 uses
  %indvars.iv.next1231 = add nuw nsw i64 %indvars.iv12301377, 1 ; 3 uses
  %i.tk = load i32, ptr %i.nt, align 4            ; 3 uses
  %i.tl = shl i32 %i.tk, 1
  %i.tm = sext i32 %i.tl to i64
  %i.tn = icmp slt i64 %indvars.iv.next1231, %i.tm
  br i1 %i.tn, label %.lr.ph1061, label %..critedge12.loopexit_crit_edge, !llvm.loop !196

..critedge12.loopexit_crit_edge:                  ; preds = %bb.cf
  br label %.critedge12, !llvm.loop !196

.critedge12:                                      ; preds = %.lr.ph1061, %.lr.ph1061.preheader, %..critedge12.loopexit_crit_edge, %acttab_alloc.exit
  %i.to = phi i32 [ %i.qe, %acttab_alloc.exit ], [ %i.qe, %.lr.ph1061.preheader ], [ %i.tk, %..critedge12.loopexit_crit_edge ], [ %i.tk, %.lr.ph1061 ]
  %.0802.lcssa = phi i32 [ 0, %acttab_alloc.exit ], [ 0, %.lr.ph1061.preheader ], [ %.2804, %..critedge12.loopexit_crit_edge ], [ %.2804, %.lr.ph1061 ] ; 4 uses
  %.0800.lcssa = phi i32 [ 0, %acttab_alloc.exit ], [ 0, %.lr.ph1061.preheader ], [ %.1801, %..critedge12.loopexit_crit_edge ], [ %.1801, %.lr.ph1061 ]
  %.0797.lcssa = phi i32 [ 0, %acttab_alloc.exit ], [ 0, %.lr.ph1061.preheader ], [ %.2799, %..critedge12.loopexit_crit_edge ], [ %.2799, %.lr.ph1061 ] ; 2 uses
  %.0795.lcssa = phi i32 [ 0, %acttab_alloc.exit ], [ 0, %.lr.ph1061.preheader ], [ %.1796, %..critedge12.loopexit_crit_edge ], [ %.1796, %.lr.ph1061 ] ; 5 uses
  call void @free(ptr noundef %i.nx) #42
  %i.tp = getelementptr i8, ptr %0, i64 8         ; 7 uses
  %.18251071 = load ptr, ptr %i.tp, align 8       ; 2 uses
  %.not8921072 = icmp eq ptr %.18251071, null
  br i1 %.not8921072, label %.preheader980, label %.lr.ph1074

.preheader980.loopexit:                           ; preds = %.lr.ph1074
  %.pre1286 = load i32, ptr %i.nt, align 4
  br label %.preheader980

.preheader980:                                    ; preds = %.preheader980.loopexit, %.critedge12
  %i.tq = phi i32 [ %.pre1286, %.preheader980.loopexit ], [ %i.to, %.critedge12 ] ; 3 uses
  %i.tr = icmp sgt i32 %i.tq, 0
  br i1 %i.tr, label %.lr.ph1082, label %._crit_edge1083

.lr.ph1074:                                       ; preds = %.critedge12, %.lr.ph1074
  %.18251073 = phi ptr [ %.1825, %.lr.ph1074 ], [ %.18251071, %.critedge12 ] ; 2 uses
  %i.ts = getelementptr i8, ptr %.18251073, i64 108
  store i32 0, ptr %i.ts, align 4
  %i.tt = getelementptr i8, ptr %.18251073, i64 128
  %.1825 = load ptr, ptr %i.tt, align 8           ; 2 uses
  %.not892 = icmp eq ptr %.1825, null
  br i1 %.not892, label %.preheader980.loopexit, label %.lr.ph1074, !llvm.loop !199

.lr.ph1082:                                       ; preds = %.preheader980, %._crit_edge1080
  %i.tu = phi i32 [ %i.ue, %._crit_edge1080 ], [ %i.tq, %.preheader980 ]
  %indvars.iv1233 = phi i64 [ %indvars.iv.next1234, %._crit_edge1080 ], [ 0, %.preheader980 ] ; 2 uses
  %3 = load ptr, ptr %0, align 8
  %i.tv = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1233
  %i.tw = load ptr, ptr %i.tv, align 8
  %i.tx = getelementptr i8, ptr %i.tw, i64 24
  %.28341075 = load ptr, ptr %i.tx, align 8       ; 2 uses
  %.not9201076 = icmp eq ptr %.28341075, null
  br i1 %.not9201076, label %._crit_edge1080, label %.lr.ph1079

.lr.ph1079:                                       ; preds = %.lr.ph1082, %bb.ch
  %.28341077 = phi ptr [ %.2834, %bb.ch ], [ %.28341075, %.lr.ph1082 ] ; 3 uses
  %i.ty = getelementptr i8, ptr %.28341077, i64 8
  %i.tz = load i32, ptr %i.ty, align 8
  switch i32 %i.tz, label %bb.ch [
    i32 2, label %bb.cg
    i32 10, label %bb.cg
  ]

bb.cg:                                            ; preds = %.lr.ph1079, %.lr.ph1079
  %i.ua = getelementptr i8, ptr %.28341077, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8
  %i.uc = getelementptr i8, ptr %i.ub, i64 108
  store i32 1, ptr %i.uc, align 4
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph1079, %bb.cg
  %i.ud = getelementptr i8, ptr %.28341077, i64 32
  %.2834 = load ptr, ptr %i.ud, align 8           ; 2 uses
  %.not920 = icmp eq ptr %.2834, null
  br i1 %.not920, label %._crit_edge1080.loopexit, label %.lr.ph1079, !llvm.loop !200

._crit_edge1080.loopexit:                         ; preds = %bb.ch
  %.pre1287.a = load i32, ptr %i.nt, align 4
  br label %._crit_edge1080

._crit_edge1080:                                  ; preds = %._crit_edge1080.loopexit, %.lr.ph1082
  %i.ue = phi i32 [ %.pre1287.a, %._crit_edge1080.loopexit ], [ %i.tu, %.lr.ph1082 ] ; 3 uses
  %indvars.iv.next1234 = add nuw nsw i64 %indvars.iv1233, 1 ; 2 uses
  %i.uf = sext i32 %i.ue to i64
  %i.ug = icmp slt i64 %indvars.iv.next1234, %i.uf
  br i1 %i.ug, label %.lr.ph1082, label %._crit_edge1083, !llvm.loop !201

._crit_edge1083:                                  ; preds = %._crit_edge1080, %.preheader980
  %.lcssa986 = phi i32 [ %i.tq, %.preheader980 ], [ %i.ue, %._crit_edge1080 ]
  %i.uh = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.212, i32 noundef %.lcssa986) ; 0 uses
  %i.ui = load i32, ptr %i.b, align 4
  %i.uj = add i32 %i.ui, 1
  store i32 %i.uj, ptr %i.b, align 4
  %i.uk = load i32, ptr %i.f, align 8
  %i.ul = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.213, i32 noundef %i.uk) ; 0 uses
  %i.um = load i32, ptr %i.b, align 4
  %i.un = add i32 %i.um, 1
  store i32 %i.un, ptr %i.b, align 4
  %i.uo = getelementptr i8, ptr %0, i64 36
  %i.up = load i32, ptr %i.uo, align 4
  %i.uq = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.214, i32 noundef %i.up) ; 0 uses
  %i.ur = load i32, ptr %i.b, align 4
  %i.us = add i32 %i.ur, 1
  store i32 %i.us, ptr %i.b, align 4
  %i.ut = load i32, ptr %i.fv, align 4
  %i.uu = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.215, i32 noundef %i.ut) ; 0 uses
  %i.uv = load i32, ptr %i.b, align 4
  %i.uw = add i32 %i.uv, 1
  store i32 %i.uw, ptr %i.b, align 4
  %i.ux = load i32, ptr %i.nt, align 4
  %i.uy = add i32 %i.ux, -1
  %i.uz = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.216, i32 noundef %i.uy) ; 0 uses
  %i.va = load i32, ptr %i.b, align 4
  %i.vb = add i32 %i.va, 1
  store i32 %i.vb, ptr %i.b, align 4
  %i.vc = load i32, ptr %i.e, align 8             ; 2 uses
  %i.vd = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.217, i32 noundef %i.vc) ; 0 uses
  %i.ve = load i32, ptr %i.b, align 4
  %i.vf = add i32 %i.ve, 1
  store i32 %i.vf, ptr %i.b, align 4
  %i.vg = load i32, ptr %i.f, align 8
  %i.vh = add i32 %i.vc, -1
  %i.vi = add i32 %i.vh, %i.vg
  %i.vj = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.218, i32 noundef %i.vi) ; 0 uses
  %i.vk = load i32, ptr %i.b, align 4
  %i.vl = add i32 %i.vk, 1
  store i32 %i.vl, ptr %i.b, align 4
  %i.vm = load i32, ptr %i.i, align 4
  %i.vn = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.219, i32 noundef %i.vm) ; 0 uses
  %i.vo = load i32, ptr %i.b, align 4
  %i.vp = add i32 %i.vo, 1
  store i32 %i.vp, ptr %i.b, align 4
  %i.vq = load i32, ptr %i.k, align 8
  %i.vr = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.220, i32 noundef %i.vq) ; 0 uses
  %i.vs = load i32, ptr %i.b, align 4
  %i.vt = add i32 %i.vs, 1
  store i32 %i.vt, ptr %i.b, align 4
  %i.vu = load i32, ptr %i.m, align 4
  %i.vv = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.221, i32 noundef %i.vu) ; 0 uses
  %i.vw = load i32, ptr %i.b, align 4
  %i.vx = add i32 %i.vw, 1
  store i32 %i.vx, ptr %i.b, align 4
  %i.vy = load i32, ptr %i.o, align 8
  %i.vz = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.222, i32 noundef %i.vy) ; 0 uses
  %i.wa = load i32, ptr %i.b, align 4
  %i.wb = add i32 %i.wa, 1
  store i32 %i.wb, ptr %i.b, align 4
  %i.wc = load i32, ptr %i.o, align 8
  %i.wd = load i32, ptr %i.f, align 8
  %i.we = add i32 %i.wc, -1
  %i.wf = add i32 %i.we, %i.wd
  %i.wg = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.223, i32 noundef %i.wf) ; 0 uses
  %i.wh = load i32, ptr %i.b, align 4
  %i.wi = add i32 %i.wh, 1
  store i32 %i.wi, ptr %i.b, align 4
  %i.wj = load ptr, ptr %i.fi, align 8
  call void @tplt_xfer(ptr noundef %i.wj, ptr noundef %i.r, ptr noundef %i.w, ptr noundef nonnull %i.b)
  %i.wk = load i32, ptr %i.py, align 8            ; 7 uses
  %i.wl = icmp sgt i32 %i.wk, 0                   ; 2 uses
  br i1 %i.wl, label %.lr.ph.i953, label %acttab_action_size.exit

.lr.ph.i953:                                      ; preds = %._crit_edge1083
  %i.wm = getelementptr i8, ptr %i.py, i64 8
  %i.wn = load ptr, ptr %i.wm, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cj, %.lr.ph.i953
  %.05.i = phi i32 [ %i.wk, %.lr.ph.i953 ], [ %i.wt, %bb.cj ] ; 4 uses
  %i.wo = zext nneg i32 %.05.i to i64
  %i.wp = getelementptr [8 x i8], ptr %i.wn, i64 %i.wo
  %i.wq = getelementptr i8, ptr %i.wp, i64 -8
  %i.wr = load i32, ptr %i.wq, align 4
  %i.ws = icmp slt i32 %i.wr, 0
  br i1 %i.ws, label %bb.cj, label %acttab_action_size.exit

bb.cj:                                            ; preds = %bb.ci
  %i.wt = add nsw i32 %.05.i, -1
  %i.wu = icmp sgt i32 %.05.i, 1
  br i1 %i.wu, label %bb.ci, label %acttab_action_size.exit, !llvm.loop !1

acttab_action_size.exit:                          ; preds = %bb.ci, %bb.cj, %._crit_edge1083
  %.0.lcssa.i = phi i32 [ %i.wk, %._crit_edge1083 ], [ %.05.i, %bb.ci ], [ 0, %bb.cj ] ; 7 uses
  %i.wv = getelementptr i8, ptr %0, i64 252       ; 5 uses
  store i32 %.0.lcssa.i, ptr %i.wv, align 4
  %i.ww = select i1 %i.hb, i32 1, i32 2
  %i.wx = select i1 %i.ha, i32 0, i32 %i.ww       ; 2 uses
  %i.wy = shl i32 %.0.lcssa.i, %i.wx
  %i.wz = getelementptr i8, ptr %0, i64 260       ; 12 uses
  %i.xa = load i32, ptr %i.wz, align 4
  %i.xb = add i32 %i.xa, %i.wy
  store i32 %i.xb, ptr %i.wz, align 4
  %i.xc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.224, i32 noundef %.0.lcssa.i) ; 0 uses
  %i.xd = load i32, ptr %i.b, align 4
  %i.xe = add i32 %i.xd, 1
  store i32 %i.xe, ptr %i.b, align 4
  %i.xf = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.225) ; 0 uses
  %i.xg = load i32, ptr %i.b, align 4
  %i.xh = add i32 %i.xg, 1
  store i32 %i.xh, ptr %i.b, align 4
  %i.xi = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.xi, label %.lr.ph1087, label %._crit_edge1088

.lr.ph1087:                                       ; preds = %acttab_action_size.exit
  %i.xj = getelementptr i8, ptr %i.py, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8            ; 2 uses
  %i.xl = add nsw i32 %.0.lcssa.i, -1
  %i.xm = zext nneg i32 %i.xl to i64              ; 2 uses
  %wide.trip.count1239 = zext nneg i32 %.0.lcssa.i to i64
  %.not1416 = icmp eq i32 %.0.lcssa.i, 1
  br i1 %.not1416, label %._crit_edge1088.loopexit.peel.begin, label %.lr.ph1087.split

.lr.ph1087.split:                                 ; preds = %.lr.ph1087
  %i.xn = add nsw i64 %wide.trip.count1239, -2
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph1087.split, %bb.cr
  %indvars.iv1236 = phi i64 [ 0, %.lr.ph1087.split ], [ %indvars.iv.next1237, %bb.cr ] ; 5 uses
  %.18081086 = phi i32 [ 0, %.lr.ph1087.split ], [ %.2809, %bb.cr ] ; 3 uses
  %i.xo = getelementptr [8 x i8], ptr %i.xk, i64 %indvars.iv1236
  %i.xp = getelementptr i8, ptr %i.xo, i64 4
  %i.xq = load i32, ptr %i.xp, align 4            ; 2 uses
  %i.xr = icmp slt i32 %i.xq, 0
  br i1 %i.xr, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.xs = load i32, ptr %i.m, align 4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.0792 = phi i32 [ %i.xs, %bb.cl ], [ %i.xq, %bb.ck ]
  %i.xt = icmp eq i32 %.18081086, 0
  br i1 %i.xt, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.xu = trunc nuw nsw i64 %indvars.iv1236 to i32
  %i.xv = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.226, i32 noundef %i.xu) ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.xw = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.227, i32 noundef %.0792) ; 0 uses
  %i.xx = icmp eq i32 %.18081086, 9
  %i.xy = icmp eq i64 %indvars.iv1236, %i.xm
  %or.cond929 = or i1 %i.xy, %i.xx
  br i1 %or.cond929, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.xz = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.9) ; 0 uses
  %i.ya = load i32, ptr %i.b, align 4
  %i.yb = add i32 %i.ya, 1
  store i32 %i.yb, ptr %i.b, align 4
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.yc = add i32 %.18081086, 1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.2809 = phi i32 [ 0, %bb.cp ], [ %i.yc, %bb.cq ] ; 2 uses
  %indvars.iv.next1237 = add nuw nsw i64 %indvars.iv1236, 1 ; 2 uses
  %exitcond1240.not = icmp eq i64 %indvars.iv1236, %i.xn
  br i1 %exitcond1240.not, label %._crit_edge1088.loopexit.peel.begin, label %bb.ck, !llvm.loop !202

._crit_edge1088.loopexit.peel.begin:              ; preds = %.lr.ph1087, %bb.cr
  %i.yd = phi i64 [ 0, %.lr.ph1087 ], [ %indvars.iv.next1237, %bb.cr ] ; 3 uses
  %i.ye = phi i32 [ 0, %.lr.ph1087 ], [ %.2809, %bb.cr ] ; 2 uses
  %i.yf = getelementptr [8 x i8], ptr %i.xk, i64 %i.yd
  %i.yg = getelementptr i8, ptr %i.yf, i64 4
  %i.yh = load i32, ptr %i.yg, align 4            ; 2 uses
  %i.yi = icmp slt i32 %i.yh, 0
  br i1 %i.yi, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %._crit_edge1088.loopexit.peel.begin
  %i.yj = load i32, ptr %i.m, align 4
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %._crit_edge1088.loopexit.peel.begin
  %.0792.peel = phi i32 [ %i.yj, %bb.cs ], [ %i.yh, %._crit_edge1088.loopexit.peel.begin ]
  %i.yk = icmp eq i32 %i.ye, 0
  br i1 %i.yk, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.yl = trunc nuw nsw i64 %i.yd to i32
end_hunk_5
