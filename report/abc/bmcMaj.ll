Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj?download=true
inline.NumInlined: 1214
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 171
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@Maj_ManAddCnf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br i1 %.not107.not.1175, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i32 %i.ha, ptr %i.b, align 4, !tbaa !38
  store i32 %.reass140.reass.1, ptr %i.ay, align 4, !tbaa !38
  %i.hd = load i32, ptr %i.ar, align 8, !tbaa !18
  %i.he = add nsw i32 %i.hd, -1
  %.not105.1.1 = icmp eq i32 %i.he, %i.bk
  br i1 %.not105.1.1, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 %.reass142.reass.1, ptr %i.bf, align 4, !tbaa !38
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.3.1.1 = phi i32 [ 3, %bb.aq ], [ 2, %bb.ap ]
  %i.hf = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.hg = call i32 @bmcg_sat_solver_addclause(ptr noundef %i.hf, ptr noundef nonnull %i.b, i32 noundef %.3.1.1) #41
  %.not107.not.1.1 = icmp eq i32 %i.hg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br i1 %.not107.not.1.1, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i32 %i.ha, ptr %i.b, align 4, !tbaa !38
  store i32 %.reass.reass.1, ptr %i.ay, align 4, !tbaa !38
  %i.hh = load i32, ptr %i.ar, align 8, !tbaa !18
  %i.hi = add nsw i32 %i.hh, -1
  %.not105.2.1 = icmp eq i32 %i.hi, %i.bk
  br i1 %.not105.2.1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 %.reass142.reass.1, ptr %i.bg, align 4, !tbaa !38
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.3.2.1 = phi i32 [ 3, %bb.at ], [ 2, %bb.as ]
  %i.hj = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.hk = call i32 @bmcg_sat_solver_addclause(ptr noundef %i.hj, ptr noundef nonnull %i.b, i32 noundef %.3.2.1) #41
  %.not107.not.2.1 = icmp eq i32 %i.hk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br i1 %.not107.not.2.1, label %.critedge, label %.loopexit.loopexit.1

.loopexit.loopexit.1:                             ; preds = %bb.au
  %.pre191 = load i32, ptr %i.ar, align 8, !tbaa !18
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.loopexit.1, %.loopexit
  %i.hl = phi i32 [ %.pre191, %.loopexit.loopexit.1 ], [ %i.gz, %.loopexit ] ; 2 uses
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, 1 ; 2 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next177, %i.hm
  br i1 %i.hn, label %bb.b, label %._crit_edge153, !llvm.loop !71

._crit_edge153:                                   ; preds = %.loopexit.1, %._crit_edge
  %i.ho = load i32, ptr %i.al, align 4, !tbaa !54
  %i.hp = shl nsw i32 %i.ho, 2
  %i.hq = load i32, ptr %i.aj, align 8, !tbaa !36
  %i.hr = add nsw i32 %i.hq, %i.hp
  store i32 %i.hr, ptr %i.aj, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.af, %bb.ai, %bb.ao, %bb.ar, %bb.au, %.loopexit167, %._crit_edge153
  %.12 = phi i32 [ 1, %._crit_edge153 ], [ 0, %.loopexit167 ], [ 0, %bb.au ], [ 0, %bb.ar ], [ 0, %bb.ao ], [ 0, %bb.ai ], [ 0, %bb.af ], [ 0, %bb.al ]
  ret i32 %.12
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Maj_ManExactSynthesis(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #41
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %8, align 8, !tbaa !72
  %.neg37 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !74
  %.neg36 = sdiv i64 %i.f, -1000
  %.neg38 = add i64 %.neg36, %.neg37
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg38, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.g = call ptr @Maj_ManAlloc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 14 uses
  %i.h = call i32 @Maj_ManAddCnfStart(ptr noundef %i.g) ; 0 uses
  %i.i = load i32, ptr %i.g, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.i, i32 noundef %i.k) ; 0 uses
  %.pr33 = load i32, ptr %i.a, align 4, !tbaa !38
  %.not42 = icmp eq i32 %.pr33, -1
  br i1 %.not42, label %.thread32, label %.lr.ph

