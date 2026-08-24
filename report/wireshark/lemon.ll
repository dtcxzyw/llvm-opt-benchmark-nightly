Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lemon?download=true
inline.NumInlined: 160
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@acttab_insert:bb.a
  store i64 %i.ej, ptr %i.ei, align 4
  %i.ek = load i32, ptr %0, align 8               ; 2 uses
  %.not142 = icmp slt i32 %i.ef, %i.ek
  br i1 %.not142, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = add i32 %i.ef, 1                        ; 2 uses
  store i32 %i.el, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.em = phi i32 [ %i.ek, %bb.t ], [ %i.el, %bb.u ]
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %i.en = load i32, ptr %i.du, align 4
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next214, %i.eo
  br i1 %i.ep, label %bb.t, label %._crit_edge188, !llvm.loop !19

._crit_edge188:                                   ; preds = %bb.v, %.loopexit
  %i.eq = phi i32 [ %i.ag, %.loopexit ], [ %i.em, %bb.v ]
  br i1 %.not135, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge188
  %i.er = getelementptr i8, ptr %0, i64 44
  %i.es = load i32, ptr %i.er, align 4
  %i.et = add i32 %i.es, %.3127                   ; 2 uses
  %.not141 = icmp slt i32 %i.et, %i.eq
  br i1 %.not141, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge188
  store i32 0, ptr %i.du, align 4
  %i.ev = getelementptr i8, ptr %0, i64 24
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = sub i32 %.3127, %i.ew
  ret i32 %i.ex
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @acttab_action_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.05 = phi i32 [ %i.a, %.lr.ph ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext nneg i32 %.05 to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.05, -1
  %i.k = icmp sgt i32 %.05, 1
  br i1 %i.k, label %bb.b, label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ 0, %bb.c ], [ %.05, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @FindRulePrecedences(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.02329 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not30 = icmp eq ptr %.02329, null
  br i1 %.not30, label %._crit_edge, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.a, %.critedge
  %.02331 = phi ptr [ %.023, %.critedge ], [ %.02329, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %.02331, i64 80    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.preheader24, label %.critedge

.preheader24:                                     ; preds = %.lr.ph33
  %i.e = getelementptr i8, ptr %.02331, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph27, label %.critedge

.lr.ph27:                                         ; preds = %.preheader24
  %i.h = getelementptr i8, ptr %.02331, i64 32
  %i.i = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph27, %.loopexit
  %indvars.iv36 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next37, %.loopexit ] ; 2 uses
  %i.j = phi ptr [ null, %.lr.ph27 ], [ %i.ae, %.loopexit ]
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv36
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = getelementptr i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.n, i64 88
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr i8, ptr %i.n, i64 96
  %i.v = load ptr, ptr %i.u, align 8
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !21

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
  br i1 %i.af, label %bb.b, label %.critedge, !llvm.loop !22

.critedge:                                        ; preds = %.loopexit, %bb.b, %.preheader24, %.lr.ph33
  %i.ag = getelementptr i8, ptr %.02331, i64 128
  %.023 = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not = icmp eq ptr %.023, null
  br i1 %.not, label %._crit_edge, label %.lr.ph33, !llvm.loop !23

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
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.b ]
  %i.m = getelementptr i8, ptr %0, i64 44
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp slt i32 %i.n, %i.l
  br i1 %i.o, label %.lr.ph84, label %.preheader74

.lr.ph84:                                         ; preds = %._crit_edge
  %1 = load i32, ptr @size, align 4
  %2 = sext i32 %1 to i64
  %i.p = getelementptr i8, ptr %0, i64 72
  %i.q = sext i32 %i.n to i64
  br label %bb.c

.preheader74:                                     ; preds = %SetNew.exit, %._crit_edge
  %i.r = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.split.us, label %.lr.ph97.outer

bb.c:                                             ; preds = %.lr.ph84, %SetNew.exit
  %indvars.iv128 = phi i64 [ %i.q, %.lr.ph84 ], [ %indvars.iv.next129, %SetNew.exit ] ; 2 uses
  %i.u = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 1) #40 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %SetNew.exit

bb.d:                                             ; preds = %bb.c
  tail call void @memory_error()
  unreachable

SetNew.exit:                                      ; preds = %bb.c
  %i.w = load ptr, ptr %i.p, align 8
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %indvars.iv128
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 40
  store ptr %i.u, ptr %i.z, align 8
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.aa = load i32, ptr %i.a, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next129, %i.ab
  br i1 %i.ac, label %bb.c, label %.preheader74, !llvm.loop !25

.preheader74.splitthread-pre-split:               ; preds = %.thread, %._crit_edge98
  %.05592.pr = load ptr, ptr %i.r, align 8        ; 2 uses
  %.not93 = icmp eq ptr %.05592.pr, null
  br i1 %.not93, label %.preheader72, label %.lr.ph97.outer.backedge

.lr.ph97.outer:                                   ; preds = %.preheader74, %.lr.ph97.outer.backedge
  %.05595.ph = phi ptr [ %.05595.ph.be, %.lr.ph97.outer.backedge ], [ %i.s, %.preheader74 ]
  %i.ad = phi i1 [ %.be, %.lr.ph97.outer.backedge ], [ true, %.preheader74 ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.outer, %bb.g
  %.05595 = phi ptr [ %.055, %bb.g ], [ %.05595.ph, %.lr.ph97.outer ] ; 5 uses
  %i.ae = load ptr, ptr %.05595, align 8          ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 48
  %i.ag = load i32, ptr %i.af, align 8
  %.not69 = icmp eq i32 %i.ag, 0
  br i1 %.not69, label %.preheader73, label %bb.g

.preheader73:                                     ; preds = %.lr.ph97
  %i.ah = getelementptr i8, ptr %.05595, i64 24
  %i.ai = load i32, ptr %i.ah, align 8            ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader73
  %i.ak = getelementptr i8, ptr %.05595, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %wide.trip.count = zext nneg i32 %i.ai to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph86, %bb.f
  %indvars.iv131 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next132, %bb.f ] ; 3 uses
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv131
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 48
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %._crit_edge87.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.e, !llvm.loop !26

