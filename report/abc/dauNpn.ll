Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauNpn?download=true
inline.NumInlined: 286
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 52
begin_hunk_0_@Dau_FunctionEnum:bb.a
  %i.nr = or i64 %i.no, %i.nq
  %i.ns = and i64 %i.kp, %i.kj
  %i.nt = xor i64 %i.kp, -1
  %i.nu = and i64 %i.nr, %i.nt
  %i.nv = or i64 %i.ns, %i.nu
  store i64 %i.nv, ptr %i.g, align 8, !tbaa !28
  %i.nw = call i32 @Dau_InsertFunction(ptr noundef %i.t, ptr noundef nonnull %i.g, i32 noundef %i.im, i32 noundef %0, i32 noundef %1, i32 noundef %i.jc, ptr noundef nonnull %i.u, ptr noundef nonnull %i.y, i32 noundef %i.ip, i64 noundef %.0.i)
  %i.nx = add nsw i32 %i.nw, %i.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit.4
  %.5 = phi i32 [ %i.nx, %.loopexit.4 ], [ %.2518, %bb.r ] ; 3 uses
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 2 uses
  %exitcond572.not = icmp eq i64 %indvars.iv.next569, %wide.trip.count576
  br i1 %exitcond572.not, label %bb.t, label %bb.r, !llvm.loop !139

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %exitcond577.not = icmp eq i64 %indvars.iv.next574, %wide.trip.count576
  br i1 %exitcond577.not, label %._crit_edge521, label %.preheader475, !llvm.loop !140

._crit_edge521:                                   ; preds = %bb.t, %.lr.ph526
  %.1.lcssa = phi i32 [ %.0396524, %.lr.ph526 ], [ %.5, %bb.t ] ; 2 uses
  %indvars.iv.next579 = add nsw i64 %indvars.iv578, 1 ; 2 uses
  %lftr.wideiv581 = trunc i64 %indvars.iv.next579 to i32
  %exitcond582.not = icmp eq i32 %i.bz, %lftr.wideiv581
  br i1 %exitcond582.not, label %.loopexit478, label %.lr.ph526, !llvm.loop !141

.loopexit478:                                     ; preds = %._crit_edge521, %bb.q, %._crit_edge507
  %.6 = phi i32 [ 0, %._crit_edge507 ], [ 0, %bb.q ], [ %.1.lcssa, %._crit_edge521 ]
  %.val426 = load i32, ptr %i.z, align 4, !tbaa !33 ; 3 uses
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583634, 1 ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next584
  store i32 %.val426, ptr %i.ny, align 4, !tbaa !29
  %i.nz = trunc nuw nsw i64 %indvars.iv583634 to i32
  %i.oa = call i32 @Dau_PrintStats(i32 noundef %i.nz, i32 noundef %0, i32 noundef %1, ptr noundef nonnull %i.y, i32 noundef %i.ca, i32 noundef %.val426, i64 noundef %.1407.lcssa, i32 noundef %.6, i64 noundef %.0.i)
  %i.ob = icmp eq i32 %i.oa, 0
  %exitcond587 = icmp eq i64 %indvars.iv.next584, %wide.trip.count586
  %or.cond640 = select i1 %i.ob, i1 true, i1 %exitcond587
  br i1 %or.cond640, label %.loopexit478._crit_edge, label %.lr.ph636

.loopexit478._crit_edge:                          ; preds = %.loopexit478, %Vec_IntPush.exit437
  %.val = phi i32 [ 2, %Vec_IntPush.exit437 ], [ %.val426, %.loopexit478 ]
  call void @Dau_TablesSave(i32 noundef %0, i32 noundef %1, ptr noundef %i.u, ptr noundef nonnull %i.y, i32 noundef %.val, i64 noundef %.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.oc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #27
  %i.od = icmp slt i32 %i.oc, 0
  br i1 %i.od, label %Abc_Clock.exit441, label %bb.u

bb.u:                                             ; preds = %.loopexit478._crit_edge
  %i.oe = load i64, ptr %6, align 8, !tbaa !23
  %i.of = mul nsw i64 %i.oe, 1000000
  %i.og = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !24
  %i.oi = sdiv i64 %i.oh, 1000
  %i.oj = add nsw i64 %i.oi, %i.of
  br label %Abc_Clock.exit441

Abc_Clock.exit441:                                ; preds = %.loopexit478._crit_edge, %bb.u
  %.0.i440 = phi i64 [ %i.oj, %bb.u ], [ -1, %.loopexit478._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ok = sub nsw i64 %.0.i440, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.13)
  %i.ol = sitofp i64 %i.ok to double
  %i.om = fdiv double %i.ol, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.34, double noundef %i.om)
  call void @Abc_TtHieManStop(ptr noundef %i.t) #27
  %i.on = icmp eq ptr %i.u, null
  br i1 %i.on, label %Vec_MemFreeP.exit, label %bb.v

bb.v:                                             ; preds = %Abc_Clock.exit441
  %i.oo = load ptr, ptr %i.ar, align 8, !tbaa !56 ; 3 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %Vec_IntFreeP.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !35 ; 2 uses
  %.not.i.i442 = icmp eq ptr %i.or, null
  br i1 %.not.i.i442, label %bb.x, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.w
  call void @free(ptr noundef nonnull %i.or) #27
  br label %bb.x

bb.x:                                             ; preds = %.thread.i.i, %bb.w
  call void @free(ptr noundef nonnull %i.oo) #27
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.x, %bb.v
  %i.os = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 3 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %Vec_IntFreeP.exit.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !35 ; 2 uses
  %.not.i3.i443 = icmp eq ptr %i.ov, null
  br i1 %.not.i3.i443, label %bb.z, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.ov) #27
  br label %bb.z

bb.z:                                             ; preds = %.thread.i4.i, %bb.y
  call void @free(ptr noundef nonnull %i.os) #27
  br label %bb.aa

bb.aa:                                            ; preds = %Vec_IntFreeP.exit.i, %bb.z
  %i.ow = load i32, ptr %i.x, align 4, !tbaa !52  ; 2 uses
  %.not19.i.i = icmp slt i32 %i.ow, 0
  %.pre23.i.i = load ptr, ptr %i.bs, align 8, !tbaa !47 ; 3 uses
  br i1 %.not19.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i444.preheader

.lr.ph.i.i444.preheader:                          ; preds = %bb.aa
  %narrow = add nuw i32 %i.ow, 1
  %i.ox = zext i32 %narrow to i64
  br label %.lr.ph.i.i444

.lr.ph.i.i444:                                    ; preds = %.lr.ph.i.i444.preheader, %bb.ac
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ac ], [ 0, %.lr.ph.i.i444.preheader ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %.pre23.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !49 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.oz, null
  br i1 %.not18.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i444
  call void @free(ptr noundef nonnull %i.oz) #27
  store ptr null, ptr %i.oy, align 8, !tbaa !49
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i.i444
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond588.not = icmp eq i64 %indvars.iv.next.i.i, %i.ox
  br i1 %exitcond588.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i444, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %bb.aa
  %.not16.i.i = icmp eq ptr %.pre23.i.i, null
  br i1 %.not16.i.i, label %Vec_MemFree.exit.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.ac, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %.pre23.i.i) #27
  br label %Vec_MemFree.exit.i

Vec_MemFree.exit.i:                               ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %i.u) #27
  br label %Vec_MemFreeP.exit

Vec_MemFreeP.exit:                                ; preds = %Abc_Clock.exit441, %Vec_MemFree.exit.i
  %i.pa = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %.not.i446 = icmp eq ptr %i.pa, null
  br i1 %.not.i446, label %Vec_IntFree.exit, label %bb.ad

bb.ad:                                            ; preds = %Vec_MemFreeP.exit
  call void @free(ptr noundef nonnull %i.pa) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_MemFreeP.exit, %bb.ad
  call void @free(ptr noundef nonnull %i.y) #27
  %i.pb = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.pc = call i32 @fflush(ptr noundef %i.pb)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  ret void
}

declare ptr @Abc_TtHieManStart(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Abc_TtHieManStop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Dau_CollectNpnFunctions(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #27
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !23
  %.neg107 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  %.neg = sdiv i64 %i.e, -1000
  %.neg108 = add i64 %.neg, %.neg107
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg108, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.f = call fastcc ptr @Vec_MemAllocForTTSimple(i32 noundef %1) ; 10 uses
  %i.g = icmp slt i32 %1, 7
  %i.h = add nsw i32 %1, -6
  %i.i = shl nuw i32 1, %i.h
  %i.j = select i1 %i.g, i32 1, i32 %i.i          ; 19 uses
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3                      ; 4 uses
  %i.m = call noalias ptr @malloc(i64 noundef %i.l) #29 ; 44 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 3 uses
  %i.o = load i64, ptr %0, align 8, !tbaa !28
  %i.p = and i64 %i.o, 1
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = icmp slt i32 %i.j, 1                     ; 9 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %Abc_Clock.exit
  br i1 %i.q, label %Abc_TtCopy.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader14.i
  %min.iters.check = icmp ult i32 %i.j, 4
  br i1 %min.iters.check, label %.lr.ph.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.r = and i32 %i.j, 2147483644
  %n.vec = zext nneg i32 %i.r to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8, !tbaa !28
  %wide.load159 = load <2 x i64>, ptr %i.t, align 8, !tbaa !28
  %i.u = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.v = xor <2 x i64> %wide.load159, splat (i64 -1)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 8, !tbaa !28
  store <2 x i64> %i.v, ptr %i.x, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %Abc_TtCopy.exit, label %vector.body, !llvm.loop !142

.preheader.i:                                     ; preds = %Abc_Clock.exit
  br i1 %i.q, label %Abc_TtCopy.exit, label %.lr.ph18.preheader.i

.lr.ph18.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count24.i = zext nneg i32 %i.j to i64
  %i.z = shl nuw nsw i64 %wide.trip.count24.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.z, i1 false), !tbaa !28
  br label %Abc_TtCopy.exit

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.aa = load i64, ptr %0, align 8, !tbaa !28
  %i.ab = xor i64 %i.aa, -1
  store i64 %i.ab, ptr %i.m, align 8, !tbaa !28
  %exitcond.not.i = icmp eq i32 %i.j, 1
  br i1 %exitcond.not.i, label %Abc_TtCopy.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.ae = xor i64 %i.ad, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !28
  %exitcond.not.i.1 = icmp eq i32 %i.j, 2
  br i1 %exitcond.not.i.1, label %Abc_TtCopy.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !28
  %i.ai = xor i64 %i.ah, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !28
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %vector.body, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph18.preheader.i, %.preheader14.i, %.preheader.i
  %i.ak = call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.f, ptr noundef %i.m) ; 0 uses
  %i.al = call i32 @Extra_Factorial(i32 noundef %1) #27 ; 2 uses
  %i.am = call ptr @Extra_PermSchedule(i32 noundef %1) #27 ; 3 uses
  %i.an = call ptr @Extra_GreyCodeSchedule(i32 noundef %1) #27 ; 3 uses
  %.not121 = icmp eq i32 %1, 31
  br i1 %.not121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Abc_TtCopy.exit
  %i.ao = shl nuw nsw i32 1, %1
  %i.ap = icmp eq i32 %i.j, 1
  %i.aq = getelementptr inbounds i8, ptr %i.m, i64 %i.l
  %wide.trip.count59.i = zext i32 %i.j to i64     ; 4 uses
  %wide.trip.count = zext nneg i32 %i.ao to i64
  %min.iters.check185 = icmp ult i32 %i.j, 4
  %n.vec187 = and i64 %wide.trip.count59.i, 2147483644
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i32 %i.j, 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %min.iters.check173 = icmp ult i32 %i.j, 4
  %n.vec175 = and i64 %wide.trip.count59.i, 2147483644
  %exitcond.not.i79 = icmp eq i32 %i.j, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %exitcond.not.i79.1 = icmp eq i32 %i.j, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %min.iters.check161 = icmp ult i32 %i.j, 4
  %n.vec163 = and i64 %wide.trip.count59.i, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Abc_TtNot.exit86
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Abc_TtNot.exit86 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !29 ; 6 uses
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !28  ; 2 uses
  %i.ay = shl nuw i32 1, %i.aw
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = shl i64 %i.ax, %i.az
  %i.bb = sext i32 %i.aw to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28 ; 2 uses
  %i.be = and i64 %i.ba, %i.bd
  %i.bf = and i64 %i.bd, %i.ax
  %i.bg = lshr i64 %i.bf, %i.az
  %i.bh = or i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.m, align 8, !tbaa !28
  br label %Abc_TtFlip.exit

bb.e:                                             ; preds = %bb.c
  %i.bi = icmp slt i32 %i.aw, 6
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %Abc_TtFlip.exit, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.f
  %i.bj = shl nuw nsw i32 1, %i.aw
  %i.bk = zext nneg i32 %i.bj to i64              ; 7 uses
  %i.bl = sext i32 %i.aw to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !28 ; 7 uses
  br i1 %min.iters.check185, label %scalar.ph184, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph.i73
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert188 = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat189 = shufflevector <2 x i64> %broadcast.splatinsert188, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph186
  %index191 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body190 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index191 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load192 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !28 ; 2 uses
  %wide.load193 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %i.bq = shl <2 x i64> %wide.load192, %broadcast.splat
  %i.br = shl <2 x i64> %wide.load193, %broadcast.splat
  %i.bs = and <2 x i64> %i.bq, %broadcast.splat189
  %i.bt = and <2 x i64> %i.br, %broadcast.splat189
  %i.bu = and <2 x i64> %wide.load192, %broadcast.splat189
  %i.bv = and <2 x i64> %wide.load193, %broadcast.splat189
  %i.bw = lshr <2 x i64> %i.bu, %broadcast.splat
  %i.bx = lshr <2 x i64> %i.bv, %broadcast.splat
  %i.by = or <2 x i64> %i.bw, %i.bs
  %i.bz = or <2 x i64> %i.bx, %i.bt
  store <2 x i64> %i.by, ptr %i.bo, align 8, !tbaa !28
  store <2 x i64> %i.bz, ptr %i.bp, align 8, !tbaa !28
  %index.next194 = add nuw i64 %index191, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.ca, label %Abc_TtFlip.exit, label %vector.body190, !llvm.loop !143

scalar.ph184:                                     ; preds = %.lr.ph.i73
  %i.cb = load i64, ptr %i.m, align 8, !tbaa !28  ; 2 uses
  %i.cc = shl i64 %i.cb, %i.bk
  %i.cd = and i64 %i.cc, %i.bn
  %i.ce = and i64 %i.cb, %i.bn
  %i.cf = lshr i64 %i.ce, %i.bk
  %i.cg = or i64 %i.cf, %i.cd
  store i64 %i.cg, ptr %i.m, align 8, !tbaa !28
  %i.ch = load i64, ptr %i.ar, align 8, !tbaa !28 ; 2 uses
  %i.ci = shl i64 %i.ch, %i.bk
  %i.cj = and i64 %i.ci, %i.bn
  %i.ck = and i64 %i.ch, %i.bn
  %i.cl = lshr i64 %i.ck, %i.bk
  %i.cm = or i64 %i.cl, %i.cj
  store i64 %i.cm, ptr %i.ar, align 8, !tbaa !28
  br i1 %exitcond60.not.i.1, label %Abc_TtFlip.exit, label %scalar.ph184.2

scalar.ph184.2:                                   ; preds = %scalar.ph184
  %i.cn = load i64, ptr %i.as, align 8, !tbaa !28 ; 2 uses
  %i.co = shl i64 %i.cn, %i.bk
  %i.cp = and i64 %i.co, %i.bn
  %i.cq = and i64 %i.cn, %i.bn
  %i.cr = lshr i64 %i.cq, %i.bk
  %i.cs = or i64 %i.cr, %i.cp
  store i64 %i.cs, ptr %i.as, align 8, !tbaa !28
  br label %Abc_TtFlip.exit

