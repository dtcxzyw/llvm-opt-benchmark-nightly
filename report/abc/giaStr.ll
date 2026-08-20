inline.NumInlined: 638
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Str_MuxFindPathEdge_rec:bb.a
  %i.n = load i32, ptr %i.m, align 4, !tbaa !150  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.p = load i32, ptr %i.o, align 4, !tbaa !150  ; 2 uses
  %i.q = tail call noundef i32 @llvm.smax.i32(i32 %i.n, i32 %i.p) ; 2 uses
  %i.r = tail call noundef i32 @llvm.smax.i32(i32 %i.l, i32 %i.q) ; 2 uses
  %.not22 = icmp slt i32 %i.l, %i.q
  br i1 %.not22, label %bb.c, label %Str_MuxFindPath_rec.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %Str_MuxFindPath_rec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %i.p, %i.r
  br i1 %i.t, label %Str_MuxFindPath_rec.exit.thread, label %Str_MuxFindPath_rec.exit.thread12

Str_MuxFindPath_rec.exit:                         ; preds = %bb.c, %bb.b
  %.0.i16.lcssa.wide = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.u = tail call i32 @Str_MuxFindPathEdge_rec(ptr noundef nonnull %i.j, i32 noundef %.0.i16.lcssa.wide, ptr noundef %2, ptr noundef %3), !inline_history !163
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %Str_MuxFindPath_rec.exit.thread, label %Str_MuxFindPath_rec.exit.Str_MuxFindPath_rec.exit.thread12_crit_edge

Str_MuxFindPath_rec.exit.Str_MuxFindPath_rec.exit.thread12_crit_edge: ; preds = %Str_MuxFindPath_rec.exit
  %.pre = load i32, ptr %0, align 4, !tbaa !151
  br label %Str_MuxFindPath_rec.exit.thread12

Str_MuxFindPath_rec.exit.thread12:                ; preds = %Str_MuxFindPath_rec.exit.Str_MuxFindPath_rec.exit.thread12_crit_edge, %bb.d, %bb.a
  %i.v = phi i32 [ %.pre, %Str_MuxFindPath_rec.exit.Str_MuxFindPath_rec.exit.thread12_crit_edge ], [ %.pre19, %bb.d ], [ %.pre19, %bb.a ]
  %i.w = shl nsw i32 %i.v, 1
  %i.x = add nsw i32 %i.w, %1
  %i.y = load i32, ptr %3, align 4, !tbaa !40     ; 2 uses
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %3, align 4, !tbaa !40
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa
  store i32 %i.x, ptr %i.ab, align 4, !tbaa !40
  br label %Str_MuxFindPath_rec.exit.thread

