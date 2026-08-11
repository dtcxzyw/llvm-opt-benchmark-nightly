inline.NumInlined: 50
inline.NumDeleted: 22
begin_hunk_0_@makeSquareGrid:bb.a
  %i.r = add nuw i32 %.0126, 1                    ; 5 uses
  %i.s = icmp ult i32 %i.r, %0                    ; 3 uses
  %i.t = mul i32 %i.r, %1
  %i.u = add i32 %i.t, 1                          ; 3 uses
  %i.v = icmp eq i32 %.0126, 0                    ; 4 uses
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

._crit_edge.loopexit.peel.begin:                  ; preds = %.peel.next, %bb.af
  %i.ad = phi i32 [ 1, %.peel.next ], [ %i.aw, %bb.af ] ; 5 uses
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
    i32 1, label %bb.w
    i32 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.am = icmp eq i32 %i.ag, %1                   ; 2 uses
  %or.cond123.peel = and i1 %i.v, %i.am
  br i1 %or.cond123.peel, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = icmp ult i32 %i.af, %i.k
  %i.ao = and i1 %i.am, %i.an
  %or.cond131.peel = and i1 %i.ao, %i.w
  br i1 %or.cond131.peel, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  tail call void %4(i32 noundef %i.af, i32 noundef %i.k) #15
  br label %._crit_edge

bb.u:                                             ; preds = %bb.r
  %i.ap = icmp eq i32 %i.af, 0
  br i1 %i.ap, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  tail call void %4(i32 noundef 0, i32 noundef 1) #15
  br label %._crit_edge

bb.w:                                             ; preds = %bb.q
  %i.aq = icmp eq i32 %i.ag, %1                   ; 2 uses
  %or.cond120.peel = and i1 %i.v, %i.aq
  br i1 %or.cond120.peel, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = icmp eq i32 %i.af, 0
  %i.as = and i1 %i.aq, %i.ar
  %or.cond122.peel = and i1 %i.w, %i.as
  br i1 %or.cond122.peel, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %bb.x
  tail call void %4(i32 noundef 0, i32 noundef 1) #15
  br label %._crit_edge

bb.z:                                             ; preds = %bb.w
  %i.at = icmp ult i32 %i.af, %i.k
  br i1 %i.at, label %bb.aa, label %._crit_edge

bb.aa:                                            ; preds = %bb.z
  tail call void %4(i32 noundef %i.af, i32 noundef %i.k) #15
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.l
  %exitcond140.not = icmp eq i32 %i.r, %0
  br i1 %exitcond140.not, label %._crit_edge127.split, label %.preheader, !llvm.loop !34

.peel.next.split:                                 ; preds = %.peel.next, %bb.af
  %.0108125 = phi i32 [ %i.aw, %bb.af ], [ 1, %.peel.next ] ; 6 uses
  %i.au = add i32 %.0108125, %i.p                 ; 2 uses
  %i.av = add i32 %i.au, 1                        ; 2 uses
  %i.aw = add nuw i32 %.0108125, 1                ; 3 uses
  %i.ax = icmp ult i32 %i.aw, %1
  br i1 %i.ax, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.peel.next.split
  %i.ay = icmp ult i32 %.0108125, %i.b
  %.not118 = icmp uge i32 %.0108125, %i.d
  %i.az = or i1 %i.ay, %.not118
  %brmerge130.reass = or i1 %i.az, %invariant.op164
  br i1 %brmerge130.reass, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ba = add i32 %i.au, 2
  tail call void %4(i32 noundef %i.av, i32 noundef %i.ba) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.peel.next.split
  br i1 %i.s, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bb = add i32 %i.u, %.0108125
  tail call void %4(i32 noundef %i.av, i32 noundef %i.bb) #15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %exitcond.not = icmp eq i32 %.0108125, %i.o
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
  %.01116.us.a = phi i32 [ %i.j, %._crit_edge.us ], [ 1, %bb.a ] ; 2 uses
  %.01215.us.a = phi i32 [ %3, %._crit_edge.us ], [ 2, %bb.a ] ; 2 uses
  %3 = add i32 %1, %.01215.us.a                   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %.113.us = phi i32 [ %.01215.us.a, %.preheader.us ], [ %i.i, %bb.b ] ; 2 uses
  %i.i = add i32 %.113.us, 1                      ; 2 uses
  tail call void %2(i32 noundef %.01116.us.a, i32 noundef %.113.us) #15
  %exitcond.not = icmp eq i32 %i.i, %3
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !37