bb.g:                                             ; preds = %bb.e
  %i.ct = add nsw i32 %i.aw, -6                   ; 3 uses
  %i.cu = shl nuw i32 1, %i.ct                    ; 4 uses
  br i1 %i.q, label %Abc_TtFlip.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.g
  %.not.i68 = icmp eq i32 %i.ct, 31
  %i.cv = shl i32 2, %i.ct
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  br i1 %.not.i68, label %Abc_TtFlip.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.cx = sext i32 %i.cu to i64                   ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.cu, i32 1) ; 2 uses
  %wide.trip.count.i69 = zext nneg i32 %smax.i to i64 ; 5 uses
  %i.cy = shl nuw nsw i64 %wide.trip.count.i69, 3
  %i.cz = add nsw i64 %i.cx, %wide.trip.count.i69
  %i.da = shl nsw i64 %i.cz, 3
  %i.db = shl nsw i64 %i.cw, 3
  %min.iters.check200 = icmp slt i32 %i.cu, 4
  %i.dc = getelementptr i8, ptr %i.m, i64 %i.cy
  %i.dd = getelementptr i8, ptr %i.m, i64 %i.da
  %n.vec202 = and i64 %wide.trip.count.i69, 2147483644
  %xtraiter = and i64 %wide.trip.count.i69, 1
  %i.de = icmp slt i32 %i.cu, 2
  %unroll_iter = and i64 %wide.trip.count.i69, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod272 = trunc i32 %smax.i to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ] ; 2 uses
  %.051.us.i = phi ptr [ %i.dw, %._crit_edge.us.i ], [ %i.m, %.preheader.us.preheader.i ] ; 7 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.051.us.i, i64 %i.cx ; 5 uses
  br i1 %min.iters.check200, label %scalar.ph199.preheader, label %vector.memcheck

scalar.ph199.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i
  br i1 %i.de, label %scalar.ph199.epil.preheader, label %scalar.ph199

vector.memcheck:                                  ; preds = %.preheader.us.i
  %i.df = mul i64 %indvar, %i.db                  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.dc, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dd, i64 %i.df
  %bound0 = icmp ult ptr %.051.us.i, %i.dh
  %bound1 = icmp ult ptr %invariant.gep.i, %i.dg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph199.preheader, label %vector.body203

vector.body203:                                   ; preds = %vector.memcheck, %vector.body203
  %index204 = phi i64 [ %index.next209, %vector.body203 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %index204 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %wide.load205 = load <2 x i64>, ptr %i.di, align 8, !tbaa !28, !alias.scope !161, !noalias !162
  %wide.load206 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !28, !alias.scope !161, !noalias !162
  %i.dk = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index204 ; 3 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16     ; 2 uses
  %wide.load207 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !28, !alias.scope !162
  %wide.load208 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !28, !alias.scope !162
  store <2 x i64> %wide.load207, ptr %i.di, align 8, !tbaa !28, !alias.scope !161, !noalias !162
  store <2 x i64> %wide.load208, ptr %i.dj, align 8, !tbaa !28, !alias.scope !161, !noalias !162
  store <2 x i64> %wide.load205, ptr %i.dk, align 8, !tbaa !28, !alias.scope !162
  store <2 x i64> %wide.load206, ptr %i.dl, align 8, !tbaa !28, !alias.scope !162
  %index.next209 = add nuw i64 %index204, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next209, %n.vec202
  br i1 %i.dm, label %._crit_edge.us.i, label %vector.body203, !llvm.loop !147

scalar.ph199:                                     ; preds = %scalar.ph199.preheader, %scalar.ph199
  %indvars.iv.i70 = phi i64 [ %indvars.iv.next.i71.1, %scalar.ph199 ], [ 0, %scalar.ph199.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph199 ], [ 0, %scalar.ph199.preheader ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i70 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !28
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i70 ; 2 uses
  %i.dp = load i64, ptr %gep.i, align 8, !tbaa !28
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !28
  store i64 %i.do, ptr %gep.i, align 8, !tbaa !28
  %indvars.iv.next.i71 = or disjoint i64 %indvars.iv.i70, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.next.i71 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !28
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i71 ; 2 uses
  %i.ds = load i64, ptr %gep.i.1, align 8, !tbaa !28
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !28
  store i64 %i.dr, ptr %gep.i.1, align 8, !tbaa !28
  %indvars.iv.next.i71.1 = add nuw nsw i64 %indvars.iv.i70, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph199, !llvm.loop !148

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph199
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph199.epil.preheader

scalar.ph199.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph199.preheader
  %indvars.iv.i70.epil.init = phi i64 [ 0, %scalar.ph199.preheader ], [ %indvars.iv.next.i71.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod272)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i70.epil.init ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i70.epil.init ; 2 uses
  %i.dv = load i64, ptr %gep.i.epil, align 8, !tbaa !28
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !28
  store i64 %i.du, ptr %gep.i.epil, align 8, !tbaa !28
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body203, %scalar.ph199.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.dw = getelementptr inbounds [8 x i8], ptr %.051.us.i, i64 %i.cw ; 2 uses
  %i.dx = icmp ult ptr %i.dw, %i.aq
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dx, label %.preheader.us.i, label %Abc_TtFlip.exit, !llvm.loop !8

Abc_TtFlip.exit:                                  ; preds = %._crit_edge.us.i, %vector.body190, %scalar.ph184, %scalar.ph184.2, %bb.d, %bb.f, %bb.g, %.preheader.lr.ph.i
  %i.dy = load i64, ptr %i.m, align 8, !tbaa !28
  %i.dz = and i64 %i.dy, 1
  %.not66 = icmp eq i64 %i.dz, 0
  %brmerge = or i1 %.not66, %i.q
  br i1 %brmerge, label %Abc_TtNot.exit86.sink.split, label %.lr.ph.i76.preheader

.lr.ph.i76.preheader:                             ; preds = %Abc_TtFlip.exit
  br i1 %min.iters.check173, label %.lr.ph.i76, label %vector.body176

vector.body176:                                   ; preds = %.lr.ph.i76.preheader, %vector.body176
  %index177 = phi i64 [ %index.next180, %vector.body176 ], [ 0, %.lr.ph.i76.preheader ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index177 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %wide.load178 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !28
  %wide.load179 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !28
  %i.ec = xor <2 x i64> %wide.load178, splat (i64 -1)
  %i.ed = xor <2 x i64> %wide.load179, splat (i64 -1)
  store <2 x i64> %i.ec, ptr %i.ea, align 8, !tbaa !28
  store <2 x i64> %i.ed, ptr %i.eb, align 8, !tbaa !28
  %index.next180 = add nuw i64 %index177, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.ee, label %.lr.ph.preheader.i80, label %vector.body176, !llvm.loop !149

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.preheader
  %i.ef = load i64, ptr %i.m, align 8, !tbaa !28
  %i.eg = xor i64 %i.ef, -1
  store i64 %i.eg, ptr %i.m, align 8, !tbaa !28
  br i1 %exitcond.not.i79, label %.lr.ph.preheader.i80, label %.lr.ph.i76.1

.lr.ph.i76.1:                                     ; preds = %.lr.ph.i76
  %i.eh = load i64, ptr %i.at, align 8, !tbaa !28
  %i.ei = xor i64 %i.eh, -1
  store i64 %i.ei, ptr %i.at, align 8, !tbaa !28
  br i1 %exitcond.not.i79.1, label %.lr.ph.preheader.i80, label %.lr.ph.i76.2

.lr.ph.i76.2:                                     ; preds = %.lr.ph.i76.1
  %i.ej = load i64, ptr %i.au, align 8, !tbaa !28
  %i.ek = xor i64 %i.ej, -1
  store i64 %i.ek, ptr %i.au, align 8, !tbaa !28
  br label %.lr.ph.preheader.i80

.lr.ph.preheader.i80:                             ; preds = %vector.body176, %.lr.ph.i76, %.lr.ph.i76.1, %.lr.ph.i76.2
  %i.el = call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.f, ptr noundef nonnull %i.m) ; 0 uses
  br i1 %min.iters.check161, label %.lr.ph.i82, label %vector.body164

vector.body164:                                   ; preds = %.lr.ph.preheader.i80, %vector.body164
  %index165 = phi i64 [ %index.next168, %vector.body164 ], [ 0, %.lr.ph.preheader.i80 ] ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index165 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %wide.load166 = load <2 x i64>, ptr %i.em, align 8, !tbaa !28
  %wide.load167 = load <2 x i64>, ptr %i.en, align 8, !tbaa !28
  %i.eo = xor <2 x i64> %wide.load166, splat (i64 -1)
  %i.ep = xor <2 x i64> %wide.load167, splat (i64 -1)
  store <2 x i64> %i.eo, ptr %i.em, align 8, !tbaa !28
  store <2 x i64> %i.ep, ptr %i.en, align 8, !tbaa !28
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.eq, label %Abc_TtNot.exit86, label %vector.body164, !llvm.loop !150

.lr.ph.i82:                                       ; preds = %.lr.ph.preheader.i80, %.lr.ph.i82
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84, %.lr.ph.i82 ], [ 0, %.lr.ph.preheader.i80 ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i83 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !28
  %i.et = xor i64 %i.es, -1
  store i64 %i.et, ptr %i.er, align 8, !tbaa !28
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next.i84, %wide.trip.count59.i
  br i1 %exitcond.not.i85, label %Abc_TtNot.exit86, label %.lr.ph.i82, !llvm.loop !151

Abc_TtNot.exit86.sink.split:                      ; preds = %Abc_TtFlip.exit
  %i.eu = call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.f, ptr noundef nonnull %i.m) ; 0 uses
  br label %Abc_TtNot.exit86

Abc_TtNot.exit86:                                 ; preds = %vector.body164, %.lr.ph.i82, %Abc_TtNot.exit86.sink.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !152

._crit_edge:                                      ; preds = %Abc_TtNot.exit86, %Abc_TtCopy.exit
  %i.ev = getelementptr i8, ptr %i.f, i64 4       ; 2 uses
  %.val67 = load i32, ptr %i.ev, align 4, !tbaa !55 ; 3 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ew = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %.val67) ; 0 uses
  %i.ex = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.ey = call i32 @fflush(ptr noundef %i.ex)     ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.ez = icmp sgt i32 %.val67, 0
  br i1 %i.ez, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %bb.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %wide.trip.count24.i89 = zext i32 %i.j to i64   ; 2 uses
  %i.fd = icmp sgt i32 %i.al, 0
  %i.fe = getelementptr inbounds i8, ptr %i.m, i64 %i.l ; 2 uses
  br i1 %i.fd, label %.lr.ph119.split.us.preheader, label %._crit_edge120

.lr.ph119.split.us.preheader:                     ; preds = %.lr.ph119
  %5 = shl nuw nsw i64 %wide.trip.count24.i89, 3
  %wide.trip.count132 = zext nneg i32 %i.al to i64
  %i.ff = add i64 %i.l, %i.n
  %min.iters.check214 = icmp ult i32 %i.j, 4
  %n.vec216 = and i64 %wide.trip.count24.i89, 2147483644
  %exitcond74.not.i.us = icmp eq i32 %i.j, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %exitcond74.not.i.us.1 = icmp eq i32 %i.j, 2
  %i.fh = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br label %.lr.ph119.split.us

.lr.ph119.split.us:                               ; preds = %.lr.ph119.split.us.preheader, %._crit_edge116.us
  %.058117.us = phi i32 [ %i.jo, %._crit_edge116.us ], [ 0, %.lr.ph119.split.us.preheader ] ; 3 uses
  br i1 %i.q, label %Abc_TtCopy.exit94.us.preheader, label %.lr.ph18.i90.us.preheader

.lr.ph18.i90.us.preheader:                        ; preds = %.lr.ph119.split.us
  %i.fi = load ptr, ptr %i.fa, align 8, !tbaa !47
  %i.fj = load i32, ptr %i.fb, align 8, !tbaa !48
  %i.fk = lshr i32 %.058117.us, %i.fj
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !49
  %i.fo = load i32, ptr %i.fc, align 4, !tbaa !51
  %i.fp = and i32 %i.fo, %.058117.us
  %i.fq = load i32, ptr %i.f, align 8, !tbaa !50
  %i.fr = mul i32 %i.fp, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [8 x i8], ptr %i.fn, i64 %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.ft, i64 %5, i1 false), !tbaa !28
  br label %Abc_TtCopy.exit94.us.preheader

Abc_TtCopy.exit94.us.preheader:                   ; preds = %.lr.ph18.i90.us.preheader, %.lr.ph119.split.us
  br label %Abc_TtCopy.exit94.us

Abc_TtCopy.exit94.us:                             ; preds = %Abc_TtCopy.exit94.us.preheader, %Abc_TtSwapAdjacent.exit.us
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %Abc_TtSwapAdjacent.exit.us ], [ 0, %Abc_TtCopy.exit94.us.preheader ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv129
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !29 ; 6 uses
  %i.fw = icmp slt i32 %i.fv, 5
  br i1 %i.fw, label %bb.m, label %bb.j

bb.j:                                             ; preds = %Abc_TtCopy.exit94.us
  %i.fx = icmp eq i32 %i.fv, 5
  br i1 %i.fx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fy = icmp samesign ult i32 %i.fv, 7
  %i.fz = add nsw i32 %i.fv, -6
  %i.ga = shl nuw i32 1, %i.fz
  %i.gb = select i1 %i.fy, i32 1, i32 %i.ga       ; 7 uses
  br i1 %i.q, label %Abc_TtSwapAdjacent.exit.us, label %.preheader.lr.ph.i95.us

.preheader.lr.ph.i95.us:                          ; preds = %bb.k
  %i.gc = icmp sgt i32 %i.gb, 0
  %i.gd = shl i32 %i.gb, 2                        ; 2 uses
  %i.ge = sext i32 %i.gd to i64                   ; 3 uses
  br i1 %i.gc, label %.preheader.us.preheader.i96.us, label %Abc_TtSwapAdjacent.exit.us

.preheader.us.preheader.i96.us:                   ; preds = %.preheader.lr.ph.i95.us
  %i.gf = shl nuw nsw i32 %i.gb, 1
  %i.gg = zext nneg i32 %i.gb to i64              ; 6 uses
  %i.gh = zext nneg i32 %i.gf to i64              ; 2 uses
  %i.gi = shl nsw i64 %i.ge, 3                    ; 4 uses
  %i.gj = shl nuw nsw i64 %i.gh, 3                ; 2 uses
  %i.gk = shl nuw nsw i64 %i.gg, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.gj
  %i.gl = shl nuw nsw i64 %i.gg, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.gi, i64 1)
  %i.gm = add i64 %i.gi, %i.n
  %umax241 = call i64 @llvm.umax.i64(i64 %i.ff, i64 %i.gm)
  %i.gn = sub i64 %umax241, %i.n                  ; 2 uses
  %i.go = icmp ne i64 %i.gn, %i.gi
  %umin = zext i1 %i.go to i64                    ; 2 uses
  %i.gp = or disjoint i64 %i.gi, %umin
  %i.gq = sub i64 %i.gn, %i.gp
  %scevgep242 = getelementptr i8, ptr %i.m, i64 %i.gk
  %min.iters.check244 = icmp ult i32 %i.gb, 4
  %invariant.gep = getelementptr i8, ptr %i.m, i64 %i.gl
  %invariant.gep278 = getelementptr i8, ptr %i.m, i64 %i.gk
  %invariant.gep280 = getelementptr i8, ptr %invariant.gep278, i64 %i.gj
  %stride.check = icmp slt i32 %i.gd, 0
  %n.vec250 = and i64 %i.gg, 2147483644
  %xtraiter273 = and i64 %i.gg, 1
  %i.gr = icmp eq i32 %i.gb, 1
  %unroll_iter276 = and i64 %i.gg, 2147483646
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  %lcmp.mod275 = trunc i32 %i.gb to i1
  br label %.preheader.us.i97.us

.preheader.us.i97.us:                             ; preds = %._crit_edge.us.i103.us, %.preheader.us.preheader.i96.us
  %.061.us.i.us = phi ptr [ %i.hi, %._crit_edge.us.i103.us ], [ %i.m, %.preheader.us.preheader.i96.us ] ; 3 uses
  %invariant.gep.i98.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.gg ; 4 uses
  %invariant.gep80.i.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.gh ; 4 uses
  br i1 %min.iters.check244, label %scalar.ph243.preheader, label %vector.memcheck245

scalar.ph243.preheader:                           ; preds = %vector.memcheck245, %.preheader.us.i97.us
  br i1 %i.gr, label %scalar.ph243.epil.preheader, label %scalar.ph243

