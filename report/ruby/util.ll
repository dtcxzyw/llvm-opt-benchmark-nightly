inline.NumInlined: 87
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@d2b:bb.a
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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @pow5mult(ptr noundef captures(address, ret: address, provenance) %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #2 {
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
define internal fastcc noundef ptr @mult(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #15 {
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
  %2 = ptrtoaddr ptr %i.ag to i64                 ; 3 uses
  %.not.i83 = icmp eq ptr %i.ag, null
  br i1 %.not.i83, label %Balloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge98
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store i32 %.072, ptr %i.ah, align 8, !tbaa !44
  %i.ai = getelementptr i8, ptr %i.ag, i64 12
  store i32 %i.ab, ptr %i.ai, align 4, !tbaa !47
  %i.aj = getelementptr i8, ptr %i.ag, i64 20     ; 2 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !49
  %i.ak = getelementptr i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.ak, align 8, !tbaa !48
  %i.al = getelementptr i8, ptr %i.ag, i64 24     ; 4 uses
  %i.am = sext i32 %i.w to i64                    ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = icmp ult ptr %i.al, %i.an
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ap = shl nsw i64 %i.am, 2
  %i.aq = add i64 %i.ap, %2
  %i.ar = add i64 %i.aq, 24
  %i.as = add i64 %2, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.as)
  %i.at = add i64 %umax, -25
  %i.au = sub i64 %i.at, %2
  %i.av = and i64 %i.au, -4
  %i.aw = add i64 %i.av, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.al, i8 0, i64 %i.aw, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %i.ax = getelementptr i8, ptr %spec.select82, i64 24 ; 2 uses
  %i.ay = sext i32 %i.t to i64
  %i.az = getelementptr [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr i8, ptr %spec.select, i64 24 ; 3 uses
  %i.bb = sext i32 %i.v to i64
  %i.bc = getelementptr [4 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = icmp ult ptr %i.ba, %i.bc
  br i1 %i.bd, label %.lr.ph91, label %.preheader

.preheader:                                       ; preds = %bb.i, %._crit_edge
  %i.be = icmp sgt i32 %i.w, 0
  br i1 %i.be, label %.lr.ph94, label %.critedge

.lr.ph91:                                         ; preds = %._crit_edge, %bb.i
  %.06589 = phi ptr [ %i.bv, %bb.i ], [ %i.al, %._crit_edge ] ; 2 uses
  %.06888 = phi ptr [ %i.bf, %bb.i ], [ %i.ba, %._crit_edge ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.06888, i64 4    ; 2 uses
  %i.bg = load i32, ptr %.06888, align 4, !tbaa !7 ; 2 uses
  %.not81 = icmp eq i32 %i.bg, 0
  br i1 %.not81, label %bb.i, label %.preheader85

.preheader85:                                     ; preds = %.lr.ph91
  %i.bh = zext i32 %i.bg to i64
  br label %bb.g

bb.g:                                             ; preds = %.preheader85, %bb.g
  %.170 = phi ptr [ %i.bi, %bb.g ], [ %i.ax, %.preheader85 ] ; 2 uses
  %.066 = phi ptr [ %i.bs, %bb.g ], [ %.06589, %.preheader85 ] ; 3 uses
  %.063 = phi i64 [ %i.bq, %bb.g ], [ 0, %.preheader85 ]
  %i.bi = getelementptr i8, ptr %.170, i64 4      ; 2 uses
  %i.bj = load i32, ptr %.170, align 4, !tbaa !7
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw i64 %i.bk, %i.bh
  %i.bm = load i32, ptr %.066, align 4, !tbaa !7
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add nuw nsw i64 %.063, %i.bn
  %i.bp = add nuw i64 %i.bo, %i.bl                ; 2 uses
  %i.bq = lshr i64 %i.bp, 32                      ; 2 uses
  %i.br = trunc i64 %i.bp to i32
  %i.bs = getelementptr i8, ptr %.066, i64 4      ; 2 uses
  store i32 %i.br, ptr %.066, align 4, !tbaa !7
  %i.bt = icmp ult ptr %i.bi, %i.az
  br i1 %i.bt, label %bb.g, label %bb.h, !llvm.loop !56

bb.h:                                             ; preds = %bb.g
  %i.bu = trunc nuw i64 %i.bq to i32
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph91, %bb.h
  %i.bv = getelementptr i8, ptr %.06589, i64 4
  %i.bw = icmp ult ptr %i.bf, %i.bc
  br i1 %i.bw, label %.lr.ph91, label %.preheader, !llvm.loop !57

.lr.ph94:                                         ; preds = %.preheader, %bb.j
  %.193 = phi ptr [ %i.bx, %bb.j ], [ %i.an, %.preheader ]
  %.07192 = phi i32 [ %i.bz, %bb.j ], [ %i.w, %.preheader ] ; 3 uses
  %i.bx = getelementptr i8, ptr %.193, i64 -4     ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %.not80 = icmp eq i32 %i.by, 0
  br i1 %.not80, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph94
  %i.bz = add nsw i32 %.07192, -1
  %i.ca = icmp sgt i32 %.07192, 1
  br i1 %i.ca, label %.lr.ph94, label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %.lr.ph94, %bb.j, %.preheader
  %.071.lcssa = phi i32 [ %i.w, %.preheader ], [ 0, %bb.j ], [ %.07192, %.lr.ph94 ]
  store i32 %.071.lcssa, ptr %i.aj, align 4, !tbaa !49
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %._crit_edge98, %bb.d, %.critedge, %bb.e
  %.0 = phi ptr [ %i.ag, %.critedge ], [ null, %bb.d ], [ %i.k, %bb.e ], [ null, %._crit_edge98 ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @lshift(ptr noundef captures(address, ret: address, provenance) %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #16 {
bb.a:
  %2 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49   ; 2 uses
  %i.e = icmp slt i32 %i.d, 2
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %Bclear.exit, label %._crit_edge70

._crit_edge70:                                    ; preds = %bb.a
  %i.f = lshr i32 %1, 5                           ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = add i32 %i.d, %i.f                       ; 3 uses
  %i.k = add i32 %i.j, 1                          ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !47   ; 2 uses
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge70, %.lr.ph
  %.04059 = phi i32 [ %i.p, %.lr.ph ], [ %i.m, %._crit_edge70 ]
  %.04258 = phi i32 [ %i.o, %.lr.ph ], [ %i.h, %._crit_edge70 ]
  %i.o = add i32 %.04258, 1                       ; 2 uses
  %i.p = shl i32 %.04059, 1                       ; 2 uses
  %i.q = icmp sgt i32 %i.k, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge70
  %.042.lcssa = phi i32 [ %i.h, %._crit_edge70 ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.r = shl nuw i32 1, %.042.lcssa               ; 2 uses
  %i.s = add i32 %i.r, -1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 32
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #26 ; 8 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %Bclear.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store i32 %.042.lcssa, ptr %i.x, align 8, !tbaa !44
  %i.y = getelementptr i8, ptr %i.w, i64 12
  store i32 %i.r, ptr %i.y, align 4, !tbaa !47
  %i.z = getelementptr i8, ptr %i.w, i64 20
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !48
  %i.ab = getelementptr i8, ptr %i.w, i64 24      ; 2 uses
  %.not66 = icmp eq i32 %i.f, 0
  br i1 %.not66, label %._crit_edge64, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %bb.b
  %i.ac = lshr i32 %1, 3
  %i.ad = and i32 %i.ac, 268435452
  %i.ae = zext nneg i32 %i.ad to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %i.ae, i1 false), !tbaa !7
  %i.af = add nsw i32 %i.f, -1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 28
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63.preheader, %bb.b
  %.036.lcssa = phi ptr [ %i.ab, %bb.b ], [ %scevgep, %.lr.ph63.preheader ] ; 2 uses
  %i.aj = load i32, ptr %i.i, align 4, !tbaa !49
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.a, i64 %i.ak
  %i.am = and i32 %1, 31                          ; 3 uses
  %.not48 = icmp eq i32 %i.am, 0
  br i1 %.not48, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %._crit_edge64
  %i.an = shl nsw i64 %i.ak, 2
  %i.ao = add i64 %i.an, %2
  %i.ap = add i64 %i.ao, 24
  %i.aq = add i64 %2, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.aq)
  %i.ar = add i64 %umax, -25
  %i.as = sub i64 %i.ar, %2
  %i.at = and i64 %i.as, -4
  %i.au = add i64 %i.at, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.036.lcssa, ptr nonnull align 4 %i.a, i64 %i.au, i1 false), !tbaa !7
  br label %Bclear.exit52

bb.c:                                             ; preds = %._crit_edge64
  %i.av = sub nuw nsw i32 32, %i.am
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.037 = phi ptr [ %i.a, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  %.1 = phi ptr [ %.036.lcssa, %bb.c ], [ %i.az, %bb.d ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.c ], [ %i.bb, %bb.d ]
  %i.aw = load i32, ptr %.037, align 4, !tbaa !7  ; 2 uses
  %i.ax = shl i32 %i.aw, %i.am
  %i.ay = or i32 %i.ax, %.0
  %i.az = getelementptr i8, ptr %.1, i64 4        ; 2 uses
  store i32 %i.ay, ptr %.1, align 4, !tbaa !7
  %i.ba = getelementptr i8, ptr %.037, i64 4      ; 2 uses
  %i.bb = lshr i32 %i.aw, %i.av                   ; 3 uses
  %i.bc = icmp ult ptr %i.ba, %i.al
  br i1 %i.bc, label %bb.d, label %bb.e, !llvm.loop !60

bb.e:                                             ; preds = %bb.d
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !7
  %.not49 = icmp eq i32 %i.bb, 0
  %spec.select = select i1 %.not49, i32 %i.j, i32 %i.k
  br label %Bclear.exit52

Bclear.exit52:                                    ; preds = %.preheader.preheader, %bb.e
  %.039 = phi i32 [ %spec.select, %bb.e ], [ %i.j, %.preheader.preheader ]
  store i32 %.039, ptr %i.z, align 4, !tbaa !49
  br label %Bclear.exit.sink.split

Bclear.exit.sink.split:                           ; preds = %._crit_edge, %Bclear.exit52
  %.035.ph = phi ptr [ %i.w, %Bclear.exit52 ], [ null, %._crit_edge ]
  tail call void @free(ptr noundef nonnull %0) #24
  br label %Bclear.exit

Bclear.exit:                                      ; preds = %Bclear.exit.sink.split, %bb.a
  %.035 = phi ptr [ %0, %bb.a ], [ %.035.ph, %Bclear.exit.sink.split ]
  ret ptr %.035
}

; Function Attrs: nofree nounwind sspstrong memory(readwrite, argmem: read, target_mem: none) uwtable
define internal fastcc noundef ptr @diff(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #15 {
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
end_hunk_0
begin_hunk_1_@ruby_dtoa:bb.a
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
    i32 3, label %bb.y
    i32 5, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0404 = phi i32 [ 0, %bb.w ], [ 1, %bb.v ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 1) ; 4 uses
  br label %bb.ab

bb.y:                                             ; preds = %bb.v
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.1405 = phi i32 [ 0, %bb.y ], [ 1, %bb.v ]
  %i.bi = add i32 %.2411, 1
  %i.bj = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %i.bi) ; 2 uses
  %i.bk = extractvalue { i32, i1 } %i.bj, 1
  br i1 %i.bk, label %Bclear.exit, label %bb.aa

Bclear.exit:                                      ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %i.n) #24
  br label %nrv_alloc.exit

bb.aa:                                            ; preds = %bb.z
  %i.bl = extractvalue { i32, i1 } %i.bj, 0       ; 3 uses
  %i.bm = add i32 %i.bl, -1
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 1)
  br label %bb.ab

default.unreachable:                              ; preds = %bb.v
  unreachable

bb.ab:                                            ; preds = %bb.v, %bb.v, %bb.aa, %bb.x
  %.1441 = phi i32 [ %spec.store.select4, %bb.aa ], [ %spec.store.select, %bb.x ], [ 18, %bb.v ], [ 18, %bb.v ]
  %.0427 = phi i32 [ %i.bl, %bb.aa ], [ %spec.store.select, %bb.x ], [ -1, %bb.v ], [ -1, %bb.v ] ; 11 uses
  %.0423 = phi i32 [ %i.bm, %bb.aa ], [ %spec.store.select, %bb.x ], [ -1, %bb.v ], [ -1, %bb.v ] ; 4 uses
  %.2406 = phi i32 [ %.1405, %bb.aa ], [ %.0404, %bb.x ], [ 1, %bb.v ], [ 1, %bb.v ] ; 2 uses
  %.0383 = phi i32 [ %2, %bb.aa ], [ %spec.store.select, %bb.x ], [ 0, %bb.v ], [ 0, %bb.v ] ; 2 uses
  %i.bn = add nuw i32 %.1441, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #26 ; 17 uses
  %6 = ptrtoaddr ptr %i.bp to i64                 ; 4 uses
  %.not493 = icmp eq ptr %i.bp, null
  br i1 %.not493, label %Bclear.exit594, label %bb.ac

Bclear.exit594:                                   ; preds = %bb.ab
  tail call void @free(ptr noundef nonnull %i.n) #24
  br label %nrv_alloc.exit

bb.ac:                                            ; preds = %bb.ab
  %or.cond6 = icmp ult i32 %.0427, 15
  %or.cond8 = and i1 %i.bg, %or.cond6
  br i1 %or.cond8, label %bb.ad, label %.loopexit829

bb.ad:                                            ; preds = %bb.ac
  %i.bq = icmp sgt i32 %.2411, 0
  br i1 %i.bq, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.br = and i32 %.2411, 15
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr @tens, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !39 ; 2 uses
  %i.bv = lshr i32 %.2411, 4                      ; 2 uses
  %i.bw = and i32 %.2411, 256
  %.not497 = icmp eq i32 %i.bw, 0                 ; 3 uses
  %i.bx = and i32 %i.bv, 15
  %i.by = fdiv double %.sroa.090.0, 1.000000e+256
  %.0433 = select i1 %.not497, i32 2, i32 3       ; 2 uses
  %.0420 = select i1 %.not497, i32 %i.bv, i32 %i.bx ; 2 uses
  %.sroa.090.1 = select i1 %.not497, double %.sroa.090.0, double %i.by
  %.not498935 = icmp eq i32 %.0420, 0
  br i1 %.not498935, label %._crit_edge, label %.lr.ph940

.lr.ph940:                                        ; preds = %bb.ae, %bb.ag
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ag ], [ 0, %bb.ae ] ; 2 uses
  %.0380939 = phi double [ %.1381, %bb.ag ], [ %i.bu, %bb.ae ] ; 2 uses
  %.1421938 = phi i32 [ %i.ce, %bb.ag ], [ %.0420, %bb.ae ] ; 2 uses
  %.1434937 = phi i32 [ %.2435, %bb.ag ], [ %.0433, %bb.ae ] ; 2 uses
  %i.bz = and i32 %.1421938, 1
  %.not554 = icmp eq i32 %i.bz, 0
  br i1 %.not554, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph940
  %i.ca = add i32 %.1434937, 1
  %i.cb = getelementptr [8 x i8], ptr @bigtens, i64 %indvars.iv
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !39
  %i.cd = fmul double %.0380939, %i.cc
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph940, %bb.af
  %.2435 = phi i32 [ %i.ca, %bb.af ], [ %.1434937, %.lr.ph940 ] ; 2 uses
  %.1381 = phi double [ %i.cd, %bb.af ], [ %.0380939, %.lr.ph940 ] ; 2 uses
  %i.ce = lshr i32 %.1421938, 1                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not498 = icmp eq i32 %i.ce, 0
  br i1 %.not498, label %._crit_edge, label %.lr.ph940, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.ag, %bb.ae
  %.1434.lcssa = phi i32 [ %.0433, %bb.ae ], [ %.2435, %bb.ag ]
  %.0380.lcssa = phi double [ %i.bu, %bb.ae ], [ %.1381, %bb.ag ]
  %i.cf = fdiv double %.sroa.090.1, %.0380.lcssa
  br label %.loopexit830

bb.ah:                                            ; preds = %bb.ad
  %.not494 = icmp eq i32 %.2411, 0
  br i1 %.not494, label %.loopexit830, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = sub i32 0, %.2411                       ; 2 uses
  %i.ch = and i32 %i.cg, 15
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr [8 x i8], ptr @tens, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !39
  %i.cl = fmul double %.sroa.090.0, %i.ck         ; 2 uses
  %i.cm = ashr i32 %i.cg, 4                       ; 2 uses
  %.not495929 = icmp eq i32 %i.cm, 0
  br i1 %.not495929, label %.loopexit830, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai, %bb.ak
  %.sroa.090.2933 = phi double [ %.sroa.090.3, %bb.ak ], [ %i.cl, %bb.ai ] ; 2 uses
  %.2422932 = phi i32 [ %i.ct, %bb.ak ], [ %i.cm, %bb.ai ] ; 2 uses
  %.3436931 = phi i32 [ %.4437, %bb.ak ], [ 2, %bb.ai ] ; 2 uses
  %.3443930 = phi i32 [ %i.cu, %bb.ak ], [ 0, %bb.ai ] ; 2 uses
  %i.cn = and i32 %.2422932, 1
  %.not496 = icmp eq i32 %i.cn, 0
  br i1 %.not496, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph
  %i.co = add i32 %.3436931, 1
  %i.cp = sext i32 %.3443930 to i64
  %i.cq = getelementptr [8 x i8], ptr @bigtens, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !39
  %i.cs = fmul double %.sroa.090.2933, %i.cr
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %bb.aj
  %.4437 = phi i32 [ %i.co, %bb.aj ], [ %.3436931, %.lr.ph ] ; 2 uses
  %.sroa.090.3 = phi double [ %i.cs, %bb.aj ], [ %.sroa.090.2933, %.lr.ph ] ; 2 uses
  %i.ct = ashr i32 %.2422932, 1                   ; 2 uses
  %i.cu = add i32 %.3443930, 1
  %.not495 = icmp eq i32 %i.ct, 0
  br i1 %.not495, label %.loopexit830, label %.lr.ph, !llvm.loop !65

.loopexit830:                                     ; preds = %bb.ak, %bb.ai, %bb.ah, %._crit_edge
  %.5438 = phi i32 [ %.1434.lcssa, %._crit_edge ], [ 2, %bb.ah ], [ 2, %bb.ai ], [ %.4437, %bb.ak ] ; 2 uses
  %.sroa.090.4 = phi double [ %i.cf, %._crit_edge ], [ %.sroa.090.0, %bb.ah ], [ %i.cl, %bb.ai ], [ %.sroa.090.3, %bb.ak ] ; 3 uses
  %i.cv = fcmp olt double %.sroa.090.4, 1.000000e+00
  %or.cond10 = select i1 %or.cond, i1 %i.cv, i1 false
  %i.cw = icmp sgt i32 %.0427, 0
  %or.cond12 = and i1 %i.cw, %or.cond10
  br i1 %or.cond12, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.loopexit830
  %i.cx = icmp slt i32 %.0423, 1
  br i1 %i.cx, label %.loopexit829, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cy = add i32 %.2411, -1
  %i.cz = fmul nnan double %.sroa.090.4, 1.000000e+01
  %i.da = add i32 %.5438, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.loopexit830
  %.6439 = phi i32 [ %i.da, %bb.am ], [ %.5438, %.loopexit830 ]
  %.1428 = phi i32 [ %.0423, %bb.am ], [ %.0427, %.loopexit830 ] ; 5 uses
  %.3412 = phi i32 [ %i.cy, %bb.am ], [ %.2411, %.loopexit830 ] ; 7 uses
  %.sroa.090.5 = phi double [ %i.cz, %bb.am ], [ %.sroa.090.4, %.loopexit830 ] ; 6 uses
  %i.db = sitofp i32 %.6439 to double
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.db, double %.sroa.090.5, double 7.000000e+00)
  %i.dd = bitcast double %i.dc to i64             ; 2 uses
  %i.de = and i64 %i.dd, -4294967296
  %.sroa.0.4.insert.ext = add i64 %i.de, -234187180623265792
  %.sroa.0.4.insert.mask = and i64 %i.dd, 4294967295
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.ext, %.sroa.0.4.insert.mask
  %i.df = bitcast i64 %.sroa.0.4.insert.insert to double ; 4 uses
  %i.dg = icmp eq i32 %.1428, 0
  br i1 %i.dg, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dh = fadd double %.sroa.090.5, -5.000000e+00 ; 2 uses
  %i.di = fcmp ogt double %i.dh, %i.df
  br i1 %i.di, label %cmp.exit607.thread754, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dj = fneg double %i.df
  %i.dk = fcmp olt double %i.dh, %i.dj
  br i1 %i.dk, label %cmp.exit607.thread, label %.loopexit829

