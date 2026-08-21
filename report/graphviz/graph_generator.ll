Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/graph_generator?download=true
inline.NumInlined: 50
inline.NumDeleted: 22
begin_hunk_0_@makeTwistedTorus:bb.a
  %i.ad = urem i32 %i.ac, %1
  %i.ae = mul i32 %i.ad, %0
  %i.af = add i32 %i.j, %i.ae
  tail call void %4(i32 noundef %i.aa, i32 noundef %i.af) #15
  %exitcond.not = icmp eq i32 %.02932, %i.d
  br i1 %exitcond.not, label %._crit_edge.peel.begin, label %bb.b, !llvm.loop !28
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
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !30

._crit_edge.us:                                   ; preds = %bb.b
  %i.e = add i32 %.03141.us, 1
  %i.f = add i32 %.03141.us, %1                   ; 2 uses
  tail call void %2(i32 noundef %i.e, i32 noundef %i.f) #15
  %i.g = add i32 %.03240.us, 1                    ; 2 uses
  %.not.us = icmp ugt i32 %i.g, %0
  br i1 %.not.us, label %.preheader.lr.ph, label %.preheader37.us, !llvm.loop !31

.preheader37:                                     ; preds = %.preheader37.lr.ph, %.preheader37
  %.03141 = phi i32 [ %i.i, %.preheader37 ], [ 0, %.preheader37.lr.ph ] ; 2 uses
  %.03240 = phi i32 [ %i.j, %.preheader37 ], [ 1, %.preheader37.lr.ph ]
  %i.h = add i32 %.03141, 1
  %i.i = add i32 %.03141, %1                      ; 2 uses
  tail call void %2(i32 noundef %i.h, i32 noundef %i.i) #15
  %i.j = add i32 %.03240, 1                       ; 2 uses
  %.not = icmp ugt i32 %i.j, %0
  br i1 %.not, label %.preheader36, label %.preheader37, !llvm.loop !31

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
  br i1 %exitcond49.not, label %._crit_edge.us46, label %bb.c, !llvm.loop !32

