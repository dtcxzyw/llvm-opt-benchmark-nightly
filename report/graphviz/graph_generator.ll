Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/graph_generator?download=true
inline.NumInlined: 50
inline.NumDeleted: 22
begin_hunk_0_@makeTorus:bb.a

.preheader.lr.ph:                                 ; preds = %._crit_edge.us, %.preheader41
  %i.k = icmp ugt i32 %0, 1
  %i.l = add i32 %0, -1
  %i.m = mul i32 %1, %i.l                         ; 2 uses
  br i1 %i.k, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us51
  %.03449.us = phi i32 [ %i.u, %._crit_edge.us51 ], [ 1, %.preheader.lr.ph ] ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %.047.us = phi i32 [ 1, %.preheader.us ], [ %i.s, %bb.c ] ; 3 uses
  %i.n = add i32 %.047.us, -1
  %i.o = mul i32 %i.n, %1
  %i.p = add i32 %i.o, %.03449.us
  %i.q = mul i32 %.047.us, %1
  %i.r = add i32 %i.q, %.03449.us
  tail call void %2(i32 noundef %i.p, i32 noundef %i.r) #15
  %i.s = add nuw i32 %.047.us, 1                  ; 2 uses
  %exitcond54.not = icmp eq i32 %i.s, %0
  br i1 %exitcond54.not, label %._crit_edge.us51, label %bb.c, !llvm.loop !51

._crit_edge.us51:                                 ; preds = %bb.c
  %i.t = add i32 %.03449.us, %i.m
  tail call void %2(i32 noundef %.03449.us, i32 noundef %i.t) #15
  %i.u = add i32 %.03449.us, 1                    ; 2 uses
  %.not40.us = icmp ugt i32 %i.u, %1
  br i1 %.not40.us, label %._crit_edge50, label %.preheader.us, !llvm.loop !52

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.03449 = phi i32 [ %i.w, %.preheader ], [ 1, %.preheader.lr.ph ] ; 3 uses
  %i.v = add i32 %.03449, %i.m
  tail call void %2(i32 noundef %.03449, i32 noundef %i.v) #15
  %i.w = add i32 %.03449, 1                       ; 2 uses
  %.not40 = icmp ugt i32 %i.w, %1
  br i1 %.not40, label %._crit_edge50, label %.preheader, !llvm.loop !52