bb.aq:                                            ; preds = %bb.an
  %.not499 = icmp eq i32 %.2406, 0
  %i.dl = zext nneg i32 %.1428 to i64
  %i.dm = getelementptr [8 x i8], ptr @tens, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -8
  %i.do = load double, ptr %i.dn, align 8, !tbaa !39 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.bp, i64 1      ; 4 uses
  br i1 %.not499, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dq = fdiv double 5.000000e-01, %i.do
  %i.dr = fsub double %i.dq, %i.df                ; 2 uses
  %i.ds = fptosi double %.sroa.090.5 to i32       ; 2 uses
  %i.dt = sitofp i32 %i.ds to double
  %i.du = fsub double %.sroa.090.5, %i.dt         ; 2 uses
  %i.dv = trunc i32 %i.ds to i8
  %i.dw = add i8 %i.dv, 48
  store i8 %i.dw, ptr %i.bp, align 1, !tbaa !11
  %i.dx = fcmp olt double %i.du, %i.dr
  br i1 %i.dx, label %Bclear.exit647, label %.lr.ph946.preheader

.lr.ph946.preheader:                              ; preds = %bb.ar
  %i.dy = add nsw i32 %.1428, -1
  br label %.lr.ph946

.lr.ph946:                                        ; preds = %.lr.ph946.preheader, %bb.at
  %i.dz = phi ptr [ %i.el, %bb.at ], [ %i.dp, %.lr.ph946.preheader ] ; 3 uses
  %i.ea = phi double [ %i.ei, %bb.at ], [ %i.du, %.lr.ph946.preheader ] ; 2 uses
  %.sroa.0.0944 = phi double [ %i.ee, %bb.at ], [ %i.dr, %.lr.ph946.preheader ] ; 2 uses
  %.4444943 = phi i32 [ %i.ed, %bb.at ], [ 0, %.lr.ph946.preheader ] ; 2 uses
  %i.eb = fsub double 1.000000e+00, %i.ea
  %i.ec = fcmp olt double %i.eb, %.sroa.0.0944
  br i1 %i.ec, label %.loopexit828, label %bb.as

