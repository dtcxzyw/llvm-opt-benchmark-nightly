Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauDsd?download=true
inline.NumInlined: 326
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 96
begin_hunk_0_@Dau_Dsd6DecomposeDoubleVars:bb.a

bb.u:                                             ; preds = %.loopexit.i
  br i1 %i.gf, label %bb.v, label %.loopexit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.gg = load i32, ptr %2, align 4, !tbaa !9
  %i.gh = load i64, ptr %1, align 8, !tbaa !39
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = and i32 %i.gi, 1
  call fastcc void @Dau_DsdWriteVar(ptr noundef nonnull %0, i32 noundef %i.gg, i32 noundef %i.gj)
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.split.i, %bb.v, %bb.u
  %.2.i = phi i32 [ 0, %bb.v ], [ %.1.i, %bb.u ], [ %.021.i, %.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.gk = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #31
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %Dau_Dsd6DecomposeSingleVar.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit.thread.i
  %i.gm = load i64, ptr %4, align 8, !tbaa !120
  %i.gn = mul nsw i64 %i.gm, 1000000
  %i.go = load i64, ptr %i.k, align 8, !tbaa !122
  %i.gp = sdiv i64 %i.go, 1000
  %i.gq = add nsw i64 %i.gp, %i.gn
  br label %Dau_Dsd6DecomposeSingleVar.exit

Dau_Dsd6DecomposeSingleVar.exit:                  ; preds = %.loopexit.thread.i, %bb.w
  %.0.i22.i = phi i64 [ %i.gq, %bb.w ], [ -1, %.loopexit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.gr = add i64 %.0.i22.i, %.0.i.neg.i
  %i.gs = load i64, ptr @s_Times.0, align 16, !tbaa !39
  %i.gt = add nsw i64 %i.gr, %i.gs
  store i64 %i.gt, ptr @s_Times.0, align 16, !tbaa !39
  br label %Dau_Dsd6DecomposeDoubleVarsOne.exit

default.unreachable:                              ; preds = %Dau_Dsd6FindSupportOne.exit.i
  unreachable

Dau_Dsd6DecomposeDoubleVarsOne.exit:              ; preds = %Dau_Dsd6FindSupportOne.exit.i, %bb.e, %bb.f, %bb.j, %bb.n, %Dau_DsdAddVarDef.exit.i, %Dau_Dsd6DecomposeSingleVar.exit
  %.0.i35 = phi i32 [ %.258, %bb.f ], [ %.258, %Dau_Dsd6FindSupportOne.exit.i ], [ %.258, %bb.j ], [ %.258, %bb.n ], [ %.258, %bb.e ], [ %.2.i, %Dau_Dsd6DecomposeSingleVar.exit ], [ %i.fq, %Dau_DsdAddVarDef.exit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.gu = icmp eq i32 %.0.i35, 0
  br i1 %i.gu, label %bb.x, label %bb.z

bb.x:                                             ; preds = %Dau_Dsd6DecomposeDoubleVarsOne.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.gv = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #31
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gx = load i64, ptr %7, align 8, !tbaa !120
  %i.gy = mul nsw i64 %i.gx, 1000000
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !122
  %i.hb = sdiv i64 %i.ha, 1000
  %i.hc = add nsw i64 %i.hb, %i.gy
  br label %.thread

.thread:                                          ; preds = %bb.y, %bb.x
  %.0.i36 = phi i64 [ %i.hc, %bb.y ], [ -1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ad

bb.z:                                             ; preds = %Dau_Dsd6DecomposeDoubleVarsOne.exit
  %i.hd = icmp sgt i32 %.258, %.0.i35
  br i1 %i.hd, label %._crit_edge.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.d
  %.3 = phi i32 [ %.258, %bb.d ], [ %.0.i35, %bb.z ] ; 3 uses
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, -1
  %i.he = icmp sgt i64 %indvars.iv75, 0
  br i1 %i.he, label %bb.d, label %._crit_edge, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.aa
  %indvars.iv.next = add i32 %indvars.iv121, -1
  %indvars.iv.next79 = add nsw i64 %indvars.iv.next79123, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next79 to i32  ; 2 uses
  %i.hf = trunc nuw i64 %indvars.iv.next79123 to i32
  %i.hg = icmp sgt i32 %i.hf, 1
  br i1 %i.hg, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !131

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.z, %bb.c
  %indvars114 = phi i32 [ %indvars124, %bb.z ], [ %indvars120, %bb.c ], [ %indvars, %._crit_edge ]
  %.5 = phi i32 [ %.0.i35, %bb.z ], [ %.029, %bb.c ], [ %.3, %._crit_edge ] ; 2 uses
  %i.hh = icmp eq i32 %indvars114, 0
  br i1 %i.hh, label %bb.ab, label %bb.c

bb.ab:                                            ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.hi = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #31
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %Abc_Clock.exit39, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = load i64, ptr %6, align 8, !tbaa !120
  %i.hl = mul nsw i64 %i.hk, 1000000
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !122
  %i.ho = sdiv i64 %i.hn, 1000
  %i.hp = add nsw i64 %i.ho, %i.hl
  br label %Abc_Clock.exit39

Abc_Clock.exit39:                                 ; preds = %bb.ab, %bb.ac
  %.0.i38 = phi i64 [ %i.hp, %bb.ac ], [ -1, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ad

bb.ad:                                            ; preds = %.thread, %Abc_Clock.exit39
  %.0.i36.sink = phi i64 [ %.0.i36, %.thread ], [ %.0.i38, %Abc_Clock.exit39 ]
  %.232 = phi i32 [ 0, %.thread ], [ %.5, %Abc_Clock.exit39 ]
  %i.hq = add i64 %.0.i36.sink, %.0.i.neg67
  %i.hr = load i64, ptr @s_Times.1, align 8, !tbaa !39
  %i.hs = add nsw i64 %i.hq, %i.hr
  store i64 %i.hs, ptr @s_Times.1, align 8, !tbaa !39
  ret i32 %.232
}

; Function Attrs: nounwind uwtable
define i32 @Dau_Dsd6DecomposeTripleVars(ptr noundef %0, ptr nofree noundef captures(address) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [10 x i8], align 1                ; 5 uses
  %7 = alloca %struct.Dau_Dsd_t_, align 8         ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #31
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %8, align 8, !tbaa !120
  %.neg157 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !122
  %.neg = sdiv i64 %i.h, -1000
  %.neg158 = add i64 %.neg, %.neg157
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg159 = phi i64 [ %.neg158, %bb.b ], [ 1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %.not.i.i = icmp eq ptr %0, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %Abc_Clock.exit
  %.041 = phi i32 [ %3, %Abc_Clock.exit ], [ %.4, %.loopexit ] ; 15 uses
  %i.l = icmp sgt i32 %.041, 0
  br i1 %i.l, label %.lr.ph.i.lr.ph, label %.loopexit

.lr.ph.i.lr.ph:                                   ; preds = %bb.c
  %wide.trip.count8.i = zext nneg i32 %.041 to i64 ; 3 uses
  %i.m = add nsw i32 %.041, -1                    ; 9 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.n ; 5 uses
  %.not = icmp eq i32 %.041, 1
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64
  %i.p = add nsw i32 %.041, -2                    ; 6 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.s = icmp samesign ugt i32 %.041, 2
  %wide.trip.count.i95.i = zext nneg i32 %i.p to i64
  %i.t = add nsw i32 %.041, -3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %Abc_TtSuppOnlyOne.exit.thread
  %indvars.iv = phi i64 [ %wide.trip.count8.i, %.lr.ph.i.lr.ph ], [ %indvars.iv.next, %Abc_TtSuppOnlyOne.exit.thread ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 7 uses
  %.val = load i64, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39   ; 2 uses
  %i.w = and i64 %i.v, %.val                      ; 2 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %i.y = shl nuw i32 1, %i.x
  %i.z = zext nneg i32 %i.y to i64                ; 4 uses
  %i.aa = shl i64 %i.w, %i.z
  %i.ab = or i64 %i.aa, %i.w                      ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv.next ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !39
  %i.ae = and i64 %i.ad, %.val                    ; 2 uses
  %i.af = lshr i64 %i.ae, %i.z
  %i.ag = or i64 %i.af, %i.ae                     ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 5 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.d
  %indvars.iv5.i = phi i64 [ %indvars.iv.next6.i, %bb.d ], [ 0, %.lr.ph.i ] ; 4 uses
  %.02.us.i = phi i32 [ %.1.us.i, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %.not.us.i = icmp eq i64 %indvars.iv5.i, %indvars.iv.next
  br i1 %.not.us.i, label %bb.d, label %..thread_crit_edge.i.us.i

..thread_crit_edge.i.us.i:                        ; preds = %.lr.ph.split.us.i
  %i.ai = trunc i64 %indvars.iv5.i to i32         ; 2 uses
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ag, %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv5.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  %i.ao = xor i64 %i.al, %i.ag
  %i.ap = and i64 %i.an, %i.ao
  %.not20.i.us.i = icmp eq i64 %i.ap, 0
  %i.aq = select i1 %.not20.i.us.i, i32 0, i32 2
  %i.ar = lshr i64 %i.ab, %i.ak
  %i.as = xor i64 %i.ar, %i.ab
  %i.at = and i64 %i.an, %i.as
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = or disjoint i32 %i.aq, %i.av
  %i.ax = shl i32 %i.ai, 1
  %i.ay = shl i32 %i.aw, %i.ax
  %i.az = or i32 %i.ay, %.02.us.i
  br label %bb.d

bb.d:                                             ; preds = %..thread_crit_edge.i.us.i, %.lr.ph.split.us.i
  %.1.us.i = phi i32 [ %i.az, %..thread_crit_edge.i.us.i ], [ %.02.us.i, %.lr.ph.split.us.i ] ; 2 uses
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1 ; 2 uses
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next6.i, %wide.trip.count8.i
  br i1 %exitcond9.not.i, label %Dau_Dsd6FindSupports.exit, label %.lr.ph.split.us.i, !llvm.loop !132

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %.lr.ph.i ] ; 6 uses
  %.02.i = phi i32 [ %.1.i, %bb.f ], [ 0, %.lr.ph.i ] ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.i, %indvars.iv.next
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.ba = load i32, ptr %i.ah, align 4, !tbaa !9
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !9
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.bd
  %i.bf = sext i32 %i.bc to i64
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8   ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %.thread.i.i, label %.Dau_Dsd6FindSupportOne.exit.i_crit_edge

.Dau_Dsd6FindSupportOne.exit.i_crit_edge:         ; preds = %bb.e
  %i.bj = sext i8 %i.bh to i32
  %.pre = trunc i64 %indvars.iv.i to i32
  br label %Dau_Dsd6FindSupportOne.exit.i

.thread.i.i:                                      ; preds = %bb.e
  %i.bk = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = lshr i64 %i.ag, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !39 ; 2 uses
  %i.bq = xor i64 %i.bn, %i.ag
  %i.br = and i64 %i.bp, %i.bq
  %.not20.i.i = icmp eq i64 %i.br, 0
  %i.bs = select i1 %.not20.i.i, i32 0, i32 2
  %i.bt = lshr i64 %i.ab, %i.bm
  %i.bu = xor i64 %i.bt, %i.ab
  %i.bv = and i64 %i.bp, %i.bu
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %i.by = or disjoint i32 %i.bs, %i.bx            ; 2 uses
  %i.bz = trunc nuw nsw i32 %i.by to i8
  store i8 %i.bz, ptr %i.bg, align 1, !tbaa !8
  br label %Dau_Dsd6FindSupportOne.exit.i

Dau_Dsd6FindSupportOne.exit.i:                    ; preds = %.Dau_Dsd6FindSupportOne.exit.i_crit_edge, %.thread.i.i
  %indvars.iv.tr.i.pre-phi = phi i32 [ %.pre, %.Dau_Dsd6FindSupportOne.exit.i_crit_edge ], [ %i.bk, %.thread.i.i ]
  %.0.i.i = phi i32 [ %i.bj, %.Dau_Dsd6FindSupportOne.exit.i_crit_edge ], [ %i.by, %.thread.i.i ]
  %i.ca = shl i32 %indvars.iv.tr.i.pre-phi, 1
  %i.cb = shl i32 %.0.i.i, %i.ca
  %i.cc = or i32 %i.cb, %.02.i
  br label %bb.f

bb.f:                                             ; preds = %Dau_Dsd6FindSupportOne.exit.i, %.lr.ph.split.i
  %.1.i = phi i32 [ %i.cc, %Dau_Dsd6FindSupportOne.exit.i ], [ %.02.i, %.lr.ph.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count8.i
  br i1 %exitcond.not.i, label %Dau_Dsd6FindSupports.exit, label %.lr.ph.split.i, !llvm.loop !132

Dau_Dsd6FindSupports.exit:                        ; preds = %bb.f, %bb.d
  %.0.lcssa.i = phi i32 [ %.1.us.i, %bb.d ], [ %.1.i, %bb.f ] ; 3 uses
  %i.cd = lshr i32 %.0.lcssa.i, 1                 ; 2 uses
  %i.ce = and i32 %.0.lcssa.i, 1431655765         ; 2 uses
  %i.cf = and i32 %i.ce, %i.cd
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %Dau_DsdWriteString.exit80, label %bb.r

Dau_DsdWriteString.exit80:                        ; preds = %Dau_Dsd6FindSupports.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %i.ch, align 8, !tbaa !111
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !114
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !114
  %i.cl = load i32, ptr %i.ah, align 4, !tbaa !9
  %i.cm = load i32, ptr %i.o, align 4, !tbaa !9
  store i32 %i.cm, ptr %i.ah, align 4, !tbaa !9
  store i32 %i.cl, ptr %i.o, align 4, !tbaa !9
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %1, i32 noundef %.041, i32 noundef range(i32 0, 2147483647) %i.x, i32 noundef %i.m), !inline_history !133
  %i.cn = load i64, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %i.n
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !39
  %i.cq = and i64 %i.cp, %i.cn                    ; 2 uses
  %i.cr = shl nuw i32 1, %i.m
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = shl i64 %i.cq, %i.cs
  %i.cu = or i64 %i.ct, %i.cq
  store i64 %i.cu, ptr %i.b, align 8, !tbaa !39
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.n
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !39
  %i.cx = and i64 %i.cw, %i.cn                    ; 2 uses
  %i.cy = lshr i64 %i.cx, %i.cs
  %i.cz = or i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %i.c, align 8, !tbaa !39
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !124 ; 2 uses
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !124
  %i.de = sext i32 %i.dc to i64
  %i.df = getelementptr inbounds i8, ptr %i.da, i64 %i.de
  store i8 60, ptr %i.df, align 1, !tbaa !8
  %i.dg = load i32, ptr %i.o, align 4, !tbaa !9
  call fastcc void @Dau_DsdWriteVar(ptr noundef nonnull %0, i32 noundef %i.dg, i32 noundef 0), !inline_history !133
  %i.dh = call i32 @Dau_DsdDecomposeInt(ptr noundef nonnull %7, ptr noundef nonnull %i.c, i32 noundef %i.m), !inline_history !133 ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 1320 ; 4 uses
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !8   ; 2 uses
  %.not14.i71 = icmp eq i8 %i.dj, 0
  br i1 %.not14.i71, label %Dau_DsdTranslate.exit76, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %Dau_DsdWriteString.exit80
  %i.dk = add nuw nsw i32 %.041, 96
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i72
  %i.dl = phi i8 [ %i.dj, %.lr.ph.i72 ], [ %i.dy, %bb.j ] ; 4 uses
  %.015.i73 = phi ptr [ %i.di, %.lr.ph.i72 ], [ %i.dx, %bb.j ]
  %i.dm = icmp sgt i8 %i.dl, 96
  %i.dn = zext nneg i8 %i.dl to i32
  %i.do = icmp sgt i32 %i.dk, %i.dn
  %or.cond.i74 = select i1 %i.dm, i1 %i.do, i1 false
  br i1 %or.cond.i74, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dp = zext nneg i8 %i.dl to i64
  %i.dq = getelementptr [4 x i8], ptr %2, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 -388
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !9
  call fastcc void @Dau_DsdWriteVar(ptr noundef nonnull %0, i32 noundef %i.ds, i32 noundef 0)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.dt = load i32, ptr %i.db, align 8, !tbaa !124 ; 2 uses
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.db, align 8, !tbaa !124
  %i.dv = sext i32 %i.dt to i64
  %i.dw = getelementptr inbounds i8, ptr %i.da, i64 %i.dv
  store i8 %i.dl, ptr %i.dw, align 1, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dx = getelementptr inbounds nuw i8, ptr %.015.i73, i64 1 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !8   ; 2 uses
  %.not.i75 = icmp eq i8 %i.dy, 0
  br i1 %.not.i75, label %Dau_DsdTranslate.exit76, label %bb.g, !llvm.loop !134

Dau_DsdTranslate.exit76:                          ; preds = %bb.j, %Dau_DsdWriteString.exit80
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !116 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !116
  %.not.i54 = icmp eq i32 %i.ea, 0
  br i1 %.not.i54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %Dau_DsdTranslate.exit76
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !39
  store i64 %i.ec, ptr %1, align 8, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %Dau_DsdTranslate.exit76
  %i.ed = call i32 @Dau_DsdDecomposeInt(ptr noundef nonnull %7, ptr noundef nonnull %i.b, i32 noundef %i.m), !inline_history !133 ; 0 uses
  %i.ee = load i8, ptr %i.di, align 8, !tbaa !8   ; 2 uses
  %.not14.i = icmp eq i8 %i.ee, 0
  br i1 %.not14.i, label %Dau_DsdTranslate.exit, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.l
  %i.ef = add nuw nsw i32 %.041, 96
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i68
  %i.eg = phi i8 [ %i.ee, %.lr.ph.i68 ], [ %i.et, %bb.p ] ; 4 uses
  %.015.i = phi ptr [ %i.di, %.lr.ph.i68 ], [ %i.es, %bb.p ]
  %i.eh = icmp sgt i8 %i.eg, 96
  %i.ei = zext nneg i8 %i.eg to i32
  %i.ej = icmp sgt i32 %i.ef, %i.ei
  %or.cond.i69 = select i1 %i.eh, i1 %i.ej, i1 false
  br i1 %or.cond.i69, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ek = zext nneg i8 %i.eg to i64
  %i.el = getelementptr [4 x i8], ptr %2, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 -388
  %i.en = load i32, ptr %i.em, align 4, !tbaa !9
  call fastcc void @Dau_DsdWriteVar(ptr noundef nonnull %0, i32 noundef %i.en, i32 noundef 0)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.eo = load i32, ptr %i.db, align 8, !tbaa !124 ; 2 uses
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.db, align 8, !tbaa !124
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds i8, ptr %i.da, i64 %i.eq
  store i8 %i.eg, ptr %i.er, align 1, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.es = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !8   ; 2 uses
  %.not.i70 = icmp eq i8 %i.et, 0
  br i1 %.not.i70, label %Dau_DsdTranslate.exit, label %bb.m, !llvm.loop !134

Dau_DsdTranslate.exit:                            ; preds = %bb.p, %bb.l
  %i.eu = load i32, ptr %i.db, align 8, !tbaa !124 ; 2 uses
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.db, align 8, !tbaa !124
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds i8, ptr %i.da, i64 %i.ew
  store i8 62, ptr %i.ex, align 1, !tbaa !8
  %i.ey = load i32, ptr %i.eb, align 4, !tbaa !116
  %i.ez = load i32, ptr %i.dz, align 4, !tbaa !116 ; 2 uses
  %i.fa = call noundef i32 @llvm.smax.i32(i32 %i.ey, i32 %i.ez)
  store i32 %i.fa, ptr %i.eb, align 4, !tbaa !116
  %.not45.i = icmp eq i32 %i.ez, 0
  br i1 %.not45.i, label %Dau_Dsd6DecomposeTripleVarsOuter.exit, label %bb.q

bb.q:                                             ; preds = %Dau_DsdTranslate.exit
  %i.fb = load i64, ptr %i.b, align 8, !tbaa !39
  store i64 %i.fb, ptr %1, align 8, !tbaa !39
  br label %Dau_Dsd6DecomposeTripleVarsOuter.exit

Dau_Dsd6DecomposeTripleVarsOuter.exit:            ; preds = %Dau_DsdTranslate.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.thread116

bb.r:                                             ; preds = %Dau_Dsd6FindSupports.exit
  %i.fc = xor i32 %.0.lcssa.i, -1                 ; 2 uses
  %i.fd = lshr i32 %i.fc, 1
  %i.fe = and i32 %i.ce, %i.fd                    ; 16 uses
  %i.ff = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.fe)
  %or.cond.not = icmp eq i32 %i.ff, 1
  br i1 %or.cond.not, label %bb.s, label %Abc_TtSuppOnlyOne.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.fg = and i32 %i.fc, 1431655765
  %i.fh = and i32 %i.fg, %i.cd                    ; 16 uses
  %i.fi = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.fh)
  %or.cond129.not = icmp eq i32 %i.fi, 1
  br i1 %or.cond129.not, label %bb.t, label %Abc_TtSuppOnlyOne.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.fj = and i32 %i.fe, 1
  %.not.i83 = icmp eq i32 %i.fj, 0
  br i1 %.not.i83, label %bb.u, label %Abc_TtSuppFindFirst.exit101

end_hunk_0
begin_hunk_1_@Dau_DsdDecomposeDoubleVars:bb.a
  %indvars.iv.next605 = add nsw i64 %indvars.iv.next605793, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next605 to i32 ; 2 uses
  %i.bup = trunc nuw i64 %indvars.iv.next605793 to i32 ; 2 uses
  %i.buq = icmp sgt i32 %i.bup, 1
  br i1 %i.buq, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !286

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.du, %bb.c
  %indvars784 = phi i32 [ %indvars794, %bb.du ], [ %indvars789, %bb.c ], [ %indvars, %._crit_edge ]
  %.5 = phi i32 [ %.0.i35, %bb.du ], [ %.029, %bb.c ], [ %.3, %._crit_edge ] ; 2 uses
  %i.bur = icmp eq i32 %indvars784, 0
  br i1 %i.bur, label %bb.dw, label %bb.c

bb.dw:                                            ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.bus = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #31
  %i.but = icmp slt i32 %i.bus, 0
  br i1 %i.but, label %Abc_Clock.exit39, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.buu = load i64, ptr %6, align 8, !tbaa !120
  %i.buv = mul nsw i64 %i.buu, 1000000
  %i.buw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bux = load i64, ptr %i.buw, align 8, !tbaa !122
  %i.buy = sdiv i64 %i.bux, 1000
  %i.buz = add nsw i64 %i.buy, %i.buv
  br label %Abc_Clock.exit39

Abc_Clock.exit39:                                 ; preds = %bb.dw, %bb.dx
  %.0.i38 = phi i64 [ %i.buz, %bb.dx ], [ -1, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.dy

bb.dy:                                            ; preds = %.thread421, %Abc_Clock.exit39
  %.0.i36.sink = phi i64 [ %.0.i36, %.thread421 ], [ %.0.i38, %Abc_Clock.exit39 ]
  %.232 = phi i32 [ 0, %.thread421 ], [ %.5, %Abc_Clock.exit39 ]
  %i.bva = add i64 %.0.i36.sink, %.0.i.neg549
  %i.bvb = load i64, ptr @s_Times.1, align 8, !tbaa !39
  %i.bvc = add nsw i64 %i.bva, %i.bvb
  store i64 %i.bvc, ptr @s_Times.1, align 8, !tbaa !39
  ret i32 %.232
}

; Function Attrs: nounwind uwtable
define i32 @Dau_DsdDecomposeTripleVars(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.b = alloca [2 x [64 x i64]], align 16        ; 20 uses
  %i.c = alloca [2 x [2 x [64 x i64]]], align 16  ; 15 uses
  %i.d = alloca [10 x i8], align 1                ; 5 uses
  %7 = alloca %struct.Dau_Dsd_t_, align 8         ; 8 uses
  %i.e = alloca [2 x [64 x i64]], align 16        ; 12 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.f = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #31
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %8, align 8, !tbaa !120
  %.neg370 = mul i64 %i.h, -1000000
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !122
  %.neg = sdiv i64 %i.j, -1000
  %.neg371 = add i64 %.neg, %.neg370
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg372 = phi i64 [ %.neg371, %bb.b ], [ 1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %.not.i.i = icmp eq ptr %0, null                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 512 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1024 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1536 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %Abc_Clock.exit
  %.041 = phi i32 [ %3, %Abc_Clock.exit ], [ %.4, %.loopexit ] ; 20 uses
  %i.z = icmp sgt i32 %.041, 0
  br i1 %i.z, label %.lr.ph.i.lr.ph, label %.loopexit

.lr.ph.i.lr.ph:                                   ; preds = %bb.c
  %i.aa = icmp samesign ult i32 %.041, 7
  %i.ab = add nsw i32 %.041, -6                   ; 2 uses
  %i.ac = shl nuw i32 1, %i.ab                    ; 3 uses
  %i.ad = select i1 %i.aa, i32 1, i32 %i.ac       ; 5 uses
  %wide.trip.count.i = zext nneg i32 %.041 to i64
  %i.ae = icmp eq i32 %i.ad, 1                    ; 2 uses
  %i.af = sext i32 %i.ad to i64
  %.idx138.i72 = shl nsw i64 %i.af, 3
  %i.ag = getelementptr inbounds i8, ptr %1, i64 %.idx138.i72 ; 8 uses
  %i.ah = icmp slt i32 %i.ad, 1
  %i.ai = icmp sgt i32 %i.ad, 0                   ; 11 uses
  %wide.trip.count160.i110 = zext nneg i32 %i.ad to i64 ; 4 uses
  %i.aj = icmp samesign ult i32 %.041, 7          ; 2 uses
  %i.ak = select i1 %i.aj, i32 1, i32 %i.ac       ; 15 uses
  %i.al = icmp eq i32 %i.ak, 1
  %i.am = sext i32 %i.ak to i64
  %.idx.i.i = shl nsw i64 %i.am, 3                ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i ; 2 uses
  %i.ao = icmp slt i32 %i.ak, 1                   ; 7 uses
  %wide.trip.count59.i.i = zext i32 %i.ak to i64  ; 18 uses
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i
  %.idx.i122.i = shl nuw nsw i64 %wide.trip.count59.i.i, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i122.i
  %i.ar = add nsw i32 %.041, -1                   ; 9 uses
  %i.as = zext nneg i32 %i.ar to i64              ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.as ; 5 uses
  %.not373 = icmp eq i32 %.041, 1
  %wide.trip.count.i224.i = zext nneg i32 %i.ar to i64
  %i.au = add nsw i32 %.041, -2                   ; 6 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.av ; 2 uses
  %i.ax = icmp samesign ugt i32 %.041, 2
  %wide.trip.count.i231.i = zext nneg i32 %i.au to i64
  %i.ay = add nsw i32 %.041, -3
  %i.az = zext nneg i32 %.041 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i122.i
  %min.iters.check734 = icmp ult i32 %i.ak, 4
  %n.vec736 = and i64 %wide.trip.count59.i.i, 2147483644
  %exitcond60.not.i.i.1 = icmp eq i32 %i.ak, 2
  %min.iters.check718 = icmp ult i32 %i.ak, 4
  %n.vec720 = and i64 %wide.trip.count59.i.i, 2147483644
  %min.iters.check678 = icmp ult i32 %i.ak, 4
  %n.vec680 = and i64 %wide.trip.count59.i.i, 2147483644
  %exitcond60.not.i120.i.1 = icmp eq i32 %i.ak, 2
  %min.iters.check662 = icmp ult i32 %i.ak, 4
  %n.vec664 = and i64 %wide.trip.count59.i.i, 2147483644
  %i.bb = getelementptr inbounds i8, ptr %i.l, i64 %.idx.i.i
  %min.iters.check622 = icmp ult i32 %i.ak, 4
  %n.vec624 = and i64 %wide.trip.count59.i.i, 4294967292
  %min.iters.check608 = icmp ult i32 %i.ak, 4
  %n.vec610 = and i64 %wide.trip.count59.i.i, 4294967292
  %min.iters.check = icmp ult i32 %i.ak, 4
  %n.vec = and i64 %wide.trip.count59.i.i, 4294967292
  %xtraiter = and i64 %wide.trip.count59.i.i, 1
  %i.bc = icmp eq i32 %i.ak, 1
  %unroll_iter = and i64 %wide.trip.count59.i.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod903 = trunc i32 %i.ak to i1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %Abc_TtSuppOnlyOne.exit.thread
  %indvars.iv = phi i64 [ %i.az, %.lr.ph.i.lr.ph ], [ %indvars.iv.next, %Abc_TtSuppOnlyOne.exit.thread ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 9 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 6 uses
  %i.be = icmp samesign ult i64 %indvars.iv, 7    ; 5 uses
  %i.bf = trunc i64 %indvars.iv to i32
  %i.bg = add i32 %i.bf, -7                       ; 5 uses
  %i.bh = shl nuw i32 1, %i.bg                    ; 8 uses
  %.not.i75 = icmp eq i32 %i.bg, 31               ; 8 uses
  %i.bi = shl i32 2, %i.bg
  %i.bj = sext i32 %i.bi to i64                   ; 10 uses
  %i.bk = sext i32 %i.bh to i64                   ; 11 uses
  %smax154.i98 = call i32 @llvm.smax.i32(i32 %i.bh, i32 1)
  %wide.trip.count155.i99 = zext nneg i32 %smax154.i98 to i64 ; 6 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next ; 10 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %i.bn = shl nuw i32 1, %i.bm                    ; 5 uses
  %i.bo = zext nneg i32 %i.bn to i64              ; 13 uses
  %i.bp = or i1 %i.ah, %.not.i75
  br label %bb.d

bb.d:                                             ; preds = %bb.aw, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aw ] ; 18 uses
  %.017.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.aw ] ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.i, %indvars.iv.next
  br i1 %.not.i, label %bb.aw, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = load i32, ptr %i.bd, align 4, !tbaa !9
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !9
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.bt
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !8   ; 2 uses
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.thread.i.i, label %.Dau_DsdFindSupportOne.exit.i_crit_edge

.Dau_DsdFindSupportOne.exit.i_crit_edge:          ; preds = %bb.f
  %i.bz = sext i8 %i.bx to i32
  %.pre = trunc i64 %indvars.iv.i to i32
  br label %Dau_DsdFindSupportOne.exit.i

.thread.i.i:                                      ; preds = %bb.f, %bb.e
  %i.ca = icmp samesign ugt i64 %indvars.iv.i, %indvars.iv.next
  %i.cb = trunc i64 %indvars.iv.i to i32          ; 16 uses
  br i1 %i.ca, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %.thread.i.i
  br i1 %i.ae, label %Abc_TtCheckEqualCofs.exit209.thread277, label %bb.h

Abc_TtCheckEqualCofs.exit209.thread277:           ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !39
  %i.ce = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.cf = and i64 %i.ce, %i.cd                    ; 2 uses
  %i.cg = shl nuw i32 1, %i.cb                    ; 2 uses
  %i.ch = add nsw i32 %i.cg, %i.bn
  %i.ci = load i64, ptr %1, align 8, !tbaa !39    ; 4 uses
  %i.cj = lshr i64 %i.ci, %i.bo
  %i.ck = zext nneg i32 %i.ch to i64
  %i.cl = lshr i64 %i.ci, %i.ck
  %i.cm = xor i64 %i.cj, %i.cl
  %i.cn = and i64 %i.cf, %i.cm
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = select i1 %i.co, i32 2, i32 0
  %i.cq = zext nneg i32 %i.cg to i64
  %i.cr = lshr i64 %i.ci, %i.cq
  %i.cs = xor i64 %i.cr, %i.ci
  %i.ct = and i64 %i.cf, %i.cs
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  br label %Abc_TtCheckEqualCofs.exit162

bb.h:                                             ; preds = %bb.g
  %i.cw = icmp samesign ult i64 %indvars.iv.i, 6  ; 2 uses
  br i1 %i.cw, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !39
  %i.cz = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.da = and i64 %i.cz, %i.cy
  br i1 %i.ai, label %.lr.ph.i203, label %Abc_TtCheckEqualCofs.exit162

.lr.ph.i203:                                      ; preds = %bb.i
  %i.db = shl nuw nsw i32 1, %i.cb
  %i.dc = add nuw nsw i32 %i.db, %i.bn
  %i.dd = zext nneg i32 %i.dc to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next158.i207 = add nuw nsw i64 %indvars.iv157.i205, 1 ; 2 uses
  %exitcond161.not.i208 = icmp eq i64 %indvars.iv.next158.i207, %wide.trip.count160.i110
  br i1 %exitcond161.not.i208, label %Abc_TtCheckEqualCofs.exit209.thread, label %bb.k, !llvm.loop !202

bb.k:                                             ; preds = %bb.j, %.lr.ph.i203
  %indvars.iv157.i205 = phi i64 [ 0, %.lr.ph.i203 ], [ %indvars.iv.next158.i207, %bb.j ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv157.i205
  %i.df = load i64, ptr %i.de, align 8, !tbaa !39 ; 2 uses
  %i.dg = lshr i64 %i.df, %i.bo
  %i.dh = lshr i64 %i.df, %i.dd
  %i.di = xor i64 %i.dg, %i.dh
  %i.dj = and i64 %i.da, %i.di
  %.not116.i206 = icmp eq i64 %i.dj, 0
  br i1 %.not116.i206, label %bb.j, label %Abc_TtCheckEqualCofs.exit209.thread

bb.l:                                             ; preds = %bb.h
  %i.dk = add nsw i32 %i.cb, -6                   ; 5 uses
  %i.dl = shl nuw i32 1, %i.dk                    ; 4 uses
  br i1 %i.be, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.ai, label %.preheader.lr.ph.i187, label %Abc_TtCheckEqualCofs.exit209.thread.thread.thread

.preheader.lr.ph.i187:                            ; preds = %bb.m
  %.not139.i188 = icmp eq i32 %i.dk, 31
  %i.dm = shl i32 2, %i.dk
  %i.dn = sext i32 %i.dm to i64
  br i1 %.not139.i188, label %Abc_TtCheckEqualCofs.exit209.thread.thread.thread, label %.preheader.lr.ph.split.us.i189

.preheader.lr.ph.split.us.i189:                   ; preds = %.preheader.lr.ph.i187
  %i.do = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.dp = sext i32 %i.dl to i64
  %smax154.i190 = call i32 @llvm.smax.i32(i32 %i.dl, i32 1)
  %wide.trip.count155.i191 = zext nneg i32 %smax154.i190 to i64
  br label %.preheader.us.i192

.preheader.us.i192:                               ; preds = %._crit_edge.us.i202, %.preheader.lr.ph.split.us.i189
  %.0105133.us.i193 = phi ptr [ %1, %.preheader.lr.ph.split.us.i189 ], [ %i.dv, %._crit_edge.us.i202 ] ; 3 uses
  %invariant.gep175.i195 = getelementptr [8 x i8], ptr %.0105133.us.i193, i64 %i.dp
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next152.i200 = add nuw nsw i64 %indvars.iv151.i196, 1 ; 2 uses
  %exitcond156.not.i201 = icmp eq i64 %indvars.iv.next152.i200, %wide.trip.count155.i191
  br i1 %exitcond156.not.i201, label %._crit_edge.us.i202, label %bb.o, !llvm.loop !203

bb.o:                                             ; preds = %bb.n, %.preheader.us.i192
  %indvars.iv151.i196 = phi i64 [ 0, %.preheader.us.i192 ], [ %indvars.iv.next152.i200, %bb.n ] ; 3 uses
  %gep174.i197 = getelementptr [8 x i8], ptr %.0105133.us.i193, i64 %indvars.iv151.i196
  %i.dq = load i64, ptr %gep174.i197, align 8, !tbaa !39
  %gep176.i198 = getelementptr [8 x i8], ptr %invariant.gep175.i195, i64 %indvars.iv151.i196
  %i.dr = load i64, ptr %gep176.i198, align 8, !tbaa !39
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = lshr i64 %i.ds, %i.bo
  %i.du = and i64 %i.dt, %i.do
  %.not115.us.i199 = icmp eq i64 %i.du, 0
  br i1 %.not115.us.i199, label %bb.n, label %Abc_TtCheckEqualCofs.exit209.thread

._crit_edge.us.i202:                              ; preds = %bb.n
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0105133.us.i193, i64 %i.dn ; 2 uses
  %i.dw = icmp ult ptr %i.dv, %i.ag
  br i1 %i.dw, label %.preheader.us.i192, label %Abc_TtCheckEqualCofs.exit209.thread, !llvm.loop !204

bb.p:                                             ; preds = %bb.l
  %i.dx = add nsw i32 %i.dl, %i.bh
  br i1 %i.ai, label %.preheader121.lr.ph.i165, label %Abc_TtCheckEqualCofs.exit209.thread.thread.thread458

.preheader121.lr.ph.i165:                         ; preds = %bb.p
  %.not.i166 = icmp eq i32 %i.dk, 31
  %i.dy = shl i32 2, %i.dk
  %i.dz = sext i32 %i.dy to i64
  %or.cond = or i1 %.not.i166, %.not.i75
  br i1 %or.cond, label %Abc_TtCheckEqualCofs.exit209.thread.thread.thread458, label %.preheader121.us.us.preheader.i169

.preheader121.us.us.preheader.i169:               ; preds = %.preheader121.lr.ph.i165
  %i.ea = sext i32 %i.dx to i64
  %i.eb = sext i32 %i.dl to i64
  br label %.preheader121.us.us.i172

.preheader121.us.us.i172:                         ; preds = %._crit_edge125.split.us.us.us.i186, %.preheader121.us.us.preheader.i169
  %.1106126.us.us.i173 = phi ptr [ %i.eh, %._crit_edge125.split.us.us.us.i186 ], [ %1, %.preheader121.us.us.preheader.i169 ] ; 3 uses
  %invariant.gep.i174 = getelementptr [8 x i8], ptr %.1106126.us.us.i173, i64 %i.bk
  %invariant.gep171.i175 = getelementptr [8 x i8], ptr %.1106126.us.us.i173, i64 %i.ea
  br label %.preheader119.us.us.us.i176

.preheader119.us.us.us.i176:                      ; preds = %._crit_edge.us.us.us.i184, %.preheader121.us.us.i172
  %indvars.iv148.i177 = phi i64 [ %indvars.iv.next149.i185, %._crit_edge.us.us.us.i184 ], [ 0, %.preheader121.us.us.i172 ] ; 3 uses
  %gep.i178 = getelementptr [8 x i8], ptr %invariant.gep.i174, i64 %indvars.iv148.i177
  %gep172.i179 = getelementptr [8 x i8], ptr %invariant.gep171.i175, i64 %indvars.iv148.i177
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next.i182 = add nuw nsw i64 %indvars.iv.i180, 1 ; 2 uses
  %exitcond.not.i183 = icmp eq i64 %indvars.iv.next.i182, %wide.trip.count155.i99
  br i1 %exitcond.not.i183, label %._crit_edge.us.us.us.i184, label %bb.r, !llvm.loop !205

bb.r:                                             ; preds = %bb.q, %.preheader119.us.us.us.i176
  %indvars.iv.i180 = phi i64 [ %indvars.iv.next.i182, %bb.q ], [ 0, %.preheader119.us.us.us.i176 ] ; 3 uses
  %i.ec = getelementptr [8 x i8], ptr %gep.i178, i64 %indvars.iv.i180
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !39
  %i.ee = getelementptr [8 x i8], ptr %gep172.i179, i64 %indvars.iv.i180
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !39
  %.not.us.us.us.i181 = icmp eq i64 %i.ed, %i.ef
  br i1 %.not.us.us.us.i181, label %bb.q, label %Abc_TtCheckEqualCofs.exit209.thread

._crit_edge.us.us.us.i184:                        ; preds = %bb.q
  %indvars.iv.next149.i185 = add nsw i64 %indvars.iv148.i177, %i.bj ; 2 uses
  %i.eg = icmp slt i64 %indvars.iv.next149.i185, %i.eb
  br i1 %i.eg, label %.preheader119.us.us.us.i176, label %._crit_edge125.split.us.us.us.i186, !llvm.loop !206

._crit_edge125.split.us.us.us.i186:               ; preds = %._crit_edge.us.us.us.i184
  %i.eh = getelementptr inbounds [8 x i8], ptr %.1106126.us.us.i173, i64 %i.dz ; 2 uses
  %i.ei = icmp ult ptr %i.eh, %i.ag
  br i1 %i.ei, label %.preheader121.us.us.i172, label %Abc_TtCheckEqualCofs.exit209.thread, !llvm.loop !207

Abc_TtCheckEqualCofs.exit209.thread:              ; preds = %._crit_edge125.split.us.us.us.i186, %._crit_edge.us.i202, %bb.k, %bb.j, %bb.o, %bb.r
  %i.ej = phi i32 [ 2, %._crit_edge.us.i202 ], [ 0, %bb.k ], [ 0, %bb.o ], [ 0, %bb.r ], [ 2, %bb.j ], [ 2, %._crit_edge125.split.us.us.us.i186 ] ; 5 uses
  br i1 %i.cw, label %bb.s, label %Abc_TtCheckEqualCofs.exit209.thread.thread

bb.s:                                             ; preds = %Abc_TtCheckEqualCofs.exit209.thread
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !39
  %i.em = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.en = and i64 %i.em, %i.el
  br i1 %i.ai, label %.lr.ph.i156, label %Abc_TtCheckEqualCofs.exit162

.lr.ph.i156:                                      ; preds = %bb.s
  %i.eo = shl nuw nsw i32 1, %i.cb
  %i.ep = zext nneg i32 %i.eo to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next158.i160 = add nuw nsw i64 %indvars.iv157.i158, 1 ; 2 uses
  %exitcond161.not.i161 = icmp eq i64 %indvars.iv.next158.i160, %wide.trip.count160.i110
  br i1 %exitcond161.not.i161, label %Abc_TtCheckEqualCofs.exit162, label %bb.u, !llvm.loop !202

bb.u:                                             ; preds = %bb.t, %.lr.ph.i156
  %indvars.iv157.i158 = phi i64 [ 0, %.lr.ph.i156 ], [ %indvars.iv.next158.i160, %bb.t ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv157.i158
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !39 ; 2 uses
  %i.es = lshr i64 %i.er, %i.ep
  %i.et = xor i64 %i.es, %i.er
  %i.eu = and i64 %i.en, %i.et
  %.not116.i159 = icmp eq i64 %i.eu, 0
  br i1 %.not116.i159, label %bb.t, label %Abc_TtCheckEqualCofs.exit162

Abc_TtCheckEqualCofs.exit209.thread.thread.thread: ; preds = %bb.m, %.preheader.lr.ph.i187
  %i.ev = add nsw i32 %i.cb, -6                   ; 2 uses
  %i.ew = shl nuw i32 1, %i.ev
  br label %bb.v

Abc_TtCheckEqualCofs.exit209.thread.thread.thread458: ; preds = %bb.p, %.preheader121.lr.ph.i165
  %i.ex = add nsw i32 %i.cb, -6                   ; 2 uses
  %i.ey = shl nuw i32 1, %i.ex
end_hunk_1
begin_hunk_2_@Dau_DsdDecomposeTripleVars:bb.a
.preheader121.us.us.preheader.i78:                ; preds = %bb.ak
  %i.hw = shl nuw i32 1, %i.hv                    ; 2 uses
  %i.hx = add nsw i32 %i.hw, %i.bh
  %i.hy = shl i32 2, %i.hv
  %smax.i79 = call i32 @llvm.smax.i32(i32 %i.hw, i32 1)
  %i.hz = sext i32 %i.hy to i64
  %i.ia = sext i32 %i.hx to i64
  %wide.trip.count.i80 = zext nneg i32 %smax.i79 to i64
  br label %.preheader121.us.us.i81

.preheader121.us.us.i81:                          ; preds = %._crit_edge125.split.us.us.us.i94, %.preheader121.us.us.preheader.i78
  %.1106126.us.us.i82 = phi ptr [ %i.ig, %._crit_edge125.split.us.us.us.i94 ], [ %1, %.preheader121.us.us.preheader.i78 ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.1106126.us.us.i82, i64 %i.bk
  %invariant.gep171.i83 = getelementptr [8 x i8], ptr %.1106126.us.us.i82, i64 %i.ia
  br label %.preheader119.us.us.us.i84

.preheader119.us.us.us.i84:                       ; preds = %._crit_edge.us.us.us.i92, %.preheader121.us.us.i81
  %indvars.iv148.i85 = phi i64 [ %indvars.iv.next149.i93, %._crit_edge.us.us.us.i92 ], [ 0, %.preheader121.us.us.i81 ] ; 3 uses
  %gep.i86 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv148.i85
  %gep172.i87 = getelementptr [8 x i8], ptr %invariant.gep171.i83, i64 %indvars.iv148.i85
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, %wide.trip.count.i80
  br i1 %exitcond.not.i91, label %._crit_edge.us.us.us.i92, label %bb.am, !llvm.loop !205

bb.am:                                            ; preds = %bb.al, %.preheader119.us.us.us.i84
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i90, %bb.al ], [ 0, %.preheader119.us.us.us.i84 ] ; 3 uses
  %i.ib = getelementptr [8 x i8], ptr %gep.i86, i64 %indvars.iv.i88
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !39
  %i.id = getelementptr [8 x i8], ptr %gep172.i87, i64 %indvars.iv.i88
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !39
  %.not.us.us.us.i89 = icmp eq i64 %i.ic, %i.ie
  br i1 %.not.us.us.us.i89, label %bb.al, label %Abc_TtCheckEqualCofs.exit115.thread

._crit_edge.us.us.us.i92:                         ; preds = %bb.al
  %indvars.iv.next149.i93 = add nsw i64 %indvars.iv148.i85, %i.hz ; 2 uses
  %i.if = icmp slt i64 %indvars.iv.next149.i93, %i.bk
  br i1 %i.if, label %.preheader119.us.us.us.i84, label %._crit_edge125.split.us.us.us.i94, !llvm.loop !206

._crit_edge125.split.us.us.us.i94:                ; preds = %._crit_edge.us.us.us.i92
  %i.ig = getelementptr inbounds [8 x i8], ptr %.1106126.us.us.i82, i64 %i.bj ; 2 uses
  %i.ih = icmp ult ptr %i.ig, %i.ag
  br i1 %i.ih, label %.preheader121.us.us.i81, label %Abc_TtCheckEqualCofs.exit115.thread, !llvm.loop !207

Abc_TtCheckEqualCofs.exit115.thread:              ; preds = %._crit_edge125.split.us.us.us.i94, %._crit_edge.us.i108, %bb.af, %bb.ae, %bb.aj, %bb.am
  %i.ii = phi i32 [ 2, %._crit_edge.us.i108 ], [ 0, %bb.af ], [ 0, %bb.aj ], [ 0, %bb.am ], [ 2, %bb.ae ], [ 2, %._crit_edge125.split.us.us.us.i94 ] ; 8 uses
  br i1 %i.be, label %bb.an, label %Abc_TtCheckEqualCofs.exit115.thread.thread

bb.an:                                            ; preds = %Abc_TtCheckEqualCofs.exit115.thread
  %i.ij = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !39
  %i.im = and i64 %i.il, %i.ij
  br i1 %i.ai, label %.lr.ph.i71, label %Abc_TtCheckEqualCofs.exit

.lr.ph.i71:                                       ; preds = %bb.an
  %i.in = shl nuw i32 1, %i.cb
  %i.io = zext nneg i32 %i.in to i64
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next158.i, %wide.trip.count160.i110
  br i1 %exitcond161.not.i, label %Abc_TtCheckEqualCofs.exit, label %bb.ap, !llvm.loop !202

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i71
  %indvars.iv157.i = phi i64 [ 0, %.lr.ph.i71 ], [ %indvars.iv.next158.i, %bb.ao ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv157.i
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !39 ; 2 uses
  %i.ir = lshr i64 %i.iq, %i.io
  %i.is = xor i64 %i.ir, %i.iq
  %i.it = and i64 %i.im, %i.is
  %.not116.i = icmp eq i64 %i.it, 0
  br i1 %.not116.i, label %bb.ao, label %Abc_TtCheckEqualCofs.exit

Abc_TtCheckEqualCofs.exit115.thread.thread:       ; preds = %Abc_TtCheckEqualCofs.exit115.thread
  %i.iu = icmp samesign ult i64 %indvars.iv.i, 6
  br i1 %i.iu, label %Abc_TtCheckEqualCofs.exit115.thread.thread.thread, label %Abc_TtCheckEqualCofs.exit115.thread.thread.thread459

Abc_TtCheckEqualCofs.exit115.thread.thread.thread: ; preds = %Abc_TtCheckEqualCofs.exit115.thread.thread
  br i1 %i.ai, label %.preheader.lr.ph.i, label %Abc_TtCheckEqualCofs.exit

.preheader.lr.ph.i:                               ; preds = %Abc_TtCheckEqualCofs.exit115.thread.thread.thread
  %i.iv = shl nuw nsw i32 1, %i.cb
  %i.iw = zext nneg i32 %i.iv to i64
  br i1 %.not.i75, label %Abc_TtCheckEqualCofs.exit, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !39
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.lr.ph.split.us.i
  %.0105133.us.i = phi ptr [ %1, %.preheader.lr.ph.split.us.i ], [ %i.jd, %._crit_edge.us.i ] ; 2 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next152.i, %wide.trip.count155.i99
  br i1 %exitcond156.not.i, label %._crit_edge.us.i, label %bb.ar, !llvm.loop !203

bb.ar:                                            ; preds = %bb.aq, %.preheader.us.i
  %indvars.iv151.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next152.i, %bb.aq ] ; 2 uses
  %gep174.i = getelementptr [8 x i8], ptr %.0105133.us.i, i64 %indvars.iv151.i
  %i.iz = load i64, ptr %gep174.i, align 8, !tbaa !39 ; 2 uses
  %i.ja = lshr i64 %i.iz, %i.iw
  %i.jb = xor i64 %i.ja, %i.iz
  %i.jc = and i64 %i.jb, %i.iy
  %.not115.us.i = icmp eq i64 %i.jc, 0
  br i1 %.not115.us.i, label %bb.aq, label %Abc_TtCheckEqualCofs.exit

._crit_edge.us.i:                                 ; preds = %bb.aq
  %i.jd = getelementptr inbounds [8 x i8], ptr %.0105133.us.i, i64 %i.bj ; 2 uses
  %i.je = icmp ult ptr %i.jd, %i.ag
  br i1 %i.je, label %.preheader.us.i, label %Abc_TtCheckEqualCofs.exit, !llvm.loop !204

Abc_TtCheckEqualCofs.exit115.thread.thread.thread459: ; preds = %bb.ak, %Abc_TtCheckEqualCofs.exit115.thread.thread
  %i.jf = phi i32 [ %i.ii, %Abc_TtCheckEqualCofs.exit115.thread.thread ], [ 2, %bb.ak ] ; 5 uses
  %i.jg = add nsw i32 %i.cb, -6                   ; 3 uses
  %i.jh = shl nuw i32 1, %i.jg                    ; 2 uses
  br i1 %i.ai, label %.preheader121.lr.ph.i, label %Abc_TtCheckEqualCofs.exit

.preheader121.lr.ph.i:                            ; preds = %Abc_TtCheckEqualCofs.exit115.thread.thread.thread459
  %i.ji = shl i32 2, %i.jg
  br i1 %.not.i75, label %Abc_TtCheckEqualCofs.exit, label %.preheader121.lr.ph.split.us.i

.preheader121.lr.ph.split.us.i:                   ; preds = %.preheader121.lr.ph.i
  %.not137.i = icmp eq i32 %i.jg, 31
  br i1 %.not137.i, label %Abc_TtCheckEqualCofs.exit, label %.preheader121.us.us.preheader.i

.preheader121.us.us.preheader.i:                  ; preds = %.preheader121.lr.ph.split.us.i
  %smax.i = call i32 @llvm.smax.i32(i32 %i.jh, i32 1)
  %i.jj = sext i32 %i.ji to i64
  %i.jk = sext i32 %i.jh to i64
  %wide.trip.count.i67 = zext nneg i32 %smax.i to i64
  br label %.preheader121.us.us.i

.preheader121.us.us.i:                            ; preds = %._crit_edge125.split.us.us.us.i, %.preheader121.us.us.preheader.i
  %.1106126.us.us.i = phi ptr [ %i.jq, %._crit_edge125.split.us.us.us.i ], [ %1, %.preheader121.us.us.preheader.i ] ; 3 uses
  %invariant.gep171.i = getelementptr [8 x i8], ptr %.1106126.us.us.i, i64 %i.jk
  br label %.preheader119.us.us.us.i

.preheader119.us.us.us.i:                         ; preds = %._crit_edge.us.us.us.i, %.preheader121.us.us.i
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i, %._crit_edge.us.us.us.i ], [ 0, %.preheader121.us.us.i ] ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %.1106126.us.us.i, i64 %indvars.iv148.i
  %gep172.i = getelementptr [8 x i8], ptr %invariant.gep171.i, i64 %indvars.iv148.i
  br label %bb.at

bb.as:                                            ; preds = %bb.at
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next.i69, %wide.trip.count.i67
  br i1 %exitcond.not.i70, label %._crit_edge.us.us.us.i, label %bb.at, !llvm.loop !205

bb.at:                                            ; preds = %bb.as, %.preheader119.us.us.us.i
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i69, %bb.as ], [ 0, %.preheader119.us.us.us.i ] ; 3 uses
  %i.jl = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.i68
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !39
  %i.jn = getelementptr [8 x i8], ptr %gep172.i, i64 %indvars.iv.i68
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !39
  %.not.us.us.us.i = icmp eq i64 %i.jm, %i.jo
  br i1 %.not.us.us.us.i, label %bb.as, label %Abc_TtCheckEqualCofs.exit

._crit_edge.us.us.us.i:                           ; preds = %bb.as
  %indvars.iv.next149.i = add nsw i64 %indvars.iv148.i, %i.jj ; 2 uses
  %i.jp = icmp slt i64 %indvars.iv.next149.i, %i.bk
  br i1 %i.jp, label %.preheader119.us.us.us.i, label %._crit_edge125.split.us.us.us.i, !llvm.loop !206

._crit_edge125.split.us.us.us.i:                  ; preds = %._crit_edge.us.us.us.i
  %i.jq = getelementptr inbounds [8 x i8], ptr %.1106126.us.us.i, i64 %i.bj ; 2 uses
  %i.jr = icmp ult ptr %i.jq, %i.ag
  br i1 %i.jr, label %.preheader121.us.us.i, label %Abc_TtCheckEqualCofs.exit, !llvm.loop !207

Abc_TtCheckEqualCofs.exit:                        ; preds = %._crit_edge125.split.us.us.us.i, %._crit_edge.us.i, %bb.ao, %bb.ap, %bb.ar, %bb.at, %.preheader.lr.ph.i95, %bb.ah, %bb.ad, %Abc_TtCheckEqualCofs.exit115.thread280, %bb.an, %Abc_TtCheckEqualCofs.exit115.thread.thread.thread, %.preheader.lr.ph.i, %Abc_TtCheckEqualCofs.exit115.thread.thread.thread459, %.preheader121.lr.ph.i, %.preheader121.lr.ph.split.us.i
  %i.js = phi i32 [ %i.gq, %Abc_TtCheckEqualCofs.exit115.thread280 ], [ 2, %.preheader.lr.ph.i95 ], [ %i.ii, %._crit_edge.us.i ], [ %i.ii, %Abc_TtCheckEqualCofs.exit115.thread.thread.thread ], [ %i.jf, %.preheader121.lr.ph.i ], [ %i.jf, %Abc_TtCheckEqualCofs.exit115.thread.thread.thread459 ], [ %i.ii, %bb.an ], [ %i.ii, %bb.ao ], [ %i.jf, %.preheader121.lr.ph.split.us.i ], [ %i.ii, %.preheader.lr.ph.i ], [ 2, %bb.ah ], [ %i.ii, %bb.ar ], [ %i.jf, %bb.at ], [ 2, %bb.ad ], [ %i.ii, %bb.ap ], [ %i.jf, %._crit_edge125.split.us.us.us.i ]
  %.3.i = phi i32 [ %i.gw, %Abc_TtCheckEqualCofs.exit115.thread280 ], [ 1, %.preheader.lr.ph.i95 ], [ 1, %._crit_edge.us.i ], [ 1, %Abc_TtCheckEqualCofs.exit115.thread.thread.thread ], [ 1, %.preheader121.lr.ph.i ], [ 1, %Abc_TtCheckEqualCofs.exit115.thread.thread.thread459 ], [ 1, %bb.an ], [ 1, %bb.ao ], [ poison, %.preheader121.lr.ph.split.us.i ], [ 1, %.preheader.lr.ph.i ], [ 1, %bb.ah ], [ 0, %bb.ar ], [ 0, %bb.at ], [ 1, %bb.ad ], [ 0, %bb.ap ], [ 1, %._crit_edge125.split.us.us.us.i ]
  %i.jt = or disjoint i32 %.3.i, %i.js
  br label %bb.au

bb.au:                                            ; preds = %Abc_TtCheckEqualCofs.exit, %Abc_TtCheckEqualCofs.exit162
  %.0.in.i.i = phi i32 [ %i.gc, %Abc_TtCheckEqualCofs.exit162 ], [ %i.jt, %Abc_TtCheckEqualCofs.exit ]
  %.0.i.i = xor i32 %.0.in.i.i, 3                 ; 3 uses
  br i1 %.not.i.i, label %Dau_DsdFindSupportOne.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ju = load i32, ptr %i.bd, align 4, !tbaa !9
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !9
  %i.jx = trunc nuw nsw i32 %.0.i.i to i8
  %i.jy = sext i32 %i.ju to i64
  %i.jz = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.jy
  %i.ka = sext i32 %i.jw to i64
  %i.kb = getelementptr inbounds i8, ptr %i.jz, i64 %i.ka
  store i8 %i.jx, ptr %i.kb, align 1, !tbaa !8
  br label %Dau_DsdFindSupportOne.exit.i

Dau_DsdFindSupportOne.exit.i:                     ; preds = %.Dau_DsdFindSupportOne.exit.i_crit_edge, %bb.av, %bb.au
  %indvars.iv.tr.i.pre-phi = phi i32 [ %.pre, %.Dau_DsdFindSupportOne.exit.i_crit_edge ], [ %i.cb, %bb.av ], [ %i.cb, %bb.au ]
  %.1.i.i = phi i32 [ %i.bz, %.Dau_DsdFindSupportOne.exit.i_crit_edge ], [ %.0.i.i, %bb.av ], [ %.0.i.i, %bb.au ]
  %i.kc = shl i32 %indvars.iv.tr.i.pre-phi, 1
  %i.kd = shl i32 %.1.i.i, %i.kc
  %i.ke = or i32 %i.kd, %.017.i
  br label %bb.aw

bb.aw:                                            ; preds = %Dau_DsdFindSupportOne.exit.i, %bb.d
  %.1.i = phi i32 [ %i.ke, %Dau_DsdFindSupportOne.exit.i ], [ %.017.i, %bb.d ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Dau_DsdFindSupports.exit.loopexit, label %bb.d, !llvm.loop !287

Dau_DsdFindSupports.exit.loopexit:                ; preds = %bb.aw
  %i.kf = lshr i32 %.1.i, 1                       ; 2 uses
  %i.kg = and i32 %.1.i, 1431655765               ; 2 uses
  %i.kh = and i32 %i.kg, %i.kf
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.ax, label %bb.bj

bb.ax:                                            ; preds = %Dau_DsdFindSupports.exit.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.kj = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %i.kj, align 8, !tbaa !111
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !114
  %i.km = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !114
  %i.kn = load i32, ptr %i.bd, align 4, !tbaa !9
  %i.ko = load i32, ptr %i.at, align 4, !tbaa !9
  store i32 %i.ko, ptr %i.bd, align 4, !tbaa !9
  store i32 %i.kn, ptr %i.at, align 4, !tbaa !9
  call fastcc void @Abc_TtSwapVars(ptr noundef %1, i32 noundef %.041, i32 noundef range(i32 0, 2147483647) %i.bm, i32 noundef %i.ar), !inline_history !288
  br i1 %i.aj, label %Abc_TtCofactor0p.exit.thread282, label %bb.ay

Abc_TtCofactor0p.exit.thread282:                  ; preds = %bb.ax
  %i.kp = load i64, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %i.as
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !39
  %i.ks = and i64 %i.kr, %i.kp                    ; 2 uses
  %i.kt = shl nuw nsw i32 1, %i.ar
  %i.ku = zext nneg i32 %i.kt to i64              ; 2 uses
  %i.kv = shl i64 %i.ks, %i.ku
  %i.kw = or i64 %i.kv, %i.ks
  store i64 %i.kw, ptr %i.e, align 16, !tbaa !39
  %i.kx = getelementptr inbounds nuw i8, ptr %i.e, i64 512 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.as
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !39
  %i.la = and i64 %i.kz, %i.kp                    ; 2 uses
  %i.lb = lshr i64 %i.la, %i.ku
  %i.lc = or i64 %i.lb, %i.la
  store i64 %i.lc, ptr %i.kx, align 16, !tbaa !39
  br label %Abc_TtCofactor1p.exit

bb.ay:                                            ; preds = %bb.ax
  %i.ld = sext i32 %i.ac to i64
  %.idx.i241 = shl nsw i64 %i.ld, 3
  %i.le = getelementptr inbounds i8, ptr %1, i64 %.idx.i241 ; 2 uses
  %i.lf = add nsw i32 %.041, -7                   ; 7 uses
  %i.lg = shl nuw i32 1, %i.lf                    ; 8 uses
  %.not = icmp eq i32 %i.ab, 31                   ; 2 uses
  br i1 %.not, label %Abc_TtCofactor0p.exit.thread, label %.preheader.lr.ph.i242

.preheader.lr.ph.i242:                            ; preds = %bb.ay
  %.not.i243 = icmp eq i32 %i.lf, 31
  %i.lh = shl i32 2, %i.lf
  %i.li = sext i32 %i.lh to i64                   ; 2 uses
  br i1 %.not.i243, label %Abc_TtCofactor0p.exit.thread, label %.preheader.us.preheader.i244

.preheader.us.preheader.i244:                     ; preds = %.preheader.lr.ph.i242
  %i.lj = sext i32 %i.lg to i64
  %smax.i245 = call i32 @llvm.smax.i32(i32 %i.lg, i32 1)
  %min.iters.check780 = icmp slt i32 %i.lg, 4
  %i.lk = and i32 %smax.i245, 2147483644
  %n.vec782 = zext nneg i32 %i.lk to i64
  %exitcond.not.i252 = icmp slt i32 %i.lg, 2
  %exitcond.not.i252.1 = icmp eq i32 %i.lf, 1
  br label %.preheader.us.i247

.preheader.us.i247:                               ; preds = %._crit_edge.us.i253, %.preheader.us.preheader.i244
  %.04251.us.i = phi ptr [ %i.ma, %._crit_edge.us.i253 ], [ %i.e, %.preheader.us.preheader.i244 ] ; 6 uses
  %.04350.us.i = phi ptr [ %i.lz, %._crit_edge.us.i253 ], [ %1, %.preheader.us.preheader.i244 ] ; 5 uses
  %invariant.gep.i248 = getelementptr [8 x i8], ptr %.04251.us.i, i64 %i.lj ; 4 uses
  br i1 %min.iters.check780, label %scalar.ph779, label %vector.body783

vector.body783:                                   ; preds = %.preheader.us.i247, %vector.body783
  %index784 = phi i64 [ %index.next787, %vector.body783 ], [ 0, %.preheader.us.i247 ] ; 4 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %index784 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %wide.load785 = load <2 x i64>, ptr %i.ll, align 8, !tbaa !39 ; 2 uses
  %wide.load786 = load <2 x i64>, ptr %i.lm, align 8, !tbaa !39 ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %index784 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store <2 x i64> %wide.load785, ptr %i.ln, align 8, !tbaa !39
  store <2 x i64> %wide.load786, ptr %i.lo, align 8, !tbaa !39
  %i.lp = getelementptr [8 x i8], ptr %invariant.gep.i248, i64 %index784 ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 16
  store <2 x i64> %wide.load785, ptr %i.lp, align 8, !tbaa !39
  store <2 x i64> %wide.load786, ptr %i.lq, align 8, !tbaa !39
  %index.next787 = add nuw i64 %index784, 4       ; 2 uses
  %i.lr = icmp eq i64 %index.next787, %n.vec782
  br i1 %i.lr, label %._crit_edge.us.i253, label %vector.body783, !llvm.loop !289

scalar.ph779:                                     ; preds = %.preheader.us.i247
  %i.ls = load i64, ptr %.04350.us.i, align 8, !tbaa !39 ; 2 uses
  store i64 %i.ls, ptr %.04251.us.i, align 8, !tbaa !39
  store i64 %i.ls, ptr %invariant.gep.i248, align 8, !tbaa !39
  br i1 %exitcond.not.i252, label %._crit_edge.us.i253, label %scalar.ph779.1

scalar.ph779.1:                                   ; preds = %scalar.ph779
  %i.lt = getelementptr inbounds nuw i8, ptr %.04350.us.i, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !39 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.04251.us.i, i64 8
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !39
  %gep.i250.1 = getelementptr i8, ptr %invariant.gep.i248, i64 8
  store i64 %i.lu, ptr %gep.i250.1, align 8, !tbaa !39
  br i1 %exitcond.not.i252.1, label %._crit_edge.us.i253, label %scalar.ph779.2

scalar.ph779.2:                                   ; preds = %scalar.ph779.1
  %i.lw = getelementptr inbounds nuw i8, ptr %.04350.us.i, i64 16
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !39 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.04251.us.i, i64 16
  store i64 %i.lx, ptr %i.ly, align 8, !tbaa !39
  %gep.i250.2 = getelementptr i8, ptr %invariant.gep.i248, i64 16
  store i64 %i.lx, ptr %gep.i250.2, align 8, !tbaa !39
  br label %._crit_edge.us.i253

._crit_edge.us.i253:                              ; preds = %vector.body783, %scalar.ph779, %scalar.ph779.1, %scalar.ph779.2
  %i.lz = getelementptr inbounds [8 x i8], ptr %.04350.us.i, i64 %i.li ; 2 uses
  %i.ma = getelementptr inbounds [8 x i8], ptr %.04251.us.i, i64 %i.li
  %i.mb = icmp ult ptr %i.lz, %i.le
  br i1 %i.mb, label %.preheader.us.i247, label %Abc_TtCofactor0p.exit.thread, !llvm.loop !104

Abc_TtCofactor0p.exit.thread:                     ; preds = %._crit_edge.us.i253, %.preheader.lr.ph.i242, %bb.ay
  %i.mc = getelementptr inbounds nuw i8, ptr %i.e, i64 512 ; 4 uses
  br i1 %.not, label %Abc_TtCofactor1p.exit, label %.preheader.lr.ph.i231

.preheader.lr.ph.i231:                            ; preds = %Abc_TtCofactor0p.exit.thread
  %.not.i232 = icmp eq i32 %i.lf, 31
  %i.md = shl i32 2, %i.lf
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  br i1 %.not.i232, label %Abc_TtCofactor1p.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i231
  %i.mf = sext i32 %i.lg to i64                   ; 5 uses
  %smax.i233 = call i32 @llvm.smax.i32(i32 %i.lg, i32 1)
  %min.iters.check794 = icmp slt i32 %i.lg, 4
  %i.mg = and i32 %smax.i233, 2147483644
  %n.vec796 = zext nneg i32 %i.mg to i64
  %exitcond.not.i238 = icmp slt i32 %i.lg, 2
  %i.mh = add nuw nsw i64 %i.mf, 1                ; 2 uses
  %exitcond.not.i238.1 = icmp eq i32 %i.lf, 1
  %i.mi = add nuw nsw i64 %i.mf, 2                ; 2 uses
  br label %.preheader.us.i235

.preheader.us.i235:                               ; preds = %._crit_edge.us.i239, %.preheader.us.preheader.i
  %.04453.us.i = phi ptr [ %i.nd, %._crit_edge.us.i239 ], [ %i.mc, %.preheader.us.preheader.i ] ; 9 uses
  %.04552.us.i = phi ptr [ %i.nc, %._crit_edge.us.i239 ], [ %1, %.preheader.us.preheader.i ] ; 5 uses
  br i1 %min.iters.check794, label %scalar.ph793, label %vector.body797

vector.body797:                                   ; preds = %.preheader.us.i235, %vector.body797
  %index798 = phi i64 [ %index.next801, %vector.body797 ], [ 0, %.preheader.us.i235 ] ; 3 uses
  %i.mj = add nuw nsw i64 %index798, %i.mf        ; 2 uses
  %i.mk = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.mj ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load799 = load <2 x i64>, ptr %i.mk, align 8, !tbaa !39 ; 2 uses
  %wide.load800 = load <2 x i64>, ptr %i.ml, align 8, !tbaa !39 ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %index798 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store <2 x i64> %wide.load799, ptr %i.mm, align 8, !tbaa !39
  store <2 x i64> %wide.load800, ptr %i.mn, align 8, !tbaa !39
  %i.mo = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.mj ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store <2 x i64> %wide.load799, ptr %i.mo, align 8, !tbaa !39
  store <2 x i64> %wide.load800, ptr %i.mp, align 8, !tbaa !39
  %index.next801 = add nuw i64 %index798, 4       ; 2 uses
  %i.mq = icmp eq i64 %index.next801, %n.vec796
  br i1 %i.mq, label %._crit_edge.us.i239, label %vector.body797, !llvm.loop !290

scalar.ph793:                                     ; preds = %.preheader.us.i235
  %i.mr = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.mf
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !39 ; 2 uses
  store i64 %i.ms, ptr %.04453.us.i, align 8, !tbaa !39
  %i.mt = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.mf
  store i64 %i.ms, ptr %i.mt, align 8, !tbaa !39
  br i1 %exitcond.not.i238, label %._crit_edge.us.i239, label %scalar.ph793.1

scalar.ph793.1:                                   ; preds = %scalar.ph793
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.mh
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !39 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.04453.us.i, i64 8
  store i64 %i.mv, ptr %i.mw, align 8, !tbaa !39
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.mh
  store i64 %i.mv, ptr %i.mx, align 8, !tbaa !39
  br i1 %exitcond.not.i238.1, label %._crit_edge.us.i239, label %scalar.ph793.2

scalar.ph793.2:                                   ; preds = %scalar.ph793.1
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.mi
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !39 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.04453.us.i, i64 16
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !39
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.mi
end_hunk_2
