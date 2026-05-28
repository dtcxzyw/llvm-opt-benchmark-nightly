inline.NumInlined: 87
inline.NumDeleted: 13
begin_hunk_0_@d2b:bb.a
  %i.n = and i32 %.sroa.0.0.extract.trunc, 2
  %.not40.i = icmp eq i32 %i.n, 0
  br i1 %.not40.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = lshr exact i32 %.sroa.0.0.extract.trunc, 1
  br label %lo0bits.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.p = lshr exact i32 %.sroa.0.0.extract.trunc, 2
  br label %lo0bits.exit.thread

bb.h:                                             ; preds = %bb.c
  %i.q = and i32 %.sroa.0.0.extract.trunc, 65528
  %.not33.i = icmp eq i32 %i.q, 0                 ; 2 uses
  %i.r = lshr exact i32 %.sroa.0.0.extract.trunc, 16
  %spec.select.i = select i1 %.not33.i, i32 16, i32 0 ; 2 uses
  %spec.select41.i = select i1 %.not33.i, i32 %i.r, i32 %.sroa.0.0.extract.trunc ; 3 uses
  %i.s = and i32 %spec.select41.i, 255
  %.not34.i = icmp eq i32 %i.s, 0                 ; 2 uses
  %i.t = or disjoint i32 %spec.select.i, 8
  %i.u = lshr exact i32 %spec.select41.i, 8
  %.127.i = select i1 %.not34.i, i32 %i.t, i32 %spec.select.i ; 2 uses
  %.1.i = select i1 %.not34.i, i32 %i.u, i32 %spec.select41.i ; 3 uses
  %i.v = and i32 %.1.i, 15
  %.not35.i = icmp eq i32 %i.v, 0                 ; 2 uses
  %i.w = or disjoint i32 %.127.i, 4
  %i.x = lshr exact i32 %.1.i, 4
  %.228.i = select i1 %.not35.i, i32 %i.w, i32 %.127.i ; 2 uses
  %.2.i = select i1 %.not35.i, i32 %i.x, i32 %.1.i ; 3 uses
  %i.y = and i32 %.2.i, 3
  %.not36.i = icmp eq i32 %i.y, 0                 ; 2 uses
  %i.z = or disjoint i32 %.228.i, 2
  %i.aa = lshr exact i32 %.2.i, 2
  %.329.i = select i1 %.not36.i, i32 %i.z, i32 %.228.i ; 3 uses
  %.3.i = select i1 %.not36.i, i32 %i.aa, i32 %.2.i ; 5 uses
  %i.ab = and i32 %.3.i, 1
  %.not37.i = icmp eq i32 %i.ab, 0
  br i1 %.not37.i, label %bb.i, label %lo0bits.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = add nuw nsw i32 %.329.i, 1
  %i.ad = lshr exact i32 %.3.i, 1
  %.not38.i = icmp eq i32 %.3.i, 0                ; 2 uses
  %spec.select91 = select i1 %.not38.i, i32 32, i32 %i.ac
  %spec.select92 = select i1 %.not38.i, i32 %.sroa.0.0.extract.trunc, i32 %i.ad
  br label %lo0bits.exit.thread

lo0bits.exit:                                     ; preds = %bb.h
  %.not39 = icmp eq i32 %.329.i, 0
  br i1 %.not39, label %lo0bits.exit.thread85, label %lo0bits.exit.thread

lo0bits.exit.thread:                              ; preds = %bb.i, %bb.g, %bb.f, %lo0bits.exit
  %.031.i83 = phi i32 [ %.329.i, %lo0bits.exit ], [ %spec.select91, %bb.i ], [ 2, %bb.g ], [ 1, %bb.f ] ; 3 uses
  %.07882 = phi i32 [ %.3.i, %lo0bits.exit ], [ %spec.select92, %bb.i ], [ %i.p, %bb.g ], [ %i.o, %bb.f ]
  %i.ae = sub nuw nsw i32 32, %.031.i83
  %i.af = shl i32 %spec.select, %i.ae
  %i.ag = or i32 %i.af, %.07882
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !7
  %i.ah = lshr i32 %spec.select, %.031.i83
  br label %bb.j

lo0bits.exit.thread85:                            ; preds = %bb.d, %lo0bits.exit
  %.07889 = phi i32 [ %.3.i, %lo0bits.exit ], [ %.sroa.0.0.extract.trunc, %bb.d ]
  store i32 %.07889, ptr %i.f, align 8, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %lo0bits.exit.thread85, %lo0bits.exit.thread
  %.031.i84 = phi i32 [ 0, %lo0bits.exit.thread85 ], [ %.031.i83, %lo0bits.exit.thread ]
  %.077 = phi i32 [ %spec.select, %lo0bits.exit.thread85 ], [ %i.ah, %lo0bits.exit.thread ] ; 2 uses
  %i.ai = getelementptr i8, ptr %i.a, i64 28
  store i32 %.077, ptr %i.ai, align 4, !tbaa !7
  %.not40 = icmp eq i32 %.077, 0
  %i.aj = select i1 %.not40, i32 1, i32 2         ; 2 uses
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !49
  br label %bb.r

bb.k:                                             ; preds = %bb.b
  %i.ak = and i32 %spec.select, 7
  %.not.i43 = icmp eq i32 %i.ak, 0
  br i1 %.not.i43, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = and i32 %spec.select, 1
  %.not39.i44 = icmp eq i32 %i.al, 0
  br i1 %.not39.i44, label %bb.m, label %lo0bits.exit64

bb.m:                                             ; preds = %bb.l
  %i.am = and i32 %spec.select, 2
  %.not40.i46 = icmp eq i32 %i.am, 0
  br i1 %.not40.i46, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = lshr exact i32 %spec.select, 1
  br label %lo0bits.exit64

bb.o:                                             ; preds = %bb.m
  %i.ao = lshr exact i32 %spec.select, 2
  br label %lo0bits.exit64

bb.p:                                             ; preds = %bb.k
  %i.ap = and i32 %spec.select, 65528
  %.not33.i50 = icmp eq i32 %i.ap, 0              ; 2 uses
  %i.aq = lshr exact i32 %spec.select, 16
  %spec.select.i51 = select i1 %.not33.i50, i32 16, i32 0 ; 2 uses
  %spec.select41.i52 = select i1 %.not33.i50, i32 %i.aq, i32 %spec.select ; 3 uses
  %i.ar = and i32 %spec.select41.i52, 255
  %.not34.i53 = icmp eq i32 %i.ar, 0              ; 2 uses
  %i.as = or disjoint i32 %spec.select.i51, 8
  %i.at = lshr exact i32 %spec.select41.i52, 8
  %.127.i54 = select i1 %.not34.i53, i32 %i.as, i32 %spec.select.i51 ; 2 uses
  %.1.i55 = select i1 %.not34.i53, i32 %i.at, i32 %spec.select41.i52 ; 3 uses
  %i.au = and i32 %.1.i55, 15
  %.not35.i56 = icmp eq i32 %i.au, 0              ; 2 uses
  %i.av = or disjoint i32 %.127.i54, 4
  %i.aw = lshr exact i32 %.1.i55, 4
  %.228.i57 = select i1 %.not35.i56, i32 %i.av, i32 %.127.i54 ; 2 uses
  %.2.i58 = select i1 %.not35.i56, i32 %i.aw, i32 %.1.i55 ; 3 uses
  %i.ax = and i32 %.2.i58, 3
  %.not36.i59 = icmp eq i32 %i.ax, 0              ; 2 uses
  %i.ay = or disjoint i32 %.228.i57, 2
  %i.az = lshr exact i32 %.2.i58, 2
  %.329.i60 = select i1 %.not36.i59, i32 %i.ay, i32 %.228.i57 ; 2 uses
  %.3.i61 = select i1 %.not36.i59, i32 %i.az, i32 %.2.i58 ; 4 uses
  %i.ba = and i32 %.3.i61, 1
  %.not37.i62 = icmp eq i32 %i.ba, 0
  br i1 %.not37.i62, label %bb.q, label %lo0bits.exit64

bb.q:                                             ; preds = %bb.p
  %i.bb = add nuw nsw i32 %.329.i60, 1
  %i.bc = lshr exact i32 %.3.i61, 1
  %.not38.i63 = icmp eq i32 %.3.i61, 0            ; 2 uses
  %spec.select93 = select i1 %.not38.i63, i32 %spec.select, i32 %i.bc
  %spec.select94 = select i1 %.not38.i63, i32 32, i32 %i.bb
  br label %lo0bits.exit64

lo0bits.exit64:                                   ; preds = %bb.q, %bb.n, %bb.o, %bb.p, %bb.l
  %.1 = phi i32 [ %spec.select93, %bb.q ], [ %spec.select, %bb.l ], [ %i.an, %bb.n ], [ %i.ao, %bb.o ], [ %.3.i61, %bb.p ]
  %.031.i45 = phi i32 [ %spec.select94, %bb.q ], [ 0, %bb.l ], [ 1, %bb.n ], [ 2, %bb.o ], [ %.329.i60, %bb.p ]
  store i32 %.1, ptr %i.f, align 8, !tbaa !7
  store i32 1, ptr %i.d, align 4, !tbaa !49
  %i.bd = add nuw nsw i32 %.031.i45, 32
  br label %bb.r