._crit_edge87.loopexit:                           ; preds = %bb.e
  %i.ar = trunc nuw nsw i64 %indvars.iv131 to i32
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit, %.preheader73
  %.260.lcssa = phi i32 [ 0, %.preheader73 ], [ %i.ar, %._crit_edge87.loopexit ]
  %i.as = icmp eq i32 %.260.lcssa, %i.ai
  br i1 %i.as, label %.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge87, %.lr.ph97
  %i.at = getelementptr i8, ptr %.05595, i64 128
  %.055 = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not = icmp eq ptr %.055, null
  br i1 %.not, label %._crit_edge98, label %.lr.ph97, !llvm.loop !27

.thread:                                          ; preds = %._crit_edge87, %bb.f
  %i.au = getelementptr i8, ptr %i.ae, i64 48
  store i32 1, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %.05595, i64 128
  %.055150 = load ptr, ptr %i.av, align 8         ; 2 uses
  %.not151 = icmp eq ptr %.055150, null
  br i1 %.not151, label %.preheader74.splitthread-pre-split, label %.lr.ph97.outer.backedge

.lr.ph97.outer.backedge:                          ; preds = %.thread, %.preheader74.splitthread-pre-split
  %.05595.ph.be = phi ptr [ %.055150, %.thread ], [ %.05592.pr, %.preheader74.splitthread-pre-split ]
  %.be = phi i1 [ false, %.thread ], [ true, %.preheader74.splitthread-pre-split ]
  br label %.lr.ph97.outer, !llvm.loop !27

._crit_edge98:                                    ; preds = %bb.g
  br i1 %i.ad, label %.preheader72, label %.preheader74.splitthread-pre-split, !llvm.loop !28

.preheader72:                                     ; preds = %.preheader74.splitthread-pre-split, %._crit_edge98
  %.pre = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.aw = icmp eq ptr %.pre, null
  br i1 %i.aw, label %.split.us, label %.lr.ph117

.preheader72.split120thread-pre-split:            ; preds = %._crit_edge118
  %.156112.pr = load ptr, ptr %i.r, align 8       ; 2 uses
  %.not67113 = icmp eq ptr %.156112.pr, null
  br i1 %.not67113, label %.split.us, label %.lr.ph117.backedge

.lr.ph117:                                        ; preds = %.preheader72, %.lr.ph117.backedge
  %.156115 = phi ptr [ %.156115.be, %.lr.ph117.backedge ], [ %.pre, %.preheader72 ] ; 4 uses
  %.2114 = phi i32 [ %.2114.be, %.lr.ph117.backedge ], [ 0, %.preheader72 ] ; 2 uses
  %i.ax = load ptr, ptr %.156115, align 8         ; 3 uses
  %i.ay = getelementptr i8, ptr %.156115, i64 24  ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph103, label %.loopexit

.lr.ph103:                                        ; preds = %.lr.ph117
  %i.bb = getelementptr i8, ptr %.156115, i64 32
  %i.bc = getelementptr i8, ptr %i.ax, i64 40     ; 3 uses
  %i.bd = getelementptr i8, ptr %i.ax, i64 48
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph103, %bb.u
  %i.be = phi i32 [ %i.az, %.lr.ph103 ], [ %i.dp, %bb.u ]
  %indvars.iv134 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next135, %bb.u ] ; 2 uses
  %.3101 = phi i32 [ %.2114, %.lr.ph103 ], [ %.5, %bb.u ] ; 6 uses
  %i.bf = load ptr, ptr %i.bb, align 8
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv134
  %i.bh = load ptr, ptr %i.bg, align 8            ; 7 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 4
  switch i32 %i.bj, label %bb.k [
    i32 0, label %bb.i
    i32 2, label %.preheader
  ]

.preheader:                                       ; preds = %bb.h
  %i.bk = getelementptr i8, ptr %i.bh, i64 88     ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %.preheader
  %i.bn = getelementptr i8, ptr %i.bh, i64 96
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.bc, align 8
  %i.bp = getelementptr i8, ptr %i.bh, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.bo, i64 %i.br  ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1
  store i8 1, ptr %i.bs, align 1
  %.not.i = icmp eq i8 %i.bt, 0
  %i.bu = zext i1 %.not.i to i32
  %i.bv = add i32 %.3101, %i.bu
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph110, %bb.j
  %indvars.iv137 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next138, %bb.j ] ; 2 uses
  %.4109 = phi i32 [ %.3101, %.lr.ph110 ], [ %i.cg, %bb.j ]
  %i.bw = load ptr, ptr %i.bc, align 8
  %i.bx = load ptr, ptr %i.bn, align 8
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %indvars.iv137
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc  ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1
  store i8 1, ptr %i.cd, align 1
  %.not.i70 = icmp eq i8 %i.ce, 0
  %i.cf = zext i1 %.not.i70 to i32
  %i.cg = add i32 %.4109, %i.cf                   ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.ch = load i32, ptr %i.bk, align 8
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next138, %i.ci
  br i1 %i.cj, label %bb.j, label %.loopexit, !llvm.loop !30

bb.k:                                             ; preds = %bb.h
  %i.ck = icmp eq ptr %i.ax, %i.bh
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = load i32, ptr %i.bd, align 8
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit, label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.cn = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.co = getelementptr i8, ptr %i.bh, i64 40
  %i.cp = load ptr, ptr %i.co, align 8            ; 3 uses
  %i.cq = load i32, ptr @size, align 4            ; 4 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.preheader.i, label %SetUnion.exit