._crit_edge.us46:                                 ; preds = %bb.c
  %i.r = add i32 %.02944.us, 1                    ; 2 uses
  %.not35.us = icmp ugt i32 %i.r, %1
  br i1 %.not35.us, label %._crit_edge45, label %.preheader.us, !llvm.loop !33

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
  %i.b = udiv i32 %i.a, 6                         ; 2 uses
  %i.c = shl i32 %1, 2                            ; 2 uses
  %i.d = udiv i32 %i.c, 6                         ; 2 uses
  %i.e = shl i32 %0, 1
  %i.f = udiv i32 %i.e, 6
  %i.g = shl i32 %0, 2
  %i.h = udiv i32 %i.g, 6
  %i.i = add i32 %0, -1
  %i.j = mul i32 %i.i, %1
  %i.k = add i32 %i.j, 1                          ; 4 uses
  %i.l = mul i32 %1, %0                           ; 4 uses
  br i1 %.not133, label %._crit_edge127.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.not163 = icmp ne i32 %1, 1
  %i.m = icmp ugt i32 %i.a, 5
  %.not118.peel = icmp ult i32 %i.c, 6
  %i.n = or i1 %i.m, %.not118.peel
  %or.cond129.not136.peel = or i1 %i.n, %.not
  %exitcond.peel.not = icmp eq i32 %1, 1
  %.not169 = icmp eq i32 %1, 2
  %i.o = add i32 %1, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0108126 = phi i32 [ %i.r, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.p = mul i32 %.0108126, %1                    ; 4 uses
  %.not119 = icmp ule i32 %.0108126, %i.f         ; 2 uses
  %i.q = icmp ugt i32 %.0108126, %i.h             ; 2 uses
  %i.r = add nuw i32 %.0108126, 1                 ; 5 uses
  %i.s = icmp ult i32 %i.r, %0                    ; 3 uses
  %i.t = mul i32 %i.r, %1
  %i.u = add i32 %i.t, 1                          ; 3 uses
  %i.v = icmp eq i32 %.0108126, 0                 ; 4 uses
  %i.w = icmp eq i32 %i.r, %0                     ; 4 uses
  %i.x = add i32 %i.p, 1                          ; 7 uses
  %brmerge.peel = or i1 %or.cond129.not136.peel, %.not119
  %brmerge130.peel = or i1 %brmerge.peel, %i.q
  %or.cond = select i1 %.not163, i1 %brmerge130.peel, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.y = add i32 %i.p, 2
  tail call void %4(i32 noundef %i.x, i32 noundef %i.y) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void %4(i32 noundef %i.x, i32 noundef %i.u) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  switch i32 %2, label %bb.l [
    i32 1, label %bb.i
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i32 %i.x, %i.l
  %or.cond165 = select i1 %i.w, i1 %i.z, i1 false
  br i1 %or.cond165, label %.sink.split, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp ult i32 %i.x, %1
  br i1 %i.aa, label %.sink.split, label %bb.l

bb.i:                                             ; preds = %bb.e
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = icmp ult i32 %i.x, %1
  %or.cond166 = select i1 %i.w, i1 %i.ab, i1 false
  br i1 %or.cond166, label %.sink.split, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp ult i32 %i.x, %i.l
  br i1 %i.ac, label %.sink.split, label %bb.l

.sink.split:                                      ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.sink = phi i32 [ %1, %bb.j ], [ %1, %bb.h ], [ %i.l, %bb.g ], [ %i.l, %bb.k ]
  tail call void %4(i32 noundef %i.x, i32 noundef %.sink) #15
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j, %bb.g, %bb.k, %bb.h, %bb.e
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.l
  %invariant.op = or i1 %.not, %.not119
  %invariant.op164 = or i1 %invariant.op, %i.q    ; 2 uses
  br i1 %.not169, label %._crit_edge.loopexit.peel.begin, label %.peel.next.split

._crit_edge127.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.loopexit.peel.begin:                  ; preds = %.peel.next, %bb.ad
  %i.ad = phi i32 [ 1, %.peel.next ], [ %i.av, %bb.ad ] ; 5 uses
  %i.ae = add i32 %i.ad, %i.p                     ; 2 uses
  %i.af = add i32 %i.ae, 1                        ; 8 uses
  %i.ag = add nuw i32 %i.ad, 1                    ; 3 uses
  %i.ah = icmp ult i32 %i.ag, %1
  br i1 %i.ah, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %i.ai = icmp ult i32 %i.ad, %i.b
  %.not118.peel167 = icmp uge i32 %i.ad, %i.d
  %i.aj = or i1 %i.ai, %.not118.peel167
  %brmerge130.reass.peel = or i1 %i.aj, %invariant.op164
  br i1 %brmerge130.reass.peel, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = add i32 %i.ae, 2
  tail call void %4(i32 noundef %i.af, i32 noundef %i.ak) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.loopexit.peel.begin
  br i1 %i.s, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = add i32 %i.u, %i.ad
  tail call void %4(i32 noundef %i.af, i32 noundef %i.al) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  switch i32 %2, label %._crit_edge [
    i32 1, label %bb.u
    i32 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.am = icmp eq i32 %i.ag, %1                   ; 2 uses
  %or.cond123.peel = and i1 %i.v, %i.am
  br i1 %or.cond123.peel, label %6, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = icmp ult i32 %i.af, %i.k
  %i.ao = and i1 %i.am, %i.an
  %or.cond131.peel = and i1 %i.ao, %i.w
  br i1 %or.cond131.peel, label %5, label %._crit_edge

5:                                                ; preds = %bb.s
  tail call void %4(i32 noundef %i.af, i32 noundef %i.k) #15
  br label %._crit_edge

6:                                                ; preds = %bb.r
  %7 = icmp eq i32 %i.af, 0
  br i1 %7, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %6
  tail call void %4(i32 noundef 0, i32 noundef 1) #15
  br label %._crit_edge

bb.u:                                             ; preds = %bb.q
  %i.ap = icmp eq i32 %i.ag, %1                   ; 2 uses
  %or.cond120.peel = and i1 %i.v, %i.ap
  br i1 %or.cond120.peel, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = icmp eq i32 %i.af, 0
  %i.ar = and i1 %i.ap, %i.aq
  %or.cond122.peel = and i1 %i.w, %i.ar
  br i1 %or.cond122.peel, label %bb.w, label %._crit_edge

bb.w:                                             ; preds = %bb.v
  tail call void %4(i32 noundef 0, i32 noundef 1) #15
  br label %._crit_edge

bb.x:                                             ; preds = %bb.u
  %i.as = icmp ult i32 %i.af, %i.k
  br i1 %i.as, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %bb.x
  tail call void %4(i32 noundef %i.af, i32 noundef %i.k) #15
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %6, %5, %bb.s, %bb.q, %bb.l
  %exitcond140.not = icmp eq i32 %i.r, %0
  br i1 %exitcond140.not, label %._crit_edge127.split, label %.preheader, !llvm.loop !34

.peel.next.split:                                 ; preds = %.peel.next, %bb.ad
  %.0125 = phi i32 [ %i.av, %bb.ad ], [ 1, %.peel.next ] ; 6 uses
  %i.at = add i32 %.0125, %i.p                    ; 2 uses
  %i.au = add i32 %i.at, 1                        ; 2 uses
  %i.av = add nuw i32 %.0125, 1                   ; 3 uses
  %i.aw = icmp ult i32 %i.av, %1
  br i1 %i.aw, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.peel.next.split
  %i.ax = icmp ult i32 %.0125, %i.b
  %.not118 = icmp uge i32 %.0125, %i.d
  %i.ay = or i1 %i.ax, %.not118
  %brmerge130.reass = or i1 %i.ay, %invariant.op164
  br i1 %brmerge130.reass, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.az = add i32 %i.at, 2
  tail call void %4(i32 noundef %i.au, i32 noundef %i.az) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %.peel.next.split
  br i1 %i.s, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ba = add i32 %i.u, %.0125
  tail call void %4(i32 noundef %i.au, i32 noundef %i.ba) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %exitcond.not = icmp eq i32 %.0125, %i.o
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %.peel.next.split, !llvm.loop !35
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
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !37

._crit_edge.us:                                   ; preds = %bb.b
  %i.k = add i32 %.01116.us, 1                    ; 2 uses
  %i.l = uitofp i32 %i.k to double
  %i.m = fcmp ult double %i.g, %i.l
  br i1 %i.m, label %._crit_edge17, label %.preheader.us, !llvm.loop !38

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
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !39
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
  %.val2528 = load i64, ptr %i.b, align 8, !tbaa !40 ; 2 uses
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
  %i.f = load ptr, ptr %2, align 8, !tbaa !43
  %i.g = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.e) #15
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %.val2426 = load i64, ptr %i.i, align 8, !tbaa !40
  %.not = icmp eq i64 %.val2426, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph31
  %i.j = add i32 %.02029, 1                       ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.val25 = load i64, ptr %i.b, align 8, !tbaa !40 ; 2 uses
  %i.l = icmp ugt i64 %.val25, %i.k
  br i1 %i.l, label %.lr.ph31, label %.preheader, !llvm.loop !44

.lr.ph:                                           ; preds = %.lr.ph31, %bb.c
  %.01927 = phi i64 [ %i.r, %bb.c ], [ 0, %.lr.ph31 ] ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.n = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.h, i64 noundef %.01927) #15
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %i.q = icmp ult i32 %.02029, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void %1(i32 noundef %.02029, i32 noundef %i.p) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.r = add nuw i64 %.01927, 1                   ; 2 uses
  %.val24 = load i64, ptr %i.i, align 8, !tbaa !40
  %i.s = icmp ult i64 %i.r, %.val24
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !46

._crit_edge35:                                    ; preds = %bb.g, %.preheader
  call void @gv_list_clear_(ptr noundef nonnull %2, i64 noundef 48) #15
  call void @gv_list_free_(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.d:                                             ; preds = %.lr.ph34, %bb.g
  %.033 = phi i64 [ 0, %.lr.ph34 ], [ %i.z, %bb.g ] ; 2 uses
  %i.t = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.033) #15
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %magicptr = ptrtoint ptr %i.u to i64
  switch i64 %magicptr, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.w = call i64 @fwrite(ptr nonnull @.str.3, i64 66, i64 1, ptr %i.v) #17 ; 0 uses
  call void @abort() #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %2, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.t
  call void %i.u(ptr noundef byval(%struct.vtx_data) align 8 %i.y) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.z = add nuw i64 %.033, 1                     ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !tbaa !40
  %i.aa = icmp ult i64 %i.z, %.val
  br i1 %i.aa, label %bb.d, label %._crit_edge35, !llvm.loop !50
}