.lr.ph:                                           ; preds = %Abc_Clock.exit
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 49464
  %.not24 = icmp eq i32 %4, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.s = getelementptr i8, ptr %i.g, i64 12       ; 3 uses
  %i.t = getelementptr i8, ptr %i.g, i64 32       ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %.lr.ph
  %.02243 = phi i32 [ 0, %.lr.ph ], [ %i.hh, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.u = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #41
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %Abc_Clock.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %7, align 8, !tbaa !72
  %.neg34 = mul i64 %i.w, -1000000
  %i.x = load i64, ptr %i.m, align 8, !tbaa !74
  %.neg = sdiv i64 %i.x, -1000
  %.neg35 = add i64 %.neg, %.neg34
  br label %Abc_Clock.exit26

Abc_Clock.exit26:                                 ; preds = %bb.c, %bb.d
  %.0.i25.neg = phi i64 [ %.neg35, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.y = load i32, ptr %i.a, align 4, !tbaa !38
  %i.z = call i32 @Maj_ManAddCnf(ptr noundef nonnull %i.g, i32 noundef %i.y)
  %.not23 = icmp eq i32 %i.z, 0
  br i1 %.not23, label %.loopexit41, label %bb.e

bb.e:                                             ; preds = %Abc_Clock.exit26
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !55  ; 6 uses
  %i.ab = call i32 @bmcg_sat_solver_solve(ptr noundef %i.aa, ptr noundef null, i32 noundef 0) #41
  br i1 %.not24, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.02243) ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !75
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !25
  call void @Extra_PrintBinary(ptr noundef %i.ad, ptr noundef nonnull %i.a, i32 noundef %i.ae) #41
  %i.af = load i32, ptr %i.o, align 8, !tbaa !36
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.af) ; 0 uses
  %i.ah = call i32 @bmcg_sat_solver_clausenum(ptr noundef %i.aa) #41
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.ah) ; 0 uses
  %i.aj = call i32 @bmcg_sat_solver_conflictnum(ptr noundef %i.aa) #41
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.aj) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.al = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #41
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %Abc_Clock.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %6, align 8, !tbaa !72
  %i.ao = mul nsw i64 %i.an, 1000000
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !74
  %i.aq = sdiv i64 %i.ap, 1000
  %i.ar = add nsw i64 %i.aq, %i.ao
  br label %Abc_Clock.exit28

Abc_Clock.exit28:                                 ; preds = %bb.f, %bb.g
  %.0.i27 = phi i64 [ %i.ar, %bb.g ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.as = add i64 %.0.i27, %.0.i25.neg
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.12)
  %i.at = sitofp i64 %i.as to double
  %i.au = fdiv double %i.at, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.138, double noundef %i.au)
  br label %bb.h

bb.h:                                             ; preds = %Abc_Clock.exit28, %bb.e
  %i.av = icmp eq i32 %i.ab, -1
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %.loopexit41

bb.j:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !25  ; 6 uses
  %i.ax = add nsw i32 %i.aw, 2
  %i.ay = load i32, ptr %i.q, align 8, !tbaa !18  ; 6 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.preheader63.lr.ph.i, label %.preheader.i

.preheader63.lr.ph.i:                             ; preds = %bb.j
  %i.ba = icmp sgt i32 %i.ay, 0
  br i1 %i.ba, label %.preheader63.preheader.i, label %.preheader63.lr.ph.split.us.i

.preheader63.preheader.i:                         ; preds = %.preheader63.lr.ph.i
  %i.bb = sext i32 %i.aw to i64                   ; 2 uses
  %i.bc = add nsw i64 %i.bb, 2
  %i.bd = zext nneg i32 %i.ay to i64              ; 4 uses
  br label %.preheader63.i

.preheader63.lr.ph.split.us.i:                    ; preds = %.preheader63.lr.ph.i
  %.val55.us.us.i = load i32, ptr %i.s, align 4, !tbaa !13 ; 5 uses
  %.val56.us.us.i = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.be = getelementptr i8, ptr %.val56.us.us.i, i64 8
  %.val56.val.us.us.i = load ptr, ptr %i.be, align 8, !tbaa !22 ; 2 uses
  %i.bf = sub nsw i32 0, %.val55.us.us.i
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.val56.val.us.us.i, i64 %i.bg ; 6 uses
  %i.bi = icmp sgt i32 %.val55.us.us.i, 0
  %wide.trip.count.i.us.i = zext i32 %.val55.us.us.i to i64 ; 8 uses
  br i1 %i.bi, label %.preheader63.us.us.preheader.i, label %.preheader.i