.lr.ph.preheader.i:                               ; preds = %bb.m
  %wide.trip.count.i = zext nneg i32 %i.cq to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cs = icmp eq i32 %i.cq, 1
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.mr = insertelement <2 x ptr> poison, ptr %i.mp, i64 0
  %i.ms = insertelement <2 x ptr> %i.mr, ptr %i.mq, i64 1
  %i.mt = load ptr, ptr %i.mm, align 8, !alias.scope !113
  %i.mu = load ptr, ptr %i.mo, align 8, !alias.scope !113
  %i.mv = insertelement <2 x ptr> poison, ptr %i.mt, i64 0
  %i.mw = insertelement <2 x ptr> %i.mv, ptr %i.mu, i64 1
  %i.mx = getelementptr [8 x i8], ptr %i.ly, i64 %index200 ; 2 uses
  %i.my = getelementptr i8, ptr %i.mx, i64 16
  store <2 x ptr> %i.ms, ptr %i.mx, align 8, !alias.scope !116, !noalias !113
  store <2 x ptr> %i.mw, ptr %i.my, align 8, !alias.scope !116, !noalias !113
  %index.next201 = add nuw i64 %index200, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next201, %n.vec198
  br i1 %i.mz, label %scalar.ph195.preheader, label %vector.body199, !llvm.loop !118

scalar.ph195.preheader:                           ; preds = %vector.body199, %vector.memcheck189, %.lr.ph.i85
  %indvars.iv.i87.ph = phi i64 [ 0, %vector.memcheck189 ], [ 0, %.lr.ph.i85 ], [ %n.vec198, %vector.body199 ] ; 4 uses
  %i.na = sub nsw i64 %wide.trip.count.i86, %indvars.iv.i87.ph
  %xtraiter211 = and i64 %i.na, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %scalar.ph195.prol.loopexit, label %scalar.ph195.prol

scalar.ph195.prol:                                ; preds = %scalar.ph195.preheader, %scalar.ph195.prol
  %indvars.iv.i87.prol = phi i64 [ %indvars.iv.next.i88.prol, %scalar.ph195.prol ], [ %indvars.iv.i87.ph, %scalar.ph195.preheader ] ; 3 uses
  %prol.iter213 = phi i64 [ %prol.iter213.next, %scalar.ph195.prol ], [ 0, %scalar.ph195.preheader ]
  %i.nb = getelementptr [32 x i8], ptr %i.mb, i64 %indvars.iv.i87.prol
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = getelementptr [8 x i8], ptr %i.ly, i64 %indvars.iv.i87.prol
  store ptr %i.nc, ptr %i.nd, align 8
  %indvars.iv.next.i88.prol = add nuw nsw i64 %indvars.iv.i87.prol, 1 ; 2 uses
  %prol.iter213.next = add i64 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i64 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %scalar.ph195.prol.loopexit, label %scalar.ph195.prol, !llvm.loop !119

scalar.ph195.prol.loopexit:                       ; preds = %scalar.ph195.prol, %scalar.ph195.preheader
  %indvars.iv.i87.unr = phi i64 [ %indvars.iv.i87.ph, %scalar.ph195.preheader ], [ %indvars.iv.next.i88.prol, %scalar.ph195.prol ]
  %i.ne = sub nsw i64 %indvars.iv.i87.ph, %wide.trip.count.i86
  %i.nf = icmp ugt i64 %i.ne, -4
  br i1 %i.nf, label %State_arrayof.exit, label %scalar.ph195

scalar.ph195:                                     ; preds = %scalar.ph195.prol.loopexit, %scalar.ph195
  %indvars.iv.i87 = phi i64 [ %indvars.iv.next.i88.3, %scalar.ph195 ], [ %indvars.iv.i87.unr, %scalar.ph195.prol.loopexit ] ; 6 uses
  %i.ng = getelementptr [32 x i8], ptr %i.mb, i64 %indvars.iv.i87
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = getelementptr [8 x i8], ptr %i.ly, i64 %indvars.iv.i87
  store ptr %i.nh, ptr %i.ni, align 8
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %i.nj = getelementptr [32 x i8], ptr %i.mb, i64 %indvars.iv.next.i88
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = getelementptr [8 x i8], ptr %i.ly, i64 %indvars.iv.next.i88
  store ptr %i.nk, ptr %i.nl, align 8
  %indvars.iv.next.i88.1 = add nuw nsw i64 %indvars.iv.i87, 2 ; 2 uses
  %i.nm = getelementptr [32 x i8], ptr %i.mb, i64 %indvars.iv.next.i88.1
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = getelementptr [8 x i8], ptr %i.ly, i64 %indvars.iv.next.i88.1
  store ptr %i.nn, ptr %i.no, align 8
  %indvars.iv.next.i88.2 = add nuw nsw i64 %indvars.iv.i87, 3 ; 2 uses
  %i.np = getelementptr [32 x i8], ptr %i.mb, i64 %indvars.iv.next.i88.2
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = getelementptr [8 x i8], ptr %i.ly, i64 %indvars.iv.next.i88.2
  store ptr %i.nq, ptr %i.nr, align 8
  %indvars.iv.next.i88.3 = add nuw nsw i64 %indvars.iv.i87, 4 ; 2 uses
  %exitcond.not.i89.3 = icmp eq i64 %indvars.iv.next.i88.3, %wide.trip.count.i86
  br i1 %exitcond.not.i89.3, label %State_arrayof.exit, label %scalar.ph195, !llvm.loop !120