bb.as:                                            ; preds = %.lr.ph946
  %exitcond.not = icmp eq i32 %.4444943, %i.dy
  br i1 %exitcond.not, label %.loopexit829, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ed = add nuw nsw i32 %.4444943, 1
  %i.ee = fmul double %.sroa.0.0944, 1.000000e+01 ; 2 uses
  %i.ef = fmul double %i.ea, 1.000000e+01         ; 2 uses
  %i.eg = fptosi double %i.ef to i32              ; 2 uses
  %i.eh = sitofp i32 %i.eg to double
  %i.ei = fsub double %i.ef, %i.eh                ; 2 uses
  %i.ej = trunc i32 %i.eg to i8
  %i.ek = add i8 %i.ej, 48
  %i.el = getelementptr i8, ptr %i.dz, i64 1      ; 2 uses
  store i8 %i.ek, ptr %i.dz, align 1, !tbaa !11
  %i.em = fcmp olt double %i.ei, %i.ee
  br i1 %i.em, label %Bclear.exit647, label %.lr.ph946

bb.au:                                            ; preds = %bb.aq
  %i.en = fmul double %i.do, %i.df                ; 2 uses
  %i.eo = fptosi double %.sroa.090.5 to i32       ; 2 uses
  %i.ep = sitofp i32 %i.eo to double
  %i.eq = fsub double %.sroa.090.5, %i.ep         ; 3 uses
  %i.er = fcmp oeq double %i.eq, 0.000000e+00
  %i.es = trunc i32 %i.eo to i8                   ; 2 uses
  %i.et = add i8 %i.es, 48
  store i8 %i.et, ptr %i.bp, align 1, !tbaa !11
  %i.eu = icmp eq i32 %.1428, 1
  %i.ev = or i1 %i.er, %i.eu
  br i1 %i.ev, label %._crit_edge953, label %.lr.ph952