Str_MuxFindPath_rec.exit.thread:                  ; preds = %bb.d, %Str_MuxFindPath_rec.exit, %Str_MuxFindPath_rec.exit.thread12
  %.0 = phi i32 [ 1, %Str_MuxFindPath_rec.exit.thread12 ], [ 0, %Str_MuxFindPath_rec.exit ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -1, 2) i32 @Str_MuxFindPath_rec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 4, !tbaa !150  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 4, !tbaa !150  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 4, !tbaa !150  ; 2 uses
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.d, i32 %i.f) ; 2 uses
  %i.h = tail call noundef i32 @llvm.smax.i32(i32 %i.b, i32 %i.g) ; 2 uses
  %.not = icmp slt i32 %i.b, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.016.lcssa.wide = phi i32 [ 0, %bb.a ], [ 1, %bb.c ]
  %i.i = tail call i32 @Str_MuxFindPathEdge_rec(ptr noundef nonnull %0, i32 noundef %.016.lcssa.wide, ptr noundef %1, ptr noundef %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %i.d, %i.h
  br i1 %i.j, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ne i32 %i.f, %i.h
  %. = sext i1 %i.k to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.014 = phi i32 [ %i.i, %bb.b ], [ %., %bb.d ]
  ret i32 %.014
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @Str_MuxFindBranching(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !148  ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %.loopexit, label %.sink.split

.sink.split:                                      ; preds = %bb.a, %.sink.split.backedge
  %.120.sink25 = phi ptr [ %.120.sink25.be, %.sink.split.backedge ], [ %0, %bb.a ] ; 2 uses
  %.sink22 = phi i32 [ %.sink22.be, %.sink.split.backedge ], [ %i.d, %bb.a ]
  %i.f = load i32, ptr %.120.sink25, align 4, !tbaa !151
  %i.g = sext i32 %i.f to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [64 x i8], ptr %.120.sink25, i64 %i.h
  %i.j = zext nneg i32 %.sink22 to i64
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.e
  %.0 = phi ptr [ %i.x, %bb.e ], [ %i.k, %.sink.split ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !148  ; 2 uses
  %i.n = icmp slt i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !148  ; 3 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %.loopexit, label %.sink.split.backedge

.sink.split.backedge:                             ; preds = %bb.e, %bb.c
  %.120.sink25.be = phi ptr [ %.0, %bb.c ], [ %i.x, %bb.e ]
  %.sink22.be = phi i32 [ %i.p, %bb.c ], [ %.pre, %bb.e ]
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.r = icmp sgt i32 %i.p, 0
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %.0, align 4, !tbaa !151
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [64 x i8], ptr %.0, i64 %i.u
  %i.w = zext nneg i32 %i.m to i64
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !148 ; 2 uses
  %i.y = icmp sgt i32 %.pre, 0
  br i1 %i.y, label %.sink.split.backedge, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.a
  %.013 = phi ptr [ null, %bb.a ], [ %.0, %bb.d ], [ null, %bb.c ]
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Str_MuxTryOnce(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10000 x i32], align 16           ; 7 uses
  %7 = alloca [3 x %struct.Str_Mux_t_], align 16  ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.c = tail call i32 @Str_MuxDelayEdge_rec(ptr noundef %3, i32 noundef %4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4, !tbaa !40
  %i.d = call i32 @Str_MuxFindPathEdge_rec(ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %6, 0                       ; 4 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !40  ; 5 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %3, align 4, !tbaa !151
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.f, i32 noundef %.pre) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = icmp sgt i32 %.pre, 0
  br i1 %i.h, label %.lr.ph70, label %._crit_edge71.thread

.lr.ph70:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = add nsw i32 %.pre, -2
  %i.m = zext nneg i32 %.pre to i64
  %wide.trip.count84 = zext nneg i32 %.pre to i64 ; 2 uses
  %invariant.op = add nsw i64 %i.m, -2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph70, %._crit_edge
  %indvars.iv81 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next82.pre-phi, %._crit_edge ] ; 5 uses
  %indvars.iv77 = phi i32 [ %i.l, %.lr.ph70 ], [ %indvars.iv.next78, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph70 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.068 = phi i32 [ 0, %.lr.ph70 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.05067 = phi i32 [ -1, %.lr.ph70 ], [ %.151.lcssa, %._crit_edge ] ; 2 uses
  %.05465 = phi i32 [ %i.c, %.lr.ph70 ], [ %.155.lcssa, %._crit_edge ] ; 2 uses
  %i.n = icmp slt i64 %indvars.iv81, %invariant.op
  br i1 %i.n, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.e
  %.pre86 = add nuw nsw i64 %indvars.iv81, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv81 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40   ; 2 uses
  %i.r = ashr i32 %i.q, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [64 x i8], ptr %2, i64 %i.s ; 3 uses
  %i.u = load i32, ptr %i.o, align 4, !tbaa !40   ; 2 uses
  %i.v = ashr i32 %i.u, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [64 x i8], ptr %2, i64 %i.w ; 5 uses
  %i.y = add nuw nsw i64 %indvars.iv81, 1         ; 2 uses
  %i.z = and i32 %i.q, 1
  %i.aa = and i32 %i.u, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = xor i32 %i.aa, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ai = zext nneg i32 %i.z to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv81 to i32  ; 2 uses
  %i.ao = shl i32 %i.an, 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph, %bb.k
  %indvars.iv75 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next76, %bb.k ] ; 5 uses
  %.15161 = phi i32 [ %.05067, %.lr.ph ], [ %.2, %bb.k ] ; 2 uses
  %.15559 = phi i32 [ %.05465, %.lr.ph ], [ %.256, %bb.k ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv75
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !40 ; 2 uses
  %i.ar = ashr i32 %i.aq, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [64 x i8], ptr %2, i64 %i.as ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %i.at, i64 64, i1 false), !tbaa.struct !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %i.t, i64 64, i1 false), !tbaa.struct !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(64) %i.x, i64 64, i1 false), !tbaa.struct !159
  %i.au = and i32 %i.aq, 1
  %i.av = load i32, ptr %i.ae, align 4, !tbaa !148
  %i.aw = load i32, ptr %i.af, align 4, !tbaa !153
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = zext nneg i32 %i.au to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !148
  store i32 %i.ba, ptr %i.ae, align 4, !tbaa !148
  store i32 0, ptr %i.af, align 4, !tbaa !153
  %i.bb = load i32, ptr %i.x, align 4, !tbaa !151
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !148
  store i32 %i.av, ptr %i.aj, align 4, !tbaa !148
  %i.bc = load i32, ptr %i.ak, align 4, !tbaa !153
  %i.bd = xor i32 %i.bc, %i.aw
  store i32 %i.bd, ptr %i.ak, align 4, !tbaa !153
  %i.be = load <2 x i32>, ptr %i.ag, align 4, !tbaa !40
  store <2 x i32> %i.be, ptr %i.al, align 4, !tbaa !40
  %8 = load i32, ptr %i.k, align 4, !tbaa !154
  %.promoted.i = load i32, ptr %i.am, align 4, !tbaa !150
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.i
  %indvars.iv119.i = phi i64 [ %i.y, %._crit_edge.i ], [ %indvars.iv.next120.i, %bb.f ] ; 2 uses
  %i.bf = phi i32 [ %.promoted.i, %._crit_edge.i ], [ %i.by, %bb.f ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv119.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !40
  %i.bi = ashr i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [64 x i8], ptr %2, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !150 ; 2 uses
  %i.bn = ashr i32 %i.bf, 4                       ; 3 uses
  %i.bo = ashr i32 %i.bm, 4                       ; 3 uses
  %i.bp = tail call noundef i32 @llvm.smax.i32(i32 %i.bn, i32 %i.bo)
  %.not.i.i = icmp slt i32 %i.bn, %i.bo
  %i.bq = and i32 %i.bf, 15
  %i.br = select i1 %.not.i.i, i32 1, i32 %i.bq
  %.not13.i.i = icmp slt i32 %i.bo, %i.bn
  %i.bs = and i32 %i.bm, 15
  %i.bt = select i1 %.not13.i.i, i32 1, i32 %i.bs
  %i.bu = add nuw nsw i32 %i.br, %i.bt            ; 2 uses
  %i.bv = shl nsw i32 %i.bp, 4
  %i.bw = icmp sgt i32 %i.bu, %8
  %i.bx = select i1 %i.bw, i32 18, i32 %i.bu
  %i.by = add nsw i32 %i.bx, %i.bv                ; 2 uses
  store i32 %i.by, ptr %i.am, align 4, !tbaa !150
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %i.bz = and i64 %indvars.iv.next120.i, 4294967295
  %exitcond = icmp eq i64 %i.bz, %indvars.iv75
  br i1 %exitcond, label %Str_MuxChangeOnce.exit, label %bb.f, !llvm.loop !161

Str_MuxChangeOnce.exit:                           ; preds = %bb.f
  %i.ca = tail call i32 @Str_MuxDelayEdge_rec(ptr noundef %3, i32 noundef %4) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.at, ptr noundef nonnull readonly align 16 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(64) %i.i, i64 64, i1 false), !tbaa.struct !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(64) %i.j, i64 64, i1 false), !tbaa.struct !159
  %i.cb = icmp sgt i32 %.15559, %i.ca
  br i1 %i.cb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Str_MuxChangeOnce.exit
  %i.cc = icmp sgt i32 %.15161, 0
  %i.cd = icmp eq i32 %.15559, %i.ca
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %Str_MuxChangeOnce.exit
  %i.ce = trunc nuw nsw i64 %indvars.iv75 to i32
  %i.cf = or i32 %i.ao, %i.ce
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.256 = phi i32 [ %i.ca, %bb.h ], [ %.15559, %bb.g ] ; 3 uses
  %.2 = phi i32 [ %i.cf, %bb.h ], [ %.15161, %bb.g ] ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = trunc nuw nsw i64 %indvars.iv75 to i32
  %i.ch = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.an, i32 noundef %i.cg, i32 noundef %i.ca, i32 noundef %.256) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count84
  br i1 %exitcond80.not, label %._crit_edge.loopexit, label %._crit_edge.i, !llvm.loop !164

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.ci = add i32 %.068, %indvars.iv77
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %indvars.iv.next82.pre-phi = phi i64 [ %.pre86, %.._crit_edge_crit_edge ], [ %i.y, %._crit_edge.loopexit ] ; 2 uses
  %.155.lcssa = phi i32 [ %.05465, %.._crit_edge_crit_edge ], [ %.256, %._crit_edge.loopexit ] ; 2 uses
  %.151.lcssa = phi i32 [ %.05067, %.._crit_edge_crit_edge ], [ %.2, %._crit_edge.loopexit ] ; 4 uses
  %.1.lcssa = phi i32 [ %.068, %.._crit_edge_crit_edge ], [ %i.ci, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next78 = add i32 %indvars.iv77, -1
  %exitcond85.not = icmp eq i64 %indvars.iv.next82.pre-phi, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge71, label %bb.e, !llvm.loop !165

._crit_edge71:                                    ; preds = %._crit_edge
  %i.cj = icmp eq i32 %.151.lcssa, -1
  br i1 %i.cj, label %._crit_edge71.thread, label %bb.m

._crit_edge71.thread:                             ; preds = %bb.d, %._crit_edge71
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %._crit_edge71.thread
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge71
  %i.ck = ashr i32 %.151.lcssa, 16                ; 2 uses
  %i.cl = and i32 %.151.lcssa, 65535              ; 2 uses
  call void @Str_MuxChangeOnce(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.ck, i32 noundef %i.cl, ptr noundef null, ptr noundef %0, ptr noundef %5)
  br i1 %.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = load i32, ptr %3, align 4, !tbaa !151
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.cm, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %.1.lcssa, i32 noundef %i.c, i32 noundef %.155.lcssa) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.m, %._crit_edge71.thread, %bb.l, %bb.a
  %.057 = phi i32 [ 0, %._crit_edge71.thread ], [ 0, %bb.a ], [ 0, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.057
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Str_MuxRestruct_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = sext i32 %4 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !148  ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %.thread, label %.sink.split

.sink.split:                                      ; preds = %bb.a, %.sink.split.backedge
  %.120.i.sink45 = phi ptr [ %.120.i.sink45.be, %.sink.split.backedge ], [ %3, %bb.a ] ; 2 uses
  %.sink42 = phi i32 [ %.sink42.be, %.sink.split.backedge ], [ %i.d, %bb.a ]
  %i.f = load i32, ptr %.120.i.sink45, align 4, !tbaa !151
  %i.g = sext i32 %i.f to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [64 x i8], ptr %.120.i.sink45, i64 %i.h
  %i.j = zext nneg i32 %.sink42 to i64
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.e
  %.0.i = phi ptr [ %i.x, %bb.e ], [ %i.k, %.sink.split ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !148  ; 2 uses
  %i.n = icmp slt i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !148  ; 3 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %.thread, label %.sink.split.backedge

.sink.split.backedge:                             ; preds = %bb.e, %bb.c
  %.120.i.sink45.be = phi ptr [ %.0.i, %bb.c ], [ %i.x, %bb.e ]
  %.sink42.be = phi i32 [ %i.p, %bb.c ], [ %.pre.i, %bb.e ]
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.r = icmp sgt i32 %i.p, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %.0.i, align 4, !tbaa !151
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [64 x i8], ptr %.0.i, i64 %i.u
  %i.w = zext nneg i32 %i.m to i64
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !148 ; 2 uses
  %i.y = icmp sgt i32 %.pre.i, 0
  br i1 %i.y, label %.sink.split.backedge, label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.z = tail call i32 @Str_MuxRestruct_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.0.i, i32 noundef 0, ptr noundef %5, i32 noundef %6)
  %i.aa = tail call i32 @Str_MuxRestruct_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.0.i, i32 noundef 1, ptr noundef %5, i32 noundef %6)
  %i.ab = or i32 %i.aa, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.f
  %.1 = phi i32 [ %i.ab, %bb.f ], [ 0, %bb.a ], [ 0, %bb.c ]
  %i.ac = tail call i32 @Str_MuxTryOnce(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6)
  %i.ad = or i32 %i.ac, %.1
  ret i32 %i.ad
}