State_arrayof.exit:                               ; preds = %scalar.ph195.prol.loopexit, %scalar.ph195, %FindRulePrecedences.exit, %bb.bc, %.preheader.i82
  %.09.i84 = phi ptr [ null, %FindRulePrecedences.exit ], [ null, %bb.bc ], [ %i.ly, %.preheader.i82 ], [ %i.ly, %scalar.ph195 ], [ %i.ly, %scalar.ph195.prol.loopexit ]
  store ptr %.09.i84, ptr %2, align 8
  call void @FindLinks(ptr noundef nonnull %2)
  call void @FindFollowSets(ptr noundef nonnull %2)
  call void @FindActions(ptr noundef nonnull %2)
  %i.ns = load i32, ptr @main.compress, align 4
  %i.nt = icmp eq i32 %i.ns, 0
  br i1 %i.nt, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %State_arrayof.exit
  call void @CompressTables(ptr noundef nonnull %2)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %State_arrayof.exit
  %i.nu = load i32, ptr @main.noResort, align 4
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @ResortStates(ptr noundef nonnull %2)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.nw = load i32, ptr @main.quiet, align 4
  %.not38 = icmp eq i32 %i.nw, 0
  br i1 %.not38, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @ReportOutput(ptr noundef nonnull %2)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.nx = load i32, ptr @main.mhflag, align 4
  %i.ny = load i32, ptr @main.sqlFlag, align 4
  call void @ReportTable(ptr noundef nonnull %2, i32 noundef %i.nx, i32 noundef %i.ny)
  %i.nz = load i32, ptr @main.mhflag, align 4
  %.not39 = icmp eq i32 %i.nz, 0
  br i1 %.not39, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @ReportHeader(ptr noundef nonnull %2)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.av
  %i.oa = load i32, ptr @main.statistics, align 4
  %.not40 = icmp eq i32 %i.oa, 0
  br i1 %.not40, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ob = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.55) ; 0 uses
  %i.oc = load i32, ptr %i.ii, align 4
  %i.od = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.56, i32 noundef 19, ptr noundef nonnull @.str.263, i32 noundef %i.oc) ; 0 uses
  %i.oe = load i32, ptr %i.hb, align 8
  %i.of = load i32, ptr %i.ii, align 4
  %i.og = sub i32 %i.oe, %i.of
  %i.oh = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.57, i32 noundef 15, ptr noundef nonnull @.str.263, i32 noundef %i.og) ; 0 uses
  %i.oi = load i32, ptr %i.hb, align 8
  %i.oj = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.58, i32 noundef 22, ptr noundef nonnull @.str.263, i32 noundef %i.oi) ; 0 uses
  %i.ok = load i32, ptr %i.do, align 8
  %i.ol = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.59, i32 noundef 30, ptr noundef nonnull @.str.263, i32 noundef %i.ok) ; 0 uses
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.on = load i32, ptr %i.om, align 4
  %i.oo = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.60, i32 noundef 29, ptr noundef nonnull @.str.263, i32 noundef %i.on) ; 0 uses
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.oq = load i32, ptr %i.op, align 8
  %i.or = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.61, i32 noundef 26, ptr noundef nonnull @.str.263, i32 noundef %i.oq) ; 0 uses
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 252
  %i.ot = load i32, ptr %i.os, align 4
  %i.ou = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.62, i32 noundef 15, ptr noundef nonnull @.str.263, i32 noundef %i.ot) ; 0 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ow = load i32, ptr %i.ov, align 8
  %i.ox = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.63, i32 noundef 12, ptr noundef nonnull @.str.263, i32 noundef %i.ow) ; 0 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.oz = load i32, ptr %i.oy, align 4
  %i.pa = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.64, i32 noundef 11, ptr noundef nonnull @.str.263, i32 noundef %i.oz) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 8            ; 2 uses
  %i.pd = icmp sgt i32 %i.pc, 0
  br i1 %i.pd, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.pe = load ptr, ptr @stderr, align 8
  %i.pf = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.pe, i32 noundef 2, ptr noundef nonnull @.str.65, i32 noundef %i.pc) ; 0 uses
  %.pre134 = load i32, ptr %i.pb, align 8
  %i.pg = icmp sgt i32 %.pre134, 0
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ph = phi i1 [ %i.pg, %bb.bn ], [ false, %bb.bm ]
  %i.pi = load i32, ptr %i.aa, align 8
  %i.pj = icmp sgt i32 %i.pi, 0
  %i.pk = select i1 %i.pj, i1 true, i1 %i.ph
  %i.pl = zext i1 %i.pk to i32
  call void @exit(i32 noundef %i.pl) #46
  unreachable
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @handle_d_option(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %0) #44
  %i.b = shl i64 %i.a, 32
  %sext = add i64 %i.b, 4294967296
  %i.c = ashr exact i64 %sext, 32
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #45 ; 3 uses
  store ptr %i.d, ptr @outputDir, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 2, ptr noundef nonnull @.str.261) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

.preheader:                                       ; preds = %bb.a, %.preheader
  %.02.i = phi ptr [ %i.j, %.preheader ], [ %i.d, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.h, %.preheader ], [ %0, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %.0.i, i64 1
  %i.i = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.j = getelementptr i8, ptr %.02.i, i64 1
  store i8 %i.i, ptr %.02.i, align 1
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %lemon_strcpy.exit, label %.preheader, !llvm.loop !121

lemon_strcpy.exit:                                ; preds = %.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @handle_D_option(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr @nDefine, align 4          ; 2 uses
  %i.b = add i32 %i.a, 1                          ; 2 uses
  store i32 %i.b, ptr @nDefine, align 4
  %i.c = load ptr, ptr @azDefine, align 8
  %i.d = sext i32 %i.b to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call ptr @realloc(ptr noundef %i.c, i64 noundef %i.e) #43 ; 3 uses
  store ptr %i.f, ptr @azDefine, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 2, ptr noundef nonnull @.str.261) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = sext i32 %i.a to i64
  %i.k = getelementptr [8 x i8], ptr %i.f, i64 %i.j
  %i.l = tail call i64 @strlen(ptr noundef %0) #44
  %i.m = shl i64 %i.l, 32
  %sext = add i64 %i.m, 4294967296
  %i.n = ashr exact i64 %sext, 32
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #45 ; 4 uses
  store ptr %i.o, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr @stderr, align 8
  %i.r = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.q, i32 noundef 2, ptr noundef nonnull @.str.261) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