._crit_edge953:                                   ; preds = %.lr.ph952, %bb.au
  %.lcssa924 = phi double [ %i.eq, %bb.au ], [ %i.fk, %.lr.ph952 ] ; 2 uses
  %.lcssa923 = phi i8 [ %i.es, %bb.au ], [ %i.fm, %.lr.ph952 ]
  %.lcssa922 = phi ptr [ %i.dp, %bb.au ], [ %i.fo, %.lr.ph952 ] ; 3 uses
  %i.ew = fadd double %i.en, 5.000000e-01
  %i.ex = fcmp ogt double %.lcssa924, %i.ew
  br i1 %i.ex, label %.loopexit828, label %bb.av

bb.av:                                            ; preds = %._crit_edge953
  %i.ey = fsub double 5.000000e-01, %i.en
  %i.ez = fcmp olt double %.lcssa924, %i.ey
  br i1 %i.ez, label %.preheader825, label %bb.aw

.preheader825:                                    ; preds = %bb.av, %.preheader825
  %.2 = phi ptr [ %i.fa, %.preheader825 ], [ %.lcssa922, %bb.av ] ; 2 uses
  %i.fa = getelementptr i8, ptr %.2, i64 -1       ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !11
  %i.fc = icmp eq i8 %i.fb, 48
  br i1 %i.fc, label %.preheader825, label %Bclear.exit647, !llvm.loop !66

bb.aw:                                            ; preds = %bb.av
  %i.fd = and i8 %.lcssa923, 1
  %.not500 = icmp eq i8 %i.fd, 0
  br i1 %.not500, label %.loopexit829.thread, label %.loopexit828

.lr.ph952:                                        ; preds = %bb.au, %.lr.ph952
  %i.fe = phi ptr [ %i.fo, %.lr.ph952 ], [ %i.dp, %bb.au ] ; 2 uses
  %.3430950 = phi i32 [ %.3430, %.lr.ph952 ], [ %.1428, %bb.au ]
  %i.ff = phi double [ %i.fk, %.lr.ph952 ], [ %i.eq, %bb.au ]
  %.5445949 = phi i32 [ %i.fg, %.lr.ph952 ], [ 1, %bb.au ]
  %i.fg = add i32 %.5445949, 1                    ; 3 uses
  %i.fh = fmul double %i.ff, 1.000000e+01         ; 2 uses
  %i.fi = fptosi double %i.fh to i32              ; 2 uses
  %i.fj = sitofp i32 %i.fi to double
  %i.fk = fsub double %i.fh, %i.fj                ; 3 uses
  %i.fl = fcmp une double %i.fk, 0.000000e+00
  %.3430 = select i1 %i.fl, i32 %.3430950, i32 %i.fg ; 2 uses
  %i.fm = trunc i32 %i.fi to i8                   ; 2 uses
  %i.fn = add i8 %i.fm, 48
  %i.fo = getelementptr i8, ptr %i.fe, i64 1      ; 2 uses
  store i8 %i.fn, ptr %i.fe, align 1, !tbaa !11
  %i.fp = icmp eq i32 %i.fg, %.3430
  br i1 %i.fp, label %._crit_edge953, label %.lr.ph952

.loopexit829:                                     ; preds = %bb.as, %bb.al, %bb.ap, %bb.ac
  %i.fq = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, -1
  %i.fs = icmp slt i32 %.2411, 15
  %or.cond14 = and i1 %i.fs, %i.fr
  br i1 %or.cond14, label %bb.ax, label %bb.bd

.loopexit829.thread:                              ; preds = %bb.aw
  %i.ft = load i32, ptr %i.b, align 4, !tbaa !7
  %i.fu = icmp sgt i32 %i.ft, -1
  %i.fv = icmp slt i32 %.2411, 15
  %or.cond141160 = and i1 %i.fv, %i.fu
  br i1 %or.cond141160, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %.loopexit829.thread, %.loopexit829
  %i.fw = sext i32 %.2411 to i64
  %i.fx = getelementptr [8 x i8], ptr @tens, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !39 ; 7 uses
  %i.fz = icmp slt i32 %.0383, 0
  %i.ga = icmp slt i32 %.0427, 1
  %or.cond16 = and i1 %i.ga, %i.fz
  br i1 %or.cond16, label %bb.ay, label %.preheader

.preheader:                                       ; preds = %bb.ax
  %i.gb = fdiv double %.sroa.090.0, %i.fy
  %i.gc = fptosi double %i.gb to i32              ; 3 uses
  %i.gd = sitofp i32 %i.gc to double
  %i.ge = fneg double %i.gd
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.fy, double %.sroa.090.0) ; 3 uses
  %i.gg = trunc i32 %i.gc to i8
  %i.gh = add i8 %i.gg, 48
  %i.gi = getelementptr i8, ptr %i.bp, i64 1      ; 3 uses
  store i8 %i.gh, ptr %i.bp, align 1, !tbaa !11
  %i.gj = fcmp une double %i.gf, 0.000000e+00
  br i1 %i.gj, label %.lr.ph958.preheader, label %Bclear.exit647

.lr.ph958.preheader:                              ; preds = %.preheader
  %i.gk = icmp eq i32 %.0427, 1
  br i1 %i.gk, label %.lr.ph958._crit_edge, label %.lr.ph1373

bb.ay:                                            ; preds = %bb.ax
  %i.gl = icmp sgt i32 %.0427, -1
  %i.gm = fmul double %i.fy, 5.000000e+00
  %i.gn = fcmp ugt double %.sroa.090.0, %i.gm
  %or.cond561 = select i1 %i.gl, i1 %i.gn, i1 false
  br i1 %or.cond561, label %cmp.exit607.thread754, label %cmp.exit607.thread

.lr.ph958:                                        ; preds = %.lr.ph1373
  %i.go = add i32 %.64469571372, 1                ; 2 uses
  %i.gp = icmp eq i32 %i.go, %.0427
  br i1 %i.gp, label %.lr.ph958._crit_edge, label %.lr.ph1373

.lr.ph958._crit_edge:                             ; preds = %.lr.ph958, %.lr.ph958.preheader
  %.lcssa1282 = phi ptr [ %i.gi, %.lr.ph958.preheader ], [ %i.hp, %.lr.ph958 ] ; 3 uses
  %.lcssa1280 = phi double [ %i.gf, %.lr.ph958.preheader ], [ %i.hm, %.lr.ph958 ] ; 2 uses
  %.lcssa1278 = phi i32 [ %i.gc, %.lr.ph958.preheader ], [ %i.hj, %.lr.ph958 ]
  %i.gq = fadd double %.lcssa1280, %.lcssa1280    ; 2 uses
  %i.gr = fcmp ogt double %i.gq, %i.fy
  br i1 %i.gr, label %.loopexit828, label %bb.az

bb.az:                                            ; preds = %.lr.ph958._crit_edge
  %i.gs = fcmp une double %i.gq, %i.fy
  %i.gt = and i32 %.lcssa1278, 1
  %.not549 = icmp eq i32 %i.gt, 0
  %or.cond562 = select i1 %i.gs, i1 true, i1 %.not549
  br i1 %or.cond562, label %Bclear.exit647, label %.loopexit828