vector.memcheck245:                               ; preds = %.preheader.us.i97.us
  %i.gs = udiv i64 %i.gq, %umax
  %i.gt = add i64 %i.gs, %umin
  %i.gu = mul i64 %i.gt, %i.ge
  %i.gv = shl i64 %i.gu, 3                        ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gv
  %gep281 = getelementptr i8, ptr %invariant.gep280, i64 %i.gv
  %bound0246 = icmp ult ptr %scevgep242, %gep281
  %bound1247 = icmp ult ptr %scevgep, %gep
  %found.conflict248 = and i1 %bound0246, %bound1247
  %i.gw = or i1 %found.conflict248, %stride.check
  br i1 %i.gw, label %scalar.ph243.preheader, label %vector.body251

vector.body251:                                   ; preds = %vector.memcheck245, %vector.body251
  %index252 = phi i64 [ %index.next257, %vector.body251 ], [ 0, %vector.memcheck245 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i98.us, i64 %index252 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %wide.load253 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !28, !alias.scope !163, !noalias !164
  %wide.load254 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !28, !alias.scope !163, !noalias !164
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %index252 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %wide.load255 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !28, !alias.scope !164
  %wide.load256 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !28, !alias.scope !164
  store <2 x i64> %wide.load255, ptr %i.gx, align 8, !tbaa !28, !alias.scope !163, !noalias !164
  store <2 x i64> %wide.load256, ptr %i.gy, align 8, !tbaa !28, !alias.scope !163, !noalias !164
  store <2 x i64> %wide.load253, ptr %i.gz, align 8, !tbaa !28, !alias.scope !164
  store <2 x i64> %wide.load254, ptr %i.ha, align 8, !tbaa !28, !alias.scope !164
  %index.next257 = add nuw i64 %index252, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next257, %n.vec250
  br i1 %i.hb, label %._crit_edge.us.i103.us, label %vector.body251, !llvm.loop !156

scalar.ph243:                                     ; preds = %scalar.ph243.preheader, %scalar.ph243
  %indvars.iv.i99.us = phi i64 [ %indvars.iv.next.i101.us.1, %scalar.ph243 ], [ 0, %scalar.ph243.preheader ] ; 4 uses
  %niter277 = phi i64 [ %niter277.next.1, %scalar.ph243 ], [ 0, %scalar.ph243.preheader ]
  %gep.i100.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i98.us, i64 %indvars.iv.i99.us ; 2 uses
  %i.hc = load i64, ptr %gep.i100.us, align 8, !tbaa !28
  %gep81.i.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.i99.us ; 2 uses
  %i.hd = load i64, ptr %gep81.i.us, align 8, !tbaa !28
  store i64 %i.hd, ptr %gep.i100.us, align 8, !tbaa !28
  store i64 %i.hc, ptr %gep81.i.us, align 8, !tbaa !28
  %indvars.iv.next.i101.us = or disjoint i64 %indvars.iv.i99.us, 1 ; 2 uses
  %gep.i100.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i98.us, i64 %indvars.iv.next.i101.us ; 2 uses
  %i.he = load i64, ptr %gep.i100.us.1, align 8, !tbaa !28
  %gep81.i.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.next.i101.us ; 2 uses
  %i.hf = load i64, ptr %gep81.i.us.1, align 8, !tbaa !28
  store i64 %i.hf, ptr %gep.i100.us.1, align 8, !tbaa !28
  store i64 %i.he, ptr %gep81.i.us.1, align 8, !tbaa !28
  %indvars.iv.next.i101.us.1 = add nuw nsw i64 %indvars.iv.i99.us, 2 ; 2 uses
  %niter277.next.1 = add i64 %niter277, 2         ; 2 uses
  %niter277.ncmp.1 = icmp eq i64 %niter277.next.1, %unroll_iter276
  br i1 %niter277.ncmp.1, label %._crit_edge.us.i103.us.loopexit.unr-lcssa, label %scalar.ph243, !llvm.loop !157

._crit_edge.us.i103.us.loopexit.unr-lcssa:        ; preds = %scalar.ph243
  br i1 %lcmp.mod274.not, label %._crit_edge.us.i103.us, label %scalar.ph243.epil.preheader

scalar.ph243.epil.preheader:                      ; preds = %._crit_edge.us.i103.us.loopexit.unr-lcssa, %scalar.ph243.preheader
  %indvars.iv.i99.us.epil.init = phi i64 [ 0, %scalar.ph243.preheader ], [ %indvars.iv.next.i101.us.1, %._crit_edge.us.i103.us.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod275)
  %gep.i100.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i98.us, i64 %indvars.iv.i99.us.epil.init ; 2 uses
  %i.hg = load i64, ptr %gep.i100.us.epil, align 8, !tbaa !28
  %gep81.i.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.i99.us.epil.init ; 2 uses
  %i.hh = load i64, ptr %gep81.i.us.epil, align 8, !tbaa !28
  store i64 %i.hh, ptr %gep.i100.us.epil, align 8, !tbaa !28
  store i64 %i.hg, ptr %gep81.i.us.epil, align 8, !tbaa !28
  br label %._crit_edge.us.i103.us

._crit_edge.us.i103.us:                           ; preds = %vector.body251, %scalar.ph243.epil.preheader, %._crit_edge.us.i103.us.loopexit.unr-lcssa
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.ge ; 2 uses
  %i.hj = icmp ult ptr %i.hi, %i.fe
  br i1 %i.hj, label %.preheader.us.i97.us, label %Abc_TtSwapAdjacent.exit.us, !llvm.loop !9

bb.l:                                             ; preds = %bb.j
  br i1 %i.q, label %Abc_TtSwapAdjacent.exit.us, label %.lr.ph.i104.us

.lr.ph.i104.us:                                   ; preds = %bb.l, %.lr.ph.i104.us
  %.05462.i.us = phi ptr [ %i.hn, %.lr.ph.i104.us ], [ %i.m, %bb.l ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 4 ; 2 uses
  %i.hl = load <2 x i32>, ptr %i.hk, align 4, !tbaa !29
  %i.hm = shufflevector <2 x i32> %i.hl, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.hm, ptr %i.hk, align 4, !tbaa !29
  %i.hn = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 16 ; 2 uses
  %i.ho = icmp ult ptr %i.hn, %i.fe
  br i1 %i.ho, label %.lr.ph.i104.us, label %Abc_TtSwapAdjacent.exit.us, !llvm.loop !10

bb.m:                                             ; preds = %Abc_TtCopy.exit94.us
  br i1 %i.q, label %Abc_TtSwapAdjacent.exit.us, label %.lr.ph64.i.us

.lr.ph64.i.us:                                    ; preds = %bb.m
  %i.hp = shl nuw nsw i32 1, %i.fv
  %i.hq = sext i32 %i.fv to i64
  %i.hr = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.hq ; 3 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !28 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !28 ; 4 uses
  %i.hv = zext nneg i32 %i.hp to i64              ; 7 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !28 ; 4 uses
  br i1 %min.iters.check214, label %scalar.ph213, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph64.i.us
  %broadcast.splatinsert217 = insertelement <2 x i64> poison, i64 %i.hs, i64 0
  %broadcast.splat218 = shufflevector <2 x i64> %broadcast.splatinsert217, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert219 = insertelement <2 x i64> poison, i64 %i.hu, i64 0
  %broadcast.splat220 = shufflevector <2 x i64> %broadcast.splatinsert219, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert221 = insertelement <2 x i64> poison, i64 %i.hv, i64 0
  %broadcast.splat222 = shufflevector <2 x i64> %broadcast.splatinsert221, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert223 = insertelement <2 x i64> poison, i64 %i.hx, i64 0
  %broadcast.splat224 = shufflevector <2 x i64> %broadcast.splatinsert223, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph215
  %index226 = phi i64 [ 0, %vector.ph215 ], [ %index.next229, %vector.body225 ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index226 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %wide.load227 = load <2 x i64>, ptr %i.hy, align 8, !tbaa !28 ; 3 uses
  %wide.load228 = load <2 x i64>, ptr %i.hz, align 8, !tbaa !28 ; 3 uses
  %i.ia = and <2 x i64> %wide.load227, %broadcast.splat218
  %i.ib = and <2 x i64> %wide.load228, %broadcast.splat218
  %i.ic = and <2 x i64> %wide.load227, %broadcast.splat220
  %i.id = and <2 x i64> %wide.load228, %broadcast.splat220
  %i.ie = shl <2 x i64> %i.ic, %broadcast.splat222
  %i.if = shl <2 x i64> %i.id, %broadcast.splat222
  %i.ig = or <2 x i64> %i.ie, %i.ia
  %i.ih = or <2 x i64> %i.if, %i.ib
  %i.ii = and <2 x i64> %wide.load227, %broadcast.splat224
  %i.ij = and <2 x i64> %wide.load228, %broadcast.splat224
  %i.ik = lshr <2 x i64> %i.ii, %broadcast.splat222
  %i.il = lshr <2 x i64> %i.ij, %broadcast.splat222
  %i.im = or <2 x i64> %i.ig, %i.ik
  %i.in = or <2 x i64> %i.ih, %i.il
  store <2 x i64> %i.im, ptr %i.hy, align 8, !tbaa !28
  store <2 x i64> %i.in, ptr %i.hz, align 8, !tbaa !28
  %index.next229 = add nuw i64 %index226, 4       ; 2 uses
  %i.io = icmp eq i64 %index.next229, %n.vec216
  br i1 %i.io, label %Abc_TtSwapAdjacent.exit.us, label %vector.body225, !llvm.loop !158

scalar.ph213:                                     ; preds = %.lr.ph64.i.us
  %i.ip = load i64, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.iq = and i64 %i.ip, %i.hs
  %i.ir = and i64 %i.ip, %i.hu
  %i.is = shl i64 %i.ir, %i.hv
  %i.it = or i64 %i.is, %i.iq
  %i.iu = and i64 %i.ip, %i.hx
  %i.iv = lshr i64 %i.iu, %i.hv
  %i.iw = or i64 %i.it, %i.iv
  store i64 %i.iw, ptr %i.m, align 8, !tbaa !28
  br i1 %exitcond74.not.i.us, label %Abc_TtSwapAdjacent.exit.us, label %scalar.ph213.1

scalar.ph213.1:                                   ; preds = %scalar.ph213
  %i.ix = load i64, ptr %i.fg, align 8, !tbaa !28 ; 3 uses
  %i.iy = and i64 %i.ix, %i.hs
  %i.iz = and i64 %i.ix, %i.hu
  %i.ja = shl i64 %i.iz, %i.hv
  %i.jb = or i64 %i.ja, %i.iy
  %i.jc = and i64 %i.ix, %i.hx
  %i.jd = lshr i64 %i.jc, %i.hv
  %i.je = or i64 %i.jb, %i.jd
  store i64 %i.je, ptr %i.fg, align 8, !tbaa !28
  br i1 %exitcond74.not.i.us.1, label %Abc_TtSwapAdjacent.exit.us, label %scalar.ph213.2

scalar.ph213.2:                                   ; preds = %scalar.ph213.1
  %i.jf = load i64, ptr %i.fh, align 8, !tbaa !28 ; 3 uses
  %i.jg = and i64 %i.jf, %i.hs
  %i.jh = and i64 %i.jf, %i.hu
  %i.ji = shl i64 %i.jh, %i.hv
  %i.jj = or i64 %i.ji, %i.jg
  %i.jk = and i64 %i.jf, %i.hx
  %i.jl = lshr i64 %i.jk, %i.hv
  %i.jm = or i64 %i.jj, %i.jl
  store i64 %i.jm, ptr %i.fh, align 8, !tbaa !28
  br label %Abc_TtSwapAdjacent.exit.us

Abc_TtSwapAdjacent.exit.us:                       ; preds = %._crit_edge.us.i103.us, %.lr.ph.i104.us, %vector.body225, %scalar.ph213, %scalar.ph213.1, %scalar.ph213.2, %bb.m, %bb.l, %.preheader.lr.ph.i95.us, %bb.k
  %i.jn = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.f, ptr noundef %i.m) ; 0 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %._crit_edge116.us, label %Abc_TtCopy.exit94.us, !llvm.loop !159

._crit_edge116.us:                                ; preds = %Abc_TtSwapAdjacent.exit.us
  %i.jo = add nuw nsw i32 %.058117.us, 1          ; 2 uses
  %exitcond134.not = icmp eq i32 %i.jo, %.val67
  br i1 %exitcond134.not, label %._crit_edge120, label %.lr.ph119.split.us, !llvm.loop !160

._crit_edge120:                                   ; preds = %._crit_edge116.us, %.lr.ph119, %bb.i
  %.not63 = icmp eq ptr %i.am, null
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge120
  call void @free(ptr noundef nonnull %i.am) #27
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge120, %bb.n
  %.not64 = icmp eq ptr %i.an, null
  br i1 %.not64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.an) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.not65 = icmp eq ptr %i.m, null
  br i1 %.not65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.m) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val = load i32, ptr %i.ev, align 4, !tbaa !55
  %i.jp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.val) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.jq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #27
  %i.jr = icmp slt i32 %i.jq, 0
  br i1 %i.jr, label %Abc_Clock.exit106, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.js = load i64, ptr %3, align 8, !tbaa !23
  %i.jt = mul nsw i64 %i.js, 1000000
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !24
  %i.jw = sdiv i64 %i.jv, 1000
  %i.jx = add nsw i64 %i.jw, %i.jt
  br label %Abc_Clock.exit106

Abc_Clock.exit106:                                ; preds = %bb.t, %bb.u
  %.0.i105 = phi i64 [ %i.jx, %bb.u ], [ -1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.jy = add i64 %.0.i105, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.3)
  %i.jz = sitofp i64 %i.jy to double
  %i.ka = fdiv double %i.jz, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.34, double noundef %i.ka)
  %i.kb = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.kc = call i32 @fflush(ptr noundef %i.kb)     ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %Abc_Clock.exit106, %bb.s
  ret ptr %i.f
}