.preheader:                                       ; preds = %bb.c, %.preheader
  %.02.i = phi ptr [ %i.u, %.preheader ], [ %i.o, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.s, %.preheader ], [ %0, %bb.c ] ; 2 uses
  %i.s = getelementptr i8, ptr %.0.i, i64 1
  %i.t = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.u = getelementptr i8, ptr %.02.i, i64 1
  store i8 %i.t, ptr %.02.i, align 1
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %lemon_strcpy.exit, label %.preheader, !llvm.loop !121

lemon_strcpy.exit:                                ; preds = %.preheader, %bb.e
  %.0 = phi ptr [ %i.w, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.v = load i8, ptr %.0, align 1
  switch i8 %i.v, label %bb.e [
    i8 0, label %.critedge
    i8 61, label %.critedge
  ]

bb.e:                                             ; preds = %lemon_strcpy.exit
  %i.w = getelementptr i8, ptr %.0, i64 1
  br label %lemon_strcpy.exit, !llvm.loop !122

.critedge:                                        ; preds = %lemon_strcpy.exit, %lemon_strcpy.exit
  store i8 0, ptr %.0, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @handle_T_option(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %0) #44
  %i.b = shl i64 %i.a, 32
  %sext = add i64 %i.b, 4294967296
  %i.c = ashr exact i64 %sext, 32
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #45 ; 3 uses
  store ptr %i.d, ptr @user_templatename, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @memory_error()
  unreachable

.preheader:                                       ; preds = %bb.a, %.preheader
  %.02.i = phi ptr [ %i.h, %.preheader ], [ %i.d, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.f, %.preheader ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %.0.i, i64 1
  %i.g = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.h = getelementptr i8, ptr %.02.i, i64 1
  store i8 %i.g, ptr %.02.i, align 1
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %lemon_strcpy.exit, label %.preheader, !llvm.loop !121

lemon_strcpy.exit:                                ; preds = %.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef i32 @OptInit(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  store ptr %0, ptr @g_argv, align 8
  store ptr %1, ptr @op, align 8
  store ptr %2, ptr @errstream, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2237 = icmp eq ptr %i.f, null
  br i1 %.not2237, label %.critedge, label %sub_0.lr.ph

sub_0.lr.ph:                                      ; preds = %.preheader
  %.not32.i = icmp eq ptr %2, null                ; 6 uses
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %bb.ah
  %i.g = phi ptr [ %i.f, %sub_0.lr.ph ], [ %i.db, %bb.ah ] ; 6 uses
  %i.h = phi ptr [ %i.e, %sub_0.lr.ph ], [ %i.da, %bb.ah ]
  %i.i = phi i64 [ 1, %sub_0.lr.ph ], [ %i.cz, %bb.ah ] ; 2 uses
  %.039 = phi i32 [ 1, %sub_0.lr.ph ], [ %i.cx, %bb.ah ] ; 7 uses
  %.01838 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1, %bb.ah ] ; 4 uses
  %i.j = load i8, ptr %i.g, align 1               ; 2 uses
  %.not45 = icmp eq i8 %i.j, 45                   ; 2 uses
  br i1 %.not45, label %sub_1, label %bb.c

sub_1:                                            ; preds = %sub_0
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %.not46 = icmp eq i8 %i.l, 45
  br i1 %.not46, label %.tail, label %.thread63

.tail:                                            ; preds = %sub_1
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %.tail._crit_edge, label %.thread63

bb.c:                                             ; preds = %sub_0
  %cond = icmp eq i8 %i.j, 43
  br i1 %cond, label %.thread63, label %bb.l

.thread63:                                        ; preds = %bb.c, %.tail, %sub_1
  %i.p = load ptr, ptr @op, align 8               ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not35.i = icmp eq ptr %i.r, null
  br i1 %.not35.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread63
  %i.s = getelementptr i8, ptr %i.g, i64 1        ; 2 uses
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #44
  %sext.i28 = shl i64 %i.t, 32
  %i.u = ashr exact i64 %sext.i28, 32
  %i.v = tail call i32 @strncmp(ptr noundef %i.s, ptr noundef nonnull %i.r, i64 noundef %i.u) #44
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.d
  %.036.i29 = phi i32 [ %i.x, %bb.d ], [ 0, %.lr.ph.i ]
  %i.x = add i32 %.036.i29, 1                     ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [32 x i8], ptr %i.p, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !123

bb.d:                                             ; preds = %.lr.ph
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #44
  %sext.i = shl i64 %i.ac, 32
  %i.ad = ashr exact i64 %sext.i, 32
  %i.ae = tail call i32 @strncmp(ptr noundef %i.s, ptr noundef nonnull %i.ab, i64 noundef %i.ad) #44
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %._crit_edge, label %.lr.ph, !llvm.loop !123

._crit_edge.i:                                    ; preds = %.lr.ph, %.thread63
  br i1 %.not32.i, label %handleflags.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ag = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %2, i32 noundef 2, ptr noundef nonnull @.str.264, ptr noundef nonnull @emsg) ; 0 uses
  tail call fastcc void @errline(i32 noundef %.039, i32 noundef 1, ptr noundef nonnull %2)
  br label %handleflags.exit

._crit_edge:                                      ; preds = %bb.d, %.lr.ph.i
  %.lcssa = phi ptr [ %i.p, %.lr.ph.i ], [ %i.z, %bb.d ] ; 2 uses
  %i.ah = zext i1 %.not45 to i32                  ; 2 uses
  %i.ai = getelementptr i8, ptr %.lcssa, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %handleflags.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.al = load i32, ptr %.lcssa, align 8
  switch i32 %i.al, label %bb.j [
    i32 1, label %bb.g
    i32 5, label %bb.h
    i32 8, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  store i32 %i.ah, ptr %i.aj, align 4
  br label %handleflags.exit

bb.h:                                             ; preds = %bb.f
  tail call void %i.aj(i32 noundef %i.ah), !inline_history !124
  br label %handleflags.exit

bb.i:                                             ; preds = %bb.f
  %i.am = getelementptr i8, ptr %i.g, i64 2
  tail call void %i.aj(ptr noundef %i.am), !inline_history !124
  br label %handleflags.exit

bb.j:                                             ; preds = %bb.f
  br i1 %.not32.i, label %handleflags.exit, label %bb.k

end_hunk_1
begin_hunk_2_@emit_destructor_code:bb.a
  %i.y = phi i8 [ %i.w, %bb.g ], [ %.pre.i, %bb.h ]
  %i.z = sext i8 %i.y to i32
  %i.aa = tail call i32 @putc(i32 noundef %i.z, ptr noundef %0) ; 0 uses
  %i.ab = getelementptr i8, ptr %.0.i, i64 1
  br label %bb.g, !llvm.loop !290

tplt_linedir.exit:                                ; preds = %bb.g
  %i.ac = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.134) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %2, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not43 = icmp eq ptr %i.ae, null
  br i1 %.not43, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.135) ; 0 uses
  %i.ag = load i32, ptr %3, align 4
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %3, align 4
  br label %bb.l

