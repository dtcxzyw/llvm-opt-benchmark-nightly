inline.NumInlined: 520
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@dasm_setupglobal:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @dasm_growpc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50   ; 5 uses
  %i.d = zext i32 %1 to i64
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !45
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %1, 16777217
  br i1 %i.g, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 16777216, ptr %i.h, align 4, !tbaa !35
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.028 = phi i64 [ %spec.store.select, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  %i.i = icmp ult i64 %.028, %i.e
  %i.j = shl nuw nsw i64 %.028, 1
  br i1 %i.i, label %bb.d, label %bb.e, !llvm.loop !51

bb.e:                                             ; preds = %bb.d
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.028, i64 67108864) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.m = tail call ptr @_erealloc(ptr noundef %i.l, i64 noundef %spec.select) #24 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !45
  store i64 %spec.select, ptr %i.b, align 8, !tbaa !50
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.e
  %i.n = phi i64 [ %i.c, %..critedge_crit_edge ], [ %spec.select, %bb.e ]
  %i.o = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.m, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.c
  %i.q = sub i64 %i.n, %i.c
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @dasm_setup(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 0, ptr %i.c, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.d, ptr %i.e, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 0, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.m, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !41   ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %i.o, 1
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = shl i32 %i.r, 24                         ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i32 %i.s, ptr %i.u, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sext i32 %i.s to i64
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i32 0, ptr %i.ac, align 8, !tbaa !56
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ae = shl i32 %i.ad, 24                       ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv.next ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sext i32 %i.ae to i64
  %i.al = shl nsw i64 %i.ak, 2
  %i.am = sub i64 %i.aj, %i.al
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr %i.af, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 0, ptr %i.ao, align 8, !tbaa !56
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !57

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.ap = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.aq = shl i32 %i.ap, 24                       ; 2 uses
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv.epil.init ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i32 %i.aq, ptr %i.as, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sext i32 %i.aq to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %i.ay = sub i64 %i.av, %i.ax
  %i.az = inttoptr i64 %i.ay to ptr
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i32 0, ptr %i.ba, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @dasm_put(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58
  %.not = icmp slt i32 %i.i, %i.m
  br i1 %.not, label %._crit_edge239, label %bb.b

._crit_edge239:                                   ; preds = %bb.a
  %.pre240 = load ptr, ptr %i.g, align 8, !tbaa !55
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !59   ; 5 uses
  %i.p = add nuw i64 %i.o, 200
  %i.q = icmp ult i64 %i.o, -200
  br i1 %i.q, label %bb.c, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !42
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.o, 67108665
  br i1 %i.r, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 16777216, ptr %i.s, align 4, !tbaa !35
  br label %bb.bc

bb.d:                                             ; preds = %bb.c
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.o, i64 16)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0176 = phi i64 [ %spec.store.select, %bb.d ], [ %i.u, %bb.e ] ; 3 uses
  %i.t = icmp ult i64 %.0176, %i.p
  %i.u = shl nuw nsw i64 %.0176, 1
  br i1 %i.t, label %bb.e, label %bb.f, !llvm.loop !60

bb.f:                                             ; preds = %bb.e
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0176, i64 67108864) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.x = tail call ptr @_erealloc(ptr noundef %i.w, i64 noundef %spec.select) #24 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !42
  store i64 %spec.select, ptr %i.n, align 8, !tbaa !59
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.f
  %i.y = phi i64 [ %i.o, %..critedge_crit_edge ], [ %spec.select, %bb.f ]
  %i.z = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.x, %bb.f ]
  %i.aa = and i32 %i.i, -16777216                 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac ; 2 uses
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !55
  %i.ae = lshr i64 %i.y, 2
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.aa, -25
  %i.ah = add i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.l, align 4, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge239, %.critedge
  %i.ai = phi ptr [ %.pre240, %._crit_edge239 ], [ %i.ad, %.critedge ] ; 7 uses
  %i.aj = add nsw i32 %i.i, 1
  %i.ak = sext i32 %i.i to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  store i32 %1, ptr %i.al, align 4, !tbaa !61
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  br label %.thread199