; Function Attrs: inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Vec_MemAllocForTTSimple(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = icmp slt i32 %0, 7
  %i.b = add nsw i32 %0, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c
  %i.e = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #28 ; 7 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 12, ptr %i.f, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 4095, ptr %i.g, align 4, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 -1, ptr %i.h, align 4, !tbaa !52
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.a
  %.012.i.i = phi i32 [ 9999, %bb.a ], [ %i.i, %.critedge.i.i.backedge ] ; 3 uses
  %i.i = add i32 %.012.i.i, 1                     ; 7 uses
  %i.j = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.i, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.l = mul nuw nsw i32 %i.k, %i.k
  %.not.i.i = icmp ugt i32 %i.l, %i.i
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !6

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.b
  %.01116.i.i = phi i32 [ %i.k, %bb.b ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.m = urem i32 %i.i, %.01116.i.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge.i.i.backedge, label %bb.b

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.b
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 4 uses
  %or.cond.i.i.i = icmp samesign ult i32 %.012.i.i, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.i ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.o, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #29 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !35
  store i32 %i.i, ptr %i.p, align 4, !tbaa !33
  %.not.i3.i = icmp eq ptr %i.s, null
  br i1 %.not.i3.i, label %Vec_MemHashAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_PrimeCudd.exit.i
  %i.u = zext nneg i32 %i.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 -1, i64 %i.v, i1 false)
  br label %Vec_MemHashAlloc.exit

Vec_MemHashAlloc.exit:                            ; preds = %Abc_PrimeCudd.exit.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.o, ptr %i.w, align 8, !tbaa !53
  %i.x = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.y, align 4, !tbaa !33
  store i32 10000, ptr %i.x, align 8, !tbaa !34
  %i.z = tail call noalias dereferenceable_or_null(40000) ptr @malloc(i64 noundef 40000) #29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !54
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Dau_CollectBoothFunctions(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = add nsw i32 %0, 1                        ; 9 uses
  %i.b = icmp slt i32 %0, 6                       ; 3 uses
  %i.c = add nsw i32 %0, -5                       ; 3 uses
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d
  %i.f = add nsw i32 %0, -1                       ; 3 uses
  %i.g = shl nuw i32 1, %i.f                      ; 3 uses
  %i.h = tail call fastcc ptr @Vec_MemAllocForTTSimple(i32 noundef %i.a) ; 3 uses
  %i.i = shl i32 %i.e, %i.f
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #28 ; 7 uses
  %.not59 = icmp eq i32 %i.a, 31
  br i1 %.not59, label %.lr.ph, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.a
  %i.l = shl nuw i32 1, %i.a
  %i.m = icmp sgt i32 %0, 1
  %i.n = shl nuw i32 1, %0                        ; 2 uses
  %i.o = select i1 %i.b, i32 0, i32 %i.c          ; 2 uses
  %smax64 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1) ; 2 uses
  br i1 %i.m, label %.lr.ph.us.preheader, label %.lr.ph57.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph57
  %i.p = add nsw i32 %0, -1                       ; 3 uses
  %xtraiter = and i32 %i.p, 1
  %i.q = icmp eq i32 %0, 2
  %unroll_iter = and i32 %i.p, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod83 = trunc i32 %i.p to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.c
  %.04655.us = phi i32 [ %i.ao, %bb.c ], [ 0, %.lr.ph.us.preheader ] ; 8 uses
  %i.r = and i32 %.04655.us, 1                    ; 2 uses
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.054.us = phi i32 [ %.1.us.1, %.lr.ph.us.new ], [ %i.r, %.lr.ph.us ]
  %.04553.us = phi i32 [ %i.ab, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.s = shl nuw i32 1, %.04553.us
  %i.t = and i32 %i.s, %.04655.us
  %.not51.us = icmp eq i32 %i.t, 0
  %i.u = add nsw i32 %.04553.us, -1
  %i.v = shl nuw i32 1, %i.u
  %i.w = select i1 %.not51.us, i32 0, i32 %i.v
  %.1.us = add nsw i32 %i.w, %.054.us
  %i.x = shl nuw i32 2, %.04553.us
  %i.y = and i32 %i.x, %.04655.us
  %.not51.us.1 = icmp eq i32 %i.y, 0
  %i.z = shl nuw i32 1, %.04553.us
  %i.aa = select i1 %.not51.us.1, i32 0, i32 %i.z
  %.1.us.1 = add nsw i32 %i.aa, %.1.us            ; 3 uses
  %i.ab = add nuw nsw i32 %.04553.us, 2           ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !165

bb.b:                                             ; preds = %._crit_edge.us
  %spec.select.us = sub nsw i32 %.1.us.lcssa, %i.av
  %spec.select52.us = tail call i32 @llvm.abs.i32(i32 %spec.select.us, i1 true)
  %i.ac = add nsw i32 %spec.select52.us, -1
  %i.ad = shl i32 %i.ac, %i.o
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ae
  %i.ag = and i32 %.04655.us, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = lshr i32 %.04655.us, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28
  %i.an = or i64 %i.am, %i.ai
  store i64 %i.an, ptr %i.al, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %i.ao = add nuw nsw i32 %.04655.us, 1           ; 2 uses
  %exitcond65.not = icmp eq i32 %i.ao, %smax64
  br i1 %exitcond65.not, label %.preheader, label %.lr.ph.us, !llvm.loop !166

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.054.us.epil.init = phi i32 [ %i.r, %.lr.ph.us ], [ %.1.us.1, %._crit_edge.us.unr-lcssa ]
  %.04553.us.epil.init = phi i32 [ 1, %.lr.ph.us ], [ %i.ab, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.ap = shl nuw i32 1, %.04553.us.epil.init
  %i.aq = and i32 %i.ap, %.04655.us
  %.not51.us.epil = icmp eq i32 %i.aq, 0
  %i.ar = add nsw i32 %.04553.us.epil.init, -1
  %i.as = shl nuw i32 1, %i.ar
  %i.at = select i1 %.not51.us.epil, i32 0, i32 %i.as
  %.1.us.epil = add nsw i32 %i.at, %.054.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.1.us.lcssa = phi i32 [ %.1.us.1, %._crit_edge.us.unr-lcssa ], [ %.1.us.epil, %.epil.preheader ] ; 2 uses
  %i.au = and i32 %.04655.us, %i.n
  %.not50.us = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not50.us, i32 0, i32 %i.g   ; 2 uses
  %i.aw = icmp eq i32 %.1.us.lcssa, %i.av
  br i1 %i.aw, label %bb.c, label %bb.b

.preheader:                                       ; preds = %bb.e, %bb.c
  %.not60 = icmp eq i32 %i.f, 31
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.preheader
  %i.ax = icmp slt i32 %0, 5
  %i.ay = icmp eq i32 %i.a, 0
  %1 = icmp ult i32 %i.a, 2
  %2 = icmp ult i32 %i.a, 3
  %3 = icmp ult i32 %i.a, 4
  %4 = icmp ult i32 %i.a, 5
  %i.az = icmp ult i32 %i.a, 6
  %i.ba = select i1 %i.b, i32 0, i32 %i.c
  %smax69 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  br i1 %i.ax, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %smax69 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !28 ; 7 uses
  %i.bd = trunc i64 %i.bc to i1
  %i.be = select i1 %i.bd, i64 3, i64 0
  %i.bf = and i64 %i.bc, 3
  %i.bg = select i1 %i.ay, i64 %i.be, i64 %i.bf
  %i.bh = mul nuw nsw i64 %i.bg, 5
  %.126.i.us = select i1 %1, i64 %i.bh, i64 %i.bc
  %i.bi = and i64 %.126.i.us, 15
  %i.bj = mul nuw nsw i64 %i.bi, 17
  %.227.i.us = select i1 %2, i64 %i.bj, i64 %i.bc
  %i.bk = and i64 %.227.i.us, 255
  %i.bl = mul nuw nsw i64 %i.bk, 257
  %.328.i.us = select i1 %3, i64 %i.bl, i64 %i.bc
  %i.bm = and i64 %.328.i.us, 65535
  %i.bn = mul nuw nsw i64 %i.bm, 65537
  %.429.i.us = select i1 %4, i64 %i.bn, i64 %i.bc
  %i.bo = and i64 %.429.i.us, 4294967295
  %i.bp = mul nuw i64 %i.bo, 4294967297
  %.5.i.us = select i1 %i.az, i64 %i.bp, i64 %i.bc
  store i64 %.5.i.us, ptr %i.bb, align 8, !tbaa !28
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.br = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.h, ptr noundef %i.bq) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond70.not, label %._crit_edge.thread, label %.lr.ph.split.us, !llvm.loop !167

.lr.ph57.split:                                   ; preds = %.lr.ph57, %bb.e
  %.04655 = phi i32 [ %i.ci, %bb.e ], [ 0, %.lr.ph57 ] ; 5 uses
  %i.bs = and i32 %.04655, 1                      ; 2 uses
  %i.bt = and i32 %.04655, %i.n
  %.not50 = icmp eq i32 %i.bt, 0
  %i.bu = select i1 %.not50, i32 0, i32 %i.g      ; 2 uses
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph57.split
  %spec.select = sub nsw i32 %i.bs, %i.bu
  %spec.select52 = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true)
  %i.bw = add nsw i32 %spec.select52, -1
  %i.bx = shl i32 %i.bw, %i.o
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.by
  %i.ca = and i32 %.04655, 63
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = lshr i32 %.04655, 6
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ce ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !28
  %i.ch = or i64 %i.cg, %i.cc
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph57.split, %bb.d
  %i.ci = add nuw nsw i32 %.04655, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ci, %smax64
  br i1 %exitcond.not, label %.preheader, label %.lr.ph57.split, !llvm.loop !166

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.04458 = phi i32 [ %i.cn, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.cj = shl i32 %.04458, %i.ba
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ck
  %i.cm = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.h, ptr noundef %i.cl) ; 0 uses
  %i.cn = add nuw nsw i32 %.04458, 1              ; 2 uses
  %exitcond67.not = icmp eq i32 %i.cn, %smax69
  br i1 %exitcond67.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !167

._crit_edge:                                      ; preds = %.lr.ph.split, %.preheader
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.f, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.us, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.k) #27
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %._crit_edge.thread
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define void @Dau_PrintNpnFunction(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %3, 7
  %i.b = add nsw i32 %3, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 15 uses
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %1) ; 0 uses
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.lr.ph.i, label %Abc_TtPrintBits2.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.0.in4.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %3, %bb.b ] ; 2 uses
  %.0.i = add nsw i32 %.0.in4.i, -1               ; 2 uses
  %i.g = and i32 %.0.i, 31
  %i.h = lshr i32 %4, %i.g
  %i.i = and i32 %i.h, 1
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %i.i) ; 0 uses
  %i.k = icmp samesign ugt i32 %.0.in4.i, 1
  br i1 %i.k, label %.lr.ph.i, label %.lr.ph.preheader, !llvm.loop !168

Abc_TtPrintBits2.exit:                            ; preds = %bb.b
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38) ; 0 uses
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38) ; 0 uses
  %i.n = zext nneg i32 %3 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %Abc_TtPrintBits2.exit
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40) ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !27 ; 2 uses
  %i.q = icmp samesign ugt i32 %3, 5              ; 2 uses
  %i.r = add nsw i32 %3, -2                       ; 2 uses
  %i.s = icmp slt i32 %3, 2                       ; 2 uses
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.t = load i64, ptr %2, align 8, !tbaa !28
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 15                         ; 3 uses
  %i.w = icmp samesign ult i32 %i.v, 10
  %i.x = or disjoint i32 %i.v, 48
  %i.y = add nuw nsw i32 %i.v, 55
  %.0.i.i = select i1 %i.w, i32 %i.x, i32 %i.y
  %fputc17.i = tail call i32 @fputc(i32 %.0.i.i, ptr %i.p) ; 0 uses
  br label %Abc_TtPrintHexRev.exit

bb.d:                                             ; preds = %._crit_edge
  %.not22.i = icmp slt i32 %i.d, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit.thread, label %.lr.ph.i26

Abc_TtPrintHexRev.exit.thread:                    ; preds = %bb.d
  %i.z = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2)
  br label %Abc_TtNot.exit

.lr.ph.i26:                                       ; preds = %bb.d
  %i.aa = zext nneg i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr i8, ptr %2, i64 %.idx.i
  %.01521.i = getelementptr i8, ptr %i.ab, i64 -8
  %notmask.i = shl nsw i32 -1, %i.r
  %i.ac = xor i32 %notmask.i, -1
  %i.ad = select i1 %i.q, i32 15, i32 %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  br label %bb.e

.loopexit.i:                                      ; preds = %bb.f
  %.015.i = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i = icmp ult ptr %.015.i, %2
  br i1 %.not.i, label %Abc_TtPrintHexRev.exit, label %bb.e, !llvm.loop !11

bb.e:                                             ; preds = %.loopexit.i, %.lr.ph.i26
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i26 ], [ %.015.i, %.loopexit.i ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ %i.ae, %bb.e ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.af = load i64, ptr %.01523.i, align 8, !tbaa !28
  %i.ag = shl nsw i64 %indvars.iv.i, 2
  %i.ah = and i64 %i.ag, 4294967292
  %i.ai = lshr i64 %i.af, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 15                       ; 3 uses
  %i.al = icmp samesign ult i32 %i.ak, 10
  %i.am = or disjoint i32 %i.ak, 48
  %i.an = add nuw nsw i32 %i.ak, 55
  %.0.i18.i = select i1 %i.al, i32 %i.am, i32 %i.an
  %fputc.i = tail call i32 @fputc(i32 %.0.i18.i, ptr %i.p) ; 0 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ao = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ao, label %bb.f, label %.loopexit.i, !llvm.loop !12

Abc_TtPrintHexRev.exit:                           ; preds = %.loopexit.i, %bb.c
  %i.ap = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2) ; 5 uses
  %i.aq = icmp sgt i32 %i.d, 0
  br i1 %i.aq, label %.lr.ph.preheader.i, label %Abc_TtNot.exit

.lr.ph.preheader.i:                               ; preds = %Abc_TtPrintHexRev.exit
  %min.iters.check = icmp ult i32 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.i27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.ar = and i32 %i.d, 2147483644
  %n.vec = zext nneg i32 %i.ar to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.as, align 8, !tbaa !28
  %wide.load72 = load <2 x i64>, ptr %i.at, align 8, !tbaa !28
  %i.au = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.av = xor <2 x i64> %wide.load72, splat (i64 -1)
  store <2 x i64> %i.au, ptr %i.as, align 8, !tbaa !28
  store <2 x i64> %i.av, ptr %i.at, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %Abc_TtNot.exit, label %vector.body, !llvm.loop !169

.lr.ph.i27:                                       ; preds = %.lr.ph.preheader.i
  %i.ax = load i64, ptr %2, align 8, !tbaa !28
  %i.ay = xor i64 %i.ax, -1
  store i64 %i.ay, ptr %2, align 8, !tbaa !28
  %exitcond.not.i = icmp eq i32 %i.d, 1
  br i1 %exitcond.not.i, label %Abc_TtNot.exit, label %.lr.ph.i27.1

.lr.ph.i27.1:                                     ; preds = %.lr.ph.i27
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !28
end_hunk_0
begin_hunk_1_@Dau_PrintNpnFunction:bb.a
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !29
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.bg) ; 0 uses
  %i.bi = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !170

Abc_TtNot.exit:                                   ; preds = %vector.body, %.lr.ph.i27, %.lr.ph.i27.1, %.lr.ph.i27.2, %Abc_TtPrintHexRev.exit.thread, %Abc_TtPrintHexRev.exit
  %i.bj = phi i1 [ false, %Abc_TtPrintHexRev.exit.thread ], [ false, %Abc_TtPrintHexRev.exit ], [ true, %.lr.ph.i27 ], [ true, %.lr.ph.i27.2 ], [ true, %.lr.ph.i27.1 ], [ true, %vector.body ]
  %i.bk = phi i32 [ %i.z, %Abc_TtPrintHexRev.exit.thread ], [ %i.ap, %Abc_TtPrintHexRev.exit ], [ %i.ap, %.lr.ph.i27 ], [ %i.ap, %.lr.ph.i27.2 ], [ %i.ap, %.lr.ph.i27.1 ], [ %i.ap, %vector.body ]
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.bk) ; 0 uses
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !27 ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %Abc_TtNot.exit
  %i.bo = load i64, ptr %2, align 8, !tbaa !28
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 15                       ; 3 uses
  %i.br = icmp samesign ult i32 %i.bq, 10
  %i.bs = or disjoint i32 %i.bq, 48
  %i.bt = add nuw nsw i32 %i.bq, 55
  %.0.i.i43 = select i1 %i.br, i32 %i.bs, i32 %i.bt
  %fputc17.i44 = tail call i32 @fputc(i32 %.0.i.i43, ptr %i.bn) ; 0 uses
  br label %Abc_TtPrintHexRev.exit45

bb.h:                                             ; preds = %Abc_TtNot.exit
  %.not22.i30 = icmp slt i32 %i.d, 1
  br i1 %.not22.i30, label %Abc_TtPrintHexRev.exit45, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.h
  %i.bu = zext nneg i32 %i.d to i64
  %.idx.i32 = shl nuw nsw i64 %i.bu, 3
  %i.bv = getelementptr i8, ptr %2, i64 %.idx.i32
  %.01521.i33 = getelementptr i8, ptr %i.bv, i64 -8
  %notmask.i34 = shl nsw i32 -1, %i.r
  %i.bw = xor i32 %notmask.i34, -1
  %i.bx = select i1 %i.q, i32 15, i32 %i.bw
  %i.by = zext nneg i32 %i.bx to i64
  br label %bb.i

.loopexit.i40:                                    ; preds = %bb.j
  %.015.i41 = getelementptr inbounds i8, ptr %.01523.i35, i64 -8 ; 2 uses
  %.not.i42 = icmp ult ptr %.015.i41, %2
  br i1 %.not.i42, label %Abc_TtPrintHexRev.exit45, label %bb.i, !llvm.loop !11

bb.i:                                             ; preds = %.loopexit.i40, %.lr.ph.i31
  %.01523.i35 = phi ptr [ %.01521.i33, %.lr.ph.i31 ], [ %.015.i41, %.loopexit.i40 ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i36 = phi i64 [ %i.by, %bb.i ], [ %indvars.iv.next.i39, %bb.j ] ; 3 uses
  %i.bz = load i64, ptr %.01523.i35, align 8, !tbaa !28
  %i.ca = shl nsw i64 %indvars.iv.i36, 2
  %i.cb = and i64 %i.ca, 4294967292
  %i.cc = lshr i64 %i.bz, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 15                       ; 3 uses
  %i.cf = icmp samesign ult i32 %i.ce, 10
  %i.cg = or disjoint i32 %i.ce, 48
  %i.ch = add nuw nsw i32 %i.ce, 55
  %.0.i18.i37 = select i1 %i.cf, i32 %i.cg, i32 %i.ch
  %fputc.i38 = tail call i32 @fputc(i32 %.0.i18.i37, ptr %i.bn) ; 0 uses
  %indvars.iv.next.i39 = add nsw i64 %indvars.iv.i36, -1
  %i.ci = icmp sgt i64 %indvars.iv.i36, 0
  br i1 %i.ci, label %bb.j, label %.loopexit.i40, !llvm.loop !12

.critedge:                                        ; preds = %bb.a
  %i.cj = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2) ; 0 uses
  %i.ck = icmp sgt i32 %i.d, 0
  br i1 %i.ck, label %.lr.ph.preheader.i46, label %Abc_TtNot.exit59.thread