; Function Attrs: nounwind uwtable
define internal void @free_vtx(ptr noundef byval(%struct.vtx_data) align 8 %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %.not = icmp eq i64 %.val5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %magicptr = ptrtoint ptr %.pre to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @gv_list_clear_(ptr noundef nonnull %0, i64 noundef 4) #15
  call void @gv_list_free_(ptr noundef nonnull %0) #15
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.06 = phi i64 [ 0, %.lr.ph ], [ %i.i, %bb.e ]  ; 2 uses
  %i.c = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %.06) #15
end_hunk_0
begin_hunk_1_@makeTetrix:bb.a
  br label %bb.d

.lr.ph31:                                         ; preds = %bb.a, %._crit_edge
  %i.e = phi i64 [ %i.k, %._crit_edge ], [ 1, %bb.a ]
  %.02029 = phi i32 [ %i.j, %._crit_edge ], [ 1, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !43
  %i.g = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.e) #15
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %.val2426 = load i64, ptr %i.i, align 8, !tbaa !40
  %.not = icmp eq i64 %.val2426, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph31
  %i.j = add i32 %.02029, 1                       ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.val25 = load i64, ptr %i.b, align 8, !tbaa !40 ; 2 uses
  %i.l = icmp ugt i64 %.val25, %i.k
  br i1 %i.l, label %.lr.ph31, label %.preheader, !llvm.loop !53