._crit_edge.us:                                   ; preds = %bb.b
  %i.j = add i32 %.01116.us.a, 1                  ; 2 uses
  %i.k = uitofp i32 %i.j to double
  %i.l = fcmp ult double %i.g, %i.k
  br i1 %i.l, label %._crit_edge17, label %.preheader.us, !llvm.loop !38

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
  %.029 = phi i32 [ %i.j, %._crit_edge ], [ 1, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !43
  %i.g = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.e) #15
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %.val2426 = load i64, ptr %i.i, align 8, !tbaa !40
  %.not = icmp eq i64 %.val2426, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph31
  %i.j = add i32 %.029, 1                         ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.val25 = load i64, ptr %i.b, align 8, !tbaa !40 ; 2 uses
  %i.l = icmp ugt i64 %.val25, %i.k
  br i1 %i.l, label %.lr.ph31, label %.preheader, !llvm.loop !44

.lr.ph:                                           ; preds = %.lr.ph31, %bb.c
  %.02027 = phi i64 [ %i.r, %bb.c ], [ 0, %.lr.ph31 ] ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.n = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.h, i64 noundef %.02027) #15
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %i.q = icmp ult i32 %.029, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void %1(i32 noundef %.029, i32 noundef %i.p) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.r = add nuw i64 %.02027, 1                   ; 2 uses
  %.val24 = load i64, ptr %i.i, align 8, !tbaa !40
  %i.s = icmp ult i64 %i.r, %.val24
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !46

._crit_edge35:                                    ; preds = %bb.g, %.preheader
  call void @gv_list_clear_(ptr noundef nonnull %2, i64 noundef 48) #15
  call void @gv_list_free_(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.d:                                             ; preds = %.lr.ph34, %bb.g
  %.01933 = phi i64 [ 0, %.lr.ph34 ], [ %i.z, %bb.g ] ; 2 uses
  %i.t = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.01933) #15
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
  %i.z = add nuw i64 %.01933, 1                   ; 2 uses
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
  switch i64 %magicptr, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.3, i64 66, i64 1, ptr %i.d) #17 ; 0 uses
  tail call void @abort() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45
  tail call void %.pre(i32 noundef %i.h) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.i = add nuw i64 %.06, 1                      ; 2 uses
  %i.j = icmp ult i64 %i.i, %.val5
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @constructSierpinski(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %.not37 = icmp eq i32 %3, 0
  br i1 %.not37, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr3541 = phi i32 [ %i.e, %tailrecurse ], [ %3, %bb.a ]
  %.tr3440 = phi i32 [ %i.d, %tailrecurse ], [ %2, %bb.a ] ; 2 uses
  %.tr3339 = phi i32 [ %i.b, %tailrecurse ], [ %1, %bb.a ]
  %.tr38 = phi i32 [ %.tr3440, %tailrecurse ], [ %0, %bb.a ]
  %i.a = load i32, ptr @constructSierpinski.last_used_node_name, align 4, !tbaa !45 ; 3 uses
  %i.b = add i32 %i.a, 1                          ; 3 uses
  %i.c = add i32 %i.a, 2                          ; 2 uses
  %i.d = add i32 %i.a, 3                          ; 4 uses
  store i32 %i.d, ptr @constructSierpinski.last_used_node_name, align 4, !tbaa !45
  %i.e = add i32 %.tr3541, -1                     ; 4 uses
  tail call fastcc void @constructSierpinski(i32 noundef %.tr38, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.e, ptr noundef %4)
  tail call fastcc void @constructSierpinski(i32 noundef %.tr3339, i32 noundef %i.c, i32 noundef %i.d, i32 noundef %i.e, ptr noundef %4)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi i32 [ %0, %bb.a ], [ %.tr3440, %tailrecurse ] ; 3 uses
  %.tr33.lcssa = phi i32 [ %1, %bb.a ], [ %i.b, %tailrecurse ] ; 3 uses
  %.tr34.lcssa = phi i32 [ %2, %bb.a ], [ %i.d, %tailrecurse ] ; 3 uses
  %i.f = zext i32 %.tr.lcssa to i64               ; 2 uses
end_hunk_0