Abc_TtNot.exit59.thread:                          ; preds = %.critedge
  %i.cl = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %bb.l

.lr.ph.preheader.i46:                             ; preds = %.critedge
  %wide.trip.count.i47 = zext nneg i32 %i.d to i64 ; 2 uses
  %min.iters.check74 = icmp ult i32 %i.d, 4
  br i1 %min.iters.check74, label %.lr.ph.i48, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.preheader.i46
  %n.vec76 = and i64 %wide.trip.count.i47, 2147483644
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next81, %vector.body77 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index78 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %wide.load79 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !28
  %wide.load80 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !28
  %i.co = xor <2 x i64> %wide.load79, splat (i64 -1)
  %i.cp = xor <2 x i64> %wide.load80, splat (i64 -1)
  store <2 x i64> %i.co, ptr %i.cm, align 8, !tbaa !28
  store <2 x i64> %i.cp, ptr %i.cn, align 8, !tbaa !28
  %index.next81 = add nuw i64 %index78, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next81, %n.vec76
  br i1 %i.cq, label %Abc_TtPrintHexRev.exit45.thread, label %vector.body77, !llvm.loop !171

.lr.ph.i48:                                       ; preds = %.lr.ph.preheader.i46
  %i.cr = load i64, ptr %2, align 8, !tbaa !28
  %i.cs = xor i64 %i.cr, -1
  store i64 %i.cs, ptr %2, align 8, !tbaa !28
  %exitcond.not.i51 = icmp eq i32 %i.d, 1
  br i1 %exitcond.not.i51, label %Abc_TtPrintHexRev.exit45.thread, label %.lr.ph.i48.1

.lr.ph.i48.1:                                     ; preds = %.lr.ph.i48
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !28
  %i.cv = xor i64 %i.cu, -1
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !28
  %exitcond.not.i51.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.i51.1, label %Abc_TtPrintHexRev.exit45.thread, label %.lr.ph.i48.2

.lr.ph.i48.2:                                     ; preds = %.lr.ph.i48.1
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !28
  %i.cy = xor i64 %i.cx, -1
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !28
  br label %Abc_TtPrintHexRev.exit45.thread

Abc_TtPrintHexRev.exit45.thread:                  ; preds = %vector.body77, %.lr.ph.i48, %.lr.ph.i48.1, %.lr.ph.i48.2
  %i.cz = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef nonnull %2)
  br label %.lr.ph.preheader.i53

Abc_TtPrintHexRev.exit45:                         ; preds = %.loopexit.i40, %bb.h, %bb.g
  %i.da = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2) ; 2 uses
  br i1 %i.bj, label %Abc_TtPrintHexRev.exit45..lr.ph.preheader.i53_crit_edge, label %Abc_TtNot.exit59

Abc_TtPrintHexRev.exit45..lr.ph.preheader.i53_crit_edge: ; preds = %Abc_TtPrintHexRev.exit45
  %.pre = zext nneg i32 %i.d to i64
  br label %.lr.ph.preheader.i53

.lr.ph.preheader.i53:                             ; preds = %Abc_TtPrintHexRev.exit45..lr.ph.preheader.i53_crit_edge, %Abc_TtPrintHexRev.exit45.thread
  %wide.trip.count.i54.pre-phi = phi i64 [ %.pre, %Abc_TtPrintHexRev.exit45..lr.ph.preheader.i53_crit_edge ], [ %wide.trip.count.i47, %Abc_TtPrintHexRev.exit45.thread ] ; 4 uses
  %i.db = phi i32 [ %i.da, %Abc_TtPrintHexRev.exit45..lr.ph.preheader.i53_crit_edge ], [ %i.cz, %Abc_TtPrintHexRev.exit45.thread ] ; 2 uses
  %min.iters.check86 = icmp samesign ult i64 %wide.trip.count.i54.pre-phi, 4
  br i1 %min.iters.check86, label %.lr.ph.i55.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %.lr.ph.preheader.i53
  %n.vec88 = and i64 %wide.trip.count.i54.pre-phi, 2147483644 ; 3 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next93, %vector.body89 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index90 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %wide.load91 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !28
  %wide.load92 = load <2 x i64>, ptr %i.dd, align 8, !tbaa !28
  %i.de = xor <2 x i64> %wide.load91, splat (i64 -1)
  %i.df = xor <2 x i64> %wide.load92, splat (i64 -1)
  store <2 x i64> %i.de, ptr %i.dc, align 8, !tbaa !28
  store <2 x i64> %i.df, ptr %i.dd, align 8, !tbaa !28
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dg = icmp eq i64 %index.next93, %n.vec88
  br i1 %i.dg, label %middle.block94, label %vector.body89, !llvm.loop !172

middle.block94:                                   ; preds = %vector.body89
  %cmp.n95 = icmp eq i64 %wide.trip.count.i54.pre-phi, %n.vec88
  br i1 %cmp.n95, label %Abc_TtNot.exit59, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %.lr.ph.preheader.i53, %middle.block94
  %indvars.iv.i56.ph = phi i64 [ 0, %.lr.ph.preheader.i53 ], [ %n.vec88, %middle.block94 ]
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader, %.lr.ph.i55
  %indvars.iv.i56 = phi i64 [ %indvars.iv.next.i57, %.lr.ph.i55 ], [ %indvars.iv.i56.ph, %.lr.ph.i55.preheader ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i56 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !28
  %i.dj = xor i64 %i.di, -1
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !28
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, %wide.trip.count.i54.pre-phi
  br i1 %exitcond.not.i58, label %Abc_TtNot.exit59, label %.lr.ph.i55, !llvm.loop !173

Abc_TtNot.exit59:                                 ; preds = %.lr.ph.i55, %middle.block94, %Abc_TtPrintHexRev.exit45
  %i.dk = phi i32 [ %i.da, %Abc_TtPrintHexRev.exit45 ], [ %i.db, %middle.block94 ], [ %i.db, %.lr.ph.i55 ]
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %Abc_TtNot.exit59
  %i.dl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.dk) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %Abc_TtNot.exit59.thread, %bb.k, %Abc_TtNot.exit59
  ret void
}

; Function Attrs: nounwind uwtable
define void @Dau_PrintNpnFunctions(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 6 uses
  %i.b = icmp slt i32 %1, 7
  %i.c = add nsw i32 %1, -6
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d          ; 12 uses
  %i.f = tail call fastcc ptr @Vec_MemAllocForTTSimple(i32 noundef %1) ; 8 uses
  %i.g = sext i32 %i.e to i64
  %i.h = shl nsw i64 %i.g, 3                      ; 4 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 29 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 3 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 8 uses
  %i.l = icmp sgt i32 %i.e, 0                     ; 7 uses
  br i1 %i.l, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit100

.lr.ph18.preheader.i:                             ; preds = %bb.a
  %wide.trip.count24.i = zext nneg i32 %i.e to i64
  %i.m = shl nuw nsw i64 %wide.trip.count24.i, 3  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.m, i1 false), !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.m, i1 false), !tbaa !28
  br label %Abc_TtCopy.exit100

Abc_TtCopy.exit100:                               ; preds = %.lr.ph18.preheader.i, %bb.a
  %i.n = tail call i32 @Extra_Factorial(i32 noundef %1) #27 ; 4 uses
  %i.o = shl nuw i32 1, %1                        ; 2 uses
  %i.p = tail call ptr @Extra_PermSchedule(i32 noundef %1) #27 ; 3 uses
  %i.q = tail call ptr @Extra_GreyCodeSchedule(i32 noundef %1) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.r = shl i32 %i.n, %1
  %i.s = shl nsw i32 %i.r, 1                      ; 3 uses
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %i.s, i32 noundef %i.o, i32 noundef %i.n) ; 0 uses
  %i.u = icmp sgt i32 %1, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader.lr.ph

.lr.ph.preheader:                                 ; preds = %Abc_TtCopy.exit100
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader296, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %vec.ind, ptr %i.v, align 16, !tbaa !29
  store <4 x i32> %step.add, ptr %i.w, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader138, label %.lr.ph.preheader296

.lr.ph.preheader296:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader138:                                    ; preds = %.lr.ph, %middle.block
  %.not150 = icmp eq i32 %1, 31
  br i1 %.not150, label %._crit_edge149, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %Abc_TtCopy.exit100, %.preheader138
  %i.y = icmp sgt i32 %i.n, 0
  %wide.trip.count.i = zext i32 %i.e to i64       ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.i, i64 %i.h ; 3 uses
  %.not91 = icmp eq i32 %2, 0
  %i.aa = icmp eq i32 %i.e, 1
  %3 = shl nuw nsw i64 %wide.trip.count.i, 3
  %smax = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %wide.trip.count168 = zext nneg i32 %smax to i64
  %wide.trip.count163 = zext nneg i32 %i.n to i64
  %i.ab = add i64 %i.h, %i.j
  %min.iters.check238 = icmp ult i32 %i.e, 4
  %n.vec240 = and i64 %wide.trip.count.i, 2147483644
  %exitcond74.not.i = icmp eq i32 %i.e, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %exitcond74.not.i.1 = icmp eq i32 %i.e, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %min.iters.check210 = icmp ult i32 %i.e, 4
  %n.vec212 = and i64 %wide.trip.count.i, 2147483644
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i32 %i.e, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader296, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader296 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader138, label %.lr.ph, !llvm.loop !175

.preheader:                                       ; preds = %.preheader.lr.ph, %Abc_TtFlip.exit
  %indvars.iv165 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next166, %Abc_TtFlip.exit ] ; 2 uses
  %.0148 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.hp, %Abc_TtFlip.exit ] ; 2 uses
  %.079147 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %Abc_TtFlip.exit ] ; 2 uses
  br i1 %i.y, label %.lr.ph145, label %._crit_edge

.lr.ph145:                                        ; preds = %.preheader, %Abc_TtSwapAdjacent.exit
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %Abc_TtSwapAdjacent.exit ], [ 0, %.preheader ] ; 2 uses
  %.1144 = phi i32 [ %i.an, %Abc_TtSwapAdjacent.exit ], [ %.079147, %.preheader ] ; 2 uses
  br i1 %i.l, label %.lr.ph.i, label %Abc_TtCopy.exit107

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtCopy.exit107, label %.lr.ph.i, !llvm.loop !176

.lr.ph.i:                                         ; preds = %.lr.ph145, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %.lr.ph145 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq i64 %i.aj, %i.al
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.am = icmp ult i64 %i.aj, %i.al
  br i1 %i.am, label %Abc_TtCopy.exit107, label %.lr.ph18.i103.preheader

.lr.ph18.i103.preheader:                          ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %3, i1 false), !tbaa !28
  br label %Abc_TtCopy.exit107

Abc_TtCopy.exit107:                               ; preds = %bb.b, %.lr.ph18.i103.preheader, %bb.c, %.lr.ph145
  %i.an = add nsw i32 %.1144, 1                   ; 2 uses
  call void @Dau_PrintNpnFunction(ptr noundef %i.f, i32 noundef %.1144, ptr noundef %i.i, i32 noundef %1, i32 noundef %.0148, ptr noundef nonnull %i.a, i32 noundef %2)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv160
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29 ; 7 uses
  %i.aq = icmp slt i32 %i.ap, 5
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %Abc_TtCopy.exit107
  br i1 %i.l, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.d
  %i.ar = shl nuw nsw i32 1, %i.ap
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.as ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !28 ; 4 uses
  %i.ax = zext nneg i32 %i.ar to i64              ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !28 ; 4 uses
  br i1 %min.iters.check238, label %scalar.ph237, label %vector.ph239