.loopexit828:                                     ; preds = %.lr.ph946, %bb.az, %.lr.ph958._crit_edge, %bb.aw, %._crit_edge953
  %.5414 = phi i32 [ %.2411, %.lr.ph958._crit_edge ], [ %.2411, %bb.az ], [ %.3412, %bb.aw ], [ %.3412, %._crit_edge953 ], [ %.3412, %.lr.ph946 ] ; 2 uses
  %.5 = phi ptr [ %.lcssa1282, %.lr.ph958._crit_edge ], [ %.lcssa1282, %bb.az ], [ %.lcssa922, %bb.aw ], [ %.lcssa922, %._crit_edge953 ], [ %i.dz, %.lr.ph946 ] ; 4 uses
  %i.gu = add i64 %6, 1
  %.51070 = ptrtoaddr ptr %.5 to i64              ; 2 uses
  %i.gv = sub i64 %i.gu, %.51070
  %scevgep1071 = getelementptr i8, ptr %.5, i64 %i.gv
  %i.gw = sub i64 %6, %.51070
  %scevgep1072 = getelementptr i8, ptr %.5, i64 %i.gw ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.loopexit828
  %.6 = phi ptr [ %.5, %.loopexit828 ], [ %i.gx, %bb.bb ] ; 2 uses
  %i.gx = getelementptr i8, ptr %.6, i64 -1       ; 4 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !11  ; 2 uses
  %i.gz = icmp eq i8 %i.gy, 57
  br i1 %i.gz, label %bb.bb, label %.loopexit.loopexit

bb.bb:                                            ; preds = %bb.ba
  %i.ha = icmp eq ptr %i.gx, %i.bp
  br i1 %i.ha, label %bb.bc, label %bb.ba, !llvm.loop !67

bb.bc:                                            ; preds = %bb.bb
  %i.hb = add i32 %.5414, 1
  store i8 48, ptr %scevgep1072, align 1, !tbaa !11
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.ba
  %i.hc = add i8 %i.gy, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bc
  %i.hd = phi i8 [ 49, %bb.bc ], [ %i.hc, %.loopexit.loopexit ]
  %.6969 = phi ptr [ %scevgep1071, %bb.bc ], [ %.6, %.loopexit.loopexit ]
  %i.he = phi ptr [ %scevgep1072, %bb.bc ], [ %i.gx, %.loopexit.loopexit ]
  %.6415 = phi i32 [ %i.hb, %bb.bc ], [ %.5414, %.loopexit.loopexit ]
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !11
  br label %Bclear.exit647

.lr.ph1373:                                       ; preds = %.lr.ph958.preheader, %.lr.ph958
  %.64469571372 = phi i32 [ %i.go, %.lr.ph958 ], [ 1, %.lr.ph958.preheader ]
  %i.hf = phi double [ %i.hm, %.lr.ph958 ], [ %i.gf, %.lr.ph958.preheader ]
  %i.hg = phi ptr [ %i.hp, %.lr.ph958 ], [ %i.gi, %.lr.ph958.preheader ] ; 2 uses
  %i.hh = fmul double %i.hf, 1.000000e+01         ; 2 uses
  %i.hi = fdiv double %i.hh, %i.fy
  %i.hj = fptosi double %i.hi to i32              ; 3 uses
  %i.hk = sitofp i32 %i.hj to double
  %i.hl = fneg double %i.hk
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.fy, double %i.hh) ; 3 uses
  %i.hn = trunc i32 %i.hj to i8
  %i.ho = add i8 %i.hn, 48
  %i.hp = getelementptr i8, ptr %i.hg, i64 1      ; 3 uses
  store i8 %i.ho, ptr %i.hg, align 1, !tbaa !11
  %i.hq = fcmp une double %i.hm, 0.000000e+00
  br i1 %i.hq, label %.lr.ph958, label %Bclear.exit647

bb.bd:                                            ; preds = %.loopexit829
  %i.hr = icmp eq i32 %.2406, 0
  br i1 %i.hr, label %.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hs = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 4 uses
  %.not.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i, label %.thread773.thread, label %i2b.exit

i2b.exit:                                         ; preds = %bb.be
  %i.ht = add i32 %i.fq, 1075
  %i.hu = sub i32 54, %i.ax
  %i.hv = select i1 %.not492.not, i32 %i.ht, i32 %i.hu ; 2 uses
  %i.hw = add i32 %i.hv, %.1391
  %i.hx = add i32 %i.hv, %.1397
  %i.hy = getelementptr i8, ptr %i.hs, i64 8
  %i.hz = getelementptr i8, ptr %i.hs, i64 24
  store i32 1, ptr %i.hz, align 8, !tbaa !7
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.hy, align 8, !tbaa !7
  br label %.thread

.thread:                                          ; preds = %.loopexit829.thread, %i2b.exit, %bb.bd
  %i.ia = phi i1 [ true, %bb.bd ], [ false, %i2b.exit ], [ true, %.loopexit829.thread ] ; 4 uses
  %.1386.not11611163 = phi i1 [ false, %bb.bd ], [ false, %i2b.exit ], [ true, %.loopexit829.thread ]
  %.1717 = phi ptr [ null, %bb.bd ], [ %i.hs, %i2b.exit ], [ null, %.loopexit829.thread ] ; 4 uses
  %.2398 = phi i32 [ %.1397, %bb.bd ], [ %i.hx, %i2b.exit ], [ %.1397, %.loopexit829.thread ] ; 2 uses
  %.2392 = phi i32 [ %.1391, %bb.bd ], [ %i.hw, %i2b.exit ], [ %.1391, %.loopexit829.thread ] ; 4 uses
  %i.ib = icmp sgt i32 %.1397, 0
  %i.ic = icmp sgt i32 %.2392, 0
  %or.cond18 = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %or.cond18, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.thread
  %i.id = tail call i32 @llvm.umin.i32(i32 %.1397, i32 %.2392) ; 3 uses
  %i.ie = sub i32 %.2398, %i.id
  %i.if = sub nsw i32 %.1397, %i.id
  %i.ig = sub nsw i32 %.2392, %i.id
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.thread
  %.0402 = phi i32 [ %i.if, %bb.bf ], [ %.1397, %.thread ] ; 3 uses
  %.3399 = phi i32 [ %i.ie, %bb.bf ], [ %.2398, %.thread ]
  %.3393 = phi i32 [ %i.ig, %bb.bf ], [ %.2392, %.thread ]
  %i.ih = icmp sgt i32 %.0408, 0
  br i1 %i.ih, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.ia, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ii = tail call fastcc ptr @pow5mult(ptr noundef %.1717, i32 noundef %.0408) ; 4 uses
  %.not505 = icmp eq ptr %i.ii, null
  br i1 %.not505, label %.thread773.thread, label %Bclear.exit596

Bclear.exit596:                                   ; preds = %bb.bi
  %i.ij = tail call fastcc ptr @mult(ptr noundef nonnull %i.ii, ptr noundef nonnull %i.n) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.n) #24
  %.not506 = icmp eq ptr %i.ij, null
  br i1 %.not506, label %Bclear.exit653, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ik = tail call fastcc ptr @pow5mult(ptr noundef nonnull %i.n, i32 noundef %.0408) ; 2 uses
  %.not504 = icmp eq ptr %i.ik, null
  br i1 %.not504, label %.thread773, label %bb.bk