bb.r:                                             ; preds = %lo0bits.exit64, %bb.j
  %.033 = phi i32 [ %.031.i84, %bb.j ], [ %i.bd, %lo0bits.exit64 ] ; 3 uses
  %.0 = phi i32 [ %i.aj, %bb.j ], [ 1, %lo0bits.exit64 ] ; 2 uses
  br i1 %.not37, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = add nsw i32 %i.j, -1075
  %i.bf = add nsw i32 %i.be, %.033
  %i.bg = sub nsw i32 53, %.033
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bh = add nuw nsw i32 %.033, -1074
  %i.bi = shl nuw nsw i32 %.0, 5
  %i.bj = zext nneg i32 %.0 to i64
  %i.bk = getelementptr [4 x i8], ptr %i.f, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7  ; 3 uses
  %.not.i65 = icmp ult i32 %i.bm, 65536           ; 2 uses
  %i.bn = shl nuw i32 %i.bm, 16
  %spec.select.i66 = select i1 %.not.i65, i32 %i.bn, i32 %i.bm ; 3 uses
  %spec.select26.i = select i1 %.not.i65, i32 16, i32 0 ; 2 uses
  %.not21.i = icmp ult i32 %spec.select.i66, 16777216 ; 2 uses
  %i.bo = or disjoint i32 %spec.select26.i, 8
  %i.bp = shl nuw i32 %spec.select.i66, 8
  %.117.i = select i1 %.not21.i, i32 %i.bp, i32 %spec.select.i66 ; 3 uses
  %.1.i67 = select i1 %.not21.i, i32 %i.bo, i32 %spec.select26.i ; 2 uses
  %.not22.i = icmp ult i32 %.117.i, 268435456     ; 2 uses
  %i.bq = or disjoint i32 %.1.i67, 4
  %i.br = shl nuw i32 %.117.i, 4
  %.218.i = select i1 %.not22.i, i32 %i.br, i32 %.117.i ; 3 uses
  %.2.i68 = select i1 %.not22.i, i32 %i.bq, i32 %.1.i67 ; 2 uses
  %.not23.i = icmp ult i32 %.218.i, 1073741824    ; 2 uses
  %i.bs = or disjoint i32 %.2.i68, 2
  %i.bt = shl nuw i32 %.218.i, 2
  %.319.i = select i1 %.not23.i, i32 %i.bt, i32 %.218.i ; 2 uses
  %.3.i69 = select i1 %.not23.i, i32 %i.bs, i32 %.2.i68 ; 2 uses
  %i.bu = add nuw nsw i32 %.3.i69, 1
  %.not25.i = icmp ult i32 %.319.i, 1073741824
  %spec.select27.i = select i1 %.not25.i, i32 32, i32 %i.bu
  %.not2428.i = icmp slt i32 %.319.i, 0
  %.020.i = select i1 %.not2428.i, i32 %.3.i69, i32 %spec.select27.i
  %i.bv = sub nuw nsw i32 %i.bi, %.020.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink = phi i32 [ %i.bh, %bb.t ], [ %i.bf, %bb.s ]
  %storemerge41 = phi i32 [ %i.bv, %bb.t ], [ %i.bg, %bb.s ]
  store i32 %.sink, ptr %1, align 4, !tbaa !7
  store i32 %storemerge41, ptr %2, align 4, !tbaa !7
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %bb.a, %bb.u
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc ptr @pow5mult(ptr noundef captures(address, ret: address, provenance) %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #15 {
bb.a:
  %i.a = and i32 %1, 3                            ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [4 x i8], ptr @pow5mult.p05, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = tail call fastcc ptr @multadd(ptr noundef %0, i32 noundef %i.e, i32 noundef 0) ; 2 uses
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %Bclear.exit41, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.069 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.b ]  ; 6 uses
  %i.g = lshr i32 %1, 2                           ; 4 uses
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %Bclear.exit41, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @p5s, align 8, !tbaa !52   ; 2 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 7 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = getelementptr i8, ptr %i.i, i64 24
  store i32 625, ptr %i.k, align 8, !tbaa !7
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.j, align 8, !tbaa !7
  store ptr null, ptr %i.i, align 8, !tbaa !53
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = cmpxchg volatile ptr @p5s, i64 0, i64 %i.l seq_cst seq_cst, align 8 ; 2 uses
  %.not28 = extractvalue { i64, i1 } %i.m, 1
  br i1 %.not28, label %.preheader, label %.sink.split, !prof !54

.critedge:                                        ; preds = %bb.e
  %.not.i40 = icmp eq ptr %.069, null
  br i1 %.not.i40, label %Bclear.exit41, label %Bclear.exit41.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.f
  %.sink90 = phi { i64, i1 } [ %i.m, %bb.f ], [ %i.v, %bb.m ]
  %.sink = phi ptr [ %i.i, %bb.f ], [ %i.t, %bb.m ]
  %.170.ph = phi ptr [ %.069, %bb.f ], [ %.271, %bb.m ]
  %.017.ph = phi i32 [ %i.g, %bb.f ], [ %i.r, %bb.m ]
  %i.n = extractvalue { i64, i1 } %.sink90, 0
  %i.o = inttoptr i64 %i.n to ptr
  tail call void @free(ptr noundef nonnull %.sink) #24
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.d, %.sink.split
  %.170.ph91 = phi ptr [ %.170.ph, %.sink.split ], [ %.069, %bb.f ], [ %.069, %bb.d ]
  %.2.ph = phi ptr [ %i.o, %.sink.split ], [ %i.i, %bb.f ], [ %i.h, %bb.d ]
  %.017.ph92 = phi i32 [ %.017.ph, %.sink.split ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %.170 = phi ptr [ %.170.ph91, %.preheader ], [ %.271, %.backedge ] ; 4 uses
  %.2 = phi ptr [ %.2.ph, %.preheader ], [ %.2.be, %.backedge ] ; 5 uses
  %.017 = phi i32 [ %.017.ph92, %.preheader ], [ %i.r, %.backedge ] ; 2 uses
  %i.p = and i32 %.017, 1
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call fastcc ptr @mult(ptr noundef %.170, ptr noundef nonnull %.2) ; 2 uses
  %.not.i42 = icmp eq ptr %.170, null
  br i1 %.not.i42, label %Bclear.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %.170) #24
  br label %Bclear.exit43

Bclear.exit43:                                    ; preds = %bb.h, %bb.i
  %.not31 = icmp eq ptr %i.q, null
  br i1 %.not31, label %Bclear.exit41, label %bb.j

bb.j:                                             ; preds = %Bclear.exit43, %bb.g
  %.271 = phi ptr [ %.170, %bb.g ], [ %i.q, %Bclear.exit43 ] ; 5 uses
  %i.r = lshr i32 %.017, 1                        ; 3 uses
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %Bclear.exit41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %.2, align 8, !tbaa !53    ; 2 uses
  %.not33 = icmp eq ptr %i.s, null
  br i1 %.not33, label %bb.l, label %.backedge

bb.l:                                             ; preds = %bb.k
  %i.t = tail call fastcc ptr @mult(ptr noundef nonnull %.2, ptr noundef nonnull %.2) ; 5 uses
  %.not35 = icmp eq ptr %i.t, null
  br i1 %.not35, label %.critedge39, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.t, align 8, !tbaa !53
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = cmpxchg volatile ptr %.2, i64 0, i64 %i.u seq_cst seq_cst, align 8 ; 2 uses
  %.not36 = extractvalue { i64, i1 } %i.v, 1
  br i1 %.not36, label %.backedge, label %.sink.split, !prof !55

.backedge:                                        ; preds = %bb.m, %bb.k
  %.2.be = phi ptr [ %i.s, %bb.k ], [ %i.t, %bb.m ]
  br label %bb.g

.critedge39:                                      ; preds = %bb.l
  %.not.i46 = icmp eq ptr %.271, null
  br i1 %.not.i46, label %Bclear.exit41, label %Bclear.exit41.sink.split

Bclear.exit41.sink.split:                         ; preds = %.critedge39, %.critedge
  %.271.lcssa.sink = phi ptr [ %.069, %.critedge ], [ %.271, %.critedge39 ]
  tail call void @free(ptr noundef nonnull %.271.lcssa.sink) #24
  br label %Bclear.exit41

Bclear.exit41:                                    ; preds = %bb.j, %Bclear.exit43, %Bclear.exit41.sink.split, %.critedge39, %.critedge, %bb.c, %bb.b
  %.5 = phi ptr [ null, %.critedge ], [ null, %Bclear.exit41.sink.split ], [ null, %bb.b ], [ %.069, %bb.c ], [ null, %.critedge39 ], [ %.271, %bb.j ], [ null, %Bclear.exit43 ]
  ret ptr %.5
}