vector.ph239:                                     ; preds = %.lr.ph64.i
  %broadcast.splatinsert241 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat242 = shufflevector <2 x i64> %broadcast.splatinsert241, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert243 = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splat244 = shufflevector <2 x i64> %broadcast.splatinsert243, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert245 = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat246 = shufflevector <2 x i64> %broadcast.splatinsert245, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert247 = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %broadcast.splat248 = shufflevector <2 x i64> %broadcast.splatinsert247, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph239
  %index250 = phi i64 [ 0, %vector.ph239 ], [ %index.next253, %vector.body249 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index250 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load251 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !28 ; 3 uses
  %wide.load252 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !28 ; 3 uses
  %i.bc = and <2 x i64> %wide.load251, %broadcast.splat242
  %i.bd = and <2 x i64> %wide.load252, %broadcast.splat242
  %i.be = and <2 x i64> %wide.load251, %broadcast.splat244
  %i.bf = and <2 x i64> %wide.load252, %broadcast.splat244
  %i.bg = shl <2 x i64> %i.be, %broadcast.splat246
  %i.bh = shl <2 x i64> %i.bf, %broadcast.splat246
  %i.bi = or <2 x i64> %i.bg, %i.bc
  %i.bj = or <2 x i64> %i.bh, %i.bd
  %i.bk = and <2 x i64> %wide.load251, %broadcast.splat248
  %i.bl = and <2 x i64> %wide.load252, %broadcast.splat248
  %i.bm = lshr <2 x i64> %i.bk, %broadcast.splat246
  %i.bn = lshr <2 x i64> %i.bl, %broadcast.splat246
  %i.bo = or <2 x i64> %i.bi, %i.bm
  %i.bp = or <2 x i64> %i.bj, %i.bn
  store <2 x i64> %i.bo, ptr %i.ba, align 8, !tbaa !28
  store <2 x i64> %i.bp, ptr %i.bb, align 8, !tbaa !28
  %index.next253 = add nuw i64 %index250, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next253, %n.vec240
  br i1 %i.bq, label %Abc_TtSwapAdjacent.exit, label %vector.body249, !llvm.loop !177

scalar.ph237:                                     ; preds = %.lr.ph64.i
  %i.br = load i64, ptr %i.i, align 8, !tbaa !28  ; 3 uses
  %i.bs = and i64 %i.br, %i.au
  %i.bt = and i64 %i.br, %i.aw
  %i.bu = shl i64 %i.bt, %i.ax
  %i.bv = or i64 %i.bu, %i.bs
  %i.bw = and i64 %i.br, %i.az
  %i.bx = lshr i64 %i.bw, %i.ax
  %i.by = or i64 %i.bv, %i.bx
  store i64 %i.by, ptr %i.i, align 8, !tbaa !28
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph237.1

scalar.ph237.1:                                   ; preds = %scalar.ph237
  %i.bz = load i64, ptr %i.ac, align 8, !tbaa !28 ; 3 uses
  %i.ca = and i64 %i.bz, %i.au
  %i.cb = and i64 %i.bz, %i.aw
  %i.cc = shl i64 %i.cb, %i.ax
  %i.cd = or i64 %i.cc, %i.ca
  %i.ce = and i64 %i.bz, %i.az
  %i.cf = lshr i64 %i.ce, %i.ax
  %i.cg = or i64 %i.cd, %i.cf
  store i64 %i.cg, ptr %i.ac, align 8, !tbaa !28
  br i1 %exitcond74.not.i.1, label %Abc_TtSwapAdjacent.exit, label %scalar.ph237.2

scalar.ph237.2:                                   ; preds = %scalar.ph237.1
  %i.ch = load i64, ptr %i.ad, align 8, !tbaa !28 ; 3 uses
  %i.ci = and i64 %i.ch, %i.au
  %i.cj = and i64 %i.ch, %i.aw
  %i.ck = shl i64 %i.cj, %i.ax
  %i.cl = or i64 %i.ck, %i.ci
  %i.cm = and i64 %i.ch, %i.az
  %i.cn = lshr i64 %i.cm, %i.ax
  %i.co = or i64 %i.cl, %i.cn
  store i64 %i.co, ptr %i.ad, align 8, !tbaa !28
  br label %Abc_TtSwapAdjacent.exit

bb.e:                                             ; preds = %Abc_TtCopy.exit107
  %i.cp = icmp eq i32 %i.ap, 5
  br i1 %i.cp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %.lr.ph.i111, label %Abc_TtSwapAdjacent.exit

.lr.ph.i111:                                      ; preds = %bb.f, %.lr.ph.i111
  %.05462.i = phi ptr [ %i.ct, %.lr.ph.i111 ], [ %i.i, %bb.f ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.cr = load <2 x i32>, ptr %i.cq, align 4, !tbaa !29
  %i.cs = shufflevector <2 x i32> %i.cr, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cs, ptr %i.cq, align 4, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.z
  br i1 %i.cu, label %.lr.ph.i111, label %Abc_TtSwapAdjacent.exit, !llvm.loop !10

bb.g:                                             ; preds = %bb.e
  %i.cv = icmp samesign ult i32 %i.ap, 7
  %i.cw = add nsw i32 %i.ap, -6
  %i.cx = shl nuw i32 1, %i.cw
  %i.cy = select i1 %i.cv, i32 1, i32 %i.cx       ; 7 uses
  br i1 %i.l, label %.preheader.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.preheader.lr.ph.i:                               ; preds = %bb.g
  %i.cz = icmp sgt i32 %i.cy, 0
  %i.da = shl i32 %i.cy, 2                        ; 2 uses
  %i.db = sext i32 %i.da to i64                   ; 3 uses
  br i1 %i.cz, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.dc = shl nuw nsw i32 %i.cy, 1
  %i.dd = zext nneg i32 %i.cy to i64              ; 6 uses
  %i.de = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.df = shl nsw i64 %i.db, 3                    ; 4 uses
  %i.dg = shl nuw nsw i64 %i.de, 3                ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dd, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.dg
  %i.di = shl nuw nsw i64 %i.dd, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dj = add i64 %i.df, %i.j
  %umax265 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.dj)
  %i.dk = sub i64 %umax265, %i.j                  ; 2 uses
  %i.dl = icmp ne i64 %i.dk, %i.df
  %umin = zext i1 %i.dl to i64                    ; 2 uses
  %i.dm = or disjoint i64 %i.df, %umin
  %i.dn = sub i64 %i.dk, %i.dm
  %scevgep266 = getelementptr i8, ptr %i.i, i64 %i.dh
  %min.iters.check268 = icmp ult i32 %i.cy, 4
  %invariant.gep = getelementptr i8, ptr %i.i, i64 %i.di
  %invariant.gep307 = getelementptr i8, ptr %i.i, i64 %i.dh
  %invariant.gep309 = getelementptr i8, ptr %invariant.gep307, i64 %i.dg
  %stride.check = icmp slt i32 %i.da, 0
  %n.vec274 = and i64 %i.dd, 2147483644
  %xtraiter = and i64 %i.dd, 1
  %i.do = icmp eq i32 %i.cy, 1
  %unroll_iter = and i64 %i.dd, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod297 = trunc i32 %i.cy to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.ef, %._crit_edge.us.i ], [ %i.i, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dd ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.de ; 4 uses
  br i1 %min.iters.check268, label %scalar.ph267.preheader, label %vector.memcheck269

scalar.ph267.preheader:                           ; preds = %vector.memcheck269, %.preheader.us.i
  br i1 %i.do, label %scalar.ph267.epil.preheader, label %scalar.ph267

vector.memcheck269:                               ; preds = %.preheader.us.i
  %i.dp = udiv i64 %i.dn, %umax
  %i.dq = add i64 %i.dp, %umin
  %i.dr = mul i64 %i.dq, %i.db
  %i.ds = shl i64 %i.dr, 3                        ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ds
  %gep310 = getelementptr i8, ptr %invariant.gep309, i64 %i.ds
  %bound0270 = icmp ult ptr %scevgep266, %gep310
  %bound1271 = icmp ult ptr %scevgep, %gep
  %found.conflict272 = and i1 %bound0270, %bound1271
  %i.dt = or i1 %found.conflict272, %stride.check
  br i1 %i.dt, label %scalar.ph267.preheader, label %vector.body275

vector.body275:                                   ; preds = %vector.memcheck269, %vector.body275
  %index276 = phi i64 [ %index.next281, %vector.body275 ], [ 0, %vector.memcheck269 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index276 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load277 = load <2 x i64>, ptr %i.du, align 8, !tbaa !28, !alias.scope !191, !noalias !192
  %wide.load278 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !28, !alias.scope !191, !noalias !192
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index276 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %wide.load279 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !28, !alias.scope !192
  %wide.load280 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !28, !alias.scope !192
  store <2 x i64> %wide.load279, ptr %i.du, align 8, !tbaa !28, !alias.scope !191, !noalias !192
  store <2 x i64> %wide.load280, ptr %i.dv, align 8, !tbaa !28, !alias.scope !191, !noalias !192
  store <2 x i64> %wide.load277, ptr %i.dw, align 8, !tbaa !28, !alias.scope !192
  store <2 x i64> %wide.load278, ptr %i.dx, align 8, !tbaa !28, !alias.scope !192
  %index.next281 = add nuw i64 %index276, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next281, %n.vec274
  br i1 %i.dy, label %._crit_edge.us.i, label %vector.body275, !llvm.loop !181

scalar.ph267:                                     ; preds = %scalar.ph267.preheader, %scalar.ph267
  %indvars.iv.i108 = phi i64 [ %indvars.iv.next.i109.1, %scalar.ph267 ], [ 0, %scalar.ph267.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph267 ], [ 0, %scalar.ph267.preheader ]
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i108 ; 2 uses
  %i.dz = load i64, ptr %gep.i, align 8, !tbaa !28
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i108 ; 2 uses
  %i.ea = load i64, ptr %gep81.i, align 8, !tbaa !28
  store i64 %i.ea, ptr %gep.i, align 8, !tbaa !28
  store i64 %i.dz, ptr %gep81.i, align 8, !tbaa !28
  %indvars.iv.next.i109 = or disjoint i64 %indvars.iv.i108, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i109 ; 2 uses
  %i.eb = load i64, ptr %gep.i.1, align 8, !tbaa !28
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i109 ; 2 uses
  %i.ec = load i64, ptr %gep81.i.1, align 8, !tbaa !28
  store i64 %i.ec, ptr %gep.i.1, align 8, !tbaa !28
  store i64 %i.eb, ptr %gep81.i.1, align 8, !tbaa !28
  %indvars.iv.next.i109.1 = add nuw nsw i64 %indvars.iv.i108, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph267, !llvm.loop !182

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph267
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph267.epil.preheader

scalar.ph267.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph267.preheader
  %indvars.iv.i108.epil.init = phi i64 [ 0, %scalar.ph267.preheader ], [ %indvars.iv.next.i109.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i108.epil.init ; 2 uses
  %i.ed = load i64, ptr %gep.i.epil, align 8, !tbaa !28
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i108.epil.init ; 2 uses
  %i.ee = load i64, ptr %gep81.i.epil, align 8, !tbaa !28
  store i64 %i.ee, ptr %gep.i.epil, align 8, !tbaa !28
  store i64 %i.ed, ptr %gep81.i.epil, align 8, !tbaa !28
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body275, %scalar.ph267.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.db ; 2 uses
  %i.eg = icmp ult ptr %i.ef, %i.z
  br i1 %i.eg, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !9

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %.lr.ph.i111, %vector.body249, %scalar.ph237, %scalar.ph237.1, %scalar.ph237.2, %bb.d, %bb.f, %bb.g, %.preheader.lr.ph.i
  %i.eh = sext i32 %i.ap to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eh ; 2 uses
  %i.ej = load <2 x i32>, ptr %i.ei, align 4, !tbaa !29
  %i.ek = shufflevector <2 x i32> %i.ej, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ek, ptr %i.ei, align 4, !tbaa !29
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %._crit_edge, label %.lr.ph145, !llvm.loop !183

._crit_edge:                                      ; preds = %Abc_TtSwapAdjacent.exit, %.preheader
  %.1.lcssa = phi i32 [ %.079147, %.preheader ], [ %i.an, %Abc_TtSwapAdjacent.exit ]
  br i1 %.not91, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %putchar92 = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv165
  %i.em = load i32, ptr %i.el, align 4, !tbaa !29 ; 7 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.en = load i64, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.eo = shl nuw i32 1, %i.em
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = shl i64 %i.en, %i.ep
  %i.er = sext i32 %i.em to i64
  %i.es = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !28 ; 2 uses
  %i.eu = and i64 %i.eq, %i.et
  %i.ev = and i64 %i.et, %i.en
  %i.ew = lshr i64 %i.ev, %i.ep
  %i.ex = or i64 %i.ew, %i.eu
  store i64 %i.ex, ptr %i.i, align 8, !tbaa !28
  br label %Abc_TtFlip.exit

bb.k:                                             ; preds = %bb.i
  %i.ey = icmp slt i32 %i.em, 6
  br i1 %i.ey, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.l, label %.lr.ph.i123, label %Abc_TtFlip.exit

.lr.ph.i123:                                      ; preds = %bb.l
  %i.ez = shl nuw nsw i32 1, %i.em
  %i.fa = zext nneg i32 %i.ez to i64              ; 7 uses
  %i.fb = sext i32 %i.em to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !28 ; 7 uses
  br i1 %min.iters.check210, label %scalar.ph209, label %vector.ph211

vector.ph211:                                     ; preds = %.lr.ph.i123
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.fa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert213 = insertelement <2 x i64> poison, i64 %i.fd, i64 0
  %broadcast.splat214 = shufflevector <2 x i64> %broadcast.splatinsert213, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph211
  %index216 = phi i64 [ 0, %vector.ph211 ], [ %index.next218, %vector.body215 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index216 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fe, align 8, !tbaa !28 ; 2 uses
  %wide.load217 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !28 ; 2 uses
  %i.fg = shl <2 x i64> %wide.load, %broadcast.splat
  %i.fh = shl <2 x i64> %wide.load217, %broadcast.splat
  %i.fi = and <2 x i64> %i.fg, %broadcast.splat214
  %i.fj = and <2 x i64> %i.fh, %broadcast.splat214
  %i.fk = and <2 x i64> %wide.load, %broadcast.splat214
  %i.fl = and <2 x i64> %wide.load217, %broadcast.splat214
  %i.fm = lshr <2 x i64> %i.fk, %broadcast.splat
  %i.fn = lshr <2 x i64> %i.fl, %broadcast.splat
end_hunk_1
begin_hunk_2_@Dau_PrintNpnFunctions:bb.a

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.i126 = phi i64 [ %i.ih, %bb.p ], [ %indvars.iv.next.i127, %bb.q ] ; 3 uses
  %i.ii = load i64, ptr %.01523.i, align 8, !tbaa !28
  %i.ij = shl nsw i64 %indvars.iv.i126, 2
  %i.ik = and i64 %i.ij, 4294967292
  %i.il = lshr i64 %i.ii, %i.ik
  %i.im = trunc i64 %i.il to i32
  %i.in = and i32 %i.im, 15                       ; 3 uses
  %i.io = icmp samesign ult i32 %i.in, 10
  %i.ip = or disjoint i32 %i.in, 48
  %i.iq = add nuw nsw i32 %i.in, 55
  %.0.i18.i = select i1 %i.io, i32 %i.ip, i32 %i.iq
  %fputc.i = tail call i32 @fputc(i32 %.0.i18.i, ptr %i.ht) ; 0 uses
  %indvars.iv.next.i127 = add nsw i64 %indvars.iv.i126, -1
  %i.ir = icmp sgt i64 %indvars.iv.i126, 0
  br i1 %i.ir, label %bb.q, label %.loopexit.i, !llvm.loop !12

Abc_TtPrintHexRev.exit:                           ; preds = %.loopexit.i, %bb.n, %bb.o
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %Abc_TtPrintHexRev.exit
  tail call void @free(ptr noundef nonnull %i.p) #27
  br label %bb.s

bb.s:                                             ; preds = %Abc_TtPrintHexRev.exit, %bb.r
  %.not88 = icmp eq ptr %i.q, null
  br i1 %.not88, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.q) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.not89 = icmp eq ptr %i.i, null
  br i1 %.not89, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.i) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.not90 = icmp eq ptr %i.k, null
  br i1 %.not90, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.k) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.is = icmp eq ptr %i.f, null
  br i1 %i.is, label %Vec_MemHashFree.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !56 ; 3 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %Vec_IntFreeP.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i, label %bb.ab, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %i.ix) #27
  br label %bb.ab

bb.ab:                                            ; preds = %.thread.i.i, %bb.aa
  tail call void @free(ptr noundef nonnull %i.iu) #27
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.ab, %bb.z
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !56 ; 3 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %Vec_MemHashFree.exit, label %bb.ac

bb.ac:                                            ; preds = %Vec_IntFreeP.exit.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !35 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.jc, null
  br i1 %.not.i3.i, label %bb.ad, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.jc) #27
  br label %bb.ad

bb.ad:                                            ; preds = %.thread.i4.i, %bb.ac
  tail call void @free(ptr noundef nonnull %i.iz) #27
  br label %Vec_MemHashFree.exit

Vec_MemHashFree.exit:                             ; preds = %bb.y, %Vec_IntFreeP.exit.i, %bb.ad
  %i.jd = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !52 ; 2 uses
  %.not19.i = icmp slt i32 %i.je, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !47 ; 3 uses
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %Vec_MemHashFree.exit
  %narrow = add nuw i32 %i.je, 1
  %i.jf = zext i32 %narrow to i64
  br label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.preheader, %bb.af
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i131, %bb.af ], [ 0, %.lr.ph.i129.preheader ] ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %.pre23.i, i64 %indvars.iv.i130 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !49 ; 2 uses
  %.not18.i = icmp eq ptr %i.jh, null
  br i1 %.not18.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i129
  tail call void @free(ptr noundef nonnull %i.jh) #27
  store ptr null, ptr %i.jg, align 8, !tbaa !49
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i129
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next.i131, %i.jf
  br i1 %exitcond170.not, label %._crit_edge.thread.i, label %.lr.ph.i129, !llvm.loop !7

._crit_edge.i:                                    ; preds = %Vec_MemHashFree.exit
  %.not16.i = icmp eq ptr %.pre23.i, null
  br i1 %.not16.i, label %Vec_MemFree.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.af, %._crit_edge.i
  tail call void @free(ptr noundef nonnull %.pre23.i) #27
  br label %Vec_MemFree.exit