bb.bk:                                            ; preds = %Bclear.exit596, %bb.bj, %bb.bg
  %.0734 = phi ptr [ %i.ik, %bb.bj ], [ %i.ij, %Bclear.exit596 ], [ %i.n, %bb.bg ] ; 4 uses
  %.2718 = phi ptr [ %.1717, %bb.bj ], [ %i.ii, %Bclear.exit596 ], [ %.1717, %bb.bg ] ; 11 uses
  %i.il = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 5 uses
  %.not.i.i597 = icmp eq ptr %i.il, null
  br i1 %.not.i.i597, label %.thread773, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.im = getelementptr i8, ptr %i.il, i64 8
  %i.in = getelementptr i8, ptr %i.il, i64 24
  store i32 1, ptr %i.in, align 8, !tbaa !7
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.im, align 8, !tbaa !7
  %i.io = icmp sgt i32 %.0389, 0
  br i1 %i.io, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ip = tail call fastcc ptr @pow5mult(ptr noundef nonnull %i.il, i32 noundef %.0389) ; 2 uses
  %.not508 = icmp eq ptr %i.ip, null
  br i1 %.not508, label %.thread773, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.1711 = phi ptr [ %i.ip, %bb.bm ], [ %i.il, %bb.bl ] ; 5 uses
  %i.iq = icmp sgt i32 %spec.select, 1
  %or.cond20.not511 = and i1 %i.iq, %i.ia
  %.sroa.090.0.extract.trunc133 = trunc i64 %.pre-phi to i32 ; 2 uses
  %i.ir = and i32 %.sroa.090.4.extract.trunc139, 1048575
  %i.is = or i32 %i.ir, %.sroa.090.0.extract.trunc133
  %i.it = icmp ne i32 %i.is, 0
  %or.cond563.not814 = or i1 %i.it, %or.cond20.not511
  %.not513 = icmp samesign ult i64 %.pre-phi, 9007199254740992
  %or.cond564 = or i1 %.not513, %or.cond563.not814 ; 2 uses
  %not.or.cond564 = xor i1 %or.cond564, true
  %i.iu = zext i1 %not.or.cond564 to i32          ; 2 uses
  %.4400 = add i32 %.3399, %i.iu                  ; 3 uses
  %.4394 = add i32 %.3393, %i.iu                  ; 4 uses
  %.not514 = icmp eq i32 %.0389, 0
  br i1 %.not514, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iv = getelementptr i8, ptr %.1711, i64 24
  %i.iw = getelementptr i8, ptr %.1711, i64 20
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !49
  %i.iy = add i32 %i.ix, -1
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr [4 x i8], ptr %i.iv, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !7
  %i.jc = tail call fastcc i32 @hi0bits(i32 noundef %i.jb)
  %i.jd = sub nuw nsw i32 32, %i.jc
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.je = phi i32 [ %i.jd, %bb.bo ], [ 1, %bb.bn ]
  %i.jf = add i32 %i.je, %.4394
  %i.jg = and i32 %i.jf, 31                       ; 2 uses
  %.not515 = icmp eq i32 %i.jg, 0
  %i.jh = sub nuw nsw i32 32, %i.jg
  %spec.select565 = select i1 %.not515, i32 0, i32 %i.jh ; 4 uses
  %i.ji = icmp samesign ugt i32 %spec.select565, 4
  br i1 %i.ji, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jj = add nsw i32 %spec.select565, -4         ; 3 uses
  %i.jk = add i32 %i.jj, %.4400
  %i.jl = add i32 %i.jj, %.0402
  %i.jm = add i32 %i.jj, %.4394
  br label %bb.bt

bb.br:                                            ; preds = %bb.bp
  %.not516 = icmp eq i32 %spec.select565, 4
  br i1 %.not516, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jn = add nuw nsw i32 %spec.select565, 28     ; 3 uses
  %i.jo = add i32 %i.jn, %.4400
  %i.jp = add i32 %i.jn, %.0402
  %i.jq = add i32 %i.jn, %.4394
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bq
  %.1403 = phi i32 [ %i.jl, %bb.bq ], [ %i.jp, %bb.bs ], [ %.0402, %bb.br ] ; 2 uses
  %.5401 = phi i32 [ %i.jk, %bb.bq ], [ %i.jo, %bb.bs ], [ %.4400, %bb.br ] ; 2 uses
  %.5395 = phi i32 [ %i.jm, %bb.bq ], [ %i.jq, %bb.bs ], [ %.4394, %bb.br ] ; 2 uses
  %i.jr = icmp sgt i32 %.5401, 0
  br i1 %i.jr, label %bb.bu, label %bb.bv
end_hunk_1
begin_hunk_2_@ruby_dtoa:bb.a
bb.do:                                            ; preds = %bb.dn
  %i.oe = getelementptr i8, ptr %i.nz, i64 24     ; 2 uses
  %i.of = sext i32 %i.ob to i64                   ; 2 uses
  %i.og = getelementptr [4 x i8], ptr %i.oe, i64 %i.of
  %i.oh = getelementptr i8, ptr %.2712, i64 24
  %i.oi = getelementptr [4 x i8], ptr %i.oh, i64 %i.of
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dr, %bb.do
  %.018.i628 = phi ptr [ %i.oi, %bb.do ], [ %i.ol, %bb.dr ]
  %.017.i629 = phi ptr [ %i.og, %bb.do ], [ %i.oj, %bb.dr ]
  %i.oj = getelementptr i8, ptr %.017.i629, i64 -4 ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !7  ; 2 uses
  %i.ol = getelementptr i8, ptr %.018.i628, i64 -4 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !7  ; 2 uses
  %.not23.i630 = icmp eq i32 %i.ok, %i.om
  br i1 %.not23.i630, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.on = icmp ult i32 %i.ok, %i.om
  br i1 %i.on, label %.thread764, label %cmp.exit632.thread759

bb.dr:                                            ; preds = %bb.dp
  %.not24.i631 = icmp ugt ptr %i.oj, %i.oe
  br i1 %.not24.i631, label %bb.dp, label %bb.ds

cmp.exit632:                                      ; preds = %bb.dn
  %i.oo = sub i32 %i.ob, %i.od
  %i.op = icmp sgt i32 %i.oo, 0
  br i1 %i.op, label %cmp.exit632.thread759, label %.thread764

bb.ds:                                            ; preds = %bb.dr
  %i.oq = and i32 %i.lz, 1
  %.not546 = icmp eq i32 %i.oq, 0
  br i1 %.not546, label %.thread764, label %cmp.exit632.thread759

cmp.exit632.thread759:                            ; preds = %bb.dq, %bb.ds, %cmp.exit632
  %i.or = add i32 %i.lz, 49
  %i.os = icmp eq i32 %i.ma, 57
  br i1 %i.os, label %bb.dv, label %.thread764

.thread764:                                       ; preds = %cmp.exit632, %bb.dq, %bb.dl, %cmp.exit632.thread759, %bb.ds, %bb.dk
  %.6740 = phi ptr [ %i.nz, %cmp.exit632.thread759 ], [ %i.nz, %bb.ds ], [ %.5739, %bb.dk ], [ %.5739, %bb.dl ], [ %i.nz, %bb.dq ], [ %i.nz, %cmp.exit632 ]
  %.1425 = phi i32 [ %i.or, %cmp.exit632.thread759 ], [ %i.ma, %bb.ds ], [ %i.ma, %bb.dk ], [ %i.ma, %bb.dl ], [ %i.ma, %bb.dq ], [ %i.ma, %cmp.exit632 ]
  %i.ot = trunc i32 %.1425 to i8
  %i.ou = getelementptr i8, ptr %.9, i64 1
  store i8 %i.ot, ptr %.9, align 1, !tbaa !11
  br label %.loopexit818

bb.dt:                                            ; preds = %bb.di
  %i.ov = icmp sgt i32 %i.nj, 0
  br i1 %i.ov, label %bb.du, label %bb.dx

bb.du:                                            ; preds = %bb.dt
  %i.ow = icmp eq i32 %i.ma, 57
  br i1 %i.ow, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du, %cmp.exit632.thread759, %bb.df
  %.7741 = phi ptr [ %.5739, %bb.df ], [ %i.nz, %cmp.exit632.thread759 ], [ %.5739, %bb.du ]
  %i.ox = getelementptr i8, ptr %.9, i64 1
  store i8 57, ptr %.9, align 1, !tbaa !11
  br label %cmp.exit639.thread771

bb.dw:                                            ; preds = %bb.du
  %i.oy = trunc i32 %i.lz to i8
  %i.oz = add i8 %i.oy, 49
  %i.pa = getelementptr i8, ptr %.9, i64 1
  store i8 %i.oz, ptr %.9, align 1, !tbaa !11
  br label %.loopexit818

bb.dx:                                            ; preds = %bb.dt
  %i.pb = trunc i32 %i.ma to i8
  %i.pc = getelementptr i8, ptr %.9, i64 1        ; 2 uses
  store i8 %i.pb, ptr %.9, align 1, !tbaa !11
  %i.pd = icmp eq i32 %.8448, %.5432
  br i1 %i.pd, label %.loopexit821, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pe = tail call fastcc ptr @multadd(ptr noundef %.5739, i32 noundef 10, i32 noundef 0) ; 5 uses
  %.not533 = icmp eq ptr %i.pe, null
  br i1 %.not533, label %Bclear.exit649, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.pf = icmp eq ptr %.0728, %.8
  br i1 %i.pf, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.pg = tail call fastcc ptr @multadd(ptr noundef %.8, i32 noundef 10, i32 noundef 0) ; 3 uses
  %.not536 = icmp eq ptr %i.pg, null
  br i1 %.not536, label %Bclear.exit649, label %bb.ed