.thread199:                                       ; preds = %.thread199.backedge, %bb.g
  %.0178 = phi i32 [ -1, %bb.g ], [ %.0178.be, %.thread199.backedge ] ; 10 uses
  %.0166 = phi i32 [ %i.k, %bb.g ], [ %.0166.be, %.thread199.backedge ]
  %.0161 = phi i32 [ %i.aj, %bb.g ], [ %.0161.be, %.thread199.backedge ] ; 17 uses
  %.0 = phi ptr [ %i.e, %bb.g ], [ %.0.be, %.thread199.backedge ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.thread199
  %.1167 = phi i32 [ %.0166, %.thread199 ], [ %i.as, %bb.h ] ; 15 uses
  %.0155.in.in = phi ptr [ %.0, %.thread199 ], [ %.1, %bb.h ] ; 12 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.0155.in.in, i64 1 ; 14 uses
  %.0155.in = load i8, ptr %.0155.in.in, align 1, !tbaa !12 ; 5 uses
  %i.ar = icmp ult i8 %.0155.in, -23
  %i.as = add nsw i32 %.1167, 1                   ; 3 uses
  br i1 %i.ar, label %bb.h, label %bb.i, !llvm.loop !62

bb.i:                                             ; preds = %bb.h
  %i.at = icmp samesign ult i8 %.0155.in, -12
  br i1 %i.at, label %bb.j, label %bb.ae

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %2, align 16              ; 3 uses
  %i.av = icmp ult i32 %i.au, 41
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.ao, align 16
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.ax
  %i.az = add nuw nsw i32 %i.au, 8
  store i32 %i.az, ptr %2, align 16
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.an, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = phi ptr [ %i.ay, %bb.k ], [ %i.ba, %bb.l ]
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !61 ; 11 uses
  %i.be = add nsw i32 %.0161, 1                   ; 9 uses
  %i.bf = sext i32 %.0161 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bf ; 5 uses
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !61
  switch i8 %.0155.in, label %default.unreachable251 [
    i8 -23, label %bb.n
    i8 -17, label %bb.r
    i8 -13, label %bb.s
    i8 -19, label %bb.s
    i8 -22, label %.thread198
    i8 -21, label %.thread198
    i8 -18, label %bb.t
    i8 -20, label %bb.u
    i8 -15, label %bb.v
    i8 -14, label %bb.w
    i8 -16, label %bb.x
  ]

bb.n:                                             ; preds = %bb.m
  %i.bh = icmp eq i32 %i.bd, 0
  br i1 %i.bh, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bi = icmp slt i32 %.0178, 0
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds i8, ptr %.0155.in.in, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !12
  %i.bl = zext i8 %i.bk to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1179 = phi i32 [ %i.bl, %bb.p ], [ %.0178, %bb.o ]
  %i.bm = and i32 %.1179, 7
  %.not194 = icmp eq i32 %i.bm, 5
  br i1 %.not194, label %.thread198, label %.thread199.backedge

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.bn = add i32 %i.bd, 128
  %i.bo = icmp ult i32 %i.bn, 256
  br i1 %i.bo, label %.thread198, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m, %bb.m
  %i.bp = add nsw i32 %.1167, 4
  br label %.thread199.backedge

.thread198:                                       ; preds = %bb.q, %bb.t, %bb.m, %bb.m, %bb.r
  br label %.thread199.backedge

bb.t:                                             ; preds = %bb.m
  %i.bq = add i32 %i.bd, 128
  %i.br = icmp ult i32 %i.bq, 256
  br i1 %i.br, label %.thread198, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %i.bs = add nsw i32 %.1167, 2
  br label %.thread199.backedge

bb.v:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %.0155.in.in, i64 2
  %i.bu = add nsw i32 %i.bd, %.1167
  br label %.thread199.backedge

bb.w:                                             ; preds = %bb.m
  %i.bv = getelementptr i8, ptr %i.bg, i64 -4
  store i32 -1073741824, ptr %i.bv, align 4, !tbaa !61
  br label %.thread199.backedge

bb.x:                                             ; preds = %bb.m
  %i.bw = load i8, ptr %.1, align 1, !tbaa !12    ; 3 uses
  %i.bx = icmp ult i8 %i.bw, 64
  br i1 %i.bx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %.0155.in.in, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !12
  %i.ca = icmp eq i8 %i.bz, -23
  %spec.select195 = select i1 %i.ca, i32 %i.bd, i32 %.0178
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2180 = phi i32 [ %.0178, %bb.x ], [ %spec.select195, %bb.y ] ; 3 uses
  %i.cb = icmp ult i8 %i.bw, 32
  %i.cc = and i32 %i.bd, 7
  %i.cd = icmp eq i32 %i.cc, 4
  %or.cond197 = select i1 %i.cb, i1 %i.cd, i1 false
  %i.ce = zext i1 %or.cond197 to i32
  %.2168 = add nsw i32 %.1167, %i.ce              ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0155.in.in, i64 2 ; 3 uses
  %i.cg = lshr i8 %i.bw, 3
  %i.ch = and i8 %i.cg, 3
  switch i8 %i.ch, label %default.unreachable251 [
    i8 3, label %bb.aa
    i8 2, label %bb.ab
    i8 1, label %bb.ac
    i8 0, label %.thread199.backedge
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ci = getelementptr i8, ptr %i.bg, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !61
  %i.ck = or i32 %i.cj, %i.bd
end_hunk_0