Vec_MemFree.exit:                                 ; preds = %._crit_edge.i, %._crit_edge.thread.i
  tail call void @free(ptr noundef nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Dau_CollectNpnFunctionsArray(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #27
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %5, align 8, !tbaa !23
  %.neg165 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  %.neg = sdiv i64 %i.e, -1000
  %.neg166 = add i64 %.neg, %.neg165
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg166, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.f = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !33
  store i32 100, ptr %i.f, align 8, !tbaa !34
  %i.h = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #29 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val113 = load i32, ptr %i.j, align 4, !tbaa !43 ; 2 uses
  %i.k = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 6 uses
  %i.l = add i32 %.val113, -1
  %or.cond.i = icmp ult i32 %i.l, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val113 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  store i32 0, ptr %i.m, align 4, !tbaa !33
  store i32 %spec.store.select.i, ptr %i.k, align 8, !tbaa !34
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.n = sext i32 %spec.store.select.i to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #29
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %Abc_Clock.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !35
  %i.s = call fastcc ptr @Vec_MemAllocForTTSimple(i32 noundef %1) ; 11 uses
  %i.t = icmp slt i32 %1, 7                       ; 2 uses
  %i.u = add nsw i32 %1, -6                       ; 2 uses
  %i.v = shl nuw i32 1, %i.u
  %i.w = select i1 %i.t, i32 1, i32 %i.v          ; 17 uses
  %i.x = call i32 @Extra_Factorial(i32 noundef %1) #27 ; 2 uses
  %i.y = call ptr @Extra_PermSchedule(i32 noundef %1) #27 ; 3 uses
  %i.z = call ptr @Extra_GreyCodeSchedule(i32 noundef %1) #27 ; 3 uses
  %i.aa = sext i32 %i.w to i64
  %i.ab = shl nsw i64 %i.aa, 3                    ; 3 uses
  %i.ac = call noalias ptr @malloc(i64 noundef %i.ab) #29 ; 43 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 3 uses
  %.val112 = load i32, ptr %i.j, align 4, !tbaa !43
  %i.ae = sdiv i32 %.val112, %i.w                 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph183, label %._crit_edge184

.lr.ph183:                                        ; preds = %Vec_IntAlloc.exit
  %i.ag = shl nuw nsw i32 1, %1
  %i.ah = select i1 %i.t, i32 0, i32 %i.u
  %i.ai = getelementptr i8, ptr %0, i64 8
  %i.aj = getelementptr i8, ptr %i.s, i64 4       ; 3 uses
  %i.ak = icmp slt i32 %i.w, 1                    ; 9 uses
  %wide.trip.count.i = zext i32 %i.w to i64       ; 7 uses
  %.not188 = icmp eq i32 %1, 31
  %i.al = icmp eq i32 %i.w, 1
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.aq = icmp sgt i32 %i.x, 0
  %i.ar = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %.val110.pre = load i32, ptr %i.aj, align 4, !tbaa !55
  %wide.trip.count = zext nneg i32 %i.ag to i64
  %wide.trip.count197 = zext nneg i32 %i.x to i64
  %i.as = add i64 %i.ab, %i.ad
  %min.iters.check344 = icmp ult i32 %i.w, 4
  %n.vec346 = and i64 %wide.trip.count.i, 2147483644
  %exitcond.not.i = icmp eq i32 %i.w, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %exitcond.not.i.1 = icmp eq i32 %i.w, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %min.iters.check304 = icmp ult i32 %i.w, 4
  %n.vec306 = and i64 %wide.trip.count.i, 2147483644
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i32 %i.w, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %min.iters.check292 = icmp ult i32 %i.w, 4
  %n.vec294 = and i64 %wide.trip.count.i, 2147483644
  %exitcond.not.i126 = icmp eq i32 %i.w, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %exitcond.not.i126.1 = icmp eq i32 %i.w, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %min.iters.check280 = icmp ult i32 %i.w, 4
  %n.vec282 = and i64 %wide.trip.count.i, 2147483644
  %min.iters.check = icmp ult i32 %i.w, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  %exitcond74.not.i = icmp eq i32 %i.w, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %exitcond74.not.i.1 = icmp eq i32 %i.w, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph183, %Vec_IntPush.exit159
  %i.bb = phi i32 [ %spec.store.select.i, %.lr.ph183 ], [ %i.lz, %Vec_IntPush.exit159 ]
  %i.bc = phi i32 [ 0, %.lr.ph183 ], [ %i.ma, %Vec_IntPush.exit159 ]
  %i.bd = phi ptr [ %i.h, %.lr.ph183 ], [ %i.li, %Vec_IntPush.exit159 ] ; 2 uses
  %i.be = phi ptr [ %i.h, %.lr.ph183 ], [ %i.lj, %Vec_IntPush.exit159 ] ; 2 uses
  %i.bf = phi i32 [ 100, %.lr.ph183 ], [ %i.lk, %Vec_IntPush.exit159 ] ; 2 uses
  %i.bg = phi i32 [ 0, %.lr.ph183 ], [ %i.ll, %Vec_IntPush.exit159 ] ; 2 uses
  %.val110 = phi i32 [ %.val110.pre, %.lr.ph183 ], [ %.val108, %Vec_IntPush.exit159 ] ; 5 uses
  %.0182 = phi i32 [ 0, %.lr.ph183 ], [ %i.md, %Vec_IntPush.exit159 ] ; 3 uses
  %i.bh = shl i32 %.0182, %i.ah
  %.val111 = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %.val111, i64 %i.bi ; 6 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !28
  %i.bl = and i64 %i.bk, 1
  %.not.i114 = icmp eq i64 %i.bl, 0
  br i1 %.not.i114, label %.preheader.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.d
  br i1 %i.ak, label %Abc_TtCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader14.i
  br i1 %min.iters.check344, label %.lr.ph.i, label %vector.body347

vector.body347:                                   ; preds = %.lr.ph.i.preheader, %vector.body347
  %index348 = phi i64 [ %index.next351, %vector.body347 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index348 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load349 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !28
  %wide.load350 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !28
  %i.bo = xor <2 x i64> %wide.load349, splat (i64 -1)
  %i.bp = xor <2 x i64> %wide.load350, splat (i64 -1)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index348 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <2 x i64> %i.bo, ptr %i.bq, align 8, !tbaa !28
  store <2 x i64> %i.bp, ptr %i.br, align 8, !tbaa !28
  %index.next351 = add nuw i64 %index348, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next351, %n.vec346
  br i1 %i.bs, label %Abc_TtCopy.exit, label %vector.body347, !llvm.loop !195

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.ak, label %Abc_TtCopy.exit, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.ar, i1 false), !tbaa !28
  br label %Abc_TtCopy.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %i.bt = load i64, ptr %i.bj, align 8, !tbaa !28
  %i.bu = xor i64 %i.bt, -1
  store i64 %i.bu, ptr %i.ac, align 8, !tbaa !28
  br i1 %exitcond.not.i, label %Abc_TtCopy.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !28
  %i.bx = xor i64 %i.bw, -1
  store i64 %i.bx, ptr %i.at, align 8, !tbaa !28
  br i1 %exitcond.not.i.1, label %Abc_TtCopy.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !28
  %i.ca = xor i64 %i.bz, -1
  store i64 %i.ca, ptr %i.au, align 8, !tbaa !28
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %vector.body347, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph18.i.preheader, %.preheader14.i, %.preheader.i
  %i.cb = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.s, ptr noundef %i.ac) ; 0 uses
  br i1 %.not188, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Abc_TtCopy.exit, %Abc_TtNot.exit133
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TtNot.exit133 ], [ 0, %Abc_TtCopy.exit ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !29 ; 6 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ce = load i64, ptr %i.ac, align 8, !tbaa !28 ; 2 uses
  %i.cf = shl nuw i32 1, %i.cd
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = shl i64 %i.ce, %i.cg
  %i.ci = sext i32 %i.cd to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !28 ; 2 uses
  %i.cl = and i64 %i.ch, %i.ck
  %i.cm = and i64 %i.ck, %i.ce
  %i.cn = lshr i64 %i.cm, %i.cg
  %i.co = or i64 %i.cn, %i.cl
  store i64 %i.co, ptr %i.ac, align 8, !tbaa !28
  br label %Abc_TtFlip.exit

bb.f:                                             ; preds = %.lr.ph
  %i.cp = icmp slt i32 %i.cd, 6
  br i1 %i.cp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %Abc_TtFlip.exit, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %bb.g
  %i.cq = shl nuw nsw i32 1, %i.cd
  %i.cr = zext nneg i32 %i.cq to i64              ; 7 uses
  %i.cs = sext i32 %i.cd to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !28 ; 7 uses
  br i1 %min.iters.check304, label %scalar.ph303, label %vector.ph305

vector.ph305:                                     ; preds = %.lr.ph.i120
  %broadcast.splatinsert307 = insertelement <2 x i64> poison, i64 %i.cr, i64 0
  %broadcast.splat308 = shufflevector <2 x i64> %broadcast.splatinsert307, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert309 = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %broadcast.splat310 = shufflevector <2 x i64> %broadcast.splatinsert309, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph305
  %index312 = phi i64 [ 0, %vector.ph305 ], [ %index.next315, %vector.body311 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index312 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load313 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !28 ; 2 uses
  %wide.load314 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !28 ; 2 uses
  %i.cx = shl <2 x i64> %wide.load313, %broadcast.splat308
  %i.cy = shl <2 x i64> %wide.load314, %broadcast.splat308
  %i.cz = and <2 x i64> %i.cx, %broadcast.splat310
  %i.da = and <2 x i64> %i.cy, %broadcast.splat310
  %i.db = and <2 x i64> %wide.load313, %broadcast.splat310
  %i.dc = and <2 x i64> %wide.load314, %broadcast.splat310
  %i.dd = lshr <2 x i64> %i.db, %broadcast.splat308
  %i.de = lshr <2 x i64> %i.dc, %broadcast.splat308
  %i.df = or <2 x i64> %i.dd, %i.cz
  %i.dg = or <2 x i64> %i.de, %i.da
  store <2 x i64> %i.df, ptr %i.cv, align 8, !tbaa !28
  store <2 x i64> %i.dg, ptr %i.cw, align 8, !tbaa !28
  %index.next315 = add nuw i64 %index312, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next315, %n.vec306
  br i1 %i.dh, label %Abc_TtFlip.exit, label %vector.body311, !llvm.loop !196

scalar.ph303:                                     ; preds = %.lr.ph.i120
  %i.di = load i64, ptr %i.ac, align 8, !tbaa !28 ; 2 uses
  %i.dj = shl i64 %i.di, %i.cr
  %i.dk = and i64 %i.dj, %i.cu
  %i.dl = and i64 %i.di, %i.cu
  %i.dm = lshr i64 %i.dl, %i.cr
  %i.dn = or i64 %i.dm, %i.dk
  store i64 %i.dn, ptr %i.ac, align 8, !tbaa !28
  %i.do = load i64, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  %i.dp = shl i64 %i.do, %i.cr
  %i.dq = and i64 %i.dp, %i.cu
  %i.dr = and i64 %i.do, %i.cu
  %i.ds = lshr i64 %i.dr, %i.cr
  %i.dt = or i64 %i.ds, %i.dq
  store i64 %i.dt, ptr %i.av, align 8, !tbaa !28
  br i1 %exitcond60.not.i.1, label %Abc_TtFlip.exit, label %scalar.ph303.2

scalar.ph303.2:                                   ; preds = %scalar.ph303
  %i.du = load i64, ptr %i.aw, align 8, !tbaa !28 ; 2 uses
  %i.dv = shl i64 %i.du, %i.cr
  %i.dw = and i64 %i.dv, %i.cu
  %i.dx = and i64 %i.du, %i.cu
  %i.dy = lshr i64 %i.dx, %i.cr
  %i.dz = or i64 %i.dy, %i.dw
  store i64 %i.dz, ptr %i.aw, align 8, !tbaa !28
  br label %Abc_TtFlip.exit

bb.h:                                             ; preds = %bb.f
  %i.ea = add nsw i32 %i.cd, -6                   ; 3 uses
  %i.eb = shl nuw i32 1, %i.ea                    ; 4 uses
  br i1 %i.ak, label %Abc_TtFlip.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.h
end_hunk_2
begin_hunk_3_@Dau_CollectNpnFunctionsArray:bb.a
  %i.fm = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.fn = xor i64 %i.fm, -1
  store i64 %i.fn, ptr %i.ac, align 8, !tbaa !28
  br i1 %exitcond.not.i126, label %.lr.ph.preheader.i127, label %.lr.ph.i123.1

.lr.ph.i123.1:                                    ; preds = %.lr.ph.i123
  %i.fo = load i64, ptr %i.ax, align 8, !tbaa !28
  %i.fp = xor i64 %i.fo, -1
  store i64 %i.fp, ptr %i.ax, align 8, !tbaa !28
  br i1 %exitcond.not.i126.1, label %.lr.ph.preheader.i127, label %.lr.ph.i123.2

.lr.ph.i123.2:                                    ; preds = %.lr.ph.i123.1
  %i.fq = load i64, ptr %i.ay, align 8, !tbaa !28
  %i.fr = xor i64 %i.fq, -1
  store i64 %i.fr, ptr %i.ay, align 8, !tbaa !28
  br label %.lr.ph.preheader.i127

.lr.ph.preheader.i127:                            ; preds = %vector.body295, %.lr.ph.i123, %.lr.ph.i123.1, %.lr.ph.i123.2
  %i.fs = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ac) ; 0 uses
  br i1 %min.iters.check280, label %.lr.ph.i129, label %vector.body283

vector.body283:                                   ; preds = %.lr.ph.preheader.i127, %vector.body283
  %index284 = phi i64 [ %index.next287, %vector.body283 ], [ 0, %.lr.ph.preheader.i127 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index284 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %wide.load285 = load <2 x i64>, ptr %i.ft, align 8, !tbaa !28
  %wide.load286 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !28
  %i.fv = xor <2 x i64> %wide.load285, splat (i64 -1)
  %i.fw = xor <2 x i64> %wide.load286, splat (i64 -1)
  store <2 x i64> %i.fv, ptr %i.ft, align 8, !tbaa !28
  store <2 x i64> %i.fw, ptr %i.fu, align 8, !tbaa !28
  %index.next287 = add nuw i64 %index284, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next287, %n.vec282
  br i1 %i.fx, label %Abc_TtNot.exit133, label %vector.body283, !llvm.loop !203

.lr.ph.i129:                                      ; preds = %.lr.ph.preheader.i127, %.lr.ph.i129
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i131, %.lr.ph.i129 ], [ 0, %.lr.ph.preheader.i127 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i130 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !28
  %i.ga = xor i64 %i.fz, -1
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !28
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %exitcond.not.i132 = icmp eq i64 %indvars.iv.next.i131, %wide.trip.count.i
  br i1 %exitcond.not.i132, label %Abc_TtNot.exit133, label %.lr.ph.i129, !llvm.loop !204

Abc_TtNot.exit133.sink.split:                     ; preds = %Abc_TtFlip.exit
  %i.gb = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ac) ; 0 uses
  br label %Abc_TtNot.exit133

Abc_TtNot.exit133:                                ; preds = %vector.body283, %.lr.ph.i129, %Abc_TtNot.exit133.sink.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !205

._crit_edge:                                      ; preds = %Abc_TtNot.exit133, %Abc_TtCopy.exit
  %.val109 = load i32, ptr %i.aj, align 4, !tbaa !55 ; 3 uses
  %i.gc = icmp slt i32 %.val110, %.val109
  br i1 %i.gc, label %.lr.ph178, label %.preheader

.preheader.loopexit:                              ; preds = %._crit_edge175
  %.val108.pre = load i32, ptr %i.aj, align 4, !tbaa !55
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge
  %.val108 = phi i32 [ %.val108.pre, %.preheader.loopexit ], [ %.val109, %._crit_edge ] ; 4 uses
  %i.gd = icmp slt i32 %.val110, %.val108
  br i1 %i.gd, label %.lr.ph180, label %._crit_edge181

.lr.ph178:                                        ; preds = %._crit_edge, %._crit_edge175
  %.091176 = phi i32 [ %i.kk, %._crit_edge175 ], [ %.val110, %._crit_edge ] ; 3 uses
  br i1 %i.ak, label %Abc_TtCopy.exit141, label %.lr.ph18.i137.preheader

.lr.ph18.i137.preheader:                          ; preds = %.lr.ph178
  %i.ge = load ptr, ptr %i.an, align 8, !tbaa !47
  %i.gf = load i32, ptr %i.ao, align 8, !tbaa !48
  %i.gg = ashr i32 %.091176, %i.gf
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !49
  %i.gk = load i32, ptr %i.ap, align 4, !tbaa !51
  %i.gl = and i32 %i.gk, %.091176
  %i.gm = load i32, ptr %i.s, align 8, !tbaa !50
  %i.gn = mul i32 %i.gl, %i.gm
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr [8 x i8], ptr %i.gj, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.gp, i64 %i.ar, i1 false), !tbaa !28
  br label %Abc_TtCopy.exit141

Abc_TtCopy.exit141:                               ; preds = %.lr.ph18.i137.preheader, %.lr.ph178
  br i1 %i.aq, label %.lr.ph174, label %._crit_edge175