.preheader63.us.us.preheader.i:                   ; preds = %.preheader63.lr.ph.split.us.i
  %i.bj = sext i32 %i.aw to i64
  %i.bk = add nsw i64 %i.bj, 2                    ; 2 uses
  %i.bl = sext i32 %i.ay to i64
  %i.bm = shl nsw i64 %i.bk, 3
  %i.bn = mul i64 %i.bm, %wide.trip.count.i.us.i
  %i.bo = zext nneg i32 %.val55.us.us.i to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = add i64 %i.bn, %i.bp
  %i.br = shl nuw nsw i64 %wide.trip.count.i.us.i, 3
  %min.iters.check80 = icmp ult i32 %.val55.us.us.i, 4
  %invariant.op = add i64 %i.bq, -1
  %n.vec82 = and i64 %wide.trip.count.i.us.i, 2147483644 ; 3 uses
  %cmp.n89 = icmp eq i64 %n.vec82, %wide.trip.count.i.us.i
  %xtraiter = and i64 %wide.trip.count.i.us.i, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader63.us.us.i

.preheader63.us.us.i:                             ; preds = %Abc_TtMaj.exit.loopexit.us.us.i, %.preheader63.us.us.preheader.i
  %indvar76 = phi i64 [ %indvar.next77, %Abc_TtMaj.exit.loopexit.us.us.i ], [ 0, %.preheader63.us.us.preheader.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Abc_TtMaj.exit.loopexit.us.us.i ], [ %i.bk, %.preheader63.us.us.preheader.i ] ; 2 uses
  %i.bs = mul nsw i64 %indvars.iv.i, %wide.trip.count.i.us.i
  %i.bt = getelementptr inbounds [8 x i8], ptr %.val56.val.us.us.i, i64 %i.bs ; 6 uses
  br i1 %min.iters.check80, label %.lr.ph.i57.us.us.i.preheader, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.preheader63.us.us.i
  %i.bu = mul i64 %i.br, %indvar76
  %.reass = add i64 %i.bu, %invariant.op
  %diff.check78 = icmp ult i64 %.reass, 31
  br i1 %diff.check78, label %.lr.ph.i57.us.us.i.preheader, label %vector.body83

