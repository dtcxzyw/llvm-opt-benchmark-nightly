Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcBmcAnd?download=true
inline.NumInlined: 488
inline.NumDeleted: 84
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Gia_ManBmcAddCone:bb.a
  %i.db = load i32, ptr %i.da, align 4, !tbaa !40
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [12 x i8], ptr %.val41, i64 %i.dc ; 2 uses
  %i.de = load i64, ptr %i.dd, align 4
  %i.df = and i64 %i.de, -1073741825
  store i64 %i.df, ptr %i.dd, align 4
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  %.val36 = load i32, ptr %i.dh, align 4, !tbaa !30
  %i.di = sext i32 %.val36 to i64
  %i.dj = icmp slt i64 %indvars.iv.next61, %i.di
  br i1 %i.dj, label %.lr.ph53, label %.critedge, !llvm.loop !117

.critedge:                                        ; preds = %.lr.ph53, %bb.y, %.preheader
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !84  ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %.val55 = load i32, ptr %i.dl, align 4, !tbaa !30
  %i.dm = icmp sgt i32 %.val55, 0
  br i1 %i.dm, label %.lr.ph57, label %.critedge2

.lr.ph57:                                         ; preds = %.critedge, %bb.z
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %bb.z ], [ 0, %.critedge ] ; 2 uses
  %i.dn = phi ptr [ %i.dx, %bb.z ], [ %i.dk, %.critedge ]
  %i.do = load ptr, ptr %0, align 8, !tbaa !115
  %i.dp = getelementptr i8, ptr %i.do, i64 32
  %.val40 = load ptr, ptr %i.dp, align 8, !tbaa !34 ; 2 uses
  %.not35 = icmp eq ptr %.val40, null
  br i1 %.not35, label %.critedge2, label %bb.z

bb.z:                                             ; preds = %.lr.ph57
  %i.dq = getelementptr i8, ptr %i.dn, i64 8
  %.val38 = load ptr, ptr %i.dq, align 8, !tbaa !39
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val38, i64 %indvars.iv63
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !40
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [12 x i8], ptr %.val40, i64 %i.dt ; 2 uses
  %i.dv = load i64, ptr %i.du, align 4
  %i.dw = and i64 %i.dv, -1073741825
  store i64 %i.dw, ptr %i.du, align 4
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !84  ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %.val = load i32, ptr %i.dy, align 4, !tbaa !30
  %i.dz = sext i32 %.val to i64
  %i.ea = icmp slt i64 %indvars.iv.next64, %i.dz
  br i1 %i.ea, label %.lr.ph57, label %.critedge2, !llvm.loop !118