bb.l:                                             ; preds = %tplt_linedir.exit, %bb.e, %bb.j, %bb.k, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.k, %bb.e ], [ %i.k, %tplt_linedir.exit ], [ %i.ae, %bb.k ], [ null, %bb.j ]
  %i.ai = getelementptr i8, ptr %1, i64 80
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %bb.l
  %.1 = phi ptr [ %.0, %bb.l ], [ %i.au, %bb.q ]  ; 4 uses
  %i.aj = load i8, ptr %.1, align 1               ; 2 uses
  switch i8 %i.aj, label %.thread [
    i8 0, label %bb.r
    i8 36, label %bb.n
    i8 10, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %.1, i64 1        ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 36
  br i1 %i.am, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.an = load i32, ptr %i.ai, align 8
  %i.ao = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.136, i32 noundef %i.an) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %3, align 4
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %3, align 4
  %.pre = load i8, ptr %.1, align 1
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.n, %bb.p
  %i.ar = phi i8 [ %i.aj, %bb.m ], [ 36, %bb.n ], [ %.pre, %bb.p ]
  %i.as = sext i8 %i.ar to i32
  %i.at = tail call i32 @fputc(i32 noundef %i.as, ptr noundef %0) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.o
  %.2 = phi ptr [ %i.ak, %bb.o ], [ %.1, %.thread ]
  %i.au = getelementptr i8, ptr %.2, i64 1
  br label %bb.m, !llvm.loop !292

