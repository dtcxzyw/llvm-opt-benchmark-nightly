inline.NumInlined: 109
inline.NumDeleted: 5
begin_hunk_0_@readlocalhomtable2:bb.a
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  %i.i = tail call ptr @fgets(ptr noundef nonnull @readlocalhomtable2.buff, i32 noundef 255, ptr noundef %0)
  %.not32 = icmp eq ptr %i.i, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.j = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @readlocalhomtable2.buff, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #32 ; 0 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !209
  %i.o = load i32, ptr %i.c, align 4, !tbaa !4
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [80 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !16
  %i.t = icmp sgt i32 %i.r, 0
  %i.u = load i32, ptr %i.b, align 4, !tbaa !4
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !209
  %i.y = load i32, ptr %i.c, align 4, !tbaa !4
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = getelementptr inbounds [80 x i8], ptr %i.x, i64 %i.z ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !210
  %i.ad = call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #29 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  store i32 -1, ptr %i.af, align 4, !tbaa !211
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !8
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !209
  %i.ai = getelementptr inbounds [80 x i8], ptr %i.ah, i64 %i.z
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !210
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi ptr [ %i.ad, %bb.b ], [ %i.aa, %.lr.ph ] ; 6 uses
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %.031, i64 24
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !20
  %i.am = load i32, ptr %i.g, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %.031, i64 32
  store i32 %i.am, ptr %i.an, align 8, !tbaa !21
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.031, i64 28
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !22
  %i.aq = load i32, ptr %i.h, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %.031, i64 36
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !23
  %i.as = load double, ptr %i.a, align 8, !tbaa !107
  %i.at = fadd double %i.as, 0.000000e+00
  %i.au = fdiv double %i.at, 5.800000e+00
  %i.av = fmul double %i.au, 6.000000e+02         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.031, i64 40
  store double %i.av, ptr %i.aw, align 8, !tbaa !25
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.031, i64 48
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !24
  %i.az = getelementptr inbounds [8 x i8], ptr %2, i64 %i.z
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !209
  %i.bb = getelementptr inbounds [80 x i8], ptr %i.ba, i64 %i.v ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !16 ; 2 uses
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !16
  %i.be = icmp sgt i32 %i.bc, 0
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !209
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [80 x i8], ptr %i.bi, i64 %i.bk ; 2 uses
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !210
  %i.bo = call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #29 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  store i32 -1, ptr %i.bq, align 4, !tbaa !211
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !8
  %i.bs = load ptr, ptr %i.bh, align 8, !tbaa !209
  %i.bt = getelementptr inbounds [80 x i8], ptr %i.bs, i64 %i.bk
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.bo, ptr %i.bu, align 8, !tbaa !210
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.bo, %bb.d ], [ %i.bl, %bb.c ] ; 6 uses
  %i.bv = load i32, ptr %i.e, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !21
  %i.bx = load i32, ptr %i.g, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !20
  %i.bz = load i32, ptr %i.f, align 4, !tbaa !4
  %i.ca = getelementptr inbounds nuw i8, ptr %.0, i64 36
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !23
  %i.cb = load i32, ptr %i.h, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %.0, i64 28
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %.0, i64 40
  store double %i.av, ptr %i.cd, align 8, !tbaa !25
  %i.ce = load i32, ptr %i.d, align 4, !tbaa !4
  %i.cf = getelementptr inbounds nuw i8, ptr %.0, i64 48
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !24
  %i.cg = call ptr @fgets(ptr noundef nonnull @readlocalhomtable2.buff, i32 noundef 255, ptr noundef %0)
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !212

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readlocalhomtable(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  %i.i = tail call ptr @AllocateIntMtx(i32 noundef %1, i32 noundef %1) #32 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !4
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.preheader33.us.preheader, label %.preheader

.preheader33.us.preheader:                        ; preds = %bb.a
  %i.k = add nsw i32 %1, -1
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %scevgep45 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i32 %1, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br label %.preheader33.us

.preheader33.us:                                  ; preds = %.preheader33.us.preheader, %._crit_edge.us
  %i.n = phi i32 [ %i.aa, %._crit_edge.us ], [ 0, %.preheader33.us.preheader ] ; 2 uses
  %.phi.trans.insert = zext nneg i32 %i.n to i64
  %.phi.trans.insert38 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert38, align 8, !tbaa !35 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader33.us
  %i.o = getelementptr i8, ptr %.pre, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 4
  %bound0 = icmp ult ptr %.pre, %scevgep45
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i32 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.p = phi i32 [ %i.t, %vector.body ], [ 3, %vector.memcheck ] ; 2 uses
  %i.q = zext nneg i32 %index to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> zeroinitializer, ptr %i.r, align 4, !tbaa !4, !alias.scope !213, !noalias !216
  store <4 x i32> zeroinitializer, ptr %i.s, align 4, !tbaa !4, !alias.scope !213, !noalias !216
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.t = add nuw i32 %i.p, 8
  %i.u = icmp eq i32 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %3 = add nuw i32 %i.p, 5
  store i32 %3, ptr %i.c, align 4, !tbaa !4, !alias.scope !216
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader33.us, %middle.block
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader33.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.v = phi i32 [ %i.y, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.w
  store i32 0, ptr %i.x, align 4, !tbaa !4
  %i.y = add nuw nsw i32 %i.v, 1                  ; 3 uses
  store i32 %i.y, ptr %i.c, align 4, !tbaa !4
  %i.z = icmp slt i32 %i.y, %1
  br i1 %i.z, label %scalar.ph, label %._crit_edge.us, !llvm.loop !221

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %i.aa = add nuw nsw i32 %i.n, 1                 ; 3 uses
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !4
  %i.ab = icmp slt i32 %i.aa, %1
  br i1 %i.ab, label %.preheader33.us, label %.preheader, !llvm.loop !222

.preheader:                                       ; preds = %._crit_edge.us, %bb.a
  %i.ac = call ptr @fgets(ptr noundef nonnull @readlocalhomtable.buff, i32 noundef 255, ptr noundef %0)
  %.not35 = icmp eq ptr %i.ac, null
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.037 = phi ptr [ %.1, %bb.g ], [ null, %.preheader ]
  %.02836 = phi ptr [ %.129, %bb.g ], [ null, %.preheader ]
  %i.ad = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @readlocalhomtable.buff, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #32 ; 0 uses
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !4
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !4
  %i.an = icmp sgt i32 %i.al, 0
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ao = call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #29 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02836, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !8
  %.pre39 = load i32, ptr %i.c, align 4, !tbaa !4
  %.pre40 = load i32, ptr %i.b, align 4, !tbaa !4
  %.pre41 = sext i32 %.pre39 to i64
  %.pre42 = sext i32 %.pre40 to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !4
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %2, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !209
  %i.av = load i32, ptr %i.c, align 4, !tbaa !4
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [80 x i8], ptr %i.au, i64 %i.aw
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi43 = phi i64 [ %i.as, %bb.c ], [ %.pre42, %bb.b ]
  %.pre-phi = phi i64 [ %i.aw, %bb.c ], [ %.pre41, %bb.b ]
  %.129 = phi ptr [ %i.ax, %bb.c ], [ %i.ao, %bb.b ] ; 7 uses
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %.129, i64 24
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !20
  %i.ba = load i32, ptr %i.g, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %.129, i64 32
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !21
  %i.bc = load i32, ptr %i.f, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %.129, i64 28
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !22
  %i.be = load i32, ptr %i.h, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %.129, i64 36
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !23
  %i.bg = load double, ptr %i.a, align 8, !tbaa !107
  %i.bh = fadd double %i.bg, 0.000000e+00
  %i.bi = fdiv double %i.bh, 5.800000e+00
  %i.bj = fmul double %i.bi, 6.000000e+02         ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.129, i64 40
  store double %i.bj, ptr %i.bk, align 8, !tbaa !25
  %i.bl = load i32, ptr %i.d, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.129, i64 48
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !24
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.pre-phi
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !35
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %.pre-phi43 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 2 uses
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  %i.bs = icmp sgt i32 %i.bq, 0
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bt = call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #29 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.037, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr null, ptr %i.bv, align 8, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bw = load i32, ptr %i.c, align 4, !tbaa !4
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !209
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [80 x i8], ptr %i.bz, i64 %i.cb
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %i.bt, %bb.e ], [ %i.cc, %bb.f ] ; 7 uses
  %i.cd = load i32, ptr %i.e, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %.1, i64 32
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !21
  %i.cf = load i32, ptr %i.g, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %.1, i64 24
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !20
  %i.ch = load i32, ptr %i.f, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw i8, ptr %.1, i64 36
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !23
  %i.cj = load i32, ptr %i.h, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %.1, i64 28
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !22
  %i.cl = getelementptr inbounds nuw i8, ptr %.1, i64 40
  store double %i.bj, ptr %i.cl, align 8, !tbaa !25
  %i.cm = load i32, ptr %i.d, align 4, !tbaa !4
  %i.cn = getelementptr inbounds nuw i8, ptr %.1, i64 48
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !24
  %i.co = call ptr @fgets(ptr noundef nonnull @readlocalhomtable.buff, i32 noundef 255, ptr noundef %0)
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !223

._crit_edge:                                      ; preds = %bb.g, %.preheader
  call void @FreeIntMtx(ptr noundef %i.i) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

declare ptr @AllocateIntMtx(i32 noundef, i32 noundef) local_unnamed_addr #18

declare void @FreeIntMtx(ptr noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind uwtable
define dso_local void @outlocalhom(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader.us.preheader, label %._crit_edge22

.preheader.us.preheader:                          ; preds = %bb.a
  %wide.trip.count27 = zext nneg i32 %1 to i64    ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv24 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next25, %._crit_edge.us ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv24
  %i.c = trunc nuw nsw i64 %indvars.iv24 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.76, i32 noundef %i.c, i32 noundef %i.g) #28 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.us = phi ptr [ %i.e, %bb.b ], [ %i.x, %bb.c ] ; 7 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %.0.us, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %.0.us, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %.0.us, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.0.us, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %.0.us, i64 56
  %i.s = load double, ptr %i.r, align 8, !tbaa !224
  %i.t = getelementptr inbounds nuw i8, ptr %.0.us, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !25
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.77, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, double noundef %i.s, double noundef %i.u) #28 ; 0 uses
end_hunk_0