bb.eb:                                            ; preds = %bb.dz
  %i.ph = tail call fastcc ptr @multadd(ptr noundef %.0728, i32 noundef 10, i32 noundef 0) ; 3 uses
  %.not534 = icmp eq ptr %i.ph, null
  br i1 %.not534, label %Bclear.exit649, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.pi = tail call fastcc ptr @multadd(ptr noundef %.8, i32 noundef 10, i32 noundef 0) ; 2 uses
  %.not535 = icmp eq ptr %i.pi, null
  br i1 %.not535, label %Bclear.exit649, label %bb.ed

bb.ed:                                            ; preds = %bb.ea, %bb.ec
  %.1729 = phi ptr [ %i.pg, %bb.ea ], [ %i.ph, %bb.ec ]
  %.9723 = phi ptr [ %i.pg, %bb.ea ], [ %i.pi, %bb.ec ]
  %i.pj = add i32 %.8448, 1
  br label %bb.cu

.preheader819:                                    ; preds = %.preheader819.preheader, %bb.eg
  %.8742 = phi ptr [ %i.pt, %bb.eg ], [ %.2736, %.preheader819.preheader ] ; 6 uses
  %.9449 = phi i32 [ %i.pu, %bb.eg ], [ 1, %.preheader819.preheader ] ; 2 uses
  %.10 = phi ptr [ %i.pn, %bb.eg ], [ %i.bp, %.preheader819.preheader ] ; 2 uses
  %i.pk = tail call fastcc i32 @quorem(ptr noundef %.8742, ptr noundef %.2712)
  %i.pl = add i32 %i.pk, 48                       ; 2 uses
  %i.pm = trunc i32 %i.pl to i8
  %i.pn = getelementptr i8, ptr %.10, i64 1       ; 3 uses
  store i8 %i.pm, ptr %.10, align 1, !tbaa !11
  %i.po = getelementptr i8, ptr %.8742, i64 24
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !7
  %.not522 = icmp eq i32 %i.pp, 0
  br i1 %.not522, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.preheader819
  %i.pq = getelementptr i8, ptr %.8742, i64 20
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !49
  %i.ps = icmp slt i32 %i.pr, 2
  br i1 %i.ps, label %.loopexit818, label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %.preheader819
  %exitcond1067.not = icmp eq i32 %.9449, %smax1066
  br i1 %exitcond1067.not, label %.loopexit821, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pt = tail call fastcc ptr @multadd(ptr noundef nonnull %.8742, i32 noundef 10, i32 noundef 0) ; 2 uses
  %.not524 = icmp eq ptr %i.pt, null
  %i.pu = add nuw i32 %.9449, 1
  br i1 %.not524, label %Bclear.exit649, label %.preheader819

.loopexit821:                                     ; preds = %bb.dx, %bb.ef
  %.9743 = phi ptr [ %.8742, %bb.ef ], [ %.5739, %bb.dx ]
  %.2730 = phi ptr [ null, %bb.ef ], [ %.0728, %bb.dx ] ; 5 uses
  %.10724 = phi ptr [ %.3719, %bb.ef ], [ %.8, %bb.dx ] ; 5 uses
  %.2426 = phi i32 [ %i.pl, %bb.ef ], [ %i.ma, %bb.dx ]
  %.11 = phi ptr [ %i.pn, %bb.ef ], [ %i.pc, %bb.dx ] ; 4 uses
  %i.pv = tail call fastcc ptr @lshift(ptr noundef %.9743, i32 noundef 1) ; 7 uses
  %.not537 = icmp eq ptr %i.pv, null
  br i1 %.not537, label %Bclear.exit649, label %bb.eh

bb.eh:                                            ; preds = %.loopexit821
  %i.pw = getelementptr i8, ptr %i.pv, i64 20
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !49 ; 3 uses
  %i.py = getelementptr i8, ptr %.2712, i64 20
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !49 ; 2 uses
  %.not.i633 = icmp eq i32 %i.px, %i.pz
  br i1 %.not.i633, label %bb.ei, label %cmp.exit639

bb.ei:                                            ; preds = %bb.eh
  %i.qa = getelementptr i8, ptr %i.pv, i64 24     ; 2 uses
  %i.qb = sext i32 %i.px to i64                   ; 2 uses
  %i.qc = getelementptr [4 x i8], ptr %i.qa, i64 %i.qb
  %i.qd = getelementptr i8, ptr %.2712, i64 24
  %i.qe = getelementptr [4 x i8], ptr %i.qd, i64 %i.qb
  br label %bb.ej

bb.ej:                                            ; preds = %bb.el, %bb.ei
  %.018.i635 = phi ptr [ %i.qe, %bb.ei ], [ %i.qh, %bb.el ]
  %.017.i636 = phi ptr [ %i.qc, %bb.ei ], [ %i.qf, %bb.el ]
  %i.qf = getelementptr i8, ptr %.017.i636, i64 -4 ; 3 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !7  ; 2 uses
  %i.qh = getelementptr i8, ptr %.018.i635, i64 -4 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !7  ; 2 uses
  %.not23.i637 = icmp eq i32 %i.qg, %i.qi
  br i1 %.not23.i637, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.qj = icmp ult i32 %i.qg, %i.qi
  br i1 %i.qj, label %.preheader817.preheader, label %cmp.exit639.thread771

bb.el:                                            ; preds = %bb.ej
  %.not24.i638 = icmp ugt ptr %i.qf, %i.qa
  br i1 %.not24.i638, label %bb.ej, label %cmp.exit639.thread

cmp.exit639:                                      ; preds = %bb.eh
  %i.qk = sub i32 %i.px, %i.pz
  %i.ql = icmp sgt i32 %i.qk, 0
  br i1 %i.ql, label %cmp.exit639.thread771, label %.preheader817.preheader

cmp.exit639.thread:                               ; preds = %bb.el
  %i.qm = and i32 %.2426, 1
  %.not538 = icmp eq i32 %i.qm, 0
  br i1 %.not538, label %.preheader817.preheader, label %cmp.exit639.thread771

.preheader817.preheader:                          ; preds = %bb.ek, %cmp.exit639, %cmp.exit639.thread
  br label %.preheader817

cmp.exit639.thread771:                            ; preds = %bb.ek, %cmp.exit639.thread, %cmp.exit639, %bb.dv
  %.10744 = phi ptr [ %i.pv, %cmp.exit639 ], [ %i.pv, %cmp.exit639.thread ], [ %.7741, %bb.dv ], [ %i.pv, %bb.ek ] ; 3 uses
  %.3731 = phi ptr [ %.2730, %cmp.exit639 ], [ %.2730, %cmp.exit639.thread ], [ %.0728, %bb.dv ], [ %.2730, %bb.ek ] ; 3 uses
  %.11725 = phi ptr [ %.10724, %cmp.exit639 ], [ %.10724, %cmp.exit639.thread ], [ %.8, %bb.dv ], [ %.10724, %bb.ek ] ; 3 uses
  %.12 = phi ptr [ %.11, %cmp.exit639 ], [ %.11, %cmp.exit639.thread ], [ %i.ox, %bb.dv ], [ %.11, %bb.ek ] ; 4 uses
  %i.qn = add i64 %6, 1
  %.121068 = ptrtoaddr ptr %.12 to i64            ; 2 uses
  %i.qo = sub i64 %i.qn, %.121068
  %scevgep = getelementptr i8, ptr %.12, i64 %i.qo
  %i.qp = sub i64 %6, %.121068
  %scevgep1069 = getelementptr i8, ptr %.12, i64 %i.qp
  br label %bb.em

bb.em:                                            ; preds = %bb.en, %cmp.exit639.thread771
  %.13 = phi ptr [ %.12, %cmp.exit639.thread771 ], [ %i.qq, %bb.en ] ; 3 uses
  %i.qq = getelementptr i8, ptr %.13, i64 -1      ; 4 uses
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !11  ; 3 uses
  %i.qs = icmp eq i8 %i.qr, 57
  br i1 %i.qs, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.qt = icmp eq ptr %i.qq, %i.bp
  br i1 %i.qt, label %bb.eo, label %bb.em, !llvm.loop !68