vector.body83:                                    ; preds = %vector.memcheck75, %vector.body83
  %index84 = phi i64 [ %index.next87, %vector.body83 ], [ 0, %vector.memcheck75 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index84 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load85 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !26
  %wide.load86 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index84 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x i64> %wide.load85, ptr %i.bx, align 8, !tbaa !26
  store <2 x i64> %wide.load86, ptr %i.by, align 8, !tbaa !26
  %index.next87 = add nuw i64 %index84, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next87, %n.vec82
  br i1 %i.bz, label %middle.block88, label %vector.body83, !llvm.loop !77

middle.block88:                                   ; preds = %vector.body83
  br i1 %cmp.n89, label %Abc_TtMaj.exit.loopexit.us.us.i, label %.lr.ph.i57.us.us.i.preheader

.lr.ph.i57.us.us.i.preheader:                     ; preds = %vector.memcheck75, %.preheader63.us.us.i, %middle.block88
  %indvars.iv.i58.us.us.i.ph = phi i64 [ 0, %vector.memcheck75 ], [ 0, %.preheader63.us.us.i ], [ %n.vec82, %middle.block88 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i57.us.us.i.prol.loopexit, label %.lr.ph.i57.us.us.i.prol

.lr.ph.i57.us.us.i.prol:                          ; preds = %.lr.ph.i57.us.us.i.preheader, %.lr.ph.i57.us.us.i.prol
  %indvars.iv.i58.us.us.i.prol = phi i64 [ %indvars.iv.next.i59.us.us.i.prol, %.lr.ph.i57.us.us.i.prol ], [ %indvars.iv.i58.us.us.i.ph, %.lr.ph.i57.us.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i57.us.us.i.prol ], [ 0, %.lr.ph.i57.us.us.i.preheader ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i58.us.us.i.prol
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i58.us.us.i.prol
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !26
  %indvars.iv.next.i59.us.us.i.prol = add nuw nsw i64 %indvars.iv.i58.us.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i57.us.us.i.prol.loopexit, label %.lr.ph.i57.us.us.i.prol, !llvm.loop !78

.lr.ph.i57.us.us.i.prol.loopexit:                 ; preds = %.lr.ph.i57.us.us.i.prol, %.lr.ph.i57.us.us.i.preheader
  %indvars.iv.i58.us.us.i.unr = phi i64 [ %indvars.iv.i58.us.us.i.ph, %.lr.ph.i57.us.us.i.preheader ], [ %indvars.iv.next.i59.us.us.i.prol, %.lr.ph.i57.us.us.i.prol ]
  %i.cd = sub nsw i64 %indvars.iv.i58.us.us.i.ph, %wide.trip.count.i.us.i
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %Abc_TtMaj.exit.loopexit.us.us.i, label %.lr.ph.i57.us.us.i

.lr.ph.i57.us.us.i:                               ; preds = %.lr.ph.i57.us.us.i.prol.loopexit, %.lr.ph.i57.us.us.i
  %indvars.iv.i58.us.us.i = phi i64 [ %indvars.iv.next.i59.us.us.i.3, %.lr.ph.i57.us.us.i ], [ %indvars.iv.i58.us.us.i.unr, %.lr.ph.i57.us.us.i.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i58.us.us.i
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !26
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i58.us.us.i
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !26
  %indvars.iv.next.i59.us.us.i = add nuw nsw i64 %indvars.iv.i58.us.us.i, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i59.us.us.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i59.us.us.i
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !26
  %indvars.iv.next.i59.us.us.i.1 = add nuw nsw i64 %indvars.iv.i58.us.us.i, 2 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i59.us.us.i.1
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i59.us.us.i.1
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !26
  %indvars.iv.next.i59.us.us.i.2 = add nuw nsw i64 %indvars.iv.i58.us.us.i, 3 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i59.us.us.i.2
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i59.us.us.i.2
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !26
  %indvars.iv.next.i59.us.us.i.3 = add nuw nsw i64 %indvars.iv.i58.us.us.i, 4 ; 2 uses
  %exitcond.not.i.us.us.i.3 = icmp eq i64 %indvars.iv.next.i59.us.us.i.3, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.us.i.3, label %Abc_TtMaj.exit.loopexit.us.us.i, label %.lr.ph.i57.us.us.i, !llvm.loop !80

Abc_TtMaj.exit.loopexit.us.us.i:                  ; preds = %.lr.ph.i57.us.us.i.prol.loopexit, %.lr.ph.i57.us.us.i, %middle.block88
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.bl
  %indvar.next77 = add i64 %indvar76, 1
  br i1 %exitcond.not, label %.preheader.i, label %.preheader63.us.us.i, !llvm.loop !81

.preheader63.i:                                   ; preds = %Abc_TtMaj.exit.i, %.preheader63.preheader.i
  %indvar = phi i64 [ %indvar.next, %Abc_TtMaj.exit.i ], [ 0, %.preheader63.preheader.i ] ; 2 uses
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %Abc_TtMaj.exit.i ], [ %i.bc, %.preheader63.preheader.i ] ; 3 uses
  %9 = add i64 %indvar, %i.bb
  %i.cr = shl i64 %9, 3
  %10 = add i64 %i.cr, 16
  %i.cs = getelementptr inbounds [768 x i8], ptr %i.r, i64 %indvars.iv84.i ; 3 uses
  br label %.lr.ph.i.i

.preheader.i:                                     ; preds = %Abc_TtMaj.exit.loopexit.us.us.i, %Abc_TtMaj.exit.i, %.preheader63.lr.ph.split.us.i, %bb.j
  %.not.i = icmp eq i32 %i.aw, 31
  br i1 %.not.i, label %.thread32.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ct = shl nuw nsw i32 1, %i.aw
  %i.cu = sdiv i32 %i.aw, 2                       ; 2 uses
  %i.cv = add nsw i32 %i.cu, 1
  %i.cw = add nsw i32 %i.ay, -1
  br label %bb.s

.lr.ph.i.i:                                       ; preds = %.preheader63.i, %bb.l
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.l ], [ 0, %.preheader63.i ] ; 3 uses
  %.022.i.i = phi i32 [ %.1.i.i, %bb.l ], [ -1, %.preheader63.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !38 ; 2 uses
  %.not.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.cz = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.aa, i32 noundef %i.cy) #41
  %.not18.not.i.i = icmp eq i32 %i.cz, 0
  %i.da = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %spec.select19.i.i = select i1 %.not18.not.i.i, i32 %.022.i.i, i32 %i.da
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %.022.i.i, %.lr.ph.i.i ], [ %spec.select19.i.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next.i.i, %i.bd
  br i1 %exitcond46.not, label %Maj_ManFindFanin.exit.i, label %.lr.ph.i.i, !llvm.loop !57

Maj_ManFindFanin.exit.i:                          ; preds = %bb.l
  %.val55.i = load i32, ptr %i.s, align 4, !tbaa !13 ; 7 uses
  %.val56.i = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.db = getelementptr i8, ptr %.val56.i, i64 8  ; 3 uses
  %.val56.val.i = load ptr, ptr %i.db, align 8, !tbaa !22 ; 2 uses
  %.val56.val.i65 = ptrtoaddr ptr %.val56.val.i to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 256
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %Maj_ManFindFanin.exit.i
  %indvars.iv.i.1.i = phi i64 [ 0, %Maj_ManFindFanin.exit.i ], [ %indvars.iv.next.i.1.i, %bb.o ] ; 3 uses
  %.022.i.1.i = phi i32 [ -1, %Maj_ManFindFanin.exit.i ], [ %.1.i.1.i, %bb.o ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i.1.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !38 ; 2 uses
  %.not.i.1.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.1.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.df = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.aa, i32 noundef %i.de) #41
  %.not18.not.i.1.i = icmp eq i32 %i.df, 0
  %i.dg = trunc nuw nsw i64 %indvars.iv.i.1.i to i32
  %spec.select19.i.1.i = select i1 %.not18.not.i.1.i, i32 %.022.i.1.i, i32 %i.dg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i.1.i = phi i32 [ %.022.i.1.i, %bb.m ], [ %spec.select19.i.1.i, %bb.n ] ; 2 uses
  %indvars.iv.next.i.1.i = add nuw nsw i64 %indvars.iv.i.1.i, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next.i.1.i, %i.bd
  br i1 %exitcond47.not, label %Maj_ManFindFanin.exit.1.i, label %bb.m, !llvm.loop !57

Maj_ManFindFanin.exit.1.i:                        ; preds = %bb.o
  %.val56.val.1.pre.i = load ptr, ptr %i.db, align 8, !tbaa !22 ; 2 uses
  %.val56.val.1.pre.i66 = ptrtoaddr ptr %.val56.val.1.pre.i to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 512
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %Maj_ManFindFanin.exit.1.i
  %indvars.iv.i.2.i = phi i64 [ 0, %Maj_ManFindFanin.exit.1.i ], [ %indvars.iv.next.i.2.i, %bb.r ] ; 3 uses
  %.022.i.2.i = phi i32 [ -1, %Maj_ManFindFanin.exit.1.i ], [ %.1.i.2.i, %bb.r ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.2.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !38 ; 2 uses
  %.not.i.2.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i.2.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.aa, i32 noundef %i.dj) #41
  %.not18.not.i.2.i = icmp eq i32 %i.dk, 0
  %i.dl = trunc nuw nsw i64 %indvars.iv.i.2.i to i32
  %spec.select19.i.2.i = select i1 %.not18.not.i.2.i, i32 %.022.i.2.i, i32 %i.dl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.i.2.i = phi i32 [ %.022.i.2.i, %bb.p ], [ %spec.select19.i.2.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i.2.i = add nuw nsw i64 %indvars.iv.i.2.i, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next.i.2.i, %i.bd
  br i1 %exitcond48.not, label %Maj_ManFindFanin.exit.loopexit.2.i, label %bb.p, !llvm.loop !57

Maj_ManFindFanin.exit.loopexit.2.i:               ; preds = %bb.r
  %i.dm = mul i32 %.val55.i, %.1.i.i
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %.val56.val.i, i64 %i.dn ; 4 uses
  %i.dp = mul i32 %.1.i.1.i, %.val55.i
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %.val56.val.1.pre.i, i64 %i.dq ; 4 uses
  %.val56.val.2.pre.i = load ptr, ptr %i.db, align 8, !tbaa !22 ; 3 uses
  %.val56.val.2.pre.i64 = ptrtoaddr ptr %.val56.val.2.pre.i to i64
  %i.ds = mul i32 %.1.i.2.i, %.val55.i
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.val56.val.2.pre.i, i64 %i.dt ; 4 uses
  %i.dv = sext i32 %.val55.i to i64               ; 2 uses
  %i.dw = mul nsw i64 %indvars.iv84.i, %i.dv
  %i.dx = getelementptr inbounds [8 x i8], ptr %.val56.val.2.pre.i, i64 %i.dw ; 4 uses
  %i.dy = icmp sgt i32 %.val55.i, 0
  br i1 %i.dy, label %.lr.ph.preheader.i.i, label %Abc_TtMaj.exit.i

.lr.ph.preheader.i.i:                             ; preds = %Maj_ManFindFanin.exit.loopexit.2.i
  %wide.trip.count.i.i = zext nneg i32 %.val55.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.val55.i, 10
  br i1 %min.iters.check, label %.lr.ph.i57.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.dz = mul i64 %10, %i.dv                      ; 2 uses
  %i.ea = add i64 %i.dz, %.val56.val.2.pre.i64    ; 2 uses
  %i.eb = shl nsw i64 %i.dn, 3
  %i.ec = add i64 %i.eb, %.val56.val.i65
  %i.ed = sub i64 %i.ec, %i.ea
  %diff.check = icmp ugt i64 %i.ed, -32
  %i.ee = shl nsw i64 %i.dq, 3
  %i.ef = add i64 %i.ee, %.val56.val.1.pre.i66
  %i.eg = sub i64 %i.ef, %i.ea
  %diff.check67 = icmp ugt i64 %i.eg, -32
  %conflict.rdx = or i1 %diff.check, %diff.check67
  %i.eh = shl nsw i64 %i.dt, 3
  %i.ei = sub i64 %i.eh, %i.dz
  %diff.check68 = icmp ugt i64 %i.ei, -32
  %conflict.rdx69 = or i1 %conflict.rdx, %diff.check68
  br i1 %conflict.rdx69, label %.lr.ph.i57.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load = load <2 x i64>, ptr %i.ej, align 8, !tbaa !26
  %wide.load70 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !26
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load71 = load <2 x i64>, ptr %i.el, align 8, !tbaa !26 ; 2 uses
  %wide.load72 = load <2 x i64>, ptr %i.em, align 8, !tbaa !26 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load73 = load <2 x i64>, ptr %i.en, align 8, !tbaa !26 ; 2 uses
  %wide.load74 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !26 ; 2 uses
  %i.ep = or <2 x i64> %wide.load73, %wide.load71
  %i.eq = or <2 x i64> %wide.load74, %wide.load72
  %i.er = and <2 x i64> %i.ep, %wide.load
  %i.es = and <2 x i64> %i.eq, %wide.load70
  %i.et = and <2 x i64> %wide.load73, %wide.load71
  %i.eu = and <2 x i64> %wide.load74, %wide.load72
  %i.ev = or <2 x i64> %i.er, %i.et
  %i.ew = or <2 x i64> %i.es, %i.eu
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <2 x i64> %i.ev, ptr %i.ex, align 8, !tbaa !26
  store <2 x i64> %i.ew, ptr %i.ey, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %Abc_TtMaj.exit.i, label %.lr.ph.i57.i.preheader

.lr.ph.i57.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i58.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter94 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph.i57.i.prol.loopexit, label %.lr.ph.i57.i.prol

.lr.ph.i57.i.prol:                                ; preds = %.lr.ph.i57.i.preheader
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i58.i.ph
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !26
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i58.i.ph
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !26 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i58.i.ph
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !26 ; 2 uses
  %i.fg = or i64 %i.ff, %i.fd
  %i.fh = and i64 %i.fg, %i.fb
  %i.fi = and i64 %i.ff, %i.fd
  %i.fj = or i64 %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i58.i.ph
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !26
  %indvars.iv.next.i59.i.prol = or disjoint i64 %indvars.iv.i58.i.ph, 1
  br label %.lr.ph.i57.i.prol.loopexit

.lr.ph.i57.i.prol.loopexit:                       ; preds = %.lr.ph.i57.i.prol, %.lr.ph.i57.i.preheader
  %indvars.iv.i58.i.unr = phi i64 [ %indvars.iv.i58.i.ph, %.lr.ph.i57.i.preheader ], [ %indvars.iv.next.i59.i.prol, %.lr.ph.i57.i.prol ]
  %i.fl = add nsw i64 %wide.trip.count.i.i, -1
  %i.fm = icmp eq i64 %indvars.iv.i58.i.ph, %i.fl
  br i1 %i.fm, label %Abc_TtMaj.exit.i, label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %.lr.ph.i57.i.prol.loopexit, %.lr.ph.i57.i
  %indvars.iv.i58.i = phi i64 [ %indvars.iv.next.i59.i.1, %.lr.ph.i57.i ], [ %indvars.iv.i58.i.unr, %.lr.ph.i57.i.prol.loopexit ] ; 6 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i58.i
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !26
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i58.i
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !26 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i58.i
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !26 ; 2 uses
  %i.ft = or i64 %i.fs, %i.fq
  %i.fu = and i64 %i.ft, %i.fo
  %i.fv = and i64 %i.fs, %i.fq
  %i.fw = or i64 %i.fu, %i.fv
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i58.i
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !26
  %indvars.iv.next.i59.i = add nuw nsw i64 %indvars.iv.i58.i, 1 ; 4 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next.i59.i
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !26
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next.i59.i
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !26 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next.i59.i
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !26 ; 2 uses
  %i.ge = or i64 %i.gd, %i.gb
  %i.gf = and i64 %i.ge, %i.fz
  %i.gg = and i64 %i.gd, %i.gb
  %i.gh = or i64 %i.gf, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next.i59.i
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !26
  %indvars.iv.next.i59.i.1 = add nuw nsw i64 %indvars.iv.i58.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i59.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %Abc_TtMaj.exit.i, label %.lr.ph.i57.i, !llvm.loop !83

Abc_TtMaj.exit.i:                                 ; preds = %.lr.ph.i57.i.prol.loopexit, %.lr.ph.i57.i, %middle.block, %Maj_ManFindFanin.exit.loopexit.2.i
  %indvars.iv.next85.i = add nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next85.i, %i.bd
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond49.not, label %.preheader.i, label %.preheader63.i, !llvm.loop !84

bb.s:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %.14567.i = phi i32 [ 0, %.lr.ph.i ], [ %i.hg, %select.unfold.i ] ; 5 uses
  %i.gj = and i32 %.14567.i, 65535
  %i.gk = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.gj) ; 2 uses
  %i.gl = icmp slt i32 %i.gk, %i.cu
  %i.gm = icmp sgt i32 %i.gk, %i.cv
  %or.cond.i = select i1 %i.gl, i1 true, i1 %i.gm
  br i1 %or.cond.i, label %select.unfold.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val51.i = load i32, ptr %i.s, align 4, !tbaa !13 ; 2 uses
  %.val52.i = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.gn = getelementptr i8, ptr %.val52.i, i64 8
  %.val52.val.i = load ptr, ptr %i.gn, align 8, !tbaa !22 ; 2 uses
  %i.go = mul nsw i32 %.val51.i, %i.ay
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %.val52.val.i, i64 %i.gp
  %i.gr = lshr i32 %.14567.i, 6
  %i.gs = zext nneg i32 %i.gr to i64              ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !26
  %i.gv = and i32 %.14567.i, 63
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = mul nsw i32 %.val51.i, %i.cw
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %.val52.val.i, i64 %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gs
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !26
  %i.hc = xor i64 %i.hb, %i.gu
  %i.hd = shl nuw i64 1, %i.gw
  %i.he = and i64 %i.hc, %i.hd
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %select.unfold.i, label %.loopexit

select.unfold.i:                                  ; preds = %bb.t, %bb.s
  %i.hg = add nuw nsw i32 %.14567.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hg, %i.ct
  br i1 %exitcond.not.i, label %.thread32.loopexit, label %bb.s, !llvm.loop !86

.loopexit:                                        ; preds = %bb.t
  store i32 %.14567.i, ptr %i.a, align 4, !tbaa !38
  %i.hh = add nuw nsw i32 %.02243, 1
  br label %bb.c

.loopexit41:                                      ; preds = %Abc_Clock.exit26, %bb.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !38
  %i.hi = icmp eq i32 %.pr, -1
  br i1 %i.hi, label %.thread32, label %bb.u

.thread32.loopexit:                               ; preds = %.preheader.i, %select.unfold.i
  store i32 -1, ptr %i.a, align 4, !tbaa !38
  br label %.thread32

.thread32:                                        ; preds = %.thread32.loopexit, %Abc_Clock.exit, %.loopexit41
  call void @Maj_ManPrintSolution(ptr noundef nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %.thread32, %.loopexit41
  call void @Maj_ManFree(ptr noundef nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.hj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #41
  %i.hk = icmp slt i32 %i.hj, 0
  br i1 %i.hk, label %Abc_Clock.exit30, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hl = load i64, ptr %5, align 8, !tbaa !72
  %i.hm = mul nsw i64 %i.hl, 1000000
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !74
  %i.hp = sdiv i64 %i.ho, 1000
  %i.hq = add nsw i64 %i.hp, %i.hm
  br label %Abc_Clock.exit30

Abc_Clock.exit30:                                 ; preds = %bb.u, %bb.v
  %.0.i29 = phi i64 [ %i.hq, %bb.v ], [ -1, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.hr = add i64 %.0.i29, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.14)
  %i.hs = sitofp i64 %i.hr to double
  %i.ht = fdiv double %i.hs, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.138, double noundef %i.ht)
  %i.hu = load i32, ptr %i.a, align 4, !tbaa !38
  %i.hv = icmp eq i32 %i.hu, -1
  %i.hw = zext i1 %i.hv to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret i32 %i.hw
}

declare i32 @bmcg_sat_solver_solve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @bmcg_sat_solver_clausenum(ptr noundef) local_unnamed_addr #7

declare i32 @bmcg_sat_solver_conflictnum(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @Exa_ManTruthTables(ptr nofree noundef captures(none) initializes((40, 48)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !87   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !90
  %i.e = add nsw i32 %i.d, 1
  %i.f = mul nsw i32 %i.e, %i.b                   ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 5 uses
  %i.h = add i32 %i.f, -1
  %or.cond.i.i = icmp ult i32 %i.h, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.f ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !19
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %spec.store.select.i.i to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #38
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !22
  store i32 %i.f, ptr %i.m, align 4, !tbaa !23
  %i.o = sext i32 %i.f to i64
  %i.p = shl nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.q, align 8, !tbaa !91
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !92   ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_WrdStart.exit
  %i.u = icmp samesign ult i32 %i.s, 7
  %i.v = add nsw i32 %i.s, -6
  %i.w = shl nuw i32 1, %i.v
  %i.x = select i1 %i.u, i32 1, i32 %i.w
  %.fr13 = freeze i32 %i.x                        ; 4 uses
  %i.y = icmp sgt i32 %.fr13, 0
  %wide.trip.count.i = zext i32 %.fr13 to i64     ; 6 uses
  br i1 %i.y, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.z = sext i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.s to i64
  %min.iters.check20 = icmp ult i32 %.fr13, 4
  %n.vec22 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n29 = icmp eq i64 %n.vec22, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %.fr13, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %Abc_TtIthVar.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %Abc_TtIthVar.exit.us ] ; 5 uses
  %i.aa = mul nsw i64 %indvars.iv, %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aa ; 4 uses
  %i.ac = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.ac, label %.preheader.i.us, label %.preheader18.i.us

.preheader18.i.us:                                ; preds = %.lr.ph.split.us
  %i.ad = trunc i64 %indvars.iv to i32
  %i.ae = add i32 %i.ad, -6
  %i.af = shl nuw i32 1, %i.ae                    ; 2 uses
  br i1 %min.iters.check20, label %scalar.ph19.preheader, label %vector.ph21

vector.ph21:                                      ; preds = %.preheader18.i.us
  %broadcast.splatinsert23 = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat24 = shufflevector <2 x i32> %broadcast.splatinsert23, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph21
  %index26 = phi i64 [ 0, %vector.ph21 ], [ %index.next27, %vector.body25 ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph21 ], [ %vec.ind.next, %vector.body25 ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ag = and <2 x i32> %broadcast.splat24, %vec.ind
  %i.ah = and <2 x i32> %broadcast.splat24, %step.add
  %i.ai = icmp ne <2 x i32> %i.ag, zeroinitializer
  %i.aj = icmp ne <2 x i32> %i.ah, zeroinitializer
  %i.ak = sext <2 x i1> %i.ai to <2 x i64>
  %i.al = sext <2 x i1> %i.aj to <2 x i64>
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index26 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %i.ak, ptr %i.am, align 8, !tbaa !26
  store <2 x i64> %i.al, ptr %i.an, align 8, !tbaa !26
  %index.next27 = add nuw i64 %index26, 4         ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.ao = icmp eq i64 %index.next27, %n.vec22
  br i1 %i.ao, label %middle.block28, label %vector.body25, !llvm.loop !93

middle.block28:                                   ; preds = %vector.body25
  br i1 %cmp.n29, label %Abc_TtIthVar.exit.us, label %scalar.ph19.preheader

scalar.ph19.preheader:                            ; preds = %.preheader18.i.us, %middle.block28
  %indvars.iv.i.us.ph = phi i64 [ 0, %.preheader18.i.us ], [ %n.vec22, %middle.block28 ]
end_hunk_0