bb.r:                                             ; preds = %bb.m
  %i.av = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.9) ; 0 uses
  %i.aw = load i32, ptr %3, align 4               ; 2 uses
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %3, align 4
  %i.ay = getelementptr i8, ptr %2, i64 276
  %i.az = load i32, ptr %i.ay, align 4
  %.not46 = icmp eq i32 %i.az, 0
  br i1 %.not46, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ba = add i32 %i.aw, 2                        ; 2 uses
  store i32 %i.ba, ptr %3, align 4
  %i.bb = getelementptr i8, ptr %2, i64 232
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.133, i32 noundef %i.ba) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.0.i47 = phi ptr [ %i.bc, %bb.s ], [ %i.bj, %bb.v ] ; 3 uses
  %i.be = load i8, ptr %.0.i47, align 1           ; 2 uses
  switch i8 %i.be, label %bb.v [
    i8 0, label %tplt_linedir.exit49
    i8 92, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.bf = tail call i32 @putc(i32 noundef 92, ptr noundef %0) ; 0 uses
  %.pre.i48 = load i8, ptr %.0.i47, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bg = phi i8 [ %i.be, %bb.t ], [ %.pre.i48, %bb.u ]
  %i.bh = sext i8 %i.bg to i32
  %i.bi = tail call i32 @putc(i32 noundef %i.bh, ptr noundef %0) ; 0 uses
  %i.bj = getelementptr i8, ptr %.0.i47, i64 1
  br label %bb.t, !llvm.loop !290

tplt_linedir.exit49:                              ; preds = %bb.t
  %i.bk = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.134) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %tplt_linedir.exit49, %bb.r
  %i.bl = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.137) ; 0 uses
  %i.bm = load i32, ptr %3, align 4
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %3, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.w
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @has_destructor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #34 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 208
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 216
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp ne ptr %i.j, null
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0.shrunk = phi i1 [ %i.f, %bb.b ], [ true, %bb.c ], [ %i.k, %bb.d ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @append_str(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @append_str.used, align 4
  %i.d = icmp eq i32 %i.c, 0
  %i.e = load ptr, ptr @append_str.z, align 8     ; 3 uses
  %i.f = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.e, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 0, ptr @append_str.used, align 4
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %1, 1
  br i1 %i.g, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = icmp slt i32 %1, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load i32, ptr @append_str.used, align 4
  %i.j = add i32 %i.i, %1
  store i32 %i.j, ptr @append_str.used, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  %i.l = trunc i64 %i.k to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.021 = phi i32 [ %i.l, %bb.h ], [ %1, %bb.e ]  ; 3 uses
  %i.m = add i32 %.021, 80
  %i.n = load i32, ptr @append_str.used, align 4  ; 2 uses
  %i.o = add i32 %i.m, %i.n                       ; 2 uses
  %i.p = load i32, ptr @append_str.alloced, align 4
  %.not = icmp sgt i32 %i.p, %i.o
  br i1 %.not, label %thread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = add i32 %i.o, 200                        ; 2 uses
  store i32 %i.q, ptr @append_str.alloced, align 4
  %i.r = load ptr, ptr @append_str.z, align 8
  %i.s = sext i32 %i.q to i64
  %i.t = tail call ptr @realloc(ptr noundef %i.r, i64 noundef %i.s) #43 ; 2 uses
  store ptr %i.t, ptr @append_str.z, align 8
  br label %bb.k

thread-pre-split:                                 ; preds = %bb.i
  %.pr = load ptr, ptr @append_str.z, align 8
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split, %bb.j
  %i.u = phi ptr [ %.pr, %thread-pre-split ], [ %i.t, %bb.j ] ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.w = icmp sgt i32 %.021, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %i.x = phi ptr [ %i.av, %bb.p ], [ %i.u, %.preheader ] ; 2 uses
  %.02032 = phi i32 [ %.1, %bb.p ], [ %2, %.preheader ] ; 2 uses
  %.12231 = phi i32 [ %.2, %bb.p ], [ %.021, %.preheader ] ; 2 uses
  %.02330 = phi ptr [ %.124, %bb.p ], [ %0, %.preheader ] ; 3 uses
  %i.y = add nsw i32 %.12231, -1                  ; 2 uses
  %i.z = getelementptr i8, ptr %.02330, i64 1     ; 2 uses
  %i.aa = load i8, ptr %.02330, align 1           ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 37
  %i.ac = icmp ne i32 %i.y, 0
  %or.cond3 = and i1 %i.ac, %i.ab
  br i1 %or.cond3, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph
  %i.ad = load i8, ptr %i.z, align 1
  %i.ae = icmp eq i8 %i.ad, 100
  br i1 %i.ae, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void (ptr, ptr, ...) @lemon_sprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.138, i32 noundef %.02032)
  %i.af = load ptr, ptr @append_str.z, align 8    ; 2 uses
  %i.ag = load i32, ptr @append_str.used, align 4 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %i.af, i64 %i.ah  ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.02.i = phi ptr [ %i.ai, %bb.m ], [ %i.al, %bb.n ] ; 2 uses
  %.0.i = phi ptr [ %i.a, %bb.m ], [ %i.aj, %bb.n ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.i, i64 1
  %i.ak = load i8, ptr %.0.i, align 1             ; 2 uses
  %i.al = getelementptr i8, ptr %.02.i, i64 1
  store i8 %i.ak, ptr %.02.i, align 1
  %.not.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i, label %lemon_strcpy.exit, label %bb.n, !llvm.loop !121

lemon_strcpy.exit:                                ; preds = %bb.n
  %i.am = call i64 @strlen(ptr noundef %i.ai) #44
  %i.an = trunc i64 %i.am to i32
  %i.ao = add i32 %i.ag, %i.an
  store i32 %i.ao, ptr @append_str.used, align 4
  %i.ap = getelementptr i8, ptr %.02330, i64 2
  %i.aq = add nsw i32 %.12231, -2
  br label %bb.p

bb.o:                                             ; preds = %bb.l, %.lr.ph
  %i.ar = load i32, ptr @append_str.used, align 4 ; 2 uses
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @append_str.used, align 4
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr i8, ptr %i.x, i64 %i.at
  store i8 %i.aa, ptr %i.au, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %lemon_strcpy.exit
  %i.av = phi ptr [ %i.af, %lemon_strcpy.exit ], [ %i.x, %bb.o ] ; 2 uses
  %.124 = phi ptr [ %i.ap, %lemon_strcpy.exit ], [ %i.z, %bb.o ]
  %.2 = phi i32 [ %i.aq, %lemon_strcpy.exit ], [ %i.y, %bb.o ] ; 2 uses
  %.1 = phi i32 [ %3, %lemon_strcpy.exit ], [ %.02032, %bb.o ]
  %i.aw = icmp sgt i32 %.2, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !293

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre = load i32, ptr @append_str.used, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %4 = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.n, %.preheader ]
  %5 = phi ptr [ %i.av, %._crit_edge.loopexit ], [ %i.u, %.preheader ] ; 2 uses
  %i.ax = sext i32 %4 to i64
  %i.ay = getelementptr i8, ptr %5, i64 %i.ax
  store i8 0, ptr %i.ay, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %._crit_edge, %bb.d
  %.0 = phi ptr [ %i.e, %bb.d ], [ %5, %._crit_edge ], [ @append_str.empty, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 0, 2) i32 @translate_code(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((96, 100)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 6 uses
  %i.b = alloca [50 x i8], align 16               ; 6 uses
  %i.c = alloca [900 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #42
  %i.d = getelementptr i8, ptr %1, i64 24         ; 6 uses
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %i.e to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.g, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.h = getelementptr i8, ptr %1, i64 56         ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  store ptr @translate_code.newlinestr, ptr %i.h, align 8
  %i.k = getelementptr i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr i8, ptr %1, i64 48
  store i32 %i.l, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %._crit_edge ]
  %i.n = getelementptr i8, ptr %1, i64 96         ; 3 uses
  store i32 %.sink, ptr %i.n, align 8
  %i.o = icmp eq i32 %i.e, 0
  br i1 %i.o, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %0, i64 208
  br label %has_destructor.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %0, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.h, label %has_destructor.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.v, i64 56
  br label %has_destructor.exit

has_destructor.exit:                              ; preds = %bb.f, %bb.h
  %.0.shrunk.i.in.in = phi ptr [ %i.z, %bb.f ], [ %i.ac, %bb.h ]
  %.0.shrunk.i.in = load ptr, ptr %.0.shrunk.i.in.in, align 8
  %.0.shrunk.i.not = icmp eq ptr %.0.shrunk.i.in, null
  br i1 %.0.shrunk.i.not, label %.thread, label %has_destructor.exit.thread

has_destructor.exit.thread:                       ; preds = %bb.g, %has_destructor.exit
  %i.ad = load i32, ptr @append_str.used, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = load ptr, ptr @append_str.z, align 8    ; 2 uses
  %i.ag = icmp ne ptr %i.af, null
  %or.cond.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i, label %bb.i, label %append_str.exit

bb.i:                                             ; preds = %has_destructor.exit.thread
  store i8 0, ptr %i.af, align 1
  %.pre = load ptr, ptr %i.t, align 8
  %.pre308 = load ptr, ptr %.pre, align 8
  %.pre309 = load i32, ptr %i.d, align 8
  br label %append_str.exit

append_str.exit:                                  ; preds = %has_destructor.exit.thread, %bb.i
  %i.ah = phi i32 [ %i.e, %has_destructor.exit.thread ], [ %.pre309, %bb.i ]
  %i.ai = phi ptr [ %i.v, %has_destructor.exit.thread ], [ %.pre308, %bb.i ]
  store i32 0, ptr @append_str.used, align 4
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = sub i32 1, %i.ah
  %i.am = tail call ptr @append_str(ptr noundef nonnull @.str.139, i32 noundef 0, i32 noundef %i.ak, i32 noundef %i.al) ; 0 uses
  %i.an = load i32, ptr @append_str.used, align 4
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = load ptr, ptr @append_str.z, align 8    ; 3 uses
  %i.aq = icmp ne ptr %i.ap, null
  %or.cond.i217 = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %or.cond.i217, label %bb.j, label %append_str.exit219

bb.j:                                             ; preds = %append_str.exit
  store i8 0, ptr %i.ap, align 1
  br label %append_str.exit219

append_str.exit219:                               ; preds = %append_str.exit, %bb.j
  store i32 0, ptr @append_str.used, align 4
  %i.ar = tail call ptr @Strsafe(ptr noundef %i.ap)
  %i.as = getelementptr i8, ptr %1, i64 64
  store ptr %i.ar, ptr %i.as, align 8
  store i32 0, ptr %i.n, align 8
  br label %.thread

bb.k:                                             ; preds = %bb.d
  %i.at = getelementptr i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(1) %i.r) #44
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.a, align 16
  %i.ay = load ptr, ptr %1, align 8               ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 80
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %1, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 80
  %i.bf = load i32, ptr %i.be, align 8
  %.not193 = icmp eq i32 %i.ba, %i.bf
  br i1 %.not193, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %0, i64 224
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %1, i64 20
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = load ptr, ptr %i.ay, align 8
  %i.bl = load ptr, ptr %i.bd, align 8
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.bh, i32 noundef %i.bj, ptr noundef nonnull @.str.140, ptr noundef %i.bk, ptr noundef nonnull %i.au, ptr noundef %i.bl, ptr noundef nonnull %i.r)
  %i.bm = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 8
  br label %.thread

bb.o:                                             ; preds = %bb.l
  call void (ptr, ptr, ...) @lemon_sprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.141, ptr noundef nonnull %i.au, ptr noundef nonnull %i.r)
  %i.bp = load ptr, ptr %i.h, align 8
  %i.bq = call ptr @strstr(ptr noundef %i.bp, ptr noundef nonnull dereferenceable(1) %i.c) #44 ; 2 uses
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.m, %bb.n, %bb.c, %has_destructor.exit, %append_str.exit219, %bb.k, %bb.o
  %.0165245 = phi i8 [ 0, %bb.o ], [ 1, %bb.m ], [ 1, %bb.n ], [ 0, %bb.c ], [ 0, %has_destructor.exit ], [ 0, %append_str.exit219 ], [ 0, %bb.k ]
  %.0166243 = phi ptr [ %i.bq, %bb.o ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.c ], [ null, %has_destructor.exit ], [ null, %append_str.exit219 ], [ null, %bb.k ]
  %i.br = load i32, ptr %i.d, align 8
  %i.bs = sub i32 1, %i.br
  %i.bt = load ptr, ptr %1, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 80
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %i.b, i32 noundef 2, i64 noundef 50, ptr noundef nonnull @.str.142, i32 noundef %i.bs, i32 noundef %i.bv) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %1, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 80
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %i.b, i32 noundef 2, i64 noundef 50, ptr noundef nonnull @.str.143, i32 noundef %i.bz) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %.not195246 = phi i1 [ false, %.thread ], [ true, %bb.p ]
  %.0165244 = phi i8 [ %.0165245, %.thread ], [ 0, %bb.p ] ; 2 uses
  %.0166242 = phi ptr [ %.0166243, %.thread ], [ null, %bb.p ]
  %.0169 = phi i32 [ 0, %.thread ], [ 1, %bb.p ]
  %i.cb = load i32, ptr @append_str.used, align 4
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = load ptr, ptr @append_str.z, align 8    ; 3 uses
  %i.ce = icmp ne ptr %i.cd, null
  %or.cond.i220 = select i1 %i.cc, i1 %i.ce, i1 false
  br i1 %or.cond.i220, label %bb.r, label %append_str.exit222

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.cd, align 1
  br label %append_str.exit222
end_hunk_2