.lr.ph:                                           ; preds = %.lr.ph31, %bb.c
  %.01927 = phi i64 [ %i.r, %bb.c ], [ 0, %.lr.ph31 ] ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.n = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.h, i64 noundef %.01927) #15
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %i.q = icmp ult i32 %.02029, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void %1(i32 noundef %.02029, i32 noundef %i.p) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.r = add nuw i64 %.01927, 1                   ; 2 uses
  %.val24 = load i64, ptr %i.i, align 8, !tbaa !40
  %i.s = icmp ult i64 %i.r, %.val24
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !54

._crit_edge35:                                    ; preds = %bb.g, %.preheader
  call void @gv_list_clear_(ptr noundef nonnull %2, i64 noundef 48) #15
  call void @gv_list_free_(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.d:                                             ; preds = %.lr.ph34, %bb.g
  %.033 = phi i64 [ 0, %.lr.ph34 ], [ %i.z, %bb.g ] ; 2 uses
  %i.t = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.033) #15
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %magicptr = ptrtoint ptr %i.u to i64
  switch i64 %magicptr, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.w = call i64 @fwrite(ptr nonnull @.str.3, i64 66, i64 1, ptr %i.v) #17 ; 0 uses
  call void @abort() #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %2, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.t
  call void %i.u(ptr noundef byval(%struct.vtx_data) align 8 %i.y) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.z = add nuw i64 %.033, 1                     ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !tbaa !40
  %i.aa = icmp ult i64 %i.z, %.val
  br i1 %i.aa, label %bb.d, label %._crit_edge35, !llvm.loop !55
}