bb.eo:                                            ; preds = %bb.en
  %i.qu = add i32 %.7416, 1
  store i8 49, ptr %scevgep1069, align 1, !tbaa !11
  br label %.loopexit818

bb.ep:                                            ; preds = %bb.em
  %i.qv = and i8 %i.qr, 1
  %.not548 = icmp eq i8 %i.qv, 0
  %or.cond571 = and i1 %.1386.not11611163, %.not548
  br i1 %or.cond571, label %.loopexit818, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qw = add i8 %i.qr, 1
  store i8 %i.qw, ptr %i.qq, align 1, !tbaa !11
  br label %.loopexit818

.preheader817:                                    ; preds = %.preheader817.preheader, %.preheader817
  %.14 = phi ptr [ %i.qx, %.preheader817 ], [ %.11, %.preheader817.preheader ] ; 2 uses
  %i.qx = getelementptr i8, ptr %.14, i64 -1      ; 2 uses
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !11
  %i.qz = icmp eq i8 %i.qy, 48
  br i1 %i.qz, label %.preheader817, label %.loopexit818, !llvm.loop !69

.loopexit818:                                     ; preds = %bb.ee, %.preheader817, %bb.eq, %bb.ep, %bb.eo, %bb.dw, %.thread764, %bb.dg, %cmp.exit607.thread754, %cmp.exit607.thread
  %.11745 = phi ptr [ %.4738, %cmp.exit607.thread754 ], [ %.3737, %cmp.exit607.thread ], [ %i.pv, %.preheader817 ], [ %.10744, %bb.eo ], [ %.10744, %bb.ep ], [ %.10744, %bb.eq ], [ %.5739, %bb.dw ], [ %.5739, %bb.dg ], [ %.6740, %.thread764 ], [ %.8742, %bb.ee ] ; 2 uses
  %.4732 = phi ptr [ null, %cmp.exit607.thread754 ], [ null, %cmp.exit607.thread ], [ %.2730, %.preheader817 ], [ %.3731, %bb.eo ], [ %.3731, %bb.ep ], [ %.3731, %bb.eq ], [ %.0728, %bb.dw ], [ %.0728, %bb.dg ], [ %.0728, %.thread764 ], [ null, %bb.ee ] ; 3 uses
  %.12726 = phi ptr [ %.5721, %cmp.exit607.thread754 ], [ %.4720, %cmp.exit607.thread ], [ %.10724, %.preheader817 ], [ %.11725, %bb.eo ], [ %.11725, %bb.ep ], [ %.11725, %bb.eq ], [ %.8, %bb.dw ], [ %.8, %bb.dg ], [ %.8, %.thread764 ], [ %.3719, %bb.ee ] ; 3 uses
  %.5714 = phi ptr [ %.4713, %cmp.exit607.thread754 ], [ %.3, %cmp.exit607.thread ], [ %.2712, %.preheader817 ], [ %.2712, %bb.eo ], [ %.2712, %bb.ep ], [ %.2712, %bb.eq ], [ %.2712, %bb.dw ], [ %.2712, %bb.dg ], [ %.2712, %.thread764 ], [ %.2712, %bb.ee ] ; 2 uses
  %.9418 = phi i32 [ %i.lj, %cmp.exit607.thread754 ], [ %i.lh, %cmp.exit607.thread ], [ %.7416, %.preheader817 ], [ %i.qu, %bb.eo ], [ %.7416, %bb.ep ], [ %.7416, %bb.eq ], [ %.7416, %bb.dw ], [ %.7416, %bb.dg ], [ %.7416, %.thread764 ], [ %.7416, %bb.ee ] ; 2 uses
  %.16 = phi ptr [ %i.li, %cmp.exit607.thread754 ], [ %i.bp, %cmp.exit607.thread ], [ %.14, %.preheader817 ], [ %scevgep, %bb.eo ], [ %.13, %bb.ep ], [ %.13, %bb.eq ], [ %i.pa, %bb.dw ], [ %i.nq, %bb.dg ], [ %i.ou, %.thread764 ], [ %i.pn, %bb.ee ] ; 2 uses
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
  %.17 = phi ptr [ %.16, %Bclear.exit641 ], [ %.16, %Bclear.exit645 ], [ %.6969, %.loopexit ], [ %.lcssa1282, %bb.az ], [ %i.gi, %.preheader ], [ %.2, %.preheader825 ], [ %i.dp, %bb.ar ], [ %i.hp, %.lr.ph1373 ], [ %i.el, %bb.at ] ; 2 uses
  tail call void @free(ptr noundef nonnull %.12746) #24
  store i8 0, ptr %.17, align 1, !tbaa !11
  %i.ra = add i32 %.10419, 1
  store i32 %i.ra, ptr %3, align 4, !tbaa !7
  %.not553 = icmp eq ptr %5, null
  br i1 %.not553, label %nrv_alloc.exit, label %bb.et

bb.et:                                            ; preds = %Bclear.exit647
  store ptr %.17, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

Bclear.exit649:                                   ; preds = %cmp.exit616, %bb.dy, %bb.ea, %bb.eb, %bb.ec, %bb.eg, %cmp.exit.thread750, %bb.ce, %bb.co, %bb.cq, %ruby_nonempty_memcpy.exit, %bb.dm, %.loopexit821, %bb.bu
  %.6715791 = phi ptr [ %.1711, %bb.bu ], [ %.2712, %ruby_nonempty_memcpy.exit ], [ %.2712, %bb.cq ], [ %.2712, %bb.co ], [ %.2712, %bb.ce ], [ %.2712, %bb.eg ], [ %.2712, %cmp.exit.thread750 ], [ %.2712, %.loopexit821 ], [ %.2712, %bb.dm ], [ %.2712, %bb.ec ], [ %.2712, %bb.eb ], [ %.2712, %bb.ea ], [ %.2712, %bb.dy ], [ %.2712, %cmp.exit616 ]
  %.13727790 = phi ptr [ %.2718, %bb.bu ], [ null, %ruby_nonempty_memcpy.exit ], [ null, %bb.cq ], [ null, %bb.co ], [ null, %bb.ce ], [ %.3719, %bb.eg ], [ %.2718, %cmp.exit.thread750 ], [ %.10724, %.loopexit821 ], [ %.8, %bb.dm ], [ %.8, %bb.dy ], [ null, %bb.ea ], [ %.8, %bb.eb ], [ null, %bb.ec ], [ %.8, %cmp.exit616 ]
  %.5733789 = phi ptr [ null, %bb.bu ], [ %.6722, %ruby_nonempty_memcpy.exit ], [ %.6722, %bb.cq ], [ null, %bb.co ], [ null, %bb.ce ], [ null, %bb.eg ], [ null, %cmp.exit.thread750 ], [ %.2730, %.loopexit821 ], [ %.0728, %bb.dm ], [ %.0728, %bb.dy ], [ null, %bb.ea ], [ null, %bb.eb ], [ %i.ph, %bb.ec ], [ %.0728, %cmp.exit616 ]
  %.13747788 = phi ptr [ null, %bb.bu ], [ %.2736, %ruby_nonempty_memcpy.exit ], [ %.2736, %bb.cq ], [ %.2736, %bb.co ], [ %i.km, %bb.ce ], [ null, %bb.eg ], [ null, %cmp.exit.thread750 ], [ null, %.loopexit821 ], [ null, %bb.dm ], [ null, %bb.dy ], [ %i.pe, %bb.ea ], [ %i.pe, %bb.eb ], [ %i.pe, %bb.ec ], [ %.5739, %cmp.exit616 ]
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
  %.13727781802813 = phi ptr [ %.13727781, %bb.eu ], [ %.13727781, %Bclear.exit651 ], [ %i.ii, %Bclear.exit596 ]
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
define internal fastcc noundef ptr @nrv_alloc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef range(i64 2, 10) %2) unnamed_addr #17 {
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
end_hunk_2