; Function Attrs: nofree nounwind sspstrong memory(readwrite, argmem: read, target_mem: none) uwtable
define internal fastcc noundef ptr @mult(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7
  %.not77 = icmp eq i32 %i.g, 0
  %i.h = getelementptr i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49   ; 2 uses
  %i.j = icmp slt i32 %i.i, 2
  %or.cond = select i1 %.not77, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.d, label %._crit_edge98

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #26 ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %Balloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %i.l, align 8, !tbaa !7
  %i.m = getelementptr i8, ptr %i.k, i64 24
  store i32 0, ptr %i.m, align 8, !tbaa !7
  br label %Balloc.exit.thread

._crit_edge98:                                    ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !49
  %i.p = icmp slt i32 %i.o, %i.i                  ; 2 uses
  %spec.select = select i1 %i.p, ptr %0, ptr %1   ; 2 uses
  %spec.select82 = select i1 %i.p, ptr %1, ptr %0 ; 4 uses
  %i.q = getelementptr i8, ptr %spec.select82, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !44
  %i.s = getelementptr i8, ptr %spec.select82, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !49   ; 2 uses
  %i.u = getelementptr i8, ptr %spec.select, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !49   ; 2 uses
  %i.w = add i32 %i.v, %i.t                       ; 5 uses
  %i.x = getelementptr i8, ptr %spec.select82, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47
  %i.z = icmp sgt i32 %i.w, %i.y
  %i.aa = zext i1 %i.z to i32
  %.072 = add i32 %i.r, %i.aa                     ; 2 uses
  %i.ab = shl nuw i32 1, %.072                    ; 2 uses
  %i.ac = add i32 %i.ab, -1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 32
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #26 ; 8 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 3 uses
  %.not.i83 = icmp eq ptr %i.ag, null
  br i1 %.not.i83, label %Balloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge98
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store i32 %.072, ptr %i.ai, align 8, !tbaa !44
  %i.aj = getelementptr i8, ptr %i.ag, i64 12
  store i32 %i.ab, ptr %i.aj, align 4, !tbaa !47
  %i.ak = getelementptr i8, ptr %i.ag, i64 20     ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !49
  %i.al = getelementptr i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.al, align 8, !tbaa !48
  %i.am = getelementptr i8, ptr %i.ag, i64 24     ; 4 uses
  %i.an = sext i32 %i.w to i64                    ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.aq = shl nsw i64 %i.an, 2
  %i.ar = add i64 %i.aq, %i.ah
  %i.as = add i64 %i.ar, 24
  %i.at = add i64 %i.ah, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.at)
  %i.au = add i64 %umax, -25
  %i.av = sub i64 %i.au, %i.ah
  %i.aw = and i64 %i.av, -4
  %i.ax = add i64 %i.aw, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %i.ax, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %i.ay = getelementptr i8, ptr %spec.select82, i64 24 ; 2 uses
  %i.az = sext i32 %i.t to i64
  %i.ba = getelementptr [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = getelementptr i8, ptr %spec.select, i64 24 ; 3 uses
  %i.bc = sext i32 %i.v to i64
  %i.bd = getelementptr [4 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  %i.be = icmp ult ptr %i.bb, %i.bd
  br i1 %i.be, label %.lr.ph91, label %.preheader

.preheader:                                       ; preds = %bb.i, %._crit_edge
  %i.bf = icmp sgt i32 %i.w, 0
  br i1 %i.bf, label %.lr.ph94, label %.critedge

.lr.ph91:                                         ; preds = %._crit_edge, %bb.i
  %.06589 = phi ptr [ %i.bw, %bb.i ], [ %i.am, %._crit_edge ] ; 2 uses
  %.06888 = phi ptr [ %i.bg, %bb.i ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.bg = getelementptr i8, ptr %.06888, i64 4    ; 2 uses
  %i.bh = load i32, ptr %.06888, align 4, !tbaa !7 ; 2 uses
  %.not81 = icmp eq i32 %i.bh, 0
  br i1 %.not81, label %bb.i, label %.preheader85

.preheader85:                                     ; preds = %.lr.ph91
  %i.bi = zext i32 %i.bh to i64
  br label %bb.g

bb.g:                                             ; preds = %.preheader85, %bb.g
  %.170 = phi ptr [ %i.bj, %bb.g ], [ %i.ay, %.preheader85 ] ; 2 uses
  %.066 = phi ptr [ %i.bt, %bb.g ], [ %.06589, %.preheader85 ] ; 3 uses
  %.063 = phi i64 [ %i.br, %bb.g ], [ 0, %.preheader85 ]
  %i.bj = getelementptr i8, ptr %.170, i64 4      ; 2 uses
  %i.bk = load i32, ptr %.170, align 4, !tbaa !7
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.bi
  %i.bn = load i32, ptr %.066, align 4, !tbaa !7
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %.063, %i.bo
  %i.bq = add nuw i64 %i.bp, %i.bm                ; 2 uses
  %i.br = lshr i64 %i.bq, 32                      ; 2 uses
  %i.bs = trunc i64 %i.bq to i32
  %i.bt = getelementptr i8, ptr %.066, i64 4      ; 2 uses
  store i32 %i.bs, ptr %.066, align 4, !tbaa !7
  %i.bu = icmp ult ptr %i.bj, %i.ba
  br i1 %i.bu, label %bb.g, label %bb.h, !llvm.loop !56

bb.h:                                             ; preds = %bb.g
  %i.bv = trunc nuw i64 %i.br to i32
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph91, %bb.h
  %i.bw = getelementptr i8, ptr %.06589, i64 4
  %i.bx = icmp ult ptr %i.bg, %i.bd
  br i1 %i.bx, label %.lr.ph91, label %.preheader, !llvm.loop !57

.lr.ph94:                                         ; preds = %.preheader, %bb.j
  %.193 = phi ptr [ %i.by, %bb.j ], [ %i.ao, %.preheader ]
  %.07192 = phi i32 [ %i.ca, %bb.j ], [ %i.w, %.preheader ] ; 3 uses
  %i.by = getelementptr i8, ptr %.193, i64 -4     ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7
  %.not80 = icmp eq i32 %i.bz, 0
  br i1 %.not80, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph94
  %i.ca = add nsw i32 %.07192, -1
  %i.cb = icmp sgt i32 %.07192, 1
  br i1 %i.cb, label %.lr.ph94, label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %.lr.ph94, %bb.j, %.preheader
  %.071.lcssa = phi i32 [ %i.w, %.preheader ], [ 0, %bb.j ], [ %.07192, %.lr.ph94 ]
  store i32 %.071.lcssa, ptr %i.ak, align 4, !tbaa !49
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %._crit_edge98, %bb.d, %.critedge, %bb.e
  %.0 = phi ptr [ %i.ag, %.critedge ], [ null, %bb.d ], [ %i.k, %bb.e ], [ null, %._crit_edge98 ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @lshift(ptr noundef %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #15 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.f = icmp slt i32 %i.e, 2
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %Bclear.exit, label %._crit_edge70

._crit_edge70:                                    ; preds = %bb.a
  %i.g = lshr i32 %1, 5                           ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = add i32 %i.e, %i.g                       ; 3 uses
  %i.l = add i32 %i.k, 1                          ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47   ; 2 uses
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge70, %.lr.ph
  %.04059 = phi i32 [ %i.q, %.lr.ph ], [ %i.n, %._crit_edge70 ]
  %.04258 = phi i32 [ %i.p, %.lr.ph ], [ %i.i, %._crit_edge70 ]
  %i.p = add i32 %.04258, 1                       ; 2 uses
  %i.q = shl i32 %.04059, 1                       ; 2 uses
  %i.r = icmp sgt i32 %i.l, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge70
  %.042.lcssa = phi i32 [ %i.i, %._crit_edge70 ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.s = shl nuw i32 1, %.042.lcssa               ; 2 uses
  %i.t = add i32 %i.s, -1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 32
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #26 ; 8 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %Bclear.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store i32 %.042.lcssa, ptr %i.y, align 8, !tbaa !44
  %i.z = getelementptr i8, ptr %i.x, i64 12
  store i32 %i.s, ptr %i.z, align 4, !tbaa !47
  %i.aa = getelementptr i8, ptr %i.x, i64 20
  %i.ab = getelementptr i8, ptr %i.x, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !48
  %i.ac = getelementptr i8, ptr %i.x, i64 24      ; 2 uses
  %.not66 = icmp eq i32 %i.g, 0
  br i1 %.not66, label %._crit_edge64, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %bb.b
  %i.ad = lshr i32 %1, 3
  %i.ae = and i32 %i.ad, 268435452
  %i.af = zext nneg i32 %i.ae to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %i.af, i1 false), !tbaa !7
  %i.ag = add nsw i32 %i.g, -1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai
  %scevgep = getelementptr i8, ptr %i.aj, i64 28
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63.preheader, %bb.b
  %.036.lcssa = phi ptr [ %i.ac, %bb.b ], [ %scevgep, %.lr.ph63.preheader ] ; 2 uses
  %i.ak = load i32, ptr %i.j, align 4, !tbaa !49
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.b, i64 %i.al
  %i.an = and i32 %1, 31                          ; 3 uses
  %.not48 = icmp eq i32 %i.an, 0
  br i1 %.not48, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %._crit_edge64
  %i.ao = shl nsw i64 %i.al, 2
  %i.ap = add i64 %i.ao, %i.a
  %i.aq = add i64 %i.ap, 24
  %i.ar = add i64 %i.a, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ar)
  %i.as = add i64 %umax, -25
  %i.at = sub i64 %i.as, %i.a
  %i.au = and i64 %i.at, -4
  %i.av = add i64 %i.au, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.036.lcssa, ptr nonnull align 4 %i.b, i64 %i.av, i1 false), !tbaa !7
  br label %Bclear.exit52

bb.c:                                             ; preds = %._crit_edge64
  %i.aw = sub nuw nsw i32 32, %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.037 = phi ptr [ %i.b, %bb.c ], [ %i.bb, %bb.d ] ; 2 uses
  %.1 = phi ptr [ %.036.lcssa, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.c ], [ %i.bc, %bb.d ]
  %i.ax = load i32, ptr %.037, align 4, !tbaa !7  ; 2 uses
  %i.ay = shl i32 %i.ax, %i.an
  %i.az = or i32 %i.ay, %.0
  %i.ba = getelementptr i8, ptr %.1, i64 4        ; 2 uses
  store i32 %i.az, ptr %.1, align 4, !tbaa !7
  %i.bb = getelementptr i8, ptr %.037, i64 4      ; 2 uses
  %i.bc = lshr i32 %i.ax, %i.aw                   ; 3 uses
  %i.bd = icmp ult ptr %i.bb, %i.am
  br i1 %i.bd, label %bb.d, label %bb.e, !llvm.loop !60

bb.e:                                             ; preds = %bb.d
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !7
  %.not49 = icmp eq i32 %i.bc, 0
  %spec.select = select i1 %.not49, i32 %i.k, i32 %i.l
  br label %Bclear.exit52

Bclear.exit52:                                    ; preds = %.preheader.preheader, %bb.e
  %.039 = phi i32 [ %spec.select, %bb.e ], [ %i.k, %.preheader.preheader ]
  store i32 %.039, ptr %i.aa, align 4, !tbaa !49
  br label %Bclear.exit.sink.split

Bclear.exit.sink.split:                           ; preds = %._crit_edge, %Bclear.exit52
  %.035.ph = phi ptr [ %i.x, %Bclear.exit52 ], [ null, %._crit_edge ]
  tail call void @free(ptr noundef nonnull %0) #24
  br label %Bclear.exit

Bclear.exit:                                      ; preds = %Bclear.exit.sink.split, %bb.a
  %.035 = phi ptr [ %0, %bb.a ], [ %.035.ph, %Bclear.exit.sink.split ]
  ret ptr %.035
}

; Function Attrs: nofree nounwind sspstrong memory(readwrite, argmem: read, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @diff(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = getelementptr i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49   ; 2 uses
  %i.e = sub i32 %i.b, %i.d                       ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = sext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 24
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.018.i = phi ptr [ %i.j, %bb.b ], [ %i.m, %bb.e ]
  %.017.i = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.e ]
  %i.k = getelementptr i8, ptr %.017.i, i64 -4    ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %i.m = getelementptr i8, ptr %.018.i, i64 -4    ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7    ; 2 uses
  %.not23.i = icmp eq i32 %i.l, %i.n
  br i1 %.not23.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %i.l, %i.n
  %i.p = select i1 %i.o, i32 -1, i32 1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not24.i = icmp ugt ptr %i.k, %i.f
  br i1 %.not24.i, label %bb.c, label %cmp.exit

cmp.exit:                                         ; preds = %bb.e
  %i.q = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #26 ; 4 uses
  %.not.i62 = icmp eq ptr %i.q, null
  br i1 %.not.i62, label %Balloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %cmp.exit
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %i.r, align 8, !tbaa !7
  %i.s = getelementptr i8, ptr %i.q, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !7
  br label %Balloc.exit.thread

bb.g:                                             ; preds = %bb.a, %bb.d
  %.0.i.ph = phi i32 [ %i.p, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %i.t = icmp slt i32 %.0.i.ph, 0                 ; 2 uses
  %.61 = select i1 %i.t, ptr %1, ptr %0           ; 3 uses
  %i.u = getelementptr i8, ptr %.61, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %i.w = shl nuw i32 1, %i.v                      ; 2 uses
  %i.x = add i32 %i.w, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 32
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #26 ; 7 uses
  %.not.i63 = icmp eq ptr %i.ab, null
  br i1 %.not.i63, label %Balloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.60 = select i1 %i.t, ptr %0, ptr %1           ; 2 uses
  %.0.i.ph.lobit = lshr i32 %.0.i.ph, 31
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store i32 %i.v, ptr %i.ac, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.ab, i64 12
  store i32 %i.w, ptr %i.ad, align 4, !tbaa !47
  %i.ae = getelementptr i8, ptr %i.ab, i64 20     ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !49
  %i.af = getelementptr i8, ptr %i.ab, i64 16
  store i32 %.0.i.ph.lobit, ptr %i.af, align 8, !tbaa !48
  %i.ag = getelementptr i8, ptr %.61, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !49 ; 2 uses
  %i.ai = getelementptr i8, ptr %.61, i64 24      ; 2 uses
  %i.aj = getelementptr i8, ptr %.60, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !49
  %i.al = getelementptr i8, ptr %.60, i64 24      ; 2 uses
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ab, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.049 = phi ptr [ %i.ai, %bb.h ], [ %i.ap, %bb.i ] ; 2 uses
  %.047 = phi ptr [ %i.al, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %.044 = phi ptr [ %i.ao, %bb.h ], [ %i.ba, %bb.i ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.h ], [ %i.ay, %bb.i ]
  %i.ap = getelementptr i8, ptr %.049, i64 4      ; 3 uses
  %i.aq = load i32, ptr %.049, align 4, !tbaa !7
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %.047, i64 4      ; 2 uses
  %i.at = load i32, ptr %.047, align 4, !tbaa !7
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %.0, %i.au
  %i.aw = sub nsw i64 %i.ar, %i.av                ; 2 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = and i64 %i.ax, 1                        ; 2 uses
  %i.az = trunc i64 %i.aw to i32
  %i.ba = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  store i32 %i.az, ptr %.044, align 4, !tbaa !7
  %i.bb = icmp ult ptr %i.as, %i.an
  br i1 %i.bb, label %bb.i, label %.preheader69, !llvm.loop !61

.preheader69:                                     ; preds = %bb.i
  %i.bc = sext i32 %i.ah to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ai, i64 %i.bc ; 2 uses
  %i.be = icmp ult ptr %i.ap, %i.bd
  br i1 %i.be, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %.preheader69, %.lr.ph
  %.178 = phi i64 [ %i.bk, %.lr.ph ], [ %i.ay, %.preheader69 ]
  %.14577 = phi ptr [ %i.bm, %.lr.ph ], [ %i.ba, %.preheader69 ] ; 2 uses
  %.15076 = phi ptr [ %i.bf, %.lr.ph ], [ %i.ap, %.preheader69 ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.15076, i64 4    ; 2 uses
  %i.bg = load i32, ptr %.15076, align 4, !tbaa !7
  %i.bh = zext i32 %i.bg to i64
  %i.bi = sub nsw i64 %i.bh, %.178                ; 2 uses
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = and i64 %i.bj, 1
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = getelementptr i8, ptr %.14577, i64 4    ; 2 uses
  store i32 %i.bl, ptr %.14577, align 4, !tbaa !7
  %i.bn = icmp ult ptr %i.bf, %i.bd
  br i1 %i.bn, label %.lr.ph, label %.preheader.preheader, !llvm.loop !62

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader69
  %.2.ph = phi ptr [ %i.ba, %.preheader69 ], [ %i.bm, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.052 = phi i32 [ %i.bq, %.preheader ], [ %i.ah, %.preheader.preheader ] ; 2 uses
  %.2 = phi ptr [ %i.bo, %.preheader ], [ %.2.ph, %.preheader.preheader ]
  %i.bo = getelementptr i8, ptr %.2, i64 -4       ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %.not59 = icmp eq i32 %i.bp, 0
  %i.bq = add i32 %.052, -1
  br i1 %.not59, label %.preheader, label %bb.j, !llvm.loop !63

bb.j:                                             ; preds = %.preheader
  store i32 %.052, ptr %i.ae, align 4, !tbaa !49
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %bb.g, %cmp.exit, %bb.j, %bb.f
  %.046 = phi ptr [ %i.ab, %bb.j ], [ null, %cmp.exit ], [ %i.q, %bb.f ], [ null, %bb.g ]
  ret ptr %.046
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @ruby_dtoa(double noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4, ptr noundef writeonly captures(address_is_null) %5) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = bitcast double %0 to i64                 ; 3 uses
  %.not = icmp slt i64 %i.c, 0                    ; 2 uses
  %i.d = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %.pre = bitcast double %i.d to i64
  %.pre-phi = select i1 %.not, i64 %.pre, i64 %i.c ; 7 uses
  %.lobit = lshr i64 %i.c, 63
  %.sink = trunc nuw nsw i64 %.lobit to i32
  %.sroa.090.0 = select i1 %.not, double %i.d, double %0 ; 10 uses
  store i32 %.sink, ptr %4, align 4, !tbaa !7
  %.sroa.090.4.extract.shift138 = lshr i64 %.pre-phi, 32
  %.sroa.090.4.extract.trunc139 = trunc nuw nsw i64 %.sroa.090.4.extract.shift138 to i32 ; 5 uses
  %i.e = and i32 %.sroa.090.4.extract.trunc139, 2146435072
  %i.f = icmp eq i32 %i.e, 2146435072
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store i32 9999, ptr %3, align 4, !tbaa !7
  %i.g = and i64 %.pre-phi, 4294967295
  %.not555 = icmp eq i64 %i.g, 0
  %i.h = and i32 %.sroa.090.4.extract.trunc139, 1048575
  %.not556 = icmp eq i32 %i.h, 0
  %or.cond557 = and i1 %.not555, %.not556
  br i1 %or.cond557, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias dereferenceable_or_null(9) ptr @malloc(i64 noundef 9) #26 ; 6 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %nrv_alloc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  store i8 73, ptr %i.i, align 1, !tbaa !11
  %scevgep1075 = getelementptr nuw i8, ptr %i.i, i64 1
  store i64 34186468354778734, ptr %scevgep1075, align 1, !tbaa !11
  %.not14.i = icmp eq ptr %5, null
  br i1 %.not14.i, label %nrv_alloc.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %scevgep1076 = getelementptr nuw i8, ptr %i.i, i64 8
  store ptr %scevgep1076, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #26 ; 6 uses
  %.not.i574 = icmp eq ptr %i.j, null
  br i1 %.not.i574, label %nrv_alloc.exit, label %.preheader.i575

.preheader.i575:                                  ; preds = %bb.e
  store i8 78, ptr %i.j, align 1, !tbaa !11
  %scevgep1073 = getelementptr nuw i8, ptr %i.j, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep1073, ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @NANSTR, i64 1), i64 3, i1 false), !tbaa !11
  %.not14.i581 = icmp eq ptr %5, null
  br i1 %.not14.i581, label %nrv_alloc.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i575
  %scevgep1074 = getelementptr nuw i8, ptr %i.j, i64 3
  store ptr %scevgep1074, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.g:                                             ; preds = %bb.a
  %i.k = fcmp une double %.sroa.090.0, 0.000000e+00
  br i1 %i.k, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4, !tbaa !7
  %i.l = tail call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #26 ; 5 uses
  %.not.i583 = icmp eq ptr %i.l, null
  br i1 %.not.i583, label %nrv_alloc.exit, label %.preheader.i584

.preheader.i584:                                  ; preds = %bb.h
  store i8 48, ptr %i.l, align 1, !tbaa !11
  %i.m = getelementptr i8, ptr %i.l, i64 1        ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !11
  %.not14.i590 = icmp eq ptr %5, null
  br i1 %.not14.i590, label %nrv_alloc.exit, label %bb.i

bb.i:                                             ; preds = %.preheader.i584
  store ptr %i.m, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.j:                                             ; preds = %bb.g
  %i.n = call fastcc ptr @d2b(double noundef %.sroa.090.0, ptr noundef %i.b, ptr noundef %i.a) ; 20 uses
  %.not491 = icmp eq ptr %i.n, null
  br i1 %.not491, label %nrv_alloc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = lshr i32 %.sroa.090.4.extract.trunc139, 20
  %i.p = and i32 %i.o, 2047                       ; 2 uses
  %.not492.not = icmp eq i32 %i.p, 0              ; 2 uses
  br i1 %.not492.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = and i64 %.pre-phi, 4503599627370495
  %.sroa.072.4.insert.insert81 = or disjoint i64 %i.q, 4607182418800017408
  %i.r = add nsw i32 %i.p, -1023
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.s = load i32, ptr %i.a, align 4, !tbaa !7
  %i.t = load i32, ptr %i.b, align 4, !tbaa !7
  %i.u = add i32 %i.t, %i.s                       ; 5 uses
  %i.v = add i32 %i.u, 1074
  %i.w = icmp sgt i32 %i.v, 32
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = sub nsw i32 -1010, %i.u
  %i.y = shl i32 %.sroa.090.4.extract.trunc139, %i.x
  %.sroa.090.0.extract.trunc125 = trunc i64 %.pre-phi to i32
  %i.z = add nsw i32 %i.u, 1042
  %i.aa = lshr i32 %.sroa.090.0.extract.trunc125, %i.z
  %i.ab = or i32 %i.y, %i.aa
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.090.0.extract.trunc127 = trunc i64 %.pre-phi to i32
  %i.ac = sub nuw i32 -1042, %i.u
  %i.ad = shl i32 %.sroa.090.0.extract.trunc127, %i.ac
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ae = phi i32 [ %i.ab, %bb.n ], [ %i.ad, %bb.o ]
  %i.af = uitofp i32 %i.ae to double
  %i.ag = bitcast double %i.af to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 9223372032559808512
  %.sroa.072.4.insert.ext86 = add nsw i64 %i.ah, -139611588448485376
  %.sroa.072.4.insert.mask88 = and i64 %i.ag, 4294967295
  %.sroa.072.4.insert.insert89 = or disjoint i64 %.sroa.072.4.insert.ext86, %.sroa.072.4.insert.mask88
  %i.ai = add i32 %i.u, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.0440 = phi i32 [ %i.r, %bb.l ], [ %i.ai, %bb.p ] ; 2 uses
  %.sroa.072.0.in = phi i64 [ %.sroa.072.4.insert.insert81, %bb.l ], [ %.sroa.072.4.insert.insert89, %bb.p ]
  %.sroa.072.0 = bitcast i64 %.sroa.072.0.in to double
  %i.aj = fadd double %.sroa.072.0, -1.500000e+00
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double f0x3FD287A7636F4361, double f0x3FC68A288B60C8B3)
  %i.al = sitofp i32 %.0440 to double
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double f0x3FD34413509F79FB, double %i.ak) ; 3 uses
  %i.an = fptosi double %i.am to i32              ; 2 uses
  %i.ao = fcmp olt double %i.am, 0.000000e+00
  %i.ap = sitofp i32 %i.an to double
  %i.aq = fcmp une double %i.am, %i.ap
  %or.cond559 = and i1 %i.ao, %i.aq
  %i.ar = sext i1 %or.cond559 to i32
  %.0409 = add i32 %i.ar, %i.an                   ; 5 uses
  %or.cond = icmp ugt i32 %.0409, 22              ; 3 uses
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = zext nneg i32 %.0409 to i64
  %i.at = getelementptr [8 x i8], ptr @tens, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !39
  %i.av = fcmp olt double %.sroa.090.0, %i.au
  br i1 %i.av, label %select.unfold, label %bb.s

select.unfold:                                    ; preds = %bb.r
  %i.aw = add nsw i32 %.0409, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %select.unfold, %bb.q
  %.2411 = phi i32 [ %.0409, %bb.r ], [ %.0409, %bb.q ], [ %i.aw, %select.unfold ] ; 28 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.ay = xor i32 %.0440, -1
  %i.az = add i32 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp sgt i32 %i.az, -1                  ; 2 uses
  %i.bb = sub i32 0, %i.az
  %.0396 = select i1 %i.ba, i32 0, i32 %i.bb      ; 2 uses
  %.0390 = select i1 %i.ba, i32 %i.az, i32 0      ; 2 uses
  %i.bc = icmp sgt i32 %.2411, -1
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = add nuw i32 %.0390, %.2411
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.be = sub i32 %.0396, %.2411
  %i.bf = sub i32 0, %.2411
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0408 = phi i32 [ 0, %bb.t ], [ %i.bf, %bb.u ] ; 3 uses
  %.1397 = phi i32 [ %.0396, %bb.t ], [ %i.be, %bb.u ] ; 7 uses
  %.1391 = phi i32 [ %i.bd, %bb.t ], [ %.0390, %bb.u ] ; 3 uses
  %.0389 = phi i32 [ %.2411, %bb.t ], [ 0, %bb.u ] ; 3 uses
  %or.cond3 = icmp ugt i32 %1, 9
  %spec.store.select27 = select i1 %or.cond3, i32 0, i32 %1 ; 3 uses
  %i.bg = icmp samesign ult i32 %spec.store.select27, 6 ; 2 uses
  %i.bh = add nsw i32 %spec.store.select27, -4
  %spec.select = select i1 %i.bg, i32 %spec.store.select27, i32 %i.bh ; 4 uses
  switch i32 %spec.select, label %default.unreachable [
    i32 0, label %bb.ab
    i32 1, label %bb.ab
    i32 2, label %bb.w
    i32 4, label %bb.x
end_hunk_0
begin_hunk_1_@ruby_dtoa:bb.a
  br i1 %i.qt, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.qu = icmp eq ptr %i.qr, %i.bp
  br i1 %i.qu, label %bb.eo, label %bb.em, !llvm.loop !68

bb.eo:                                            ; preds = %bb.en
  %i.qv = add i32 %.7416, 1
  store i8 49, ptr %scevgep1069, align 1, !tbaa !11
  br label %.loopexit818

bb.ep:                                            ; preds = %bb.em
  %i.qw = and i8 %i.qs, 1
  %.not548 = icmp eq i8 %i.qw, 0
  %or.cond571 = and i1 %.1386.not11611163, %.not548
  br i1 %or.cond571, label %.loopexit818, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qx = add i8 %i.qs, 1
  store i8 %i.qx, ptr %i.qr, align 1, !tbaa !11
  br label %.loopexit818

.preheader817:                                    ; preds = %.preheader817.preheader, %.preheader817
  %.14 = phi ptr [ %i.qy, %.preheader817 ], [ %.11, %.preheader817.preheader ] ; 2 uses
  %i.qy = getelementptr i8, ptr %.14, i64 -1      ; 2 uses
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !11
  %i.ra = icmp eq i8 %i.qz, 48
  br i1 %i.ra, label %.preheader817, label %.loopexit818, !llvm.loop !69

.loopexit818:                                     ; preds = %bb.ee, %.preheader817, %bb.eq, %bb.ep, %bb.eo, %bb.dw, %.thread764, %bb.dg, %cmp.exit607.thread754, %cmp.exit607.thread
  %.11745 = phi ptr [ %.4738, %cmp.exit607.thread754 ], [ %.3737, %cmp.exit607.thread ], [ %i.pw, %.preheader817 ], [ %.10744, %bb.eo ], [ %.10744, %bb.ep ], [ %.10744, %bb.eq ], [ %.5739, %bb.dw ], [ %.5739, %bb.dg ], [ %.6740, %.thread764 ], [ %.8742, %bb.ee ] ; 2 uses
  %.4732 = phi ptr [ null, %cmp.exit607.thread754 ], [ null, %cmp.exit607.thread ], [ %.2730, %.preheader817 ], [ %.3731, %bb.eo ], [ %.3731, %bb.ep ], [ %.3731, %bb.eq ], [ %.0728, %bb.dw ], [ %.0728, %bb.dg ], [ %.0728, %.thread764 ], [ null, %bb.ee ] ; 3 uses
  %.12726 = phi ptr [ %.5721, %cmp.exit607.thread754 ], [ %.4720, %cmp.exit607.thread ], [ %.10724, %.preheader817 ], [ %.11725, %bb.eo ], [ %.11725, %bb.ep ], [ %.11725, %bb.eq ], [ %.8, %bb.dw ], [ %.8, %bb.dg ], [ %.8, %.thread764 ], [ %.3719, %bb.ee ] ; 3 uses
  %.5714 = phi ptr [ %.4713, %cmp.exit607.thread754 ], [ %.3, %cmp.exit607.thread ], [ %.2712, %.preheader817 ], [ %.2712, %bb.eo ], [ %.2712, %bb.ep ], [ %.2712, %bb.eq ], [ %.2712, %bb.dw ], [ %.2712, %bb.dg ], [ %.2712, %.thread764 ], [ %.2712, %bb.ee ] ; 2 uses
  %.9418 = phi i32 [ %i.lk, %cmp.exit607.thread754 ], [ %i.li, %cmp.exit607.thread ], [ %.7416, %.preheader817 ], [ %i.qv, %bb.eo ], [ %.7416, %bb.ep ], [ %.7416, %bb.eq ], [ %.7416, %bb.dw ], [ %.7416, %bb.dg ], [ %.7416, %.thread764 ], [ %.7416, %bb.ee ] ; 2 uses
  %.16 = phi ptr [ %i.lj, %cmp.exit607.thread754 ], [ %i.bp, %cmp.exit607.thread ], [ %.14, %.preheader817 ], [ %scevgep, %bb.eo ], [ %.13, %bb.ep ], [ %.13, %bb.eq ], [ %i.pb, %bb.dw ], [ %i.nr, %bb.dg ], [ %i.ov, %.thread764 ], [ %i.po, %bb.ee ] ; 2 uses
  %.not.i640 = icmp eq ptr %.5714, null
  br i1 %.not.i640, label %Bclear.exit641, label %bb.er

bb.er:                                            ; preds = %.loopexit818
  tail call void @free(ptr noundef nonnull %.5714) #24
  br label %Bclear.exit641

Bclear.exit641:                                   ; preds = %.loopexit818, %bb.er
  %.not550 = icmp eq ptr %.12726, null
  br i1 %.not550, label %Bclear.exit647, label %bb.es

bb.es:                                            ; preds = %Bclear.exit641
  %.not551 = icmp eq ptr %.4732, null
  %.not552 = icmp eq ptr %.4732, %.12726
  %or.cond572 = or i1 %.not551, %.not552
  br i1 %or.cond572, label %Bclear.exit645, label %Bclear.exit643

Bclear.exit643:                                   ; preds = %bb.es
  tail call void @free(ptr noundef nonnull %.4732) #24
  br label %Bclear.exit645

Bclear.exit645:                                   ; preds = %Bclear.exit643, %bb.es
  tail call void @free(ptr noundef nonnull %.12726) #24
  br label %Bclear.exit647

Bclear.exit647:                                   ; preds = %bb.at, %.preheader825, %.lr.ph1373, %bb.ar, %.preheader, %Bclear.exit641, %Bclear.exit645, %.loopexit, %bb.az
  %.12746 = phi ptr [ %.11745, %Bclear.exit641 ], [ %.11745, %Bclear.exit645 ], [ %i.n, %.loopexit ], [ %i.n, %bb.az ], [ %i.n, %.preheader ], [ %i.n, %.preheader825 ], [ %i.n, %bb.ar ], [ %i.n, %.lr.ph1373 ], [ %i.n, %bb.at ]
  %.10419 = phi i32 [ %.9418, %Bclear.exit641 ], [ %.9418, %Bclear.exit645 ], [ %.6415, %.loopexit ], [ %.2411, %bb.az ], [ %.2411, %.preheader ], [ %.3412, %.preheader825 ], [ %.3412, %bb.ar ], [ %.2411, %.lr.ph1373 ], [ %.3412, %bb.at ]
  %.17 = phi ptr [ %.16, %Bclear.exit641 ], [ %.16, %Bclear.exit645 ], [ %.6969, %.loopexit ], [ %.lcssa1282, %bb.az ], [ %i.gj, %.preheader ], [ %.2, %.preheader825 ], [ %i.dq, %bb.ar ], [ %i.hq, %.lr.ph1373 ], [ %i.em, %bb.at ] ; 2 uses
  tail call void @free(ptr noundef nonnull %.12746) #24
  store i8 0, ptr %.17, align 1, !tbaa !11
  %i.rb = add i32 %.10419, 1
  store i32 %i.rb, ptr %3, align 4, !tbaa !7
  %.not553 = icmp eq ptr %5, null
  br i1 %.not553, label %nrv_alloc.exit, label %bb.et

bb.et:                                            ; preds = %Bclear.exit647
  store ptr %.17, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

Bclear.exit649:                                   ; preds = %cmp.exit616, %bb.dy, %bb.ea, %bb.eb, %bb.ec, %bb.eg, %cmp.exit.thread750, %bb.ce, %bb.co, %bb.cq, %ruby_nonempty_memcpy.exit, %bb.dm, %.loopexit821, %bb.bu
  %.6715791 = phi ptr [ %.1711, %bb.bu ], [ %.2712, %ruby_nonempty_memcpy.exit ], [ %.2712, %bb.cq ], [ %.2712, %bb.co ], [ %.2712, %bb.ce ], [ %.2712, %bb.eg ], [ %.2712, %cmp.exit.thread750 ], [ %.2712, %.loopexit821 ], [ %.2712, %bb.dm ], [ %.2712, %bb.ec ], [ %.2712, %bb.eb ], [ %.2712, %bb.ea ], [ %.2712, %bb.dy ], [ %.2712, %cmp.exit616 ]
  %.13727790 = phi ptr [ %.2718, %bb.bu ], [ null, %ruby_nonempty_memcpy.exit ], [ null, %bb.cq ], [ null, %bb.co ], [ null, %bb.ce ], [ %.3719, %bb.eg ], [ %.2718, %cmp.exit.thread750 ], [ %.10724, %.loopexit821 ], [ %.8, %bb.dm ], [ %.8, %bb.dy ], [ null, %bb.ea ], [ %.8, %bb.eb ], [ null, %bb.ec ], [ %.8, %cmp.exit616 ]
  %.5733789 = phi ptr [ null, %bb.bu ], [ %.6722, %ruby_nonempty_memcpy.exit ], [ %.6722, %bb.cq ], [ null, %bb.co ], [ null, %bb.ce ], [ null, %bb.eg ], [ null, %cmp.exit.thread750 ], [ %.2730, %.loopexit821 ], [ %.0728, %bb.dm ], [ %.0728, %bb.dy ], [ null, %bb.ea ], [ null, %bb.eb ], [ %i.pi, %bb.ec ], [ %.0728, %cmp.exit616 ]
  %.13747788 = phi ptr [ null, %bb.bu ], [ %.2736, %ruby_nonempty_memcpy.exit ], [ %.2736, %bb.cq ], [ %.2736, %bb.co ], [ %i.kn, %bb.ce ], [ null, %bb.eg ], [ null, %cmp.exit.thread750 ], [ null, %.loopexit821 ], [ null, %bb.dm ], [ null, %bb.dy ], [ %i.pf, %bb.ea ], [ %i.pf, %bb.eb ], [ %i.pf, %bb.ec ], [ %.5739, %cmp.exit616 ]
  tail call void @free(ptr noundef nonnull %.6715791) #24
  br label %.thread773

.thread773:                                       ; preds = %bb.bk, %bb.bw, %bb.bm, %bb.bj, %Bclear.exit649
  %.13727781 = phi ptr [ %.2718, %bb.bw ], [ %.13727790, %Bclear.exit649 ], [ %.1717, %bb.bj ], [ %.2718, %bb.bm ], [ %.2718, %bb.bk ] ; 4 uses
  %.5733780 = phi ptr [ null, %bb.bw ], [ %.5733789, %Bclear.exit649 ], [ null, %bb.bj ], [ null, %bb.bm ], [ null, %bb.bk ] ; 3 uses
  %.13747779 = phi ptr [ %.1735, %bb.bw ], [ %.13747788, %Bclear.exit649 ], [ null, %bb.bj ], [ %.0734, %bb.bm ], [ %.0734, %bb.bk ] ; 3 uses
  %.not542 = icmp eq ptr %.13727781, null
  br i1 %.not542, label %.thread773.thread, label %bb.eu

bb.eu:                                            ; preds = %.thread773
  %.not543 = icmp eq ptr %.5733780, null
  %.not544 = icmp eq ptr %.5733780, %.13727781
  %or.cond573 = or i1 %.not543, %.not544
  br i1 %or.cond573, label %Bclear.exit653, label %Bclear.exit651

Bclear.exit651:                                   ; preds = %bb.eu
  tail call void @free(ptr noundef nonnull %.5733780) #24
  br label %Bclear.exit653

Bclear.exit653:                                   ; preds = %Bclear.exit596, %Bclear.exit651, %bb.eu
  %.13727781802813 = phi ptr [ %.13727781, %bb.eu ], [ %.13727781, %Bclear.exit651 ], [ %i.ij, %Bclear.exit596 ]
  %.13747779804812 = phi ptr [ %.13747779, %bb.eu ], [ %.13747779, %Bclear.exit651 ], [ null, %Bclear.exit596 ]
  tail call void @free(ptr noundef nonnull %.13727781802813) #24
  br label %.thread773.thread

.thread773.thread:                                ; preds = %bb.be, %bb.bi, %Bclear.exit653, %.thread773
  %.13747779796 = phi ptr [ %.13747779, %.thread773 ], [ %.13747779804812, %Bclear.exit653 ], [ %i.n, %bb.bi ], [ %i.n, %bb.be ] ; 2 uses
  %.not545 = icmp eq ptr %.13747779796, null
  br i1 %.not545, label %bb.ev, label %Bclear.exit655

Bclear.exit655:                                   ; preds = %.thread773.thread
  tail call void @free(ptr noundef nonnull %.13747779796) #24
  br label %bb.ev

bb.ev:                                            ; preds = %Bclear.exit655, %.thread773.thread
  tail call void @free(ptr noundef %i.bp) #24
  br label %nrv_alloc.exit

nrv_alloc.exit:                                   ; preds = %bb.i, %.preheader.i584, %bb.h, %bb.f, %.preheader.i575, %bb.e, %bb.d, %.preheader.i, %bb.c, %Bclear.exit647, %bb.et, %bb.j, %bb.ev, %Bclear.exit594, %Bclear.exit
  %.0 = phi ptr [ %i.i, %bb.d ], [ %i.bp, %Bclear.exit647 ], [ null, %bb.j ], [ null, %bb.ev ], [ null, %Bclear.exit594 ], [ null, %Bclear.exit ], [ %i.j, %bb.f ], [ %i.bp, %bb.et ], [ null, %bb.c ], [ %i.i, %.preheader.i ], [ null, %bb.e ], [ %i.j, %.preheader.i575 ], [ null, %bb.h ], [ %i.l, %.preheader.i584 ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %.0
}

; Function Attrs: nofree nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @nrv_alloc(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(address_is_null) %1, i64 noundef range(i64 2, 10) %2) unnamed_addr #17 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %2) #26 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !11      ; 2 uses
  store i8 %i.b, ptr %i.a, align 1, !tbaa !11
  %.not1315 = icmp eq i8 %i.b, 0
  br i1 %.not1315, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.017 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %.preheader ]
  %.01016 = phi ptr [ %i.c, %.lr.ph ], [ %0, %.preheader ]
  %i.c = getelementptr i8, ptr %.01016, i64 1     ; 2 uses
  %i.d = getelementptr i8, ptr %.017, i64 1       ; 3 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !11    ; 2 uses
  store i8 %i.e, ptr %i.d, align 1, !tbaa !11
  %.not13 = icmp eq i8 %i.e, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0.lcssa = phi ptr [ %i.a, %.preheader ], [ %i.d, %.lr.ph ]
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store ptr %.0.lcssa, ptr %1, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal fastcc range(i32 0, 33) i32 @hi0bits(i32 noundef %0) unnamed_addr #19 {
bb.a:
  %.not = icmp ult i32 %0, 65536                  ; 2 uses
  %i.a = shl nuw i32 %0, 16
  %spec.select = select i1 %.not, i32 %i.a, i32 %0 ; 3 uses
  %spec.select26 = select i1 %.not, i32 16, i32 0 ; 2 uses
  %.not21 = icmp ult i32 %spec.select, 16777216   ; 2 uses
  %i.b = or disjoint i32 %spec.select26, 8
  %i.c = shl nuw i32 %spec.select, 8
  %.117 = select i1 %.not21, i32 %i.c, i32 %spec.select ; 3 uses
  %.1 = select i1 %.not21, i32 %i.b, i32 %spec.select26 ; 2 uses
  %.not22 = icmp ult i32 %.117, 268435456         ; 2 uses
  %i.d = or disjoint i32 %.1, 4
  %i.e = shl nuw i32 %.117, 4
  %.218 = select i1 %.not22, i32 %i.e, i32 %.117  ; 3 uses
  %.2 = select i1 %.not22, i32 %i.d, i32 %.1      ; 2 uses
  %.not23 = icmp ult i32 %.218, 1073741824        ; 2 uses
  %i.f = or disjoint i32 %.2, 2
  %i.g = shl nuw i32 %.218, 2
  %.319 = select i1 %.not23, i32 %i.g, i32 %.218  ; 2 uses
  %.3 = select i1 %.not23, i32 %i.f, i32 %.2      ; 2 uses
  %i.h = add nuw nsw i32 %.3, 1
  %.not25 = icmp ult i32 %.319, 1073741824
  %spec.select27 = select i1 %.not25, i32 32, i32 %i.h
  %.not2428 = icmp slt i32 %.319, 0
  %.020 = select i1 %.not2428, i32 %.3, i32 %spec.select27
  ret i32 %.020
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @multadd(ptr noundef captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef range(i32 -176, 80) %2) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 2 uses
  %xtraiter = and i32 %smax, 3                    ; 3 uses
  %i.f = icmp slt i32 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i32 %smax, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.019 = phi ptr [ %i.c, %.new ], [ %i.ah, %bb.b ] ; 6 uses
  %.018 = phi i64 [ %i.d, %.new ], [ %i.af, %bb.b ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.g = load i32, ptr %.019, align 4, !tbaa !7
  %i.h = zext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, %i.e
  %i.j = add nsw i64 %i.i, %.018                  ; 2 uses
  %i.k = lshr i64 %i.j, 32
  %i.l = trunc i64 %i.j to i32
  %i.m = getelementptr i8, ptr %.019, i64 4       ; 2 uses
  store i32 %i.l, ptr %.019, align 4, !tbaa !7
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = zext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, %i.e
  %i.q = add nsw i64 %i.p, %i.k                   ; 2 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc i64 %i.q to i32
  %i.t = getelementptr i8, ptr %.019, i64 8       ; 2 uses
  store i32 %i.s, ptr %i.m, align 4, !tbaa !7
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = zext i32 %i.u to i64
  %i.w = mul nsw i64 %i.v, %i.e
  %i.x = add nsw i64 %i.w, %i.r                   ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc i64 %i.x to i32
  %i.aa = getelementptr i8, ptr %.019, i64 12     ; 2 uses
  store i32 %i.z, ptr %i.t, align 4, !tbaa !7
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.e
  %i.ae = add nsw i64 %i.ad, %i.y                 ; 2 uses
  %i.af = lshr i64 %i.ae, 32                      ; 3 uses
  %i.ag = trunc i64 %i.ae to i32
  %i.ah = getelementptr i8, ptr %.019, i64 16     ; 2 uses
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !7
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !71

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.019.epil.init = phi ptr [ %i.c, %bb.a ], [ %i.ah, %.unr-lcssa ]
  %.018.epil.init = phi i64 [ %i.d, %bb.a ], [ %i.af, %.unr-lcssa ]
  %lcmp.mod39 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.019.epil = phi ptr [ %.019.epil.init, %.epil.preheader ], [ %i.ao, %bb.c ] ; 3 uses
  %.018.epil = phi i64 [ %.018.epil.init, %.epil.preheader ], [ %i.am, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ai = load i32, ptr %.019.epil, align 4, !tbaa !7
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.e
  %i.al = add nsw i64 %i.ak, %.018.epil           ; 2 uses
  %i.am = lshr i64 %i.al, 32                      ; 2 uses
  %i.an = trunc i64 %i.al to i32
  %i.ao = getelementptr i8, ptr %.019.epil, i64 4
  store i32 %i.an, ptr %.019.epil, align 4, !tbaa !7
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !72

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa = phi i64 [ %i.af, %.unr-lcssa ], [ %i.am, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %.lcssa, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.epilog-lcssa
  %i.ap = getelementptr i8, ptr %0, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !47
  %.not23 = icmp slt i32 %i.b, %i.aq
  br i1 %.not23, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr i8, ptr %0, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !44
  %i.at = add i32 %i.as, 1                        ; 2 uses
  %i.au = shl nuw i32 1, %i.at                    ; 2 uses
  %i.av = add i32 %i.au, -1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 32
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #26 ; 6 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %Bclear.exit, label %bb.f

Bclear.exit:                                      ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %0) #24
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store i32 %i.at, ptr %i.ba, align 8, !tbaa !44
  %i.bb = getelementptr i8, ptr %i.az, i64 12
  store i32 %i.au, ptr %i.bb, align 4, !tbaa !47
  %i.bc = getelementptr i8, ptr %i.az, i64 20
  store i32 0, ptr %i.bc, align 4, !tbaa !49
  %i.bd = getelementptr i8, ptr %i.az, i64 16     ; 2 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !48
  %i.be = load i32, ptr %i.a, align 4, !tbaa !49
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = add nsw i64 %i.bg, 8                    ; 2 uses
  %.not.i26 = icmp eq i64 %i.bh, 0
  br i1 %.not.i26, label %Bclear.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bd, ptr noundef nonnull readonly align 1 %i.bi, i64 noundef range(i64 1, 0) %i.bh, i1 noundef false) #24
  br label %Bclear.exit28

Bclear.exit28:                                    ; preds = %bb.f, %bb.g
  tail call void @free(ptr noundef nonnull %0) #24
  br label %bb.h

bb.h:                                             ; preds = %Bclear.exit28, %bb.d
  %.034 = phi ptr [ %0, %bb.d ], [ %i.az, %Bclear.exit28 ] ; 3 uses
  %i.bj = trunc nuw i64 %.lcssa to i32
  %i.bk = getelementptr i8, ptr %.034, i64 24
  %i.bl = add i32 %i.b, 1
  %i.bm = sext i32 %i.b to i64
  %i.bn = getelementptr [4 x i8], ptr %i.bk, i64 %i.bm
  store i32 %i.bj, ptr %i.bn, align 4, !tbaa !7
  %i.bo = getelementptr i8, ptr %.034, i64 20
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %.epilog-lcssa, %bb.h, %Bclear.exit
  %.0 = phi ptr [ null, %Bclear.exit ], [ %0, %.epilog-lcssa ], [ %.034, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc i32 @quorem(ptr noundef captures(address) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49   ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %cmp.exit.thread84, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %i.g = add i32 %i.b, -1                         ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 24         ; 10 uses
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %i.h ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %i.m = load i32, ptr %i.i, align 4, !tbaa !7
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = udiv i32 %i.l, %i.n                      ; 4 uses
  %.not = icmp ugt i32 %i.n, %i.l
  br i1 %.not, label %bb.f, label %.preheader90

.preheader90:                                     ; preds = %bb.b
  %i.p = zext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader90, %bb.c
  %.069 = phi ptr [ %i.ae, %bb.c ], [ %i.j, %.preheader90 ] ; 3 uses
  %.064 = phi ptr [ %i.q, %bb.c ], [ %i.f, %.preheader90 ] ; 2 uses
  %.061 = phi i64 [ %i.ac, %bb.c ], [ 0, %.preheader90 ]
  %.0 = phi i64 [ %i.v, %bb.c ], [ 0, %.preheader90 ]
  %i.q = getelementptr i8, ptr %.064, i64 4       ; 2 uses
  %i.r = load i32, ptr %.064, align 4, !tbaa !7
  %i.s = zext i32 %i.r to i64
  %i.t = mul nuw i64 %i.s, %i.p
  %i.u = add nuw i64 %i.t, %.0                    ; 2 uses
  %i.v = lshr i64 %i.u, 32
  %i.w = load i32, ptr %.069, align 4, !tbaa !7
  %i.x = zext i32 %i.w to i64
  %i.y = and i64 %i.u, 4294967295
  %i.z = add nuw nsw i64 %.061, %i.y
  %i.aa = sub nsw i64 %i.x, %i.z                  ; 2 uses
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = and i64 %i.ab, 1
  %i.ad = trunc i64 %i.aa to i32
  %i.ae = getelementptr i8, ptr %.069, i64 4
end_hunk_1
begin_hunk_2_@ruby_hdtoa:bb.a
  %.pre108 = bitcast double %.sroa.0.1 to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = shl nuw nsw i32 %spec.store.select, 2
  %i.u = bitcast double %.sroa.0.1 to i64         ; 2 uses
  %.sroa.0.4.extract.shift37 = lshr i64 %i.u, 32
  %.sroa.0.4.extract.trunc38 = trunc nuw nsw i64 %.sroa.0.4.extract.shift37 to i32
  %i.v = and i32 %.sroa.0.4.extract.trunc38, -2146435073
  %i.w = shl nuw nsw i32 %spec.store.select, 22
  %i.x = add nuw nsw i32 %i.w, 1013972992
  %i.y = or disjoint i32 %i.v, %i.x
  %.sroa.0.4.insert.ext40 = zext i32 %i.y to i64
  %.sroa.0.4.insert.shift41 = shl nuw i64 %.sroa.0.4.insert.ext40, 32
  %.sroa.0.4.insert.mask42 = and i64 %i.u, 4294967295
  %.sroa.0.4.insert.insert43 = or disjoint i64 %.sroa.0.4.insert.shift41, %.sroa.0.4.insert.mask42
  %i.z = bitcast i64 %.sroa.0.4.insert.insert43 to double
  %i.aa = fadd double %i.z, 1.000000e+00
  %i.ab = fadd double %i.aa, -1.000000e+00
  %i.ac = bitcast double %i.ab to i64             ; 2 uses
  %sum.shift89 = lshr i64 %i.ac, 52
  %i.ad = trunc nuw nsw i64 %sum.shift89 to i32
  %reass.sub = sub nsw i32 %i.ad, %i.t
  %i.ae = add nsw i32 %reass.sub, -967
  %i.af = load i32, ptr %3, align 4, !tbaa !7
  %i.ag = add i32 %i.ae, %i.af
  store i32 %i.ag, ptr %3, align 4, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge107, %bb.k
  %.pre-phi109 = phi i64 [ %.pre108, %._crit_edge107 ], [ %i.ac, %bb.k ] ; 2 uses
  store i8 49, ptr %i.s, align 1, !tbaa !11
  %i.ah = zext nneg i32 %i.p to i64               ; 2 uses
  %i.ai = getelementptr i8, ptr %i.s, i64 %i.ah   ; 2 uses
  %.082101 = getelementptr i8, ptr %i.s, i64 1    ; 3 uses
  %i.aj = icmp ult ptr %.082101, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %.sroa.0.0.extract.trunc = trunc i64 %.pre-phi109 to i32 ; 2 uses
  %.sroa.0.4.extract.shift48 = lshr i64 %.pre-phi109, 32
  %.sroa.0.4.extract.trunc49 = trunc nuw i64 %.sroa.0.4.extract.shift48 to i32 ; 2 uses
  %i.ak = add nuw nsw i64 %i.ah, 3
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.082104.prol = phi ptr [ %.082.prol, %.lr.ph.prol ], [ %.082101, %.lr.ph.preheader ] ; 2 uses
  %.080103.prol = phi i32 [ %i.ar, %.lr.ph.prol ], [ %.sroa.0.0.extract.trunc, %.lr.ph.preheader ] ; 2 uses
  %.081102.prol = phi i32 [ %i.aq, %.lr.ph.prol ], [ %.sroa.0.4.extract.trunc49, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.al = lshr i32 %.081102.prol, 16
  %i.am = and i32 %i.al, 15
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  store i8 %i.ap, ptr %.082104.prol, align 1, !tbaa !11
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %.081102.prol, i32 %.080103.prol, i32 4) ; 2 uses
  %i.ar = shl i32 %.080103.prol, 4                ; 2 uses
  %.082.prol = getelementptr i8, ptr %.082104.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !78

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.082104.unr = phi ptr [ %.082101, %.lr.ph.preheader ], [ %.082.prol, %.lr.ph.prol ]
  %.080103.unr = phi i32 [ %.sroa.0.0.extract.trunc, %.lr.ph.preheader ], [ %i.ar, %.lr.ph.prol ]
  %.081102.unr = phi i32 [ %.sroa.0.4.extract.trunc49, %.lr.ph.preheader ], [ %i.aq, %.lr.ph.prol ]
  %i.as = add nsw i32 %i.p, -2
  %i.at = icmp ult i32 %i.as, 3
  br i1 %i.at, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.082104 = phi ptr [ %.082.3, %.lr.ph ], [ %.082104.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.080103 = phi i32 [ %i.bv, %.lr.ph ], [ %.080103.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.081102 = phi i32 [ %i.bu, %.lr.ph ], [ %.081102.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.au = lshr i32 %.081102, 16
  %i.av = and i32 %i.au, 15
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  store i8 %i.ay, ptr %.082104, align 1, !tbaa !11
  %i.az = tail call i32 @llvm.fshl.i32(i32 %.081102, i32 %.080103, i32 4) ; 2 uses
  %i.ba = shl i32 %.080103, 4
  %.082 = getelementptr i8, ptr %.082104, i64 1
  %i.bb = lshr i32 %i.az, 16
  %i.bc = and i32 %i.bb, 15
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %1, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !11
  store i8 %i.bf, ptr %.082, align 1, !tbaa !11
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.az, i32 %i.ba, i32 4) ; 2 uses
  %i.bh = shl i32 %.080103, 8
  %.082.1 = getelementptr i8, ptr %.082104, i64 2
  %i.bi = lshr i32 %i.bg, 16
  %i.bj = and i32 %i.bi, 15
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11
  store i8 %i.bm, ptr %.082.1, align 1, !tbaa !11
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bh, i32 4) ; 2 uses
  %i.bo = shl i32 %.080103, 12
  %.082.2 = getelementptr i8, ptr %.082104, i64 3
  %i.bp = lshr i32 %i.bn, 16
  %i.bq = and i32 %i.bp, 15
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %1, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !11
  store i8 %i.bt, ptr %.082.2, align 1, !tbaa !11
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bo, i32 4)
  %i.bv = shl i32 %.080103, 16
  %.082.3 = getelementptr i8, ptr %.082104, i64 4 ; 2 uses
  %exitcond.not.3 = icmp eq ptr %.082.3, %i.ai
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.l
  %i.bw = icmp slt i32 %spec.store.select, 0
  br i1 %i.bw, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge, %.preheader
  %.079 = phi i32 [ %i.bx, %.preheader ], [ 15, %._crit_edge ] ; 2 uses
  %i.bx = add i32 %.079, -1                       ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %i.s, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = icmp eq i8 %i.ca, 48
  br i1 %i.cb, label %.preheader, label %.loopexit, !llvm.loop !80

.loopexit:                                        ; preds = %.preheader, %._crit_edge
  %.1 = phi i32 [ %spec.store.select, %._crit_edge ], [ %.079, %.preheader ]
  %i.cc = sext i32 %.1 to i64
  %i.cd = getelementptr i8, ptr %i.s, i64 %i.cc   ; 2 uses
  store i8 0, ptr %i.cd, align 1, !tbaa !11
  %.not90 = icmp eq ptr %5, null
  br i1 %.not90, label %nrv_alloc.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  store ptr %i.cd, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

nrv_alloc.exit:                                   ; preds = %bb.h, %.preheader.i92, %bb.g, %bb.c, %.preheader.i, %bb.b, %.loopexit, %bb.m, %bb.i, %bb.e
  %.0 = phi ptr [ %i.s, %.loopexit ], [ %i.f, %bb.e ], [ %i.d, %bb.c ], [ null, %bb.i ], [ %i.s, %bb.m ], [ null, %bb.b ], [ %i.d, %.preheader.i ], [ null, %bb.g ], [ %i.h, %.preheader.i92 ], [ %i.h, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind sspstrong willreturn memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind sspstrong memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = distinct !{!16, !13}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!21, !19, i64 32}
!21 = !{!"RTypedData", !22, i64 0, !15, i64 16, !15, i64 24, !19, i64 32}
!22 = !{!"RBasic", !15, i64 0, !15, i64 8}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 long", !19, i64 0}
!25 = !{i64 2150843125}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = !{!40, !40, i64 0}
!40 = !{!"double", !9, i64 0}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = !{!45, !8, i64 8}
!45 = !{!"Bigint", !46, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24}
!46 = !{!"p1 _ZTS6Bigint", !19, i64 0}
!47 = !{!45, !8, i64 12}
!48 = !{!45, !8, i64 16}
!49 = !{!45, !8, i64 20}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = !{!46, !46, i64 0}
!53 = !{!45, !46, i64 0}
!54 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!55 = !{!"branch_weights", !"expected", i32 2146162781, i32 1320867}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !73}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
end_hunk_2