; Function Attrs: nounwind uwtable
define internal fastcc void @constructTetrix(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %.not65 = icmp eq i32 %4, 0
  br i1 %.not65, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr6370 = phi i32 [ %i.h, %tailrecurse ], [ %4, %bb.a ]
  %.tr6269 = phi i32 [ %i.g, %tailrecurse ], [ %3, %bb.a ] ; 2 uses
  %.tr6168 = phi i32 [ %i.f, %tailrecurse ], [ %2, %bb.a ]
  %.tr6067 = phi i32 [ %i.e, %tailrecurse ], [ %1, %bb.a ]
  %.tr66 = phi i32 [ %.tr6269, %tailrecurse ], [ %0, %bb.a ]
  %i.a = load i32, ptr @constructTetrix.last_used_node_name, align 4, !tbaa !45 ; 6 uses
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = add i32 %i.a, 2                          ; 2 uses
  %i.d = add i32 %i.a, 3                          ; 2 uses
  %i.e = add i32 %i.a, 4                          ; 3 uses
  %i.f = add i32 %i.a, 5                          ; 3 uses
  %i.g = add i32 %i.a, 6                          ; 4 uses
  store i32 %i.g, ptr @constructTetrix.last_used_node_name, align 4, !tbaa !45
  %i.h = add i32 %.tr6370, -1                     ; 5 uses
  tail call fastcc void @constructTetrix(i32 noundef %.tr66, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.h, ptr noundef %5)
  tail call fastcc void @constructTetrix(i32 noundef %.tr6067, i32 noundef %i.c, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %i.h, ptr noundef %5)
  tail call fastcc void @constructTetrix(i32 noundef %.tr6168, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %i.h, ptr noundef %5)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi i32 [ %0, %bb.a ], [ %.tr6269, %tailrecurse ] ; 4 uses
  %.tr60.lcssa = phi i32 [ %1, %bb.a ], [ %i.e, %tailrecurse ] ; 4 uses
  %.tr61.lcssa = phi i32 [ %2, %bb.a ], [ %i.f, %tailrecurse ] ; 4 uses
  %.tr62.lcssa = phi i32 [ %3, %bb.a ], [ %i.g, %tailrecurse ] ; 4 uses
  %i.i = zext i32 %.tr.lcssa to i64               ; 3 uses
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.i, i32 noundef %.tr60.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.i, i32 noundef %.tr61.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.i, i32 noundef %.tr62.lcssa)
  %i.j = zext i32 %.tr60.lcssa to i64             ; 3 uses
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.j, i32 noundef %.tr.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.j, i32 noundef %.tr61.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.j, i32 noundef %.tr62.lcssa)
  %i.k = zext i32 %.tr61.lcssa to i64             ; 3 uses
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.k, i32 noundef %.tr.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.k, i32 noundef %.tr60.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.k, i32 noundef %.tr62.lcssa)
  %i.l = zext i32 %.tr62.lcssa to i64             ; 3 uses
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.l, i32 noundef %.tr.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.l, i32 noundef %.tr60.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.l, i32 noundef %.tr61.lcssa)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeHypercube(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.split18.us, label %.preheader.us

.preheader.us:                                    ; preds = %bb.a, %._crit_edge.us
  %.01316.us = phi i32 [ %i.a, %._crit_edge.us ], [ 0, %bb.a ] ; 3 uses
  %i.a = add i32 %.01316.us, 1                    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.d
  %.015.us = phi i32 [ 0, %.preheader.us ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = shl nuw i32 1, %.015.us
  %i.c = xor i32 %i.b, %.01316.us
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp ult i32 %.01316.us, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void %1(i32 noundef %i.a, i32 noundef %i.d) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add nuw i32 %.015.us, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.f, %0
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !56

._crit_edge.us:                                   ; preds = %bb.d
  %.013.highbits.us = lshr i32 %i.a, %0
  %i.g = icmp eq i32 %.013.highbits.us, 0
  br i1 %i.g, label %.preheader.us, label %.split18.us, !llvm.loop !57

.split18.us:                                      ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeTriMesh(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i32 noundef 1, i32 noundef 0) #15
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void %1(i32 noundef 1, i32 noundef 2) #15
  tail call void %1(i32 noundef 1, i32 noundef 3) #15
  %i.b = icmp ugt i32 %0, 2
  br i1 %i.b, label %.preheader34, label %.preheader

.preheader34:                                     ; preds = %bb.c, %.peel.next
  %indvars.iv = phi i32 [ %indvars.iv.next, %.peel.next ], [ 3, %bb.c ] ; 3 uses
  %.03138 = phi i32 [ %i.f, %.peel.next ], [ 2, %bb.c ] ; 3 uses
  %.03237 = phi i32 [ %.pre44, %.peel.next ], [ 2, %bb.c ]
  %i.c = add i32 %indvars.iv, -2
  br label %bb.d

.preheader:                                       ; preds = %.peel.next, %bb.c
  %.032.lcssa = phi i32 [ 2, %bb.c ], [ %.pre44, %.peel.next ]
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %umax = tail call i32 @llvm.umax.i32(i32 %0, i32 2)
  br label %.lr.ph

.peel.next:                                       ; preds = %bb.d
  %i.d = add i32 %i.i, %.03138                    ; 2 uses
  tail call void %1(i32 noundef %i.i, i32 noundef %i.d) #15
  %i.e = add i32 %i.d, 1
  tail call void %1(i32 noundef %i.i, i32 noundef %i.e) #15
  %.pre44 = add i32 %.135, 2                      ; 2 uses
  %i.f = add nuw i32 %.03138, 1
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond42.not = icmp eq i32 %indvars.iv, %0
  br i1 %exitcond42.not, label %.preheader, label %.preheader34, !llvm.loop !58

bb.d:                                             ; preds = %.preheader34, %bb.d
  %.03036 = phi i32 [ 1, %.preheader34 ], [ %i.j, %bb.d ] ; 2 uses
  %.135 = phi i32 [ %.03237, %.preheader34 ], [ %i.i, %bb.d ] ; 6 uses
  %i.g = add i32 %.135, %.03138                   ; 2 uses
  tail call void %1(i32 noundef %.135, i32 noundef %i.g) #15
  %i.h = add i32 %i.g, 1
  tail call void %1(i32 noundef %.135, i32 noundef %i.h) #15
  %i.i = add i32 %.135, 1                         ; 5 uses
  tail call void %1(i32 noundef %.135, i32 noundef %i.i) #15
  %i.j = add nuw i32 %.03036, 1
  %exitcond.not = icmp eq i32 %.03036, %i.c
  br i1 %exitcond.not, label %.peel.next, label %bb.d, !llvm.loop !59

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.040 = phi i32 [ %i.l, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %.239 = phi i32 [ %i.k, %.lr.ph ], [ %.032.lcssa, %.lr.ph.preheader ] ; 2 uses
  %i.k = add i32 %.239, 1                         ; 2 uses
  tail call void %1(i32 noundef %.239, i32 noundef %i.k) #15
  %i.l = add nuw i32 %.040, 1                     ; 2 uses
  %exitcond43.not = icmp eq i32 %i.l, %umax
  br i1 %exitcond43.not, label %.loopexit, label %.lr.ph, !llvm.loop !60

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeBall(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not39.i = icmp eq i32 %0, 0
  br i1 %.not39.i, label %makeCylinder.exit, label %.preheader37.lr.ph.i

.preheader37.lr.ph.i:                             ; preds = %bb.a
  %i.a = icmp ugt i32 %1, 1
  br i1 %i.a, label %.preheader37.us.i, label %.preheader37.i

.preheader37.us.i:                                ; preds = %.preheader37.lr.ph.i, %._crit_edge.us.i
  %.03141.us.i = phi i32 [ %i.f, %._crit_edge.us.i ], [ 0, %.preheader37.lr.ph.i ] ; 3 uses
  %.03240.us.i = phi i32 [ %i.g, %._crit_edge.us.i ], [ 1, %.preheader37.lr.ph.i ]
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader37.us.i
  %.03038.us.i = phi i32 [ 1, %.preheader37.us.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.b = add i32 %.03038.us.i, %.03141.us.i       ; 2 uses
  %i.c = add i32 %i.b, 1
  tail call void %2(i32 noundef %i.b, i32 noundef %i.c) #15, !inline_history !61
  %i.d = add nuw i32 %.03038.us.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.d, %1
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !30

._crit_edge.us.i:                                 ; preds = %bb.b
  %i.e = add i32 %.03141.us.i, 1
  %i.f = add i32 %.03141.us.i, %1                 ; 2 uses
  tail call void %2(i32 noundef %i.e, i32 noundef %i.f) #15, !inline_history !61
  %i.g = add i32 %.03240.us.i, 1                  ; 2 uses
  %.not.us.i = icmp ugt i32 %i.g, %0
  br i1 %.not.us.i, label %.preheader.lr.ph.i, label %.preheader37.us.i, !llvm.loop !31

.preheader37.i:                                   ; preds = %.preheader37.lr.ph.i, %.preheader37.i
  %.03141.i = phi i32 [ %i.i, %.preheader37.i ], [ 0, %.preheader37.lr.ph.i ] ; 2 uses
  %.03240.i = phi i32 [ %i.j, %.preheader37.i ], [ 1, %.preheader37.lr.ph.i ]
  %i.h = add i32 %.03141.i, 1
  %i.i = add i32 %.03141.i, %1                    ; 2 uses
  tail call void %2(i32 noundef %i.h, i32 noundef %i.i) #15, !inline_history !61
  %i.j = add i32 %.03240.i, 1                     ; 2 uses
  %.not.i = icmp ugt i32 %i.j, %0
  br i1 %.not.i, label %.preheader36.i, label %.preheader37.i, !llvm.loop !31

.preheader36.i:                                   ; preds = %.preheader37.i
  %.not3543.i = icmp ne i32 %1, 0
  %i.k = icmp ne i32 %0, 1
  %or.cond.i = and i1 %i.k, %.not3543.i
  br i1 %or.cond.i, label %.preheader.us.i.preheader, label %makeCylinder.exit

.preheader.lr.ph.i:                               ; preds = %._crit_edge.us.i
  %.old.not.i = icmp eq i32 %0, 1
  br i1 %.old.not.i, label %.lr.ph.preheader, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.i, %.preheader36.i
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us46.i
  %.02944.us.i = phi i32 [ %i.r, %._crit_edge.us46.i ], [ 1, %.preheader.us.i.preheader ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.i
  %.042.us.i = phi i32 [ 1, %.preheader.us.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.l = add i32 %.042.us.i, -1
  %i.m = mul i32 %i.l, %1
  %i.n = add i32 %i.m, %.02944.us.i
  %i.o = mul i32 %.042.us.i, %1
  %i.p = add i32 %i.o, %.02944.us.i
  tail call void %2(i32 noundef %i.n, i32 noundef %i.p) #15, !inline_history !61
  %i.q = add nuw i32 %.042.us.i, 1                ; 2 uses
  %exitcond49.not.i = icmp eq i32 %i.q, %0
  br i1 %exitcond49.not.i, label %._crit_edge.us46.i, label %bb.c, !llvm.loop !32

._crit_edge.us46.i:                               ; preds = %bb.c
  %i.r = add i32 %.02944.us.i, 1                  ; 2 uses
  %.not35.us.i = icmp ugt i32 %i.r, %1
  br i1 %.not35.us.i, label %makeCylinder.exit, label %.preheader.us.i, !llvm.loop !33

makeCylinder.exit:                                ; preds = %._crit_edge.us46.i, %bb.a, %.preheader36.i
  %.not23 = icmp eq i32 %1, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.lr.ph.i, %makeCylinder.exit
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %makeCylinder.exit
  %i.s = mul i32 %1, %0                           ; 3 uses
  %i.t = add i32 %i.s, 1
  %i.u = add i32 %0, -1
  %i.v = mul i32 %i.u, %1
  %.025 = add i32 %i.v, 1                         ; 2 uses
  %.not2026 = icmp ugt i32 %.025, %i.s
  br i1 %.not2026, label %._crit_edge30, label %.lr.ph29

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01824 = phi i32 [ %i.w, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  tail call void %2(i32 noundef 0, i32 noundef %.01824) #15
  %i.w = add i32 %.01824, 1                       ; 2 uses
  %.not = icmp ugt i32 %i.w, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge30:                                    ; preds = %.lr.ph29, %._crit_edge
  ret void

.lr.ph29:                                         ; preds = %._crit_edge, %.lr.ph29
  %.027 = phi i32 [ %.0, %.lr.ph29 ], [ %.025, %._crit_edge ] ; 2 uses
  tail call void %2(i32 noundef %.027, i32 noundef %i.t) #15
  %.0 = add i32 %.027, 1                          ; 2 uses
  %.not20 = icmp ugt i32 %.0, %i.s
  br i1 %.not20, label %._crit_edge30, label %.lr.ph29, !llvm.loop !63
}

; Function Attrs: nounwind uwtable
define dso_local void @makeRandom(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rand() #15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.03755 = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ] ; 4 uses
  %.03854 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.b = shl nuw i32 1, %.03755
  %i.c = add i32 %i.b, %.03854                    ; 3 uses
  %i.d = add i32 %.03755, 1
  %.not = icmp ugt i32 %i.c, %0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !64

bb.c:                                             ; preds = %bb.b
  %.neg = shl nsw i32 -1, %.03755
  %i.e = add i32 %.neg, %i.c                      ; 6 uses
  %i.f = add i32 %.03755, -1                      ; 2 uses
  %i.g = and i32 %i.a, 1
  %.not42 = icmp eq i32 %i.g, 0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %makeBinaryTree.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.011.i = phi i32 [ %i.j, %.lr.ph.i ], [ 1, %bb.d ] ; 4 uses
  %i.h = shl i32 %.011.i, 1                       ; 2 uses
  tail call void %2(i32 noundef %.011.i, i32 noundef %i.h) #15, !inline_history !65
  %i.i = or disjoint i32 %i.h, 1
  tail call void %2(i32 noundef %.011.i, i32 noundef %i.i) #15, !inline_history !65
  %i.j = add i32 %.011.i, 1                       ; 2 uses
  %.0.highbits.i = lshr i32 %i.j, %i.f
  %.not.not.i = icmp eq i32 %.0.highbits.i, 0
  br i1 %.not.not.i, label %.lr.ph.i, label %makeBinaryTree.exit, !llvm.loop !39

bb.e:                                             ; preds = %bb.c
  switch i32 %i.e, label %.lr.ph.i48 [
    i32 1, label %bb.f
    i32 0, label %._crit_edge60
  ]

bb.f:                                             ; preds = %bb.e
  tail call void %2(i32 noundef 1, i32 noundef 0) #15, !inline_history !66
  br label %._crit_edge60

.lr.ph.i48:                                       ; preds = %bb.e, %.lr.ph.i48
  %.09.i = phi i32 [ %i.l, %.lr.ph.i48 ], [ 2, %bb.e ] ; 3 uses
  %i.k = add i32 %.09.i, -1
  tail call void %2(i32 noundef %i.k, i32 noundef %.09.i) #15, !inline_history !66
  %i.l = add i32 %.09.i, 1                        ; 2 uses
  %.not.i49 = icmp ugt i32 %i.l, %i.e
  br i1 %.not.i49, label %makeBinaryTree.exit, label %.lr.ph.i48, !llvm.loop !9

makeBinaryTree.exit:                              ; preds = %.lr.ph.i, %.lr.ph.i48, %bb.d
  %.not4357 = icmp ult i32 %i.e, 3
  br i1 %.not4357, label %._crit_edge60, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %makeBinaryTree.exit
  %i.m = mul i32 %i.e, %i.e                       ; 2 uses
  %i.n = mul i32 %1, %1                           ; 2 uses
  %invariant.umax = tail call i32 @llvm.umax.i32(i32 %i.n, i32 %1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.03658 = phi i32 [ 3, %.preheader.lr.ph ], [ %i.w, %._crit_edge ] ; 8 uses
  %i.o = icmp ugt i32 %.03658, 2
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = icmp ult i32 %.03658, 5
  %i.q = add i32 %.03658, 4
  %i.r = icmp ule i32 %i.q, %0
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %i.s = phi i32 [ %i.v, %bb.h ], [ 2, %.lr.ph ]  ; 2 uses
  %.056.us = phi i32 [ %i.s, %bb.h ], [ 1, %.lr.ph ]
  %i.t = tail call i32 @rand() #15
  %i.u = urem i32 %i.t, %i.m
  %or.cond = icmp ugt i32 %i.u, %invariant.umax
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  tail call void %2(i32 noundef %.056.us, i32 noundef %.03658) #15
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us, %bb.g
  %i.v = add nuw i32 %i.s, 1                      ; 2 uses
  %exitcond63.not = icmp eq i32 %i.v, %.03658
  br i1 %exitcond63.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !67

._crit_edge60:                                    ; preds = %._crit_edge, %bb.e, %bb.f, %makeBinaryTree.exit
  ret void

._crit_edge:                                      ; preds = %bb.l, %bb.h, %.preheader
  %i.w = add i32 %.03658, 1                       ; 2 uses
  %.not43 = icmp ugt i32 %i.w, %i.e
  br i1 %.not43, label %._crit_edge60, label %.preheader, !llvm.loop !68

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %i.x = phi i32 [ %i.ac, %bb.l ], [ 2, %.lr.ph ] ; 2 uses
  %.056 = phi i32 [ %i.x, %bb.l ], [ 1, %.lr.ph ] ; 2 uses
  %i.y = tail call i32 @rand() #15
  %i.z = urem i32 %i.y, %i.m                      ; 3 uses
  %.not44 = icmp ugt i32 %i.z, %i.n
  br i1 %.not44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
end_hunk_1