.critedge2:                                       ; preds = %.lr.ph57, %bb.z, %.critedge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Gia_ManBmcCheckOutputs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val8 = load ptr, ptr %i.b, align 8, !tbaa !34 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr i8, ptr %.val9, i64 8
  %.val9.val = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.e = sext i32 %1 to i64
  %wide.trip.count = sext i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !119

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %.val9.val, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [12 x i8], ptr %.val8, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 4              ; 2 uses
  %i.k = and i64 %i.j, 536870911
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.l
  %i.n = lshr i64 %i.j, 29
  %i.o = and i64 %i.n, 1
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = xor i64 %i.o, %i.p
  %i.r = inttoptr i64 %i.q to ptr
  %.not = icmp eq ptr %.val8, %i.r
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.07 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483648, 2147483647) i32 @Gia_ManBmcFindFirst(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val11 = load i32, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr i8, ptr %0, i64 72
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !8 ; 2 uses
  %i.c = getelementptr i8, ptr %.val12, i64 4
  %.val12.val = load i32, ptr %i.c, align 4, !tbaa !30
  %i.d = sub nsw i32 %.val12.val, %.val11         ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val13 = load ptr, ptr %i.f, align 8, !tbaa !34 ; 3 uses
  %.not = icmp eq ptr %.val13, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.val12, i64 8
  %.val14.val = load ptr, ptr %i.g, align 8, !tbaa !39
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val14.val, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [12 x i8], ptr %.val13, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 4              ; 2 uses
  %i.m = and i64 %i.l, 536870911
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [12 x i8], ptr %i.k, i64 %i.n
  %i.p = lshr i64 %i.l, 29
  %i.q = and i64 %i.p, 1
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = inttoptr i64 %i.s to ptr
  %.not10 = icmp eq ptr %.val13, %i.t
  br i1 %.not10, label %bb.c, label %.critedge.loopexit.split.loop.exit21

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !120

.critedge.loopexit.split.loop.exit21:             ; preds = %bb.b
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit.split.loop.exit21, %.lr.ph, %bb.a
  %.08 = phi i32 [ -1, %bb.a ], [ -1, %.lr.ph ], [ %i.u, %.critedge.loopexit.split.loop.exit21 ], [ -1, %bb.c ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @Gia_ManBmcPerform_Unr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !121  ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = tail call ptr @Bmc_MnaAlloc()            ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !123
  %i.g = tail call ptr @Unr_ManUnrollStart(ptr noundef %0, i32 noundef %i.f) #20 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 72         ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %smax = select i1 %.not, i32 1000000000, i32 %i.u ; 2 uses
  %exitcond.not164 = icmp eq i32 %smax, 0
  br i1 %exitcond.not164, label %.loopexit117, label %.lr.ph168

bb.b:                                             ; preds = %bb.i
  %exitcond.not = icmp eq i32 %i.z, %smax
  br i1 %exitcond.not, label %.loopexit117, label %.lr.ph168, !llvm.loop !124

.lr.ph168:                                        ; preds = %bb.a, %bb.b
  %.073166 = phi i32 [ %.275, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.076165 = phi i32 [ %i.z, %bb.b ], [ 0, %bb.a ] ; 8 uses
  %i.v = call ptr @Unr_ManUnrollFrame(ptr noundef %i.g, i32 noundef %.076165) #20 ; 3 uses
  store ptr %i.v, ptr %i.d, align 8, !tbaa !115
  %.val102 = load i32, ptr %i.h, align 8, !tbaa !37
  %.val103 = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.w = getelementptr i8, ptr %.val103, i64 4
  %.val103.val = load i32, ptr %i.w, align 4, !tbaa !30
  %i.x = sub nsw i32 %.val103.val, %.val102       ; 3 uses
  %i.y = mul nsw i32 %i.x, %.076165               ; 2 uses
  %i.z = add nuw i32 %.076165, 1                  ; 5 uses
  %i.aa = mul nsw i32 %i.x, %i.z                  ; 2 uses
  %i.ab = icmp sgt i32 %i.x, 0
  br i1 %i.ab, label %.lr.ph.i, label %Gia_ManBmcCheckOutputs.exit.thread

.lr.ph.i:                                         ; preds = %.lr.ph168
  %i.ac = getelementptr i8, ptr %i.v, i64 32
  %.val8.i = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 72
  %.val9.i = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.ae = getelementptr i8, ptr %.val9.i, i64 8
  %.val9.val.i = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.af = zext nneg i32 %i.y to i64
  %wide.trip.count.i = zext nneg i32 %i.aa to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManBmcCheckOutputs.exit.thread, label %bb.d, !llvm.loop !119

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.af, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val9.val.i, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [12 x i8], ptr %.val8.i, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 4            ; 2 uses
  %i.al = and i64 %i.ak, 536870911
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [12 x i8], ptr %i.aj, i64 %i.am
  %i.ao = lshr i64 %i.ak, 29
  %i.ap = and i64 %i.ao, 1
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = xor i64 %i.ap, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %.not.i = icmp eq ptr %.val8.i, %i.as
  br i1 %.not.i, label %bb.c, label %Gia_ManBmcCheckOutputs.exit

Gia_ManBmcCheckOutputs.exit:                      ; preds = %bb.d
  call void @Gia_ManBmcAddCone(ptr noundef nonnull %i.d, i32 noundef %i.y, i32 noundef %i.aa)
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !85
  call void @Gia_ManBmcAddCnf(ptr noundef nonnull %i.d, ptr noundef %i.at, ptr noundef %i.au, ptr noundef %i.av, ptr noundef %i.aw)
  %.val94 = load i32, ptr %i.h, align 8, !tbaa !37 ; 2 uses
  %.val95 = load ptr, ptr %i.i, align 8, !tbaa !8 ; 2 uses
  %i.ax = getelementptr i8, ptr %.val95, i64 4
  %.val95.val = load i32, ptr %i.ax, align 4, !tbaa !30
  %i.ay = sub nsw i32 %.val95.val, %.val94        ; 2 uses
  %i.az = mul nsw i32 %i.ay, %.076165             ; 3 uses
  %i.ba = mul nsw i32 %i.ay, %i.z
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph.preheader, label %Gia_ManBmcCheckOutputs.exit.thread

.lr.ph.preheader:                                 ; preds = %Gia_ManBmcCheckOutputs.exit
  %i.bc = sext i32 %i.az to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.val93146 = phi ptr [ %.val95, %.lr.ph.preheader ], [ %.val93, %bb.f ]
  %.val92144 = phi i32 [ %.val94, %.lr.ph.preheader ], [ %.val92, %bb.f ]
  %indvars.iv = phi i64 [ %i.bc, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !115 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 32
  %.val104 = load ptr, ptr %i.be, align 8, !tbaa !34 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bd, i64 72
  %.val105 = load ptr, ptr %i.bf, align 8, !tbaa !8
  %i.bg = getelementptr i8, ptr %.val105, i64 8
  %.val105.val = load ptr, ptr %i.bg, align 8, !tbaa !39
  %i.bh = getelementptr inbounds [4 x i8], ptr %.val105.val, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !40
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [12 x i8], ptr %.val104, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 4            ; 2 uses
  %i.bm = and i64 %i.bl, 536870911
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [12 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = lshr i64 %i.bl, 29
  %i.bq = and i64 %i.bp, 1
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = xor i64 %i.bq, %i.br
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = icmp eq ptr %.val104, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %.val89 = load ptr, ptr %i.bw, align 8, !tbaa !39
  %i.bx = getelementptr inbounds [4 x i8], ptr %.val89, i64 %i.bj
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !40
  %i.bz = shl nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !40
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.cb = load i32, ptr %i.p, align 4, !tbaa !125
  %i.cc = sext i32 %i.cb to i64
  %i.cd = call i32 @sat_solver_solve(ptr noundef %i.ca, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, i64 noundef %i.cc, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20
  switch i32 %i.cd, label %.loopexit [
    i32 -1, label %._crit_edge
    i32 1, label %.loopexit133.loopexit
    i32 0, label %.loopexit133
  ]

._crit_edge:                                      ; preds = %bb.e
  %.val92.pre = load i32, ptr %i.h, align 8, !tbaa !37
  %.val93.pre = load ptr, ptr %i.i, align 8, !tbaa !8
  br label %bb.f

.loopexit:                                        ; preds = %bb.e
  br label %.loopexit133

.loopexit133.loopexit:                            ; preds = %bb.e
  br label %.loopexit133

.loopexit133:                                     ; preds = %bb.e, %.loopexit133.loopexit, %.loopexit
  %spec.select84 = phi i32 [ -2, %.loopexit ], [ 0, %.loopexit133.loopexit ], [ -1, %bb.e ]
  %.174132138 = trunc i64 %indvars.iv to i32
  br label %Gia_ManBmcCheckOutputs.exit.thread

bb.f:                                             ; preds = %._crit_edge, %.lr.ph
  %.val93 = phi ptr [ %.val93.pre, %._crit_edge ], [ %.val93146, %.lr.ph ] ; 2 uses
  %.val92 = phi i32 [ %.val92.pre, %._crit_edge ], [ %.val92144, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ce = getelementptr i8, ptr %.val93, i64 4
  %.val93.val = load i32, ptr %i.ce, align 4, !tbaa !30
  %i.cf = sub nsw i32 %.val93.val, %.val92
  %i.cg = mul nsw i32 %i.cf, %i.z
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %.lr.ph, label %Gia_ManBmcCheckOutputs.exit.thread.loopexit, !llvm.loop !126

Gia_ManBmcCheckOutputs.exit.thread.loopexit:      ; preds = %bb.f
  %i.cj = trunc nsw i64 %indvars.iv.next to i32
  br label %Gia_ManBmcCheckOutputs.exit.thread

Gia_ManBmcCheckOutputs.exit.thread:               ; preds = %bb.c, %Gia_ManBmcCheckOutputs.exit.thread.loopexit, %Gia_ManBmcCheckOutputs.exit, %.lr.ph168, %.loopexit133
  %.275 = phi i32 [ %i.cj, %Gia_ManBmcCheckOutputs.exit.thread.loopexit ], [ %.174132138, %.loopexit133 ], [ %.073166, %.lr.ph168 ], [ %i.az, %Gia_ManBmcCheckOutputs.exit ], [ %.073166, %bb.c ] ; 2 uses
  %.5 = phi i32 [ -2, %Gia_ManBmcCheckOutputs.exit.thread.loopexit ], [ %spec.select84, %.loopexit133 ], [ -2, %.lr.ph168 ], [ -2, %Gia_ManBmcCheckOutputs.exit ], [ -2, %bb.c ]
  %i.ck = load i32, ptr %i.q, align 4, !tbaa !127
  %.not80 = icmp eq i32 %i.ck, 0
  br i1 %.not80, label %bb.i, label %bb.g

bb.g:                                             ; preds = %Gia_ManBmcCheckOutputs.exit.thread
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !115 ; 4 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %.val87 = load i32, ptr %i.cm, align 8, !tbaa !37
  %i.cn = getelementptr i8, ptr %i.cl, i64 64
  %.val88 = load ptr, ptr %i.cn, align 8, !tbaa !38
  %i.co = getelementptr i8, ptr %.val88, i64 4
  %.val88.val = load i32, ptr %i.co, align 4, !tbaa !30 ; 2 uses
  %i.cp = sub nsw i32 %.val88.val, %.val87
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !8
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  %.val.i = load i32, ptr %i.cu, align 4, !tbaa !30
  %i.cv = add i32 %.val.i, %.val88.val
  %i.cw = xor i32 %i.cv, -1
  %i.cx = add i32 %i.cr, %i.cw
  %i.cy = load i32, ptr %i.r, align 8, !tbaa !88
  %i.cz = add nsw i32 %i.cy, -1
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %.val85 = load i32, ptr %i.db, align 4, !tbaa !30
  %i.dc = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %.val = load i32, ptr %i.dd, align 4, !tbaa !30
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.df = call i32 @sat_solver_nclauses(ptr noundef %i.de) #20
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.dh = call i32 @sat_solver_nconflicts(ptr noundef %i.dg) #20
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.dj = call double @Gia_ManMemory(ptr noundef %i.di) #20
  %i.dk = fmul double %i.dj, f0x3EB0000000000000
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.076165, i32 noundef %i.cp, i32 noundef %i.cx, i32 noundef %i.cz, i32 noundef %.val85, i32 noundef %.val, i32 noundef %i.df, i32 noundef %i.dh, double noundef %i.dk) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.dm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #20
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %Abc_Clock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.do = load i64, ptr %3, align 8, !tbaa !31
  %i.dp = mul nsw i64 %i.do, 1000000
  %i.dq = load i64, ptr %i.s, align 8, !tbaa !33
  %i.dr = sdiv i64 %i.dq, 1000
  %i.ds = add nsw i64 %i.dr, %i.dp
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.ds, %bb.h ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.dt = load i64, ptr %i.t, align 8, !tbaa !89
  %i.du = sub nsw i64 %.0.i, %i.dt
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4)
  %i.dv = sitofp i64 %i.du to double
  %i.dw = fdiv double %i.dv, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.16, double noundef %i.dw)
  br label %bb.i

end_hunk_0
begin_hunk_1_@Gia_ManBmcCexGen:bb.a
bb.g:                                             ; preds = %bb.f, %bb.c
  %.val.pre61 = phi i32 [ %.val.pre60, %bb.c ], [ %.val.pre, %bb.f ]
  %.val = phi i32 [ %.val58, %bb.c ], [ %.val.pre, %bb.f ] ; 2 uses
  %.131 = phi i32 [ %.03055, %bb.c ], [ %i.bd, %bb.f ]
  %.1 = phi i32 [ %i.aa, %bb.c ], [ %.056, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = sext i32 %.val to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.b, label %.critedge, !llvm.loop !144

.critedge:                                        ; preds = %bb.g, %bb.a
  ret ptr %i.j
}

declare ptr @Abc_CexAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @Gia_ManBmcPerform_old_cnf(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #20
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %5, align 8, !tbaa !31
  %.neg154 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33
  %.neg = sdiv i64 %i.f, -1000
  %.neg155 = add i64 %.neg, %.neg154
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg155, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.g = call ptr @Bmc_MnaAlloc()                 ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !121
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !145
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !123
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = call ptr @Gia_ManBmcUnroll(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, ptr noundef nonnull %i.n) ; 9 uses
  store ptr %i.o, ptr %i.g, align 8, !tbaa !115
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %.val127 = load i32, ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr i8, ptr %i.o, i64 72
  %.val128 = load ptr, ptr %i.q, align 8, !tbaa !8 ; 2 uses
  %i.r = getelementptr i8, ptr %.val128, i64 4
  %.val128.val = load i32, ptr %i.r, align 4, !tbaa !30
  %i.s = sub nsw i32 %.val128.val, %.val127       ; 3 uses
  %i.t = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %.val125 = load i32, ptr %i.t, align 8, !tbaa !37
  %i.u = getelementptr i8, ptr %0, i64 72         ; 5 uses
  %.val126 = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.v = getelementptr i8, ptr %.val126, i64 4
  %.val126.val = load i32, ptr %i.v, align 4, !tbaa !30
  %i.w = sub nsw i32 %.val126.val, %.val125
  %i.x = sdiv i32 %i.s, %i.w                      ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !127
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.aa = icmp sgt i32 %i.s, 0
  br i1 %i.aa, label %.lr.ph.i, label %Gia_ManBmcFindFirst.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %i.o, i64 32
  %.val13.i = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 3 uses
  %.not.i = icmp eq ptr %.val13.i, null
  br i1 %.not.i, label %Gia_ManBmcFindFirst.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ac = getelementptr i8, ptr %.val128, i64 8
  %.val14.val.i = load ptr, ptr %i.ac, align 8, !tbaa !39
  %wide.trip.count.i = zext nneg i32 %i.s to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val14.val.i, i64 %indvars.iv.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [12 x i8], ptr %.val13.i, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 4            ; 2 uses
  %i.ai = and i64 %i.ah, 536870911
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [12 x i8], ptr %i.ag, i64 %i.aj
  %i.al = lshr i64 %i.ah, 29
  %i.am = and i64 %i.al, 1
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = xor i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %.not10.i = icmp eq ptr %.val13.i, %i.ap
  br i1 %.not10.i, label %bb.e, label %.critedge.loopexit.split.loop.exit21.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManBmcFindFirst.exit, label %bb.d, !llvm.loop !120

.critedge.loopexit.split.loop.exit21.i:           ; preds = %bb.d
  %i.aq = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %Gia_ManBmcFindFirst.exit

Gia_ManBmcFindFirst.exit:                         ; preds = %bb.e, %bb.c, %.lr.ph.i, %.critedge.loopexit.split.loop.exit21.i
  %.08.i = phi i32 [ -1, %bb.c ], [ -1, %.lr.ph.i ], [ %i.aq, %.critedge.loopexit.split.loop.exit21.i ], [ -1, %bb.e ]
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.x, i32 noundef %.08.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.as = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #20
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %Abc_Clock.exit134, label %bb.f

bb.f:                                             ; preds = %Gia_ManBmcFindFirst.exit
  %i.au = load i64, ptr %4, align 8, !tbaa !31
  %i.av = mul nsw i64 %i.au, 1000000
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !33
  %i.ay = sdiv i64 %i.ax, 1000
  %i.az = add nsw i64 %i.ay, %i.av
  br label %Abc_Clock.exit134

Abc_Clock.exit134:                                ; preds = %Gia_ManBmcFindFirst.exit, %bb.f
  %.0.i133 = phi i64 [ %i.az, %bb.f ], [ -1, %Gia_ManBmcFindFirst.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ba = add i64 %.0.i133, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4)
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.16, double noundef %i.bc)
  br label %bb.g

bb.g:                                             ; preds = %Abc_Clock.exit134, %Abc_Clock.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !146
  %.not98 = icmp eq i32 %i.be, 0
  %i.bf = load i32, ptr %i.y, align 4, !tbaa !127 ; 2 uses
  br i1 %.not98, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = call ptr @Gia_ManAigSyn2(ptr noundef %i.o, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bf, i32 noundef 0) #20 ; 2 uses
  store ptr %i.bg, ptr %i.g, align 8, !tbaa !115
  call void @Gia_ManStop(ptr noundef %i.o) #20
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not99 = icmp eq i32 %i.bf, 0
  br i1 %.not99, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @Gia_ManPrintStats(ptr noundef %i.o, ptr noundef null) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.bh = phi ptr [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %i.bg, %bb.h ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !128
  %.not100 = icmp eq i32 %i.bj, 0
  br i1 %.not100, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @Gia_AigerWrite(ptr noundef %i.bh, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not105173 = icmp sgt i32 %i.x, 0
  br i1 %.not105173, label %.lr.ph175, label %.loopexit159

.lr.ph175:                                        ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph175, %.thread150
  %.095174 = phi i32 [ 0, %.lr.ph175 ], [ %i.by, %.thread150 ] ; 8 uses
  %.val123 = load i32, ptr %i.t, align 8, !tbaa !37
  %.val124 = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.bv = getelementptr i8, ptr %.val124, i64 4
  %.val124.val = load i32, ptr %i.bv, align 4, !tbaa !30
  %i.bw = sub nsw i32 %.val124.val, %.val123      ; 3 uses
  %i.bx = mul nsw i32 %i.bw, %.095174             ; 2 uses
  %i.by = add nuw nsw i32 %.095174, 1             ; 4 uses
  %i.bz = mul nsw i32 %i.bw, %i.by                ; 2 uses
  %i.ca = icmp sgt i32 %i.bw, 0
  br i1 %i.ca, label %.lr.ph.i135, label %.thread150

.lr.ph.i135:                                      ; preds = %bb.n
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !115 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 32
  %.val8.i = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 72
  %.val9.i = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.ce = getelementptr i8, ptr %.val9.i, i64 8
  %.val9.val.i = load ptr, ptr %i.ce, align 8, !tbaa !39
  %i.cf = zext nneg i32 %i.bx to i64
  %wide.trip.count.i136 = zext nneg i32 %i.bz to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i137, 1 ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %indvars.iv.next.i139, %wide.trip.count.i136
  br i1 %exitcond.not.i140, label %.thread150, label %bb.p, !llvm.loop !119

bb.p:                                             ; preds = %bb.o, %.lr.ph.i135
  %indvars.iv.i137 = phi i64 [ %i.cf, %.lr.ph.i135 ], [ %indvars.iv.next.i139, %bb.o ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.val9.val.i, i64 %indvars.iv.i137
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !40
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [12 x i8], ptr %.val8.i, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 4            ; 2 uses
  %i.cl = and i64 %i.ck, 536870911
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds [12 x i8], ptr %i.cj, i64 %i.cm
  %i.co = lshr i64 %i.ck, 29
  %i.cp = and i64 %i.co, 1
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = xor i64 %i.cp, %i.cq
  %i.cs = inttoptr i64 %i.cr to ptr
  %.not.i138 = icmp eq ptr %.val8.i, %i.cs
  br i1 %.not.i138, label %bb.o, label %Gia_ManBmcCheckOutputs.exit

Gia_ManBmcCheckOutputs.exit:                      ; preds = %bb.p
  call void @Gia_ManBmcAddCone(ptr noundef nonnull %i.g, i32 noundef %i.bx, i32 noundef %i.bz)
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.cu = load ptr, ptr %i.bk, align 8, !tbaa !84
  %i.cv = load ptr, ptr %i.bl, align 8, !tbaa !86
  %i.cw = load ptr, ptr %i.bm, align 8, !tbaa !85
  call void @Gia_ManBmcAddCnf(ptr noundef nonnull %i.g, ptr noundef %i.ct, ptr noundef %i.cu, ptr noundef %i.cv, ptr noundef %i.cw)
  %.val115 = load i32, ptr %i.t, align 8, !tbaa !37 ; 2 uses
  %.val116 = load ptr, ptr %i.u, align 8, !tbaa !8 ; 2 uses
  %i.cx = getelementptr i8, ptr %.val116, i64 4
  %.val116.val = load i32, ptr %i.cx, align 4, !tbaa !30
  %i.cy = sub nsw i32 %.val116.val, %.val115      ; 2 uses
  %i.cz = mul nsw i32 %i.cy, %.095174             ; 2 uses
  %i.da = icmp sgt i32 %i.cy, 0
  br i1 %i.da, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %Gia_ManBmcCheckOutputs.exit
  %i.db = zext nneg i32 %i.cz to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.val114189 = phi ptr [ %.val116, %.lr.ph.preheader ], [ %.val114, %bb.r ]
  %.val113187 = phi i32 [ %.val115, %.lr.ph.preheader ], [ %.val113, %bb.r ]
  %indvars.iv = phi i64 [ %i.db, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.dc = load ptr, ptr %i.g, align 8, !tbaa !115 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 32
  %.val129 = load ptr, ptr %i.dd, align 8, !tbaa !34 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dc, i64 72
  %.val130 = load ptr, ptr %i.de, align 8, !tbaa !8
  %i.df = getelementptr i8, ptr %.val130, i64 8
  %.val130.val = load ptr, ptr %i.df, align 8, !tbaa !39
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val130.val, i64 %indvars.iv
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !40
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [12 x i8], ptr %.val129, i64 %i.di ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 4            ; 2 uses
  %i.dl = and i64 %i.dk, 536870911
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds [12 x i8], ptr %i.dj, i64 %i.dm
  %i.do = lshr i64 %i.dk, 29
  %i.dp = and i64 %i.do, 1
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = xor i64 %i.dp, %i.dq
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = icmp eq ptr %.val129, %i.ds
  br i1 %i.dt, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.du = load ptr, ptr %i.bn, align 8, !tbaa !80
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %.val110 = load ptr, ptr %i.dv, align 8, !tbaa !39
  %i.dw = getelementptr inbounds [4 x i8], ptr %.val110, i64 %i.di
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !40
  %i.dy = shl nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !40
  %i.dz = load ptr, ptr %i.bo, align 8, !tbaa !87
  %i.ea = load i32, ptr %i.bq, align 4, !tbaa !125
  %i.eb = sext i32 %i.ea to i64
  %i.ec = call i32 @sat_solver_solve(ptr noundef %i.dz, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bp, i64 noundef %i.eb, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20
  switch i32 %i.ec, label %.loopexit158 [
    i32 -1, label %._crit_edge
    i32 1, label %.loopexit176.loopexit
    i32 0, label %.loopexit176
  ]

._crit_edge:                                      ; preds = %bb.q
  %.val113.pre = load i32, ptr %i.t, align 8, !tbaa !37
  %.val114.pre = load ptr, ptr %i.u, align 8, !tbaa !8
  br label %bb.r

.loopexit158:                                     ; preds = %bb.q
  br label %.loopexit176

.loopexit176.loopexit:                            ; preds = %bb.q
  br label %.loopexit176

.loopexit176:                                     ; preds = %bb.q, %.loopexit176.loopexit, %.loopexit158
  %spec.select = phi i32 [ -2, %.loopexit158 ], [ 0, %.loopexit176.loopexit ], [ -1, %bb.q ]
  %.193172180 = trunc i64 %indvars.iv to i32
  br label %.loopexit

bb.r:                                             ; preds = %._crit_edge, %.lr.ph
  %.val114 = phi ptr [ %.val114.pre, %._crit_edge ], [ %.val114189, %.lr.ph ] ; 2 uses
  %.val113 = phi i32 [ %.val113.pre, %._crit_edge ], [ %.val113187, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ed = getelementptr i8, ptr %.val114, i64 4
  %.val114.val = load i32, ptr %i.ed, align 4, !tbaa !30
  %i.ee = sub nsw i32 %.val114.val, %.val113
  %i.ef = mul nsw i32 %i.ee, %i.by
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next, %i.eg
  br i1 %i.eh, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !147

.loopexit.loopexit:                               ; preds = %bb.r
  %i.ei = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %Gia_ManBmcCheckOutputs.exit, %.loopexit176
  %.193162 = phi i32 [ %.193172180, %.loopexit176 ], [ %i.cz, %Gia_ManBmcCheckOutputs.exit ], [ %i.ei, %.loopexit.loopexit ] ; 2 uses
  %.5 = phi i32 [ %spec.select, %.loopexit176 ], [ -2, %Gia_ManBmcCheckOutputs.exit ], [ -2, %.loopexit.loopexit ]
  %i.ej = load i32, ptr %i.y, align 4, !tbaa !127
  %.not102 = icmp eq i32 %i.ej, 0
  br i1 %.not102, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.ek = load ptr, ptr %i.g, align 8, !tbaa !115 ; 4 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %.val108 = load i32, ptr %i.el, align 8, !tbaa !37
  %i.em = getelementptr i8, ptr %i.ek, i64 64
  %.val109 = load ptr, ptr %i.em, align 8, !tbaa !38
  %i.en = getelementptr i8, ptr %.val109, i64 4
  %.val109.val = load i32, ptr %i.en, align 4, !tbaa !30 ; 2 uses
  %i.eo = sub nsw i32 %.val109.val, %.val108
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !53
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !8
  %i.et = getelementptr i8, ptr %i.es, i64 4
  %.val.i = load i32, ptr %i.et, align 4, !tbaa !30
  %i.eu = add i32 %.val.i, %.val109.val
  %i.ev = xor i32 %i.eu, -1
  %i.ew = add i32 %i.eq, %i.ev
  %i.ex = load i32, ptr %i.br, align 8, !tbaa !88
  %i.ey = add nsw i32 %i.ex, -1
  %i.ez = load ptr, ptr %i.bk, align 8, !tbaa !84
  %i.fa = getelementptr i8, ptr %i.ez, i64 4
  %.val106 = load i32, ptr %i.fa, align 4, !tbaa !30
  %i.fb = load ptr, ptr %i.bl, align 8, !tbaa !86
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %.val = load i32, ptr %i.fc, align 4, !tbaa !30
  %i.fd = load ptr, ptr %i.bo, align 8, !tbaa !87
  %i.fe = call i32 @sat_solver_nclauses(ptr noundef %i.fd) #20
  %i.ff = load ptr, ptr %i.bo, align 8, !tbaa !87
  %i.fg = call i32 @sat_solver_nconflicts(ptr noundef %i.ff) #20
  %i.fh = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.fi = call double @Gia_ManMemory(ptr noundef %i.fh) #20
  %i.fj = fmul double %i.fi, f0x3EB0000000000000
  %i.fk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.095174, i32 noundef %i.eo, i32 noundef %i.ew, i32 noundef %i.ey, i32 noundef %.val106, i32 noundef %.val, i32 noundef %i.fe, i32 noundef %i.fg, double noundef %i.fj) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.fl = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #20
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %Abc_Clock.exit142, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fn = load i64, ptr %3, align 8, !tbaa !31
  %i.fo = mul nsw i64 %i.fn, 1000000
  %i.fp = load i64, ptr %i.bs, align 8, !tbaa !33
  %i.fq = sdiv i64 %i.fp, 1000
  %i.fr = add nsw i64 %i.fq, %i.fo
  br label %Abc_Clock.exit142

Abc_Clock.exit142:                                ; preds = %bb.s, %bb.t
  %.0.i141 = phi i64 [ %i.fr, %bb.t ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.fs = load i64, ptr %i.bt, align 8, !tbaa !89
  %i.ft = sub nsw i64 %.0.i141, %i.fs
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4)
  %i.fu = sitofp i64 %i.ft to double
  %i.fv = fdiv double %i.fu, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.16, double noundef %i.fv)
  br label %bb.u

end_hunk_1
begin_hunk_2_@Gia_ManBmcPerformInt:bb.a
  %i.bx = sitofp i64 %i.bw to double
  %i.by = fdiv double %i.bx, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.16, double noundef %i.by)
  br label %bb.l

bb.l:                                             ; preds = %Abc_Clock.exit172, %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !146
  %.not127 = icmp eq i32 %i.ca, 0
  br i1 %.not127, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  %i.cc = load i32, ptr %i.au, align 4, !tbaa !127
  %i.cd = call ptr @Gia_ManAigSyn2(ptr noundef %i.cb, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cc, i32 noundef 0) #20
  store ptr %i.cd, ptr %i.l, align 8, !tbaa !115
  call void @Gia_ManStop(ptr noundef %i.cb) #20
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ce = load i32, ptr %i.au, align 4, !tbaa !127
  %.not128 = icmp eq i32 %i.ce, 0
  br i1 %.not128, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %i.l, align 8, !tbaa !115
  call void @Gia_ManPrintStats(ptr noundef %i.cf, ptr noundef null) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !128
  %.not129 = icmp eq i32 %i.ch, 0
  br i1 %.not129, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !115
  call void @Gia_AigerWrite(ptr noundef %i.ci, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !160
  %.not130 = icmp eq i32 %i.ck, 0
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  br i1 %.not130, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = call ptr @Gia_ManToAigSimple(ptr noundef %i.cl) #20 ; 2 uses
  %i.cn = call ptr @Cnf_DeriveOther(ptr noundef %i.cm, i32 noundef 1) #20
  call void @Aig_ManStop(ptr noundef %i.cm) #20
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !161
  %i.cq = load i32, ptr %i.au, align 4, !tbaa !127
  %i.cr = call ptr @Mf_ManGenerateCnf(ptr noundef %i.cl, i32 noundef %i.cp, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %i.cq) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink = phi ptr [ %i.cr, %bb.t ], [ %i.cn, %bb.s ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sink, ptr %i.cs, align 8, !tbaa !90
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !80 ; 6 uses
  %i.cv = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.cw = getelementptr i8, ptr %i.cv, i64 24
  %.val166 = load i32, ptr %i.cw, align 8, !tbaa !53 ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !30 ; 4 uses
  %.not.i173 = icmp sgt i32 %.val166, %i.cy
  br i1 %.not.i173, label %bb.v, label %Vec_IntFillExtra.exit

bb.v:                                             ; preds = %bb.u
  %i.cz = load i32, ptr %i.cu, align 8, !tbaa !58 ; 4 uses
  %i.da = shl nsw i32 %i.cz, 1                    ; 2 uses
  %i.db = icmp sgt i32 %.val166, %i.da
  %.not.i.i = icmp slt i32 %i.cz, %.val166        ; 2 uses
  br i1 %i.db, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i.i, label %bb.x, label %Vec_IntGrow.exit.i

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.dd, null
  %i.de = sext i32 %.val166 to i64
  %i.df = shl nsw i64 %i.de, 2                    ; 2 uses
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = call ptr @realloc(ptr noundef nonnull %i.dd, i64 noundef %i.df) #22
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dh = call noalias ptr @malloc(i64 noundef %i.df) #21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.di = phi ptr [ %i.dg, %bb.y ], [ %i.dh, %bb.z ]
  store ptr %i.di, ptr %i.dc, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i

bb.ab:                                            ; preds = %bb.v
  br i1 %.not.i.i, label %bb.ac, label %Vec_IntGrow.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.dj = icmp slt i32 %i.cz, 1073741823
  %spec.select.i = select i1 %i.dj, i32 %i.da, i32 2147483647 ; 3 uses
  %.not.i22.i = icmp slt i32 %i.cz, %spec.select.i
  br i1 %.not.i22.i, label %bb.ad, label %Vec_IntGrow.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.dl, null
  %i.dm = sext i32 %spec.select.i to i64
  %i.dn = shl nuw nsw i64 %i.dm, 2                ; 2 uses
  br i1 %.not9.i23.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.do = call ptr @realloc(ptr noundef nonnull %i.dl, i64 noundef %i.dn) #22
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dp = call noalias ptr @malloc(i64 noundef %i.dn) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dq = phi ptr [ %i.do, %bb.ae ], [ %i.dp, %bb.af ]
  store ptr %i.dq, ptr %i.dk, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i

Vec_IntGrow.exit.sink.split.i:                    ; preds = %bb.ag, %bb.aa
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ag ], [ %.val166, %bb.aa ]
  store i32 %spec.select.sink.i, ptr %i.cu, align 8, !tbaa !58
  %.pre = load i32, ptr %i.cx, align 4, !tbaa !30
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %Vec_IntGrow.exit.sink.split.i, %bb.ac, %bb.ab, %bb.w
  %i.dr = phi i32 [ %.pre, %Vec_IntGrow.exit.sink.split.i ], [ %i.cy, %bb.ac ], [ %i.cy, %bb.ab ], [ %i.cy, %bb.w ] ; 3 uses
  %i.ds = icmp slt i32 %i.dr, %.val166
  br i1 %i.ds, label %.lr.ph.i174, label %._crit_edge.i

.lr.ph.i174:                                      ; preds = %Vec_IntGrow.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !39
  %i.dv = sext i32 %i.dr to i64
  %i.dw = shl nsw i64 %i.dv, 2
  %scevgep.i = getelementptr i8, ptr %i.du, i64 %i.dw
  %i.dx = xor i32 %i.dr, -1
  %i.dy = add i32 %.val166, %i.dx
  %i.dz = zext i32 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.eb, i1 false), !tbaa !40
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i174, %Vec_IntGrow.exit.i
  store i32 %.val166, ptr %i.cx, align 4, !tbaa !30
  br label %Vec_IntFillExtra.exit

Vec_IntFillExtra.exit:                            ; preds = %bb.u, %._crit_edge.i
  %.not139224 = icmp sgt i32 %i.at, 0
  br i1 %.not139224, label %.lr.ph226, label %.loopexit206

.lr.ph226:                                        ; preds = %Vec_IntFillExtra.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph226, %.thread197
  %.0116225 = phi i32 [ 0, %.lr.ph226 ], [ %i.eq, %.thread197 ] ; 9 uses
  %i.el = load ptr, ptr %i.g, align 8, !tbaa !156 ; 2 uses
  %.not131 = icmp eq ptr %i.el, null
  br i1 %.not131, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.em = load ptr, ptr %i.ec, align 8, !tbaa !157
  %i.en = call i32 %i.el(ptr noundef %i.em, i32 noundef 0, i32 noundef %.0116225) #20
  %.not132 = icmp eq i32 %i.en, 0
  br i1 %.not132, label %bb.aj, label %.loopexit206

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.val157 = load i32, ptr %i.ap, align 8, !tbaa !37
  %.val158 = load ptr, ptr %i.aq, align 8, !tbaa !8
  %i.eo = getelementptr i8, ptr %.val158, i64 4
  %.val158.val = load i32, ptr %i.eo, align 4, !tbaa !30
  %i.ep = sub nsw i32 %.val158.val, %.val157      ; 3 uses
  %i.eq = add nuw nsw i32 %.0116225, 1            ; 4 uses
  %i.er = mul nsw i32 %i.ep, %i.eq                ; 2 uses
  %i.es = icmp sgt i32 %i.ep, 0
  br i1 %i.es, label %.lr.ph.i176, label %.thread197

.lr.ph.i176:                                      ; preds = %bb.aj
  %i.et = mul nuw nsw i32 %i.ep, %.0116225
  %i.eu = load ptr, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 32
  %.val8.i = load ptr, ptr %i.ev, align 8, !tbaa !34 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eu, i64 72
  %.val9.i = load ptr, ptr %i.ew, align 8, !tbaa !8
  %i.ex = getelementptr i8, ptr %.val9.i, i64 8
  %.val9.val.i = load ptr, ptr %i.ex, align 8, !tbaa !39
  %i.ey = zext nneg i32 %i.et to i64              ; 2 uses
  %wide.trip.count.i177 = zext nneg i32 %i.er to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %indvars.iv.next.i180 = add nuw nsw i64 %indvars.iv.i178, 1 ; 2 uses
  %exitcond.not.i181 = icmp eq i64 %indvars.iv.next.i180, %wide.trip.count.i177
  br i1 %exitcond.not.i181, label %.thread197, label %bb.al, !llvm.loop !119

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i176
  %indvars.iv.i178 = phi i64 [ %i.ey, %.lr.ph.i176 ], [ %indvars.iv.next.i180, %bb.ak ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val9.val.i, i64 %indvars.iv.i178
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !40
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [12 x i8], ptr %.val8.i, i64 %i.fb ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 4            ; 2 uses
  %i.fe = and i64 %i.fd, 536870911
  %i.ff = sub nsw i64 0, %i.fe
  %i.fg = getelementptr inbounds [12 x i8], ptr %i.fc, i64 %i.ff
  %i.fh = lshr i64 %i.fd, 29
  %i.fi = and i64 %i.fh, 1
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = xor i64 %i.fi, %i.fj
  %i.fl = inttoptr i64 %i.fk to ptr
  %.not.i179 = icmp eq ptr %.val8.i, %i.fl
  br i1 %.not.i179, label %bb.ak, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %bb.al, %bb.an
  %indvars.iv.i184 = phi i64 [ %indvars.iv.next.i186, %bb.an ], [ %i.ey, %bb.al ] ; 2 uses
  %i.fm = load ptr, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 32
  %.val9.i185 = load ptr, ptr %i.fn, align 8, !tbaa !34
  %i.fo = getelementptr i8, ptr %i.fm, i64 72
  %.val10.i = load ptr, ptr %i.fo, align 8, !tbaa !8
  %i.fp = getelementptr i8, ptr %.val10.i, i64 8
  %.val10.val.i = load ptr, ptr %i.fp, align 8, !tbaa !39
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val10.val.i, i64 %indvars.iv.i184
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !40
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %.idx.i = mul nsw i64 %i.fs, 12
  %i.ft = getelementptr inbounds i8, ptr %.val9.i185, i64 %.idx.i ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 4
  %i.fv = and i64 %i.fu, 536870911
  %i.fw = icmp eq i64 %i.fv, %i.fs
  br i1 %i.fw, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i183
  call void @Gia_ManBmcAddCnfNew_rec(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ft)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i183
  %indvars.iv.next.i186 = add nuw nsw i64 %indvars.iv.i184, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i186 to i32
  %exitcond.not.i187 = icmp eq i32 %i.er, %lftr.wideiv.i
  br i1 %exitcond.not.i187, label %Gia_ManBmcAddCnfNew.exit, label %.lr.ph.i183, !llvm.loop !155

Gia_ManBmcAddCnfNew.exit:                         ; preds = %bb.an
  %.val149 = load i32, ptr %i.ap, align 8, !tbaa !37
  %.val150 = load ptr, ptr %i.aq, align 8, !tbaa !8
  %i.fx = getelementptr i8, ptr %.val150, i64 4
  %.val150.val = load i32, ptr %i.fx, align 4, !tbaa !30
  %i.fy = sub nsw i32 %.val150.val, %.val149      ; 2 uses
  %i.fz = mul nsw i32 %i.fy, %.0116225            ; 2 uses
  %i.ga = icmp sgt i32 %i.fy, 0
  br i1 %i.ga, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %Gia_ManBmcAddCnfNew.exit
  %i.gb = zext nneg i32 %i.fz to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.at
  %indvars.iv = phi i64 [ %i.gb, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.at ] ; 5 uses
  %i.gc = load ptr, ptr %i.g, align 8, !tbaa !156 ; 2 uses
  %.not134 = icmp eq ptr %i.gc, null
  br i1 %.not134, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph
  %i.gd = load ptr, ptr %i.ec, align 8, !tbaa !157
  %i.ge = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.gf = call i32 %i.gc(ptr noundef %i.gd, i32 noundef 0, i32 noundef %i.ge) #20
  %.not135 = icmp eq i32 %i.gf, 0
  br i1 %.not135, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao, %.lr.ph
  %i.gg = load ptr, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 32
  %.val163 = load ptr, ptr %i.gh, align 8, !tbaa !34 ; 3 uses
  %i.gi = getelementptr i8, ptr %i.gg, i64 72
  %.val164 = load ptr, ptr %i.gi, align 8, !tbaa !8
  %i.gj = getelementptr i8, ptr %.val164, i64 8
  %.val164.val = load ptr, ptr %i.gj, align 8, !tbaa !39
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.val164.val, i64 %indvars.iv
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !40
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds [12 x i8], ptr %.val163, i64 %i.gm ; 2 uses
  %i.go = load i64, ptr %i.gn, align 4            ; 2 uses
  %i.gp = and i64 %i.go, 536870911
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds [12 x i8], ptr %i.gn, i64 %i.gq
  %i.gs = lshr i64 %i.go, 29
  %i.gt = and i64 %i.gs, 1
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = xor i64 %i.gt, %i.gu                    ; 2 uses
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = icmp eq ptr %.val163, %i.gw
  br i1 %i.gx, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gy = ptrtoint ptr %.val163 to i64
  %i.gz = xor i64 %i.gv, %i.gy
  %i.ha = icmp eq i64 %i.gz, 1
  br i1 %i.ha, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hb = trunc nsw i64 %indvars.iv to i32
  %i.hc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.hb) ; 0 uses
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.hd = load ptr, ptr %i.ct, align 8, !tbaa !80
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %.val144 = load ptr, ptr %i.he, align 8, !tbaa !39
  %i.hf = getelementptr inbounds [4 x i8], ptr %.val144, i64 %i.gm
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !40
  %i.hh = shl nsw i32 %i.hg, 1
  store i32 %i.hh, ptr %i.a, align 4, !tbaa !40
  %i.hi = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.hj = load i32, ptr %i.ee, align 4, !tbaa !125
  %i.hk = sext i32 %i.hj to i64
  %i.hl = call i32 @sat_solver_solve(ptr noundef %i.hi, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ed, i64 noundef %i.hk, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20
  switch i32 %i.hl, label %.loopexit205 [
    i32 -1, label %bb.at
    i32 1, label %.loopexit228.loopexit
    i32 0, label %.loopexit228
  ]

.loopexit205:                                     ; preds = %bb.as
  br label %.loopexit228

.loopexit228.loopexit:                            ; preds = %bb.as
  br label %.loopexit228

.loopexit228:                                     ; preds = %bb.as, %.loopexit228.loopexit, %.loopexit205
  %spec.select = phi i32 [ -2, %.loopexit205 ], [ 0, %.loopexit228.loopexit ], [ -1, %bb.as ]
  %.1114219232 = trunc i64 %indvars.iv to i32
  br label %.loopexit

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ap
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.val147 = load i32, ptr %i.ap, align 8, !tbaa !37
  %.val148 = load ptr, ptr %i.aq, align 8, !tbaa !8
  %i.hm = getelementptr i8, ptr %.val148, i64 4
  %.val148.val = load i32, ptr %i.hm, align 4, !tbaa !30
  %i.hn = sub nsw i32 %.val148.val, %.val147
  %i.ho = mul nsw i32 %i.hn, %i.eq
  %i.hp = sext i32 %i.ho to i64
  %i.hq = icmp slt i64 %indvars.iv.next, %i.hp
  br i1 %i.hq, label %.lr.ph, label %.loopexit.loopexit.split.loop.exit260, !llvm.loop !162

.loopexit.loopexit.split.loop.exit260:            ; preds = %bb.at
  %indvars.le = trunc i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %.loopexit.loopexit.split.loop.exit260, %Gia_ManBmcAddCnfNew.exit, %.loopexit228
  %.1114209 = phi i32 [ %.1114219232, %.loopexit228 ], [ %i.fz, %Gia_ManBmcAddCnfNew.exit ], [ %indvars.le, %.loopexit.loopexit.split.loop.exit260 ], [ %i.ge, %bb.ao ] ; 2 uses
  %.5 = phi i32 [ %spec.select, %.loopexit228 ], [ -2, %Gia_ManBmcAddCnfNew.exit ], [ -2, %.loopexit.loopexit.split.loop.exit260 ], [ -1, %bb.ao ]
  %i.hr = load i32, ptr %i.au, align 4, !tbaa !127
  %.not136 = icmp eq i32 %i.hr, 0
  br i1 %.not136, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.loopexit
  %i.hs = load ptr, ptr %i.l, align 8, !tbaa !115 ; 4 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 16
  %.val142 = load i32, ptr %i.ht, align 8, !tbaa !37
  %i.hu = getelementptr i8, ptr %i.hs, i64 64
  %.val143 = load ptr, ptr %i.hu, align 8, !tbaa !38
  %i.hv = getelementptr i8, ptr %.val143, i64 4
  %.val143.val = load i32, ptr %i.hv, align 4, !tbaa !30 ; 2 uses
  %i.hw = sub nsw i32 %.val143.val, %.val142
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !53
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 72
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !8
  %i.ib = getelementptr i8, ptr %i.ia, i64 4
  %.val.i = load i32, ptr %i.ib, align 4, !tbaa !30
  %i.ic = add i32 %.val.i, %.val143.val
  %i.id = xor i32 %i.ic, -1
  %i.ie = add i32 %i.hy, %i.id
end_hunk_2