._crit_edge50:                                    ; preds = %.preheader, %._crit_edge.us51, %.preheader41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeTwistedTorus(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %0, 0
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge34.split

.preheader.preheader:                             ; preds = %bb.a
  %i.c = icmp ugt i32 %1, 1
  %i.d = add i32 %1, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.peel.begin
  %.033 = phi i32 [ %i.g, %._crit_edge.peel.begin ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.e = add i32 %.033, %2
  %i.f = urem i32 %i.e, %0
  %i.g = add nuw i32 %.033, 1                     ; 6 uses
  %invariant.op = add nuw i32 %i.f, 1             ; 2 uses
  br i1 %i.c, label %.preheader.split, label %._crit_edge.peel.begin

.preheader.split:                                 ; preds = %.preheader
  %i.h = icmp eq i32 %i.g, %0
  %i.i = add i32 %.033, 2
  %i.j = select i1 %i.h, i32 1, i32 %i.i
  br label %bb.b

._crit_edge34.split:                              ; preds = %._crit_edge.peel.begin, %bb.a
  ret void

._crit_edge.peel.begin:                           ; preds = %bb.b, %.preheader
  %i.k = phi i32 [ 0, %.preheader ], [ %i.y, %bb.b ] ; 3 uses
  %i.l = add nuw i32 %i.k, 1                      ; 2 uses
  %i.m = icmp eq i32 %i.l, %1
  %i.n = select i1 %i.m, i32 0, i32 %i.l
  %i.o = mul i32 %i.k, %0
  %i.p = add i32 %i.g, %i.o                       ; 2 uses
  %i.q = mul i32 %i.n, %0
  %.reass.peel = add i32 %i.q, %invariant.op
  tail call void %4(i32 noundef %i.p, i32 noundef %.reass.peel) #15
  %i.r = icmp eq i32 %i.g, %0
  %i.s = add i32 %i.k, %3
  %i.t = urem i32 %i.s, %1
  %i.u = mul i32 %i.t, %0
  %i.v = add i32 %.033, 2
  %i.w = select i1 %i.r, i32 1, i32 %i.v
  %i.x = add i32 %i.w, %i.u
  tail call void %4(i32 noundef %i.p, i32 noundef %i.x) #15
  %exitcond36.not = icmp eq i32 %i.g, %0
  br i1 %exitcond36.not, label %._crit_edge34.split, label %.preheader, !llvm.loop !53

bb.b:                                             ; preds = %.preheader.split, %bb.b
  %.02932 = phi i32 [ 0, %.preheader.split ], [ %i.y, %bb.b ] ; 4 uses
  %i.y = add nuw i32 %.02932, 1                   ; 3 uses
  %i.z = mul i32 %.02932, %0
  %i.aa = add i32 %i.g, %i.z                      ; 2 uses
  %i.ab = mul i32 %i.y, %0
  %.reass = add i32 %i.ab, %invariant.op
  tail call void %4(i32 noundef %i.aa, i32 noundef %.reass) #15
  %i.ac = add i32 %.02932, %3
  %i.ad = urem i32 %i.ac, %1
  %i.ae = mul i32 %i.ad, %0
  %i.af = add i32 %i.j, %i.ae
  tail call void %4(i32 noundef %i.aa, i32 noundef %i.af) #15
  %exitcond.not = icmp eq i32 %.02932, %i.d
  br i1 %exitcond.not, label %._crit_edge.peel.begin, label %bb.b, !llvm.loop !54
}

; Function Attrs: nounwind uwtable
define dso_local void @makeCylinder(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not39 = icmp eq i32 %0, 0
  br i1 %.not39, label %.preheader36, label %.preheader37.lr.ph

.preheader37.lr.ph:                               ; preds = %bb.a
  %i.a = icmp ugt i32 %1, 1
  br i1 %i.a, label %.preheader37.us, label %.preheader37

.preheader37.us:                                  ; preds = %.preheader37.lr.ph, %._crit_edge.us
  %.03141.us = phi i32 [ %i.f, %._crit_edge.us ], [ 0, %.preheader37.lr.ph ] ; 3 uses
  %.03240.us = phi i32 [ %i.g, %._crit_edge.us ], [ 1, %.preheader37.lr.ph ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader37.us, %bb.b
  %.03038.us = phi i32 [ 1, %.preheader37.us ], [ %i.d, %bb.b ] ; 2 uses
  %i.b = add i32 %.03038.us, %.03141.us           ; 2 uses
  %i.c = add i32 %i.b, 1
  tail call void %2(i32 noundef %i.b, i32 noundef %i.c) #15
  %i.d = add nuw i32 %.03038.us, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %1
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !4

._crit_edge.us:                                   ; preds = %bb.b
  %i.e = add i32 %.03141.us, 1
  %i.f = add i32 %.03141.us, %1                   ; 2 uses
  tail call void %2(i32 noundef %i.e, i32 noundef %i.f) #15
  %i.g = add i32 %.03240.us, 1                    ; 2 uses
  %.not.us = icmp ugt i32 %i.g, %0
  br i1 %.not.us, label %.preheader.lr.ph, label %.preheader37.us, !llvm.loop !5

.preheader37:                                     ; preds = %.preheader37.lr.ph, %.preheader37
  %.03141 = phi i32 [ %i.i, %.preheader37 ], [ 0, %.preheader37.lr.ph ] ; 2 uses
  %.03240 = phi i32 [ %i.j, %.preheader37 ], [ 1, %.preheader37.lr.ph ]
  %i.h = add i32 %.03141, 1
  %i.i = add i32 %.03141, %1                      ; 2 uses
  tail call void %2(i32 noundef %i.h, i32 noundef %i.i) #15
  %i.j = add i32 %.03240, 1                       ; 2 uses
  %.not = icmp ugt i32 %i.j, %0
  br i1 %.not, label %.preheader36, label %.preheader37, !llvm.loop !5

.preheader36:                                     ; preds = %.preheader37, %bb.a
  %.not3543 = icmp ne i32 %1, 0
  %i.k = icmp ugt i32 %0, 1
  %or.cond = and i1 %.not3543, %i.k
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge45

.preheader.lr.ph:                                 ; preds = %._crit_edge.us
  %.old.not = icmp eq i32 %0, 1
  br i1 %.old.not, label %._crit_edge45, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader36, %.preheader.lr.ph
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us46
  %.02944.us = phi i32 [ %i.r, %._crit_edge.us46 ], [ 1, %.preheader.us.preheader ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %.042.us = phi i32 [ 1, %.preheader.us ], [ %i.q, %bb.c ] ; 3 uses
  %i.l = add i32 %.042.us, -1
  %i.m = mul i32 %i.l, %1
  %i.n = add i32 %i.m, %.02944.us
  %i.o = mul i32 %.042.us, %1
  %i.p = add i32 %i.o, %.02944.us
  tail call void %2(i32 noundef %i.n, i32 noundef %i.p) #15
  %i.q = add nuw i32 %.042.us, 1                  ; 2 uses
  %exitcond49.not = icmp eq i32 %i.q, %0
  br i1 %exitcond49.not, label %._crit_edge.us46, label %bb.c, !llvm.loop !6

._crit_edge.us46:                                 ; preds = %bb.c
  %i.r = add i32 %.02944.us, 1                    ; 2 uses
  %.not35.us = icmp ugt i32 %i.r, %1
  br i1 %.not35.us, label %._crit_edge45, label %.preheader.us, !llvm.loop !7

._crit_edge45:                                    ; preds = %._crit_edge.us46, %.preheader.lr.ph, %.preheader36
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeSquareGrid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %.not132 = icmp eq i32 %0, 0
  br i1 %.not132, label %._crit_edge127.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not133 = icmp eq i32 %1, 0
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  %i.a = shl i32 %1, 1                            ; 2 uses
  %5 = udiv i32 %i.a, 6                           ; 2 uses
  %i.b = shl i32 %1, 2                            ; 2 uses
  %6 = udiv i32 %i.b, 6                           ; 2 uses
  %7 = shl i32 %0, 1
  %8 = udiv i32 %7, 6
  %9 = shl i32 %0, 2
  %10 = udiv i32 %9, 6
  %i.c = add i32 %0, -1
  %i.d = mul i32 %i.c, %1
  %i.e = add i32 %i.d, 1                          ; 4 uses
  %i.f = mul i32 %1, %0                           ; 4 uses
  br i1 %.not133, label %._crit_edge127.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.not163 = icmp ne i32 %1, 1
  %i.g = icmp ugt i32 %i.a, 5
  %.not118.peel = icmp ult i32 %i.b, 6
  %i.h = or i1 %i.g, %.not118.peel
  %or.cond129.not136.peel = or i1 %i.h, %.not
  %exitcond.peel.not = icmp eq i32 %1, 1
  %.not169 = icmp eq i32 %1, 2
  %i.i = add i32 %1, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0108126 = phi i32 [ %i.l, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.j = mul i32 %.0108126, %1                    ; 4 uses
  %.not119 = icmp ule i32 %.0108126, %8           ; 2 uses
  %i.k = icmp ugt i32 %.0108126, %10              ; 2 uses
  %i.l = add nuw i32 %.0108126, 1                 ; 5 uses
  %i.m = icmp ult i32 %i.l, %0                    ; 3 uses
  %i.n = mul i32 %i.l, %1
  %i.o = add i32 %i.n, 1                          ; 3 uses
  %i.p = icmp eq i32 %.0108126, 0                 ; 4 uses
  %i.q = icmp eq i32 %i.l, %0                     ; 4 uses
  %i.r = add i32 %i.j, 1                          ; 7 uses
  %brmerge.peel = or i1 %or.cond129.not136.peel, %.not119
  %brmerge130.peel = or i1 %brmerge.peel, %i.k
  %or.cond = select i1 %.not163, i1 %brmerge130.peel, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.s = add i32 %i.j, 2
  tail call void %4(i32 noundef %i.r, i32 noundef %i.s) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void %4(i32 noundef %i.r, i32 noundef %i.o) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  switch i32 %2, label %bb.l [
    i32 1, label %bb.i
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ult i32 %i.r, %i.f
  %or.cond165 = select i1 %i.q, i1 %i.t, i1 false
  br i1 %or.cond165, label %.sink.split, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.u = icmp ult i32 %i.r, %1
  br i1 %i.u, label %.sink.split, label %bb.l

bb.i:                                             ; preds = %bb.e
  br i1 %i.p, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = icmp ult i32 %i.r, %1
  %or.cond166 = select i1 %i.q, i1 %i.v, i1 false
  br i1 %or.cond166, label %.sink.split, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.w = icmp ult i32 %i.r, %i.f
  br i1 %i.w, label %.sink.split, label %bb.l

.sink.split:                                      ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.sink = phi i32 [ %1, %bb.j ], [ %1, %bb.h ], [ %i.f, %bb.g ], [ %i.f, %bb.k ]
  tail call void %4(i32 noundef %i.r, i32 noundef %.sink) #15
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j, %bb.g, %bb.k, %bb.h, %bb.e
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.l
  %invariant.op = or i1 %.not, %.not119
  %invariant.op164 = or i1 %invariant.op, %i.k    ; 2 uses
  br i1 %.not169, label %._crit_edge.loopexit.peel.begin, label %.peel.next.split

._crit_edge127.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.loopexit.peel.begin:                  ; preds = %.peel.next, %bb.af
  %i.x = phi i32 [ 1, %.peel.next ], [ %i.aq, %bb.af ] ; 5 uses
  %i.y = add i32 %i.x, %i.j                       ; 2 uses
  %i.z = add i32 %i.y, 1                          ; 8 uses
  %i.aa = add nuw i32 %i.x, 1                     ; 3 uses
  %i.ab = icmp ult i32 %i.aa, %1
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %i.ac = icmp ult i32 %i.x, %5
  %.not118.peel167 = icmp uge i32 %i.x, %6
  %i.ad = or i1 %i.ac, %.not118.peel167
  %brmerge130.reass.peel = or i1 %i.ad, %invariant.op164
  br i1 %brmerge130.reass.peel, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = add i32 %i.y, 2
  tail call void %4(i32 noundef %i.z, i32 noundef %i.ae) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.loopexit.peel.begin
  br i1 %i.m, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.af = add i32 %i.o, %i.x
  tail call void %4(i32 noundef %i.z, i32 noundef %i.af) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  switch i32 %2, label %._crit_edge [
    i32 1, label %bb.w
    i32 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.ag = icmp eq i32 %i.aa, %1                   ; 2 uses
  %or.cond123.peel = and i1 %i.p, %i.ag
  br i1 %or.cond123.peel, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = icmp ult i32 %i.z, %i.e
  %i.ai = and i1 %i.ag, %i.ah
  %or.cond131.peel = and i1 %i.ai, %i.q
  br i1 %or.cond131.peel, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  tail call void %4(i32 noundef %i.z, i32 noundef %i.e) #15
  br label %._crit_edge

bb.u:                                             ; preds = %bb.r
  %i.aj = icmp eq i32 %i.z, 0
  br i1 %i.aj, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  tail call void %4(i32 noundef 0, i32 noundef 1) #15
  br label %._crit_edge

bb.w:                                             ; preds = %bb.q
  %i.ak = icmp eq i32 %i.aa, %1                   ; 2 uses
  %or.cond120.peel = and i1 %i.p, %i.ak
  br i1 %or.cond120.peel, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.al = icmp eq i32 %i.z, 0
  %i.am = and i1 %i.ak, %i.al
  %or.cond122.peel = and i1 %i.q, %i.am
  br i1 %or.cond122.peel, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %bb.x
  tail call void %4(i32 noundef 0, i32 noundef 1) #15
  br label %._crit_edge

bb.z:                                             ; preds = %bb.w
  %i.an = icmp ult i32 %i.z, %i.e
  br i1 %i.an, label %bb.aa, label %._crit_edge

bb.aa:                                            ; preds = %bb.z
  tail call void %4(i32 noundef %i.z, i32 noundef %i.e) #15
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.l
  %exitcond140.not = icmp eq i32 %i.l, %0
  br i1 %exitcond140.not, label %._crit_edge127.split, label %.preheader, !llvm.loop !55

.peel.next.split:                                 ; preds = %.peel.next, %bb.af
  %.0125 = phi i32 [ %i.aq, %bb.af ], [ 1, %.peel.next ] ; 6 uses
  %i.ao = add i32 %.0125, %i.j                    ; 2 uses
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  %i.aq = add nuw i32 %.0125, 1                   ; 3 uses
  %i.ar = icmp ult i32 %i.aq, %1
  br i1 %i.ar, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.peel.next.split
  %i.as = icmp ult i32 %.0125, %5
  %.not118 = icmp uge i32 %.0125, %6
  %i.at = or i1 %i.as, %.not118
  %brmerge130.reass = or i1 %i.at, %invariant.op164
  br i1 %brmerge130.reass, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.au = add i32 %i.ao, 2
  tail call void %4(i32 noundef %i.ap, i32 noundef %i.au) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.peel.next.split
  br i1 %i.m, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.av = add i32 %i.o, %.0125
  tail call void %4(i32 noundef %i.ap, i32 noundef %i.av) #15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %exitcond.not = icmp eq i32 %.0125, %i.i
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %.peel.next.split, !llvm.loop !56
}

; Function Attrs: nounwind uwtable
define dso_local void @makeTree(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = uitofp i32 %1 to double
  %i.b = uitofp i32 %0 to double
  %i.c = tail call double @pow(double noundef %i.a, double noundef %i.b) #15
  %i.d = fadd double %i.c, -1.000000e+00
  %i.e = add i32 %1, -1
  %i.f = uitofp i32 %i.e to double
  %i.g = fdiv double %i.d, %i.f                   ; 2 uses
  %i.h = fcmp ult double %i.g, 1.000000e+00
  %.not = icmp eq i32 %1, 0
  %or.cond = or i1 %i.h, %.not
  br i1 %or.cond, label %._crit_edge17, label %.preheader.us

.preheader.us:                                    ; preds = %bb.a, %._crit_edge.us
  %.01116.us = phi i32 [ %i.k, %._crit_edge.us ], [ 1, %bb.a ] ; 2 uses
  %.01215.us = phi i32 [ %i.i, %._crit_edge.us ], [ 2, %bb.a ] ; 2 uses
  %i.i = add i32 %1, %.01215.us                   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %.113.us = phi i32 [ %.01215.us, %.preheader.us ], [ %i.j, %bb.b ] ; 2 uses
  %i.j = add i32 %.113.us, 1                      ; 2 uses
  tail call void %2(i32 noundef %.01116.us, i32 noundef %.113.us) #15
  %exitcond.not = icmp eq i32 %i.j, %i.i
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !58

._crit_edge.us:                                   ; preds = %bb.b
  %i.k = add i32 %.01116.us, 1                    ; 2 uses
  %i.l = uitofp i32 %i.k to double
  %i.m = fcmp ult double %i.g, %i.l
  br i1 %i.m, label %._crit_edge17, label %.preheader.us, !llvm.loop !59

._crit_edge17:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @makeBinaryTree(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i32 [ %i.c, %.lr.ph ], [ 1, %bb.a ] ; 4 uses
  %i.a = shl i32 %.011, 1                         ; 2 uses
  tail call void %1(i32 noundef %.011, i32 noundef %i.a) #15
  %i.b = or disjoint i32 %i.a, 1
  tail call void %1(i32 noundef %.011, i32 noundef %i.b) #15
  %i.c = add i32 %.011, 1                         ; 2 uses
  %.0.highbits = lshr i32 %i.c, %0
  %.not.not = icmp eq i32 %.0.highbits, 0
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !8
}

; Function Attrs: nounwind uwtable
define dso_local void @makeSierpinski(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.vtx_datas_t, align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) @__const.makeTetrix.graph, i64 88, i1 false)
  %i.a = add i32 %0, -1
  call fastcc void @constructSierpinski(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef %i.a, ptr noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.val2528 = load i64, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.c = icmp ugt i64 %.val2528, 1
  br i1 %i.c, label %.lr.ph31, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %.val32 = phi i64 [ %.val2528, %bb.a ], [ %.val25, %._crit_edge ]
  %.not36 = icmp eq i64 %.val32, 0
  br i1 %.not36, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.d

.lr.ph31:                                         ; preds = %bb.a, %._crit_edge
  %i.e = phi i64 [ %i.k, %._crit_edge ], [ 1, %bb.a ]
  %.02029 = phi i32 [ %i.j, %._crit_edge ], [ 1, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !26
  %i.g = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.e) #15
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %.val2426 = load i64, ptr %i.i, align 8, !tbaa !25
  %.not = icmp eq i64 %.val2426, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph31
  %i.j = add i32 %.02029, 1                       ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.val25 = load i64, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.l = icmp ugt i64 %.val25, %i.k
  br i1 %i.l, label %.lr.ph31, label %.preheader, !llvm.loop !60

.lr.ph:                                           ; preds = %.lr.ph31, %bb.c
  %.01927 = phi i64 [ %i.r, %bb.c ], [ 0, %.lr.ph31 ] ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.n = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.h, i64 noundef %.01927) #15
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27   ; 2 uses
  %i.q = icmp ult i32 %.02029, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void %1(i32 noundef %.02029, i32 noundef %i.p) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.r = add nuw i64 %.01927, 1                   ; 2 uses
  %.val24 = load i64, ptr %i.i, align 8, !tbaa !25
  %i.s = icmp ult i64 %i.r, %.val24
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge35:                                    ; preds = %bb.g, %.preheader
  call void @gv_list_clear_(ptr noundef nonnull %2, i64 noundef 48) #15
  call void @gv_list_free_(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.d:                                             ; preds = %.lr.ph34, %bb.g
  %.033 = phi i64 [ 0, %.lr.ph34 ], [ %i.y, %bb.g ] ; 2 uses
  %i.t = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.033) #15
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %magicptr = ptrtoint ptr %i.u to i64
  switch i64 %magicptr, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 66, i64 1, ptr %i.v) #17 ; 0 uses
  call void @abort() #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %2, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %i.t
  call void %i.u(ptr noundef byval(%struct.vtx_data) align 8 %i.x) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.y = add nuw i64 %.033, 1                     ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !tbaa !25
  %i.z = icmp ult i64 %i.y, %.val
  br i1 %i.z, label %bb.d, label %._crit_edge35, !llvm.loop !62
}

; Function Attrs: nounwind uwtable
define internal void @free_vtx(ptr noundef byval(%struct.vtx_data) align 8 %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %.not = icmp eq i64 %.val5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !64  ; 2 uses
  %magicptr = ptrtoint ptr %.pre to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @gv_list_clear_(ptr noundef nonnull %0, i64 noundef 4) #15
  call void @gv_list_free_(ptr noundef nonnull %0) #15
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.06 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.e ]  ; 2 uses
  %i.c = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %.06) #15
end_hunk_0