.lr.ph174:                                        ; preds = %Abc_TtCopy.exit141, %Abc_TtSwapAdjacent.exit
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %Abc_TtSwapAdjacent.exit ], [ 0, %Abc_TtCopy.exit141 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv194
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !29 ; 6 uses
  %i.gs = icmp slt i32 %i.gr, 5
  br i1 %i.gs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph174
  br i1 %i.ak, label %Abc_TtSwapAdjacent.exit, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %bb.i
  %i.gt = shl nuw nsw i32 1, %i.gr
  %i.gu = sext i32 %i.gr to i64
  %i.gv = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.gu ; 3 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !28 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !28 ; 4 uses
  %i.gz = zext nneg i32 %i.gt to i64              ; 7 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !28 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gw, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i64> poison, i64 %i.gy, i64 0
  %broadcast.splat253 = shufflevector <2 x i64> %broadcast.splatinsert252, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert254 = insertelement <2 x i64> poison, i64 %i.gz, i64 0
  %broadcast.splat255 = shufflevector <2 x i64> %broadcast.splatinsert254, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert256 = insertelement <2 x i64> poison, i64 %i.hb, i64 0
  %broadcast.splat257 = shufflevector <2 x i64> %broadcast.splatinsert256, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.hc, align 8, !tbaa !28 ; 3 uses
  %wide.load258 = load <2 x i64>, ptr %i.hd, align 8, !tbaa !28 ; 3 uses
  %i.he = and <2 x i64> %wide.load, %broadcast.splat
  %i.hf = and <2 x i64> %wide.load258, %broadcast.splat
  %i.hg = and <2 x i64> %wide.load, %broadcast.splat253
  %i.hh = and <2 x i64> %wide.load258, %broadcast.splat253
  %i.hi = shl <2 x i64> %i.hg, %broadcast.splat255
  %i.hj = shl <2 x i64> %i.hh, %broadcast.splat255
  %i.hk = or <2 x i64> %i.hi, %i.he
  %i.hl = or <2 x i64> %i.hj, %i.hf
  %i.hm = and <2 x i64> %wide.load, %broadcast.splat257
  %i.hn = and <2 x i64> %wide.load258, %broadcast.splat257
  %i.ho = lshr <2 x i64> %i.hm, %broadcast.splat255
  %i.hp = lshr <2 x i64> %i.hn, %broadcast.splat255
  %i.hq = or <2 x i64> %i.hk, %i.ho
  %i.hr = or <2 x i64> %i.hl, %i.hp
  store <2 x i64> %i.hq, ptr %i.hc, align 8, !tbaa !28
  store <2 x i64> %i.hr, ptr %i.hd, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %Abc_TtSwapAdjacent.exit, label %vector.body, !llvm.loop !206

scalar.ph:                                        ; preds = %.lr.ph64.i
  %i.ht = load i64, ptr %i.ac, align 8, !tbaa !28 ; 3 uses
  %i.hu = and i64 %i.ht, %i.gw
  %i.hv = and i64 %i.ht, %i.gy
  %i.hw = shl i64 %i.hv, %i.gz
  %i.hx = or i64 %i.hw, %i.hu
  %i.hy = and i64 %i.ht, %i.hb
  %i.hz = lshr i64 %i.hy, %i.gz
  %i.ia = or i64 %i.hx, %i.hz
  store i64 %i.ia, ptr %i.ac, align 8, !tbaa !28
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.ib = load i64, ptr %i.az, align 8, !tbaa !28 ; 3 uses
  %i.ic = and i64 %i.ib, %i.gw
  %i.id = and i64 %i.ib, %i.gy
  %i.ie = shl i64 %i.id, %i.gz
  %i.if = or i64 %i.ie, %i.ic
  %i.ig = and i64 %i.ib, %i.hb
  %i.ih = lshr i64 %i.ig, %i.gz
  %i.ii = or i64 %i.if, %i.ih
  store i64 %i.ii, ptr %i.az, align 8, !tbaa !28
  br i1 %exitcond74.not.i.1, label %Abc_TtSwapAdjacent.exit, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.ij = load i64, ptr %i.ba, align 8, !tbaa !28 ; 3 uses
  %i.ik = and i64 %i.ij, %i.gw
  %i.il = and i64 %i.ij, %i.gy
  %i.im = shl i64 %i.il, %i.gz
  %i.in = or i64 %i.im, %i.ik
  %i.io = and i64 %i.ij, %i.hb
  %i.ip = lshr i64 %i.io, %i.gz
  %i.iq = or i64 %i.in, %i.ip
  store i64 %i.iq, ptr %i.ba, align 8, !tbaa !28
  br label %Abc_TtSwapAdjacent.exit

bb.j:                                             ; preds = %.lr.ph174
  %i.ir = icmp eq i32 %i.gr, 5
  br i1 %i.ir, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.ak, label %Abc_TtSwapAdjacent.exit, label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %bb.k, %.lr.ph.i151
  %.05462.i = phi ptr [ %i.iv, %.lr.ph.i151 ], [ %i.ac, %bb.k ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.it = load <2 x i32>, ptr %i.is, align 4, !tbaa !29
  %i.iu = shufflevector <2 x i32> %i.it, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.iu, ptr %i.is, align 4, !tbaa !29
  %i.iv = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.iw = icmp ult ptr %i.iv, %i.am
  br i1 %i.iw, label %.lr.ph.i151, label %Abc_TtSwapAdjacent.exit, !llvm.loop !10

bb.l:                                             ; preds = %bb.j
  %i.ix = icmp samesign ult i32 %i.gr, 7
  %i.iy = add nsw i32 %i.gr, -6
  %i.iz = shl nuw i32 1, %i.iy
  %i.ja = select i1 %i.ix, i32 1, i32 %i.iz       ; 7 uses
  br i1 %i.ak, label %Abc_TtSwapAdjacent.exit, label %.preheader.lr.ph.i142

.preheader.lr.ph.i142:                            ; preds = %bb.l
  %i.jb = icmp sgt i32 %i.ja, 0
  %i.jc = shl i32 %i.ja, 2                        ; 2 uses
  %i.jd = sext i32 %i.jc to i64                   ; 3 uses
  br i1 %i.jb, label %.preheader.us.preheader.i143, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i143:                     ; preds = %.preheader.lr.ph.i142
  %i.je = shl nuw nsw i32 %i.ja, 1
  %i.jf = zext nneg i32 %i.ja to i64              ; 6 uses
  %i.jg = zext nneg i32 %i.je to i64              ; 2 uses
  %i.jh = shl nsw i64 %i.jd, 3                    ; 4 uses
  %i.ji = shl nuw nsw i64 %i.jg, 3                ; 2 uses
  %i.jj = shl nuw nsw i64 %i.jf, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.ji
  %i.jk = shl nuw nsw i64 %i.jf, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.jh, i64 1)
  %i.jl = add i64 %i.jh, %i.ad
  %umax263 = call i64 @llvm.umax.i64(i64 %i.as, i64 %i.jl)
  %i.jm = sub i64 %umax263, %i.ad                 ; 2 uses
  %i.jn = icmp ne i64 %i.jm, %i.jh
  %umin = zext i1 %i.jn to i64                    ; 2 uses
  %i.jo = or disjoint i64 %i.jh, %umin
  %i.jp = sub i64 %i.jm, %i.jo
  %scevgep264 = getelementptr i8, ptr %i.ac, i64 %i.jj
  %min.iters.check266 = icmp ult i32 %i.ja, 4
  %invariant.gep = getelementptr i8, ptr %i.ac, i64 %i.jk
  %invariant.gep379 = getelementptr i8, ptr %i.ac, i64 %i.jj
  %invariant.gep381 = getelementptr i8, ptr %invariant.gep379, i64 %i.ji
  %stride.check = icmp slt i32 %i.jc, 0
  %n.vec268 = and i64 %i.jf, 2147483644
  %xtraiter371 = and i64 %i.jf, 1
  %i.jq = icmp eq i32 %i.ja, 1
  %unroll_iter374 = and i64 %i.jf, 2147483646
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  %lcmp.mod373 = trunc i32 %i.ja to i1
  br label %.preheader.us.i144

.preheader.us.i144:                               ; preds = %._crit_edge.us.i150, %.preheader.us.preheader.i143
  %.061.us.i = phi ptr [ %i.kh, %._crit_edge.us.i150 ], [ %i.ac, %.preheader.us.preheader.i143 ] ; 3 uses
  %invariant.gep.i145 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.jf ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.jg ; 4 uses
  br i1 %min.iters.check266, label %scalar.ph265.preheader, label %vector.memcheck

scalar.ph265.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i144
  br i1 %i.jq, label %scalar.ph265.epil.preheader, label %scalar.ph265

vector.memcheck:                                  ; preds = %.preheader.us.i144
  %i.jr = udiv i64 %i.jp, %umax
  %i.js = add i64 %i.jr, %umin
  %i.jt = mul i64 %i.js, %i.jd
  %i.ju = shl i64 %i.jt, 3                        ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ju
  %gep382 = getelementptr i8, ptr %invariant.gep381, i64 %i.ju
  %bound0 = icmp ult ptr %scevgep264, %gep382
  %bound1 = icmp ult ptr %scevgep, %gep
  %found.conflict = and i1 %bound0, %bound1
  %i.jv = or i1 %found.conflict, %stride.check
  br i1 %i.jv, label %scalar.ph265.preheader, label %vector.body269

vector.body269:                                   ; preds = %vector.memcheck, %vector.body269
  %index270 = phi i64 [ %index.next275, %vector.body269 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i145, i64 %index270 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %wide.load271 = load <2 x i64>, ptr %i.jw, align 8, !tbaa !28, !alias.scope !219, !noalias !220
  %wide.load272 = load <2 x i64>, ptr %i.jx, align 8, !tbaa !28, !alias.scope !219, !noalias !220
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index270 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 2 uses
  %wide.load273 = load <2 x i64>, ptr %i.jy, align 8, !tbaa !28, !alias.scope !220
  %wide.load274 = load <2 x i64>, ptr %i.jz, align 8, !tbaa !28, !alias.scope !220
  store <2 x i64> %wide.load273, ptr %i.jw, align 8, !tbaa !28, !alias.scope !219, !noalias !220
  store <2 x i64> %wide.load274, ptr %i.jx, align 8, !tbaa !28, !alias.scope !219, !noalias !220
  store <2 x i64> %wide.load271, ptr %i.jy, align 8, !tbaa !28, !alias.scope !220
  store <2 x i64> %wide.load272, ptr %i.jz, align 8, !tbaa !28, !alias.scope !220
  %index.next275 = add nuw i64 %index270, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.ka, label %._crit_edge.us.i150, label %vector.body269, !llvm.loop !210

scalar.ph265:                                     ; preds = %scalar.ph265.preheader, %scalar.ph265
  %indvars.iv.i146 = phi i64 [ %indvars.iv.next.i148.1, %scalar.ph265 ], [ 0, %scalar.ph265.preheader ] ; 4 uses
  %niter375 = phi i64 [ %niter375.next.1, %scalar.ph265 ], [ 0, %scalar.ph265.preheader ]
  %gep.i147 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i145, i64 %indvars.iv.i146 ; 2 uses
  %i.kb = load i64, ptr %gep.i147, align 8, !tbaa !28
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i146 ; 2 uses
  %i.kc = load i64, ptr %gep81.i, align 8, !tbaa !28
  store i64 %i.kc, ptr %gep.i147, align 8, !tbaa !28
  store i64 %i.kb, ptr %gep81.i, align 8, !tbaa !28
  %indvars.iv.next.i148 = or disjoint i64 %indvars.iv.i146, 1 ; 2 uses
  %gep.i147.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i145, i64 %indvars.iv.next.i148 ; 2 uses
  %i.kd = load i64, ptr %gep.i147.1, align 8, !tbaa !28
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i148 ; 2 uses
  %i.ke = load i64, ptr %gep81.i.1, align 8, !tbaa !28
  store i64 %i.ke, ptr %gep.i147.1, align 8, !tbaa !28
  store i64 %i.kd, ptr %gep81.i.1, align 8, !tbaa !28
  %indvars.iv.next.i148.1 = add nuw nsw i64 %indvars.iv.i146, 2 ; 2 uses
  %niter375.next.1 = add i64 %niter375, 2         ; 2 uses
  %niter375.ncmp.1 = icmp eq i64 %niter375.next.1, %unroll_iter374
  br i1 %niter375.ncmp.1, label %._crit_edge.us.i150.loopexit.unr-lcssa, label %scalar.ph265, !llvm.loop !211

._crit_edge.us.i150.loopexit.unr-lcssa:           ; preds = %scalar.ph265
  br i1 %lcmp.mod372.not, label %._crit_edge.us.i150, label %scalar.ph265.epil.preheader

scalar.ph265.epil.preheader:                      ; preds = %._crit_edge.us.i150.loopexit.unr-lcssa, %scalar.ph265.preheader
  %indvars.iv.i146.epil.init = phi i64 [ 0, %scalar.ph265.preheader ], [ %indvars.iv.next.i148.1, %._crit_edge.us.i150.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod373)
  %gep.i147.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i145, i64 %indvars.iv.i146.epil.init ; 2 uses
  %i.kf = load i64, ptr %gep.i147.epil, align 8, !tbaa !28
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i146.epil.init ; 2 uses
  %i.kg = load i64, ptr %gep81.i.epil, align 8, !tbaa !28
  store i64 %i.kg, ptr %gep.i147.epil, align 8, !tbaa !28
  store i64 %i.kf, ptr %gep81.i.epil, align 8, !tbaa !28
  br label %._crit_edge.us.i150

._crit_edge.us.i150:                              ; preds = %vector.body269, %scalar.ph265.epil.preheader, %._crit_edge.us.i150.loopexit.unr-lcssa
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.jd ; 2 uses
  %i.ki = icmp ult ptr %i.kh, %i.am
  br i1 %i.ki, label %.preheader.us.i144, label %Abc_TtSwapAdjacent.exit, !llvm.loop !9

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i150, %.lr.ph.i151, %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %bb.i, %bb.k, %bb.l, %.preheader.lr.ph.i142
  %i.kj = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.s, ptr noundef %i.ac) ; 0 uses
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %._crit_edge175, label %.lr.ph174, !llvm.loop !212

._crit_edge175:                                   ; preds = %Abc_TtSwapAdjacent.exit, %Abc_TtCopy.exit141
  %i.kk = add i32 %.091176, 1                     ; 2 uses
  %exitcond199.not = icmp eq i32 %i.kk, %.val109
  br i1 %exitcond199.not, label %.preheader.loopexit, label %.lr.ph178, !llvm.loop !213

.lr.ph180:                                        ; preds = %.preheader, %Vec_IntPush.exit
  %i.kl = phi ptr [ %i.la, %Vec_IntPush.exit ], [ %i.bd, %.preheader ] ; 2 uses
  %i.km = phi ptr [ %i.la, %Vec_IntPush.exit ], [ %i.be, %.preheader ] ; 4 uses
  %i.kn = phi i32 [ %i.lb, %Vec_IntPush.exit ], [ %i.bf, %.preheader ] ; 8 uses
  %i.ko = phi i32 [ %i.lc, %Vec_IntPush.exit ], [ %i.bg, %.preheader ] ; 2 uses
  %.1179 = phi i32 [ %i.lf, %Vec_IntPush.exit ], [ %.val110, %.preheader ]
  %i.kp = icmp eq i32 %i.ko, %i.kn
  br i1 %i.kp, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %.lr.ph180
  %i.kq = icmp slt i32 %i.kn, 16
  br i1 %i.kq, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not9.i.i = icmp eq ptr %i.km, null
  br i1 %.not9.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kr = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.km, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.ks = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.m
  %i.kt = icmp samesign ult i32 %i.kn, 1073741823
  %i.ku = shl nuw nsw i32 %i.kn, 1
  %spec.select.i = select i1 %i.kt, i32 %i.ku, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.kn, %spec.select.i
  br i1 %.not.i9.i, label %bb.r, label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i = icmp eq ptr %i.km, null
  %i.kv = zext nneg i32 %spec.select.i to i64
  %i.kw = shl nuw nsw i64 %i.kv, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kx = call ptr @realloc(ptr noundef nonnull %i.km, i64 noundef %i.kw) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.ky = call noalias ptr @malloc(i64 noundef %i.kw) #29
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.s, %bb.t, %bb.o, %bb.p
  %storemerge167 = phi ptr [ %i.ks, %bb.p ], [ %i.kr, %bb.o ], [ %i.kx, %bb.s ], [ %i.ky, %bb.t ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i, %bb.s ], [ %spec.select.i, %bb.t ] ; 2 uses
  store ptr %storemerge167, ptr %i.i, align 8, !tbaa !35
  store i32 %spec.select.sink.i, ptr %i.f, align 8, !tbaa !34
  %.pre = load i32, ptr %i.g, align 4, !tbaa !33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph180, %bb.q, %Vec_IntGrow.exit11.sink.split.i
  %i.kz = phi i32 [ %i.ko, %.lr.ph180 ], [ %i.kn, %bb.q ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.la = phi ptr [ %i.kl, %.lr.ph180 ], [ %i.kl, %bb.q ], [ %storemerge167, %Vec_IntGrow.exit11.sink.split.i ] ; 5 uses
  %i.lb = phi i32 [ %i.kn, %.lr.ph180 ], [ %i.kn, %bb.q ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.lc = add nsw i32 %i.kz, 1                    ; 3 uses
  store i32 %i.lc, ptr %i.g, align 4, !tbaa !33
  %i.ld = sext i32 %i.kz to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.ld
  store i32 %.0182, ptr %i.le, align 4, !tbaa !29
end_hunk_3