; Function Attrs: nounwind uwtable
define i32 @Str_MuxRestructure2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca [10000 x %struct.Str_Mux_t_], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = icmp sgt i32 %3, 9999
  br i1 %i.a, label %.loopexit.thread, label %.peel.begin

.peel.begin:                                      ; preds = %bb.a
  call void @Str_MuxCreate(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %i.b = call i32 @Str_MuxDelayEdge_rec(ptr noundef nonnull %7, i32 noundef 0)
  %i.c = call i32 @Str_MuxRestruct_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %7, i32 noundef 0, ptr noundef %4, i32 noundef %6)
  %.not.peel = icmp eq i32 %i.c, 0
  br i1 %.not.peel, label %.loopexit.thread, label %.peel.next

.peel.next:                                       ; preds = %.peel.begin, %.peel.next
  %i.d = call i32 @Str_MuxRestruct_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %7, i32 noundef 0, ptr noundef %4, i32 noundef %6)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %.peel.next, !llvm.loop !166

.loopexit:                                        ; preds = %.peel.next
  %i.e = call i32 @Str_MuxDelayEdge_rec(ptr noundef nonnull %7, i32 noundef 0)
  %i.f = sub i32 %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !168
  %i.i = add nsw i32 %i.f, %i.h
  store i32 %i.i, ptr %i.g, align 8, !tbaa !168
  %i.j = call i32 @Str_MuxToGia_rec(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 0, ptr noundef %4)
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.peel.begin, %bb.a, %.loopexit
  %.017 = phi i32 [ -1, %bb.a ], [ %i.j, %.loopexit ], [ -1, %.peel.begin ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define i32 @Str_MuxRestructure1(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca [10000 x %struct.Str_Mux_t_], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = icmp sgt i32 %3, 9999
  br i1 %i.a, label %.loopexit.thread, label %.peel.begin

.peel.begin:                                      ; preds = %bb.a
  call void @Str_MuxCreate(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %i.b = call i32 @Str_MuxDelayEdge_rec(ptr noundef nonnull %7, i32 noundef 0)
  %i.c = call i32 @Str_MuxTryOnce(ptr noundef %0, ptr poison, ptr noundef nonnull %7, ptr noundef nonnull %7, i32 noundef 0, ptr noundef %4, i32 noundef %6)
  %.not.peel = icmp eq i32 %i.c, 0
  br i1 %.not.peel, label %.loopexit.thread, label %.peel.next

.peel.next:                                       ; preds = %.peel.begin, %.peel.next
  %i.d = call i32 @Str_MuxTryOnce(ptr noundef %0, ptr poison, ptr noundef nonnull %7, ptr noundef nonnull %7, i32 noundef 0, ptr noundef %4, i32 noundef %6)
  %.not = icmp eq i32 %i.d, 0
end_hunk_0
