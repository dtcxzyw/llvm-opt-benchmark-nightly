Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cecClass?download=true
inline.NumInlined: 225
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Cec_ManSimClassRefineOne_rec:bb.a
.loopexit43.i:                                    ; preds = %bb.ao, %.lr.ph.i61
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count.i60
  br i1 %exitcond56.not.i, label %Cec_ManSimCompareEqualScore.exit, label %.lr.ph.i61, !llvm.loop !15

Cec_ManSimCompareEqualScore.exit:                 ; preds = %.loopexit43.i, %.loopexit.i, %.preheader40.i, %.preheader44.i, %Vec_IntPush.exit50, %Vec_IntPush.exit58
  %i.ft = load ptr, ptr %0, align 8, !tbaa !65    ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 200
  %.val41 = load ptr, ptr %i.fu, align 8, !tbaa !55 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val41, i64 %i.av
  %.0 = load i32, ptr %i.fv, align 4, !tbaa !29   ; 2 uses
  %i.fw = icmp sgt i32 %.0, 0
  br i1 %i.fw, label %.lr.ph, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %Cec_ManSimCompareEqualScore.exit, %Vec_IntPush.exit
  %.val24.i105 = phi ptr [ %.val42, %Vec_IntPush.exit ], [ %.val41, %Cec_ManSimCompareEqualScore.exit ]
  %i.fx = phi ptr [ %i.ar, %Vec_IntPush.exit ], [ %i.ft, %Cec_ManSimCompareEqualScore.exit ] ; 3 uses
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !60  ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  %.val35 = load i32, ptr %i.fz, align 4, !tbaa !34
  %i.ga = icmp eq i32 %.val35, 0
  br i1 %i.ga, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 4      ; 3 uses
  %.val26.i = load i32, ptr %i.gc, align 4, !tbaa !34
  %i.gd = icmp sgt i32 %.val26.i, 0
  br i1 %i.gd, label %bb.aq, label %Cec_ManSimClassCreate.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ge = getelementptr i8, ptr %i.gb, i64 8      ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fx, i64 192    ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fx, i64 200    ; 2 uses
  %.val21.peel.i = load ptr, ptr %i.ge, align 8, !tbaa !35
  %i.gh = load i32, ptr %.val21.peel.i, align 4, !tbaa !29 ; 3 uses
  %.val23.peel.i = load ptr, ptr %i.gf, align 8, !tbaa !54
  %i.gi = sext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %.val23.peel.i, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = or i32 %i.gk, 268435455
  store i32 %i.gl, ptr %i.gj, align 4
  %.val.peel.pre.i = load i32, ptr %i.gc, align 4, !tbaa !34
  %i.gm = icmp sgt i32 %.val.peel.pre.i, 1
  br i1 %i.gm, label %.peel.next.i, label %..critedge.loopexit.i_crit_edge

..critedge.loopexit.i_crit_edge:                  ; preds = %bb.aq
  %.val24.i.pre.pre = load ptr, ptr %i.gg, align 8, !tbaa !55
  br label %.critedge.loopexit.i

.peel.next.i:                                     ; preds = %bb.aq
  %i.gn = and i32 %i.gh, 268435455
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.peel.next.i
  %indvars.iv.i67 = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i68, %bb.ar ] ; 2 uses
  %.01828.i = phi i32 [ %i.gh, %.peel.next.i ], [ %i.gp, %bb.ar ]
  %.val21.i = load ptr, ptr %i.ge, align 8, !tbaa !35
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.val21.i, i64 %indvars.iv.i67
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !29 ; 3 uses
  %.val22.i = load ptr, ptr %i.gf, align 8, !tbaa !54
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr %.val22.i, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = and i32 %i.gs, -268435456
  %i.gu = or disjoint i32 %i.gt, %i.gn
  store i32 %i.gu, ptr %i.gr, align 4
  %.val25.i = load ptr, ptr %i.gg, align 8, !tbaa !55 ; 2 uses
  %i.gv = sext i32 %.01828.i to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %.val25.i, i64 %i.gv
  store i32 %i.gp, ptr %i.gw, align 4, !tbaa !29
  %.val.pre.i = load i32, ptr %i.gc, align 4, !tbaa !34
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %i.gx = sext i32 %.val.pre.i to i64
  %i.gy = icmp slt i64 %indvars.iv.next.i68, %i.gx
  br i1 %i.gy, label %bb.ar, label %.critedge.loopexit.i, !llvm.loop !16

.critedge.loopexit.i:                             ; preds = %bb.ar, %..critedge.loopexit.i_crit_edge
  %.pre-phi = phi i64 [ %i.gi, %..critedge.loopexit.i_crit_edge ], [ %i.gq, %bb.ar ]
  %.val24.i.pre = phi ptr [ %.val24.i.pre.pre, %..critedge.loopexit.i_crit_edge ], [ %.val25.i, %bb.ar ]
  %.pre106 = load ptr, ptr %0, align 8, !tbaa !65
  %.pre107 = load ptr, ptr %i.b, align 8, !tbaa !60
  br label %Cec_ManSimClassCreate.exit

Cec_ManSimClassCreate.exit:                       ; preds = %bb.ap, %.critedge.loopexit.i
  %i.gz = phi ptr [ %i.fy, %bb.ap ], [ %.pre107, %.critedge.loopexit.i ] ; 3 uses
  %i.ha = phi ptr [ %i.fx, %bb.ap ], [ %.pre106, %.critedge.loopexit.i ] ; 3 uses
  %.val24.i = phi ptr [ %.val24.i105, %bb.ap ], [ %.val24.i.pre, %.critedge.loopexit.i ]
  %.018.lcssa.i = phi i64 [ -1, %bb.ap ], [ %.pre-phi, %.critedge.loopexit.i ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %.val24.i, i64 %.018.lcssa.i
  store i32 0, ptr %i.hb, align 4, !tbaa !29
  %i.hc = getelementptr i8, ptr %i.gz, i64 4      ; 3 uses
  %.val26.i69 = load i32, ptr %i.hc, align 4, !tbaa !34
  %i.hd = icmp sgt i32 %.val26.i69, 0
  br i1 %i.hd, label %bb.as, label %Cec_ManSimClassCreate.exit85

bb.as:                                            ; preds = %Cec_ManSimClassCreate.exit
  %i.he = getelementptr i8, ptr %i.gz, i64 8      ; 2 uses
  %i.hf = getelementptr i8, ptr %i.ha, i64 192    ; 2 uses
  %i.hg = getelementptr i8, ptr %i.ha, i64 200
  %.val21.peel.i72 = load ptr, ptr %i.he, align 8, !tbaa !35
  %i.hh = load i32, ptr %.val21.peel.i72, align 4, !tbaa !29 ; 3 uses
  %.val23.peel.i73 = load ptr, ptr %i.hf, align 8, !tbaa !54
  %i.hi = sext i32 %i.hh to i64                   ; 2 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %.val23.peel.i73, i64 %i.hi ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = or i32 %i.hk, 268435455
  store i32 %i.hl, ptr %i.hj, align 4
  %.val.peel.pre.i74 = load i32, ptr %i.hc, align 4, !tbaa !34
  %i.hm = icmp sgt i32 %.val.peel.pre.i74, 1
  br i1 %i.hm, label %.peel.next.i77, label %.critedge.loopexit.i75

.peel.next.i77:                                   ; preds = %bb.as
  %i.hn = and i32 %i.hh, 268435455
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.peel.next.i77
  %indvars.iv.i78 = phi i64 [ 1, %.peel.next.i77 ], [ %indvars.iv.next.i84, %bb.at ] ; 2 uses
  %.01828.i79 = phi i32 [ %i.hh, %.peel.next.i77 ], [ %i.hp, %bb.at ]
  %.val21.i80 = load ptr, ptr %i.he, align 8, !tbaa !35
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.val21.i80, i64 %indvars.iv.i78
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !29 ; 3 uses
  %.val22.i81 = load ptr, ptr %i.hf, align 8, !tbaa !54
  %i.hq = sext i32 %i.hp to i64                   ; 2 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %.val22.i81, i64 %i.hq ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = and i32 %i.hs, -268435456
  %i.hu = or disjoint i32 %i.ht, %i.hn
  store i32 %i.hu, ptr %i.hr, align 4
  %.val25.i82 = load ptr, ptr %i.hg, align 8, !tbaa !55
  %i.hv = sext i32 %.01828.i79 to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %.val25.i82, i64 %i.hv
  store i32 %i.hp, ptr %i.hw, align 4, !tbaa !29
  %.val.pre.i83 = load i32, ptr %i.hc, align 4, !tbaa !34
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i78, 1 ; 2 uses
  %i.hx = sext i32 %.val.pre.i83 to i64
  %i.hy = icmp slt i64 %indvars.iv.next.i84, %i.hx
  br i1 %i.hy, label %bb.at, label %.critedge.loopexit.i75, !llvm.loop !16

.critedge.loopexit.i75:                           ; preds = %bb.at, %bb.as
  %.pre-phi110 = phi i64 [ %i.hi, %bb.as ], [ %i.hq, %bb.at ]
  %.pre108 = load ptr, ptr %i.b, align 8, !tbaa !60
  br label %Cec_ManSimClassCreate.exit85

Cec_ManSimClassCreate.exit85:                     ; preds = %Cec_ManSimClassCreate.exit, %.critedge.loopexit.i75
  %i.hz = phi ptr [ %i.gz, %Cec_ManSimClassCreate.exit ], [ %.pre108, %.critedge.loopexit.i75 ] ; 3 uses
  %.018.lcssa.i70 = phi i64 [ -1, %Cec_ManSimClassCreate.exit ], [ %.pre-phi110, %.critedge.loopexit.i75 ]
  %i.ia = getelementptr i8, ptr %i.ha, i64 200
  %.val24.i71 = load ptr, ptr %i.ia, align 8, !tbaa !55
  %i.ib = getelementptr inbounds [4 x i8], ptr %.val24.i71, i64 %.018.lcssa.i70
  store i32 0, ptr %i.ib, align 4, !tbaa !29
  %i.ic = getelementptr i8, ptr %i.hz, i64 4
  %.val = load i32, ptr %i.ic, align 4, !tbaa !34
  %i.id = icmp sgt i32 %.val, 1
  br i1 %i.id, label %bb.au, label %bb.av

bb.au:                                            ; preds = %Cec_ManSimClassCreate.exit85
  %i.ie = getelementptr i8, ptr %i.hz, i64 8
  %.val36 = load ptr, ptr %i.ie, align 8, !tbaa !35
  %i.if = load i32, ptr %.val36, align 4, !tbaa !29
  %i.ig = add i32 %accumulator.tr, 1
  br label %tailrecurse

bb.av:                                            ; preds = %Cec_ManSimClassCreate.exit85, %._crit_edge
  %.033 = phi i32 [ 0, %._crit_edge ], [ 1, %Cec_ManSimClassCreate.exit85 ]
  store i32 %i.j, ptr @s_Count, align 4, !tbaa !29
  %accumulator.ret.tr = add i32 %.033, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @Cec_ManSimClassRefineOne_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr @s_Count, align 4, !tbaa !29
  %i.a = tail call i32 @Cec_ManSimClassRefineOne_rec(ptr noundef %0, i32 noundef %1)
  %i.b = load i32, ptr @s_Count, align 4, !tbaa !29 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 10
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @Cec_ManSimClassRefineOne(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @Cec_ManSimClassRefineOne_rec(ptr noundef %0, i32 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Cec_ManSimRefineMappedFrame(ptr nofree noundef captures(none) initializes((16, 20)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !34
  store i32 64, ptr %i.b, align 8, !tbaa !62
  %i.d = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #23 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 %4, ptr %i.f, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !69
  %.not = icmp eq i32 %i.h, %4
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !70
  %i.l = add i32 %4, 1                            ; 2 uses
  %i.m = mul nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = add i32 %i.l, %i.m
  %i.p = load i32, ptr %i.n, align 8, !tbaa !71
  %i.q = icmp ult i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i, label %Cec_ManSimMemRelink.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.016.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.x, %bb.c ] ; 3 uses
  %.01415.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.u, %bb.c ]
  store i32 %.016.i, ptr %.01415.i, align 4, !tbaa !29
  %i.t = zext i32 %.016.i to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.f, align 8, !tbaa !66
  %i.w = add i32 %i.v, 1                          ; 2 uses
  %i.x = add i32 %i.w, %.016.i                    ; 2 uses
  %i.y = add i32 %i.w, %i.x
  %i.z = load i32, ptr %i.n, align 8, !tbaa !71
  %i.aa = icmp ult i32 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %Cec_ManSimMemRelink.exit, !llvm.loop !17

Cec_ManSimMemRelink.exit:                         ; preds = %bb.c, %bb.b
  %.014.lcssa.i = phi ptr [ %i.i, %bb.b ], [ %i.u, %bb.c ]
  store i32 0, ptr %.014.lcssa.i, align 4, !tbaa !29
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !66
  store i32 %i.ab, ptr %i.g, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %Cec_ManSimMemRelink.exit, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 0, ptr %i.ae, align 4, !tbaa !34
  %i.af = load ptr, ptr %0, align 8, !tbaa !65    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !73
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %.lr.ph, label %.critedge4

.critedge.preheader:                              ; preds = %Gia_ObjIsHead.exit.thread
  %i.aj = icmp sgt i32 %i.cd, 1
  %i.ak = icmp sgt i32 %i.cb, 0
  br i1 %i.aj, label %.lr.ph189, label %.critedge2.preheader

.lr.ph189:                                        ; preds = %.critedge.preheader
  %i.al = getelementptr i8, ptr %2, i64 8
  %i.am = sext i32 %4 to i64                      ; 3 uses
  %i.an = icmp sgt i32 %4, 0                      ; 4 uses
  %wide.trip.count.i = zext i32 %4 to i64         ; 12 uses
  %i.ao = getelementptr i8, ptr %0, i64 24
  %i.ap = getelementptr i8, ptr %0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.as = sext i32 %3 to i64
  %5 = sub i64 4, %i.a                            ; 2 uses
  %min.iters.check289 = icmp ult i32 %4, 8
  %invariant.op = add i64 %5, -1
  %n.vec293 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n300 = icmp eq i64 %n.vec293, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %4, 8
  %invariant.op365 = add i64 %5, -1
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter349 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod350.not = icmp eq i64 %xtraiter349, 0
  br label %bb.n

.lr.ph:                                           ; preds = %bb.d, %Gia_ObjIsHead.exit.thread
  %.pre235 = phi ptr [ %.pre236, %Gia_ObjIsHead.exit.thread ], [ %i.af, %bb.d ] ; 4 uses
  %i.at = phi ptr [ %i.bx, %Gia_ObjIsHead.exit.thread ], [ %i.af, %bb.d ] ; 4 uses
  %i.au = phi ptr [ %i.by, %Gia_ObjIsHead.exit.thread ], [ %i.d, %bb.d ] ; 4 uses
  %i.av = phi ptr [ %i.bz, %Gia_ObjIsHead.exit.thread ], [ %i.d, %bb.d ] ; 6 uses
  %i.aw = phi i32 [ %i.ca, %Gia_ObjIsHead.exit.thread ], [ 64, %bb.d ] ; 9 uses
  %i.ax = phi i32 [ %i.cb, %Gia_ObjIsHead.exit.thread ], [ 0, %bb.d ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Gia_ObjIsHead.exit.thread ], [ 1, %bb.d ] ; 4 uses
  %i.ay = getelementptr i8, ptr %i.at, i64 192
  %.val3.i = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, 268435455
  %i.bc = icmp eq i32 %i.bb, 268435455
  br i1 %i.bc, label %Gia_ObjIsHead.exit, label %Gia_ObjIsHead.exit.thread

Gia_ObjIsHead.exit:                               ; preds = %.lr.ph
  %i.bd = getelementptr i8, ptr %i.at, i64 200
  %.val.i = load ptr, ptr %i.bd, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29
  %i.bg = icmp slt i32 %i.bf, 1
  br i1 %i.bg, label %Gia_ObjIsHead.exit.thread, label %bb.e

bb.e:                                             ; preds = %Gia_ObjIsHead.exit
  %i.bh = icmp eq i32 %i.ax, %i.aw
  br i1 %i.bh, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = icmp slt i32 %i.aw, 16
  br i1 %i.bi, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %i.av, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.av, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.bk = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.bl = icmp samesign ult i32 %i.aw, 1073741823
  %i.bm = shl nuw nsw i32 %i.aw, 1
  %spec.select.i = select i1 %i.bl, i32 %i.bm, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.aw, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i = icmp eq ptr %i.av, null
  %i.bn = zext nneg i32 %spec.select.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = tail call ptr @realloc(ptr noundef nonnull %i.av, i64 noundef %i.bo) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bo) #23
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %bb.m, %bb.h, %bb.i
  %storemerge = phi ptr [ %i.bk, %bb.i ], [ %i.bj, %bb.h ], [ %i.bp, %bb.l ], [ %i.bq, %bb.m ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ] ; 2 uses
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !35
  store i32 %spec.select.sink.i, ptr %i.b, align 8, !tbaa !62
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !65
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %.pre = phi ptr [ %.pre235, %bb.e ], [ %.pre235, %bb.j ], [ %.pre.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.br = phi ptr [ %i.au, %bb.e ], [ %i.au, %bb.j ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.bs = phi i32 [ %i.aw, %bb.e ], [ %i.aw, %bb.j ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bt = add nsw i32 %i.ax, 1                    ; 2 uses
  store i32 %i.bt, ptr %i.c, align 4, !tbaa !34
  %i.bu = sext i32 %i.ax to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bu
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !29
  br label %Gia_ObjIsHead.exit.thread

Gia_ObjIsHead.exit.thread:                        ; preds = %.lr.ph, %Gia_ObjIsHead.exit, %Vec_IntPush.exit
  %.pre236 = phi ptr [ %.pre235, %.lr.ph ], [ %.pre235, %Gia_ObjIsHead.exit ], [ %.pre, %Vec_IntPush.exit ]
  %i.bx = phi ptr [ %i.at, %.lr.ph ], [ %i.at, %Gia_ObjIsHead.exit ], [ %.pre, %Vec_IntPush.exit ] ; 3 uses
  %i.by = phi ptr [ %i.au, %.lr.ph ], [ %i.au, %Gia_ObjIsHead.exit ], [ %i.br, %Vec_IntPush.exit ] ; 4 uses
  %i.bz = phi ptr [ %i.av, %.lr.ph ], [ %i.av, %Gia_ObjIsHead.exit ], [ %i.br, %Vec_IntPush.exit ]
  %i.ca = phi i32 [ %i.aw, %.lr.ph ], [ %i.aw, %Gia_ObjIsHead.exit ], [ %i.bs, %Vec_IntPush.exit ]
  %i.cb = phi i32 [ %i.ax, %.lr.ph ], [ %i.ax, %Gia_ObjIsHead.exit ], [ %i.bt, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !73 ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %.lr.ph, label %.critedge.preheader, !llvm.loop !103

.critedge2.preheader:                             ; preds = %Cec_ManSimSimDeref.exit, %.critedge.preheader
  br i1 %i.ak, label %.lr.ph199, label %.critedge4

.lr.ph199:                                        ; preds = %.critedge2.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ch = getelementptr i8, ptr %2, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cn = sext i32 %4 to i64                      ; 3 uses
  %i.co = icmp sgt i32 %4, 0                      ; 2 uses
  %wide.trip.count.i149 = zext i32 %4 to i64      ; 10 uses
  %6 = sub i64 4, %i.a                            ; 2 uses
  %min.iters.check321 = icmp ult i32 %4, 8
  %invariant.op367 = add i64 %6, -1
  %n.vec325 = and i64 %wide.trip.count.i149, 2147483640 ; 3 uses
  %cmp.n332 = icmp eq i64 %n.vec325, %wide.trip.count.i149
  %xtraiter352 = and i64 %wide.trip.count.i149, 3 ; 2 uses
  %lcmp.mod353.not = icmp eq i64 %xtraiter352, 0
  %min.iters.check305 = icmp ult i32 %4, 12
  %invariant.op369 = add i64 %6, -1
  %n.vec309 = and i64 %wide.trip.count.i149, 2147483640 ; 3 uses
  %cmp.n316 = icmp eq i64 %n.vec309, %wide.trip.count.i149
  %xtraiter355 = and i64 %wide.trip.count.i149, 3 ; 2 uses
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br label %bb.ab

bb.n:                                             ; preds = %.lr.ph189, %Cec_ManSimSimDeref.exit
  %indvars.iv214 = phi i64 [ 1, %.lr.ph189 ], [ %indvars.iv.next215, %Cec_ManSimSimDeref.exit ] ; 5 uses
  %i.cp = phi ptr [ %i.bx, %.lr.ph189 ], [ %i.hg, %Cec_ManSimSimDeref.exit ]
  %i.cq = getelementptr i8, ptr %i.cp, i64 192
  %.val125 = load ptr, ptr %i.cq, align 8, !tbaa !54
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %indvars.iv214
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = and i32 %i.cs, 268435455
  %.not179 = icmp eq i32 %i.ct, 0
  br i1 %.not179, label %bb.o, label %Cec_ManSimSimDeref.exit

bb.o:                                             ; preds = %bb.n
  %.val118 = load ptr, ptr %i.al, align 8, !tbaa !35
  %i.cu = getelementptr [4 x i8], ptr %.val118, i64 %indvars.iv214
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.as
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !29 ; 2 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv214 to i32 ; 2 uses
  %i.cy = tail call ptr @Cec_ManSimSimRef(ptr noundef nonnull %0, i32 noundef %i.cx) ; 14 uses
  %i.cz = ptrtoaddr ptr %i.cy to i64              ; 2 uses
  %i.da = ashr i32 %i.cw, 1
  %i.db = sext i32 %i.da to i64                   ; 3 uses
  %i.dc = mul nsw i64 %i.db, %i.am
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dc ; 12 uses
  store i32 1, ptr %i.cy, align 4, !tbaa !29
  %i.de = and i32 %i.cw, 1
  %.not.i = icmp eq i32 %i.de, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader20.i

.preheader20.i:                                   ; preds = %bb.o
  br i1 %i.an, label %.lr.ph.i126.preheader, label %Cec_ManSimLoadMappedValue.exit

.lr.ph.i126.preheader:                            ; preds = %.preheader20.i
  br i1 %min.iters.check289, label %.lr.ph.i126.preheader342, label %vector.memcheck290

vector.memcheck290:                               ; preds = %.lr.ph.i126.preheader
  %i.df = mul nsw i64 %i.db, %i.am
  %i.dg = shl i64 %i.df, 2
  %i.dh = sub i64 %i.cz, %i.dg
  %i.di = add i64 %i.dh, %invariant.op
  %diff.check291 = icmp ult i64 %i.di, 31
  br i1 %diff.check291, label %.lr.ph.i126.preheader342, label %vector.body294

vector.body294:                                   ; preds = %vector.memcheck290, %vector.body294
  %index295 = phi i64 [ %index.next298, %vector.body294 ], [ 0, %vector.memcheck290 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index295 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load296 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !29
  %wide.load297 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !29
  %i.dl = xor <4 x i32> %wide.load296, splat (i32 -1)
  %i.dm = xor <4 x i32> %wide.load297, splat (i32 -1)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index295 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  store <4 x i32> %i.dl, ptr %i.do, align 4, !tbaa !29
  store <4 x i32> %i.dm, ptr %i.dp, align 4, !tbaa !29
  %index.next298 = add nuw i64 %index295, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next298, %n.vec293
  br i1 %i.dq, label %middle.block299, label %vector.body294, !llvm.loop !104

middle.block299:                                  ; preds = %vector.body294
  br i1 %cmp.n300, label %Cec_ManSimLoadMappedValue.exit, label %.lr.ph.i126.preheader342

.lr.ph.i126.preheader342:                         ; preds = %vector.memcheck290, %.lr.ph.i126.preheader, %middle.block299
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck290 ], [ 0, %.lr.ph.i126.preheader ], [ %n.vec293, %middle.block299 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i126.prol.loopexit, label %.lr.ph.i126.prol

.lr.ph.i126.prol:                                 ; preds = %.lr.ph.i126.preheader342, %.lr.ph.i126.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i126.prol ], [ %indvars.iv.i.ph, %.lr.ph.i126.preheader342 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i126.prol ], [ 0, %.lr.ph.i126.preheader342 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.prol
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !29
  %i.dt = xor i32 %i.ds, -1
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.prol
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !29
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i126.prol.loopexit, label %.lr.ph.i126.prol, !llvm.loop !105

.lr.ph.i126.prol.loopexit:                        ; preds = %.lr.ph.i126.prol, %.lr.ph.i126.preheader342
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i126.preheader342 ], [ %indvars.iv.next.i.prol, %.lr.ph.i126.prol ]
  %i.dv = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %Cec_ManSimLoadMappedValue.exit, label %.lr.ph.i126

.preheader.i:                                     ; preds = %bb.o
  br i1 %i.an, label %.lr.ph24.i.preheader, label %Cec_ManSimLoadMappedValue.exit

.lr.ph24.i.preheader:                             ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph24.i.preheader341, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph24.i.preheader
  %i.dx = mul nsw i64 %i.db, %i.am
  %i.dy = shl i64 %i.dx, 2
  %i.dz = sub i64 %i.cz, %i.dy
  %i.ea = add i64 %i.dz, %invariant.op365
  %diff.check = icmp ult i64 %i.ea, 31
  br i1 %diff.check, label %.lr.ph24.i.preheader341, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load = load <4 x i32>, ptr %i.eb, align 4, !tbaa !29
  %wide.load285 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !29
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  store <4 x i32> %wide.load, ptr %i.ee, align 4, !tbaa !29
  store <4 x i32> %wide.load285, ptr %i.ef, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Cec_ManSimLoadMappedValue.exit, label %.lr.ph24.i.preheader341

.lr.ph24.i.preheader341:                          ; preds = %vector.memcheck, %.lr.ph24.i.preheader, %middle.block
  %indvars.iv27.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph24.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod350.not, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol

.lr.ph24.i.prol:                                  ; preds = %.lr.ph24.i.preheader341, %.lr.ph24.i.prol
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %.lr.ph24.i.prol ], [ %indvars.iv27.i.ph, %.lr.ph24.i.preheader341 ] ; 2 uses
  %prol.iter351 = phi i64 [ %prol.iter351.next, %.lr.ph24.i.prol ], [ 0, %.lr.ph24.i.preheader341 ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv27.i.prol
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !29
  %indvars.iv.next28.i.prol = add nuw nsw i64 %indvars.iv27.i.prol, 1 ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next28.i.prol
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !29
  %prol.iter351.next = add i64 %prol.iter351, 1   ; 2 uses
  %prol.iter351.cmp.not = icmp eq i64 %prol.iter351.next, %xtraiter349
  br i1 %prol.iter351.cmp.not, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol, !llvm.loop !107

.lr.ph24.i.prol.loopexit:                         ; preds = %.lr.ph24.i.prol, %.lr.ph24.i.preheader341
  %indvars.iv27.i.unr = phi i64 [ %indvars.iv27.i.ph, %.lr.ph24.i.preheader341 ], [ %indvars.iv.next28.i.prol, %.lr.ph24.i.prol ]
  %i.ek = sub nsw i64 %indvars.iv27.i.ph, %wide.trip.count.i
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %Cec_ManSimLoadMappedValue.exit, label %.lr.ph24.i

.lr.ph.i126:                                      ; preds = %.lr.ph.i126.prol.loopexit, %.lr.ph.i126
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i126 ], [ %indvars.iv.i.unr, %.lr.ph.i126.prol.loopexit ] ; 5 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !29
  %i.eo = xor i32 %i.en, -1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !29
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !29
  %i.es = xor i32 %i.er, -1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.1
  store i32 %i.es, ptr %i.et, align 4, !tbaa !29
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.1
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !29
  %i.ew = xor i32 %i.ev, -1
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.2
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !29
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.2
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !29
  %i.fa = xor i32 %i.ez, -1
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.3
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !29
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Cec_ManSimLoadMappedValue.exit, label %.lr.ph.i126, !llvm.loop !108

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i.3, %.lr.ph24.i ], [ %indvars.iv27.i.unr, %.lr.ph24.i.prol.loopexit ] ; 5 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv27.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !29
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next28.i
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !29
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next28.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !29
  %indvars.iv.next28.i.1 = add nuw nsw i64 %indvars.iv27.i, 2 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next28.i.1
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !29
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next28.i.1
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !29
  %indvars.iv.next28.i.2 = add nuw nsw i64 %indvars.iv27.i, 3 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next28.i.2
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !29
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next28.i.2
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !29
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 4 ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next28.i.3
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !29
  %exitcond31.not.i.3 = icmp eq i64 %indvars.iv.next28.i.3, %wide.trip.count.i
  br i1 %exitcond31.not.i.3, label %Cec_ManSimLoadMappedValue.exit, label %.lr.ph24.i, !llvm.loop !109

Cec_ManSimLoadMappedValue.exit:                   ; preds = %.lr.ph.i126.prol.loopexit, %.lr.ph.i126, %.lr.ph24.i.prol.loopexit, %.lr.ph24.i, %middle.block299, %middle.block, %.preheader20.i, %.preheader.i
  %.val120 = load ptr, ptr %i.ao, align 8, !tbaa !63
  %.val121 = load ptr, ptr %i.ap, align 8, !tbaa !64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val120, i64 %indvars.iv214 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !29
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %.val121, i64 %i.fq ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !29
  %i.fu = and i32 %i.ft, 1
  %.not.i127 = icmp eq i32 %i.fu, 0
  br i1 %.not.i127, label %.preheader.i134, label %.preheader14.i

.preheader14.i:                                   ; preds = %Cec_ManSimLoadMappedValue.exit
  br i1 %i.an, label %.lr.ph.i130, label %.loopexit

.preheader.i134:                                  ; preds = %Cec_ManSimLoadMappedValue.exit
  br i1 %i.an, label %.lr.ph21.i, label %.loopexit

bb.p:                                             ; preds = %.lr.ph.i130
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i131, 1 ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %indvars.iv.next.i132, %wide.trip.count.i
  br i1 %exitcond.not.i133, label %.loopexit, label %.lr.ph.i130, !llvm.loop !0

.lr.ph.i130:                                      ; preds = %.preheader14.i, %bb.p
  %indvars.iv.i131 = phi i64 [ %indvars.iv.next.i132, %bb.p ], [ 0, %.preheader14.i ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.i131
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !29
  %.not13.i = icmp eq i32 %i.fw, -1
  br i1 %.not13.i, label %bb.p, label %Cec_ManSimCompareConst.exit

bb.q:                                             ; preds = %.lr.ph21.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count.i
  br i1 %exitcond32.not.i, label %.loopexit, label %.lr.ph21.i, !llvm.loop !1

.lr.ph21.i:                                       ; preds = %.preheader.i134, %bb.q
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %bb.q ], [ 0, %.preheader.i134 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv28.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !29
  %.not12.i = icmp eq i32 %i.fy, 0
  br i1 %.not12.i, label %bb.q, label %Cec_ManSimCompareConst.exit

Cec_ManSimCompareConst.exit:                      ; preds = %.lr.ph.i130, %.lr.ph21.i
  %i.fz = load ptr, ptr %i.ac, align 8, !tbaa !72 ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !34 ; 7 uses
  %i.gc = load i32, ptr %i.fz, align 8, !tbaa !62
  %i.gd = icmp eq i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.r, label %Vec_IntPush.exit142

bb.r:                                             ; preds = %Cec_ManSimCompareConst.exit
  %i.ge = icmp slt i32 %i.gb, 16
  br i1 %i.ge, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i140 = icmp eq ptr %i.gg, null
  br i1 %.not9.i.i140, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gg, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i141

bb.u:                                             ; preds = %bb.s
  %i.gi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i141

Vec_IntGrow.exit.i141:                            ; preds = %bb.u, %bb.t
  %i.gj = phi ptr [ %i.gh, %bb.t ], [ %i.gi, %bb.u ]
  store ptr %i.gj, ptr %i.gf, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i138

bb.v:                                             ; preds = %bb.r
  %i.gk = icmp samesign ult i32 %i.gb, 1073741823
  %i.gl = shl nuw nsw i32 %i.gb, 1
  %spec.select.i135 = select i1 %i.gk, i32 %i.gl, i32 2147483647 ; 3 uses
  %.not.i9.i136 = icmp samesign ult i32 %i.gb, %spec.select.i135
  br i1 %.not.i9.i136, label %bb.w, label %Vec_IntPush.exit142

bb.w:                                             ; preds = %bb.v
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !35 ; 2 uses
  %.not9.i10.i137 = icmp eq ptr %i.gn, null
  %i.go = zext nneg i32 %spec.select.i135 to i64
  %i.gp = shl nuw nsw i64 %i.go, 2                ; 2 uses
  br i1 %.not9.i10.i137, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gq = tail call ptr @realloc(ptr noundef nonnull %i.gn, i64 noundef %i.gp) #22
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gr = tail call noalias ptr @malloc(i64 noundef %i.gp) #23
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gs = phi ptr [ %i.gq, %bb.x ], [ %i.gr, %bb.y ]
  store ptr %i.gs, ptr %i.gm, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i138

Vec_IntGrow.exit11.sink.split.i138:               ; preds = %bb.z, %Vec_IntGrow.exit.i141
  %spec.select.sink.i139 = phi i32 [ %spec.select.i135, %bb.z ], [ 16, %Vec_IntGrow.exit.i141 ]
  store i32 %spec.select.sink.i139, ptr %i.fz, align 8, !tbaa !62
  %.pre227 = load i32, ptr %i.ga, align 4, !tbaa !34
  br label %Vec_IntPush.exit142

Vec_IntPush.exit142:                              ; preds = %Cec_ManSimCompareConst.exit, %bb.v, %Vec_IntGrow.exit11.sink.split.i138
  %i.gt = phi i32 [ %i.gb, %Cec_ManSimCompareConst.exit ], [ %i.gb, %bb.v ], [ %.pre227, %Vec_IntGrow.exit11.sink.split.i138 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !35
  %i.gw = add nsw i32 %i.gt, 1
  store i32 %i.gw, ptr %i.ga, align 4, !tbaa !34
  %i.gx = sext i32 %i.gt to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gx
  store i32 %i.cx, ptr %i.gy, align 4, !tbaa !29
  br label %Cec_ManSimSimDeref.exit

.loopexit:                                        ; preds = %bb.p, %bb.q, %.preheader14.i, %.preheader.i134
  %i.gz = load i32, ptr %i.fr, align 4, !tbaa !29
  %i.ha = add i32 %i.gz, -1                       ; 2 uses
  store i32 %i.ha, ptr %i.fr, align 4, !tbaa !29
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.aa, label %Cec_ManSimSimDeref.exit

bb.aa:                                            ; preds = %.loopexit
  %i.hc = load i32, ptr %i.aq, align 4, !tbaa !76
  store i32 %i.hc, ptr %i.fr, align 4, !tbaa !29
  %i.hd = load i32, ptr %i.fo, align 4, !tbaa !29
  store i32 %i.hd, ptr %i.aq, align 4, !tbaa !76
  store i32 0, ptr %i.fo, align 4, !tbaa !29
  %i.he = load i32, ptr %i.ar, align 4, !tbaa !70
  %i.hf = add nsw i32 %i.he, -1
  store i32 %i.hf, ptr %i.ar, align 4, !tbaa !70
  br label %Cec_ManSimSimDeref.exit

Cec_ManSimSimDeref.exit:                          ; preds = %bb.aa, %.loopexit, %Vec_IntPush.exit142, %bb.n
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.hg = load ptr, ptr %0, align 8, !tbaa !65    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !73
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next215, %i.hj
  br i1 %i.hk, label %bb.n, label %.critedge2.preheader, !llvm.loop !110

bb.ab:                                            ; preds = %.lr.ph199, %.critedge6
  %indvars.iv221 = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next222, %.critedge6 ] ; 2 uses
  %.0198 = phi i32 [ 0, %.lr.ph199 ], [ %.1, %.critedge6 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv221
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !29 ; 4 uses
  %i.hn = load ptr, ptr %0, align 8, !tbaa !65    ; 3 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 192
  %.val3.i143 = load ptr, ptr %i.ho, align 8, !tbaa !54
  %i.hp = sext i32 %i.hm to i64                   ; 2 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr %.val3.i143, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = and i32 %i.hr, 268435455
  %i.ht = icmp eq i32 %i.hs, 268435455
  br i1 %i.ht, label %Gia_ObjIsHead.exit145, label %.critedge6

Gia_ObjIsHead.exit145:                            ; preds = %bb.ab
  %i.hu = getelementptr i8, ptr %i.hn, i64 200
  %.val.i144 = load ptr, ptr %i.hu, align 8, !tbaa !55
  %i.hv = getelementptr inbounds [4 x i8], ptr %.val.i144, i64 %i.hp
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !29
  %i.hx = icmp slt i32 %i.hw, 1
  br i1 %i.hx, label %.critedge6, label %bb.ac

bb.ac:                                            ; preds = %Gia_ObjIsHead.exit145
  %i.hy = load ptr, ptr %i.cg, align 8, !tbaa !77
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store i32 0, ptr %i.hz, align 4, !tbaa !34
  %i.ia = icmp sgt i32 %i.hm, 0
  br i1 %i.ia, label %.lr.ph191, label %._crit_edge

.lr.ph191:                                        ; preds = %bb.ac, %Vec_IntPush.exit169
  %i.ib = phi ptr [ %i.nh, %Vec_IntPush.exit169 ], [ %i.hn, %bb.ac ]
  %.097190 = phi i32 [ %i.nq, %Vec_IntPush.exit169 ], [ %i.hm, %bb.ac ] ; 3 uses
  %i.ic = add nsw i32 %.097190, %3
  %.val116 = load ptr, ptr %i.ch, align 8, !tbaa !35
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %.val116, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !29 ; 2 uses
  %i.ig = load i32, ptr %i.ci, align 4, !tbaa !76 ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.ad, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph191
  %.pre30.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  br label %bb.aj

bb.ad:                                            ; preds = %.lr.ph191
  %i.ii = load i32, ptr %i.cj, align 8, !tbaa !71 ; 2 uses
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 1, ptr %i.ck, align 4, !tbaa !70
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ik = phi i32 [ 131072, %bb.ae ], [ %i.ii, %bb.ad ]
  %i.il = shl nsw i32 %i.ik, 1                    ; 3 uses
  store i32 %i.il, ptr %i.cj, align 8, !tbaa !71
  %i.im = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !64 ; 2 uses
  %.not.i174 = icmp eq ptr %i.im, null
  %i.in = sext i32 %i.il to i64
  %i.io = shl nsw i64 %i.in, 2                    ; 2 uses
  br i1 %.not.i174, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ip = tail call ptr @realloc(ptr noundef nonnull %i.im, i64 noundef %i.io) #22
  %.pre.i = load i32, ptr %i.cj, align 8, !tbaa !71
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.iq = tail call noalias ptr @malloc(i64 noundef %i.io) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ir = phi i32 [ %.pre.i, %bb.ag ], [ %i.il, %bb.ah ] ; 2 uses
  %i.is = phi ptr [ %i.ip, %bb.ag ], [ %i.iq, %bb.ah ] ; 3 uses
  store ptr %i.is, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  %i.it = load i32, ptr %i.ck, align 4, !tbaa !70
  %i.iu = load i32, ptr %i.f, align 8, !tbaa !66  ; 2 uses
  %i.iv = add i32 %i.iu, 1                        ; 4 uses
  %i.iw = mul nsw i32 %i.iv, %i.it                ; 2 uses
  %i.ix = add i32 %i.iw, %i.iv
  %i.iy = icmp ult i32 %i.ix, %i.ir
  br i1 %i.iy, label %.lr.ph.i.i, label %Cec_ManSimMemRelink.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ai, %.lr.ph.i.i
  %.016.i.i = phi i32 [ %i.jb, %.lr.ph.i.i ], [ %i.iw, %bb.ai ] ; 3 uses
  %.01415.i.i = phi ptr [ %i.ja, %.lr.ph.i.i ], [ %i.ci, %bb.ai ]
  store i32 %.016.i.i, ptr %.01415.i.i, align 4, !tbaa !29
  %i.iz = zext i32 %.016.i.i to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.iz ; 2 uses
  %i.jb = add i32 %.016.i.i, %i.iv                ; 2 uses
  %i.jc = add i32 %i.jb, %i.iv
  %i.jd = icmp ult i32 %i.jc, %i.ir
  br i1 %i.jd, label %.lr.ph.i.i, label %Cec_ManSimMemRelink.exit.i, !llvm.loop !17

Cec_ManSimMemRelink.exit.i:                       ; preds = %.lr.ph.i.i, %bb.ai
  %.014.lcssa.i.i = phi ptr [ %i.ci, %bb.ai ], [ %i.ja, %.lr.ph.i.i ]
  store i32 0, ptr %.014.lcssa.i.i, align 4, !tbaa !29
  store i32 %i.iu, ptr %i.g, align 8, !tbaa !69
  %.pre29.i = load i32, ptr %i.ci, align 4, !tbaa !76
  %.pre230 = load ptr, ptr %0, align 8, !tbaa !65
  br label %bb.aj

bb.aj:                                            ; preds = %Cec_ManSimMemRelink.exit.i, %._crit_edge.i
  %i.je = phi ptr [ %.pre230, %Cec_ManSimMemRelink.exit.i ], [ %i.ib, %._crit_edge.i ] ; 3 uses
  %i.jf = phi ptr [ %i.is, %Cec_ManSimMemRelink.exit.i ], [ %.pre30.i, %._crit_edge.i ] ; 2 uses
  %i.jg = phi i32 [ %.pre29.i, %Cec_ManSimMemRelink.exit.i ], [ %i.ig, %._crit_edge.i ]
  %i.jh = ptrtoaddr ptr %i.jf to i64              ; 2 uses
  %i.ji = load ptr, ptr %i.cl, align 8, !tbaa !63
  %i.jj = zext nneg i32 %.097190 to i64           ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jj
  store i32 %i.jg, ptr %i.jk, align 4, !tbaa !29
  %i.jl = load i32, ptr %i.ci, align 4, !tbaa !76
  %i.jm = sext i32 %i.jl to i64                   ; 3 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.jm ; 15 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !29
  store i32 %i.jo, ptr %i.ci, align 4, !tbaa !76
  %i.jp = getelementptr i8, ptr %i.je, i64 32
  %.val.i173 = load ptr, ptr %i.jp, align 8, !tbaa !78
  %i.jq = getelementptr inbounds nuw [12 x i8], ptr %.val.i173, i64 %i.jj
  %i.jr = getelementptr i8, ptr %i.jq, i64 8
  %.val28.i = load i32, ptr %i.jr, align 4, !tbaa !80
  store i32 %.val28.i, ptr %i.jn, align 4, !tbaa !29
  %i.js = load i32, ptr %i.ck, align 4, !tbaa !70 ; 2 uses
  %i.jt = add nsw i32 %i.js, 1                    ; 2 uses
  store i32 %i.jt, ptr %i.ck, align 4, !tbaa !70
  %i.ju = load i32, ptr %i.cm, align 8, !tbaa !81
  %.not27.i = icmp sgt i32 %i.ju, %i.js
  br i1 %.not27.i, label %Cec_ManSimSimRef.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.jt, ptr %i.cm, align 8, !tbaa !81
  br label %Cec_ManSimSimRef.exit

Cec_ManSimSimRef.exit:                            ; preds = %bb.aj, %bb.ak
  %i.jv = ashr i32 %i.if, 1
  %i.jw = sext i32 %i.jv to i64                   ; 3 uses
  %i.jx = mul nsw i64 %i.jw, %i.cn
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jx ; 12 uses
  store i32 1, ptr %i.jn, align 4, !tbaa !29
  %i.jz = and i32 %i.if, 1
  %.not.i146 = icmp eq i32 %i.jz, 0
  br i1 %.not.i146, label %.preheader.i154, label %.preheader20.i147

.preheader20.i147:                                ; preds = %Cec_ManSimSimRef.exit
  br i1 %i.co, label %.lr.ph.i150.preheader, label %Cec_ManSimLoadMappedValue.exit161

.lr.ph.i150.preheader:                            ; preds = %.preheader20.i147
  br i1 %min.iters.check321, label %.lr.ph.i150.preheader336, label %vector.memcheck322

vector.memcheck322:                               ; preds = %.lr.ph.i150.preheader
  %i.ka = shl nsw i64 %i.jm, 2
  %i.kb = mul nsw i64 %i.jw, %i.cn
  %i.kc = shl i64 %i.kb, 2
  %i.kd = add i64 %i.ka, %i.jh
  %i.ke = sub i64 %i.kd, %i.kc
  %i.kf = add i64 %i.ke, %invariant.op367
  %diff.check323 = icmp ult i64 %i.kf, 31
  br i1 %diff.check323, label %.lr.ph.i150.preheader336, label %vector.body326

vector.body326:                                   ; preds = %vector.memcheck322, %vector.body326
  %index327 = phi i64 [ %index.next330, %vector.body326 ], [ 0, %vector.memcheck322 ] ; 3 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %index327 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %wide.load328 = load <4 x i32>, ptr %i.kg, align 4, !tbaa !29
  %wide.load329 = load <4 x i32>, ptr %i.kh, align 4, !tbaa !29
  %i.ki = xor <4 x i32> %wide.load328, splat (i32 -1)
  %i.kj = xor <4 x i32> %wide.load329, splat (i32 -1)
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %index327 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 20
  store <4 x i32> %i.ki, ptr %i.kl, align 4, !tbaa !29
  store <4 x i32> %i.kj, ptr %i.km, align 4, !tbaa !29
  %index.next330 = add nuw i64 %index327, 8       ; 2 uses
  %i.kn = icmp eq i64 %index.next330, %n.vec325
  br i1 %i.kn, label %middle.block331, label %vector.body326, !llvm.loop !111

middle.block331:                                  ; preds = %vector.body326
  br i1 %cmp.n332, label %Cec_ManSimLoadMappedValue.exit161, label %.lr.ph.i150.preheader336

.lr.ph.i150.preheader336:                         ; preds = %vector.memcheck322, %.lr.ph.i150.preheader, %middle.block331
  %indvars.iv.i151.ph = phi i64 [ 0, %vector.memcheck322 ], [ 0, %.lr.ph.i150.preheader ], [ %n.vec325, %middle.block331 ] ; 3 uses
  br i1 %lcmp.mod353.not, label %.lr.ph.i150.prol.loopexit, label %.lr.ph.i150.prol

.lr.ph.i150.prol:                                 ; preds = %.lr.ph.i150.preheader336, %.lr.ph.i150.prol
  %indvars.iv.i151.prol = phi i64 [ %indvars.iv.next.i152.prol, %.lr.ph.i150.prol ], [ %indvars.iv.i151.ph, %.lr.ph.i150.preheader336 ] ; 2 uses
  %prol.iter354 = phi i64 [ %prol.iter354.next, %.lr.ph.i150.prol ], [ 0, %.lr.ph.i150.preheader336 ]
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i151.prol
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !29
  %i.kq = xor i32 %i.kp, -1
  %indvars.iv.next.i152.prol = add nuw nsw i64 %indvars.iv.i151.prol, 1 ; 3 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next.i152.prol
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !29
  %prol.iter354.next = add i64 %prol.iter354, 1   ; 2 uses
  %prol.iter354.cmp.not = icmp eq i64 %prol.iter354.next, %xtraiter352
  br i1 %prol.iter354.cmp.not, label %.lr.ph.i150.prol.loopexit, label %.lr.ph.i150.prol, !llvm.loop !112

.lr.ph.i150.prol.loopexit:                        ; preds = %.lr.ph.i150.prol, %.lr.ph.i150.preheader336
  %indvars.iv.i151.unr = phi i64 [ %indvars.iv.i151.ph, %.lr.ph.i150.preheader336 ], [ %indvars.iv.next.i152.prol, %.lr.ph.i150.prol ]
  %i.ks = sub nsw i64 %indvars.iv.i151.ph, %wide.trip.count.i149
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %Cec_ManSimLoadMappedValue.exit161, label %.lr.ph.i150

.preheader.i154:                                  ; preds = %Cec_ManSimSimRef.exit
  br i1 %i.co, label %.lr.ph24.i157.preheader, label %Cec_ManSimLoadMappedValue.exit161

.lr.ph24.i157.preheader:                          ; preds = %.preheader.i154
  br i1 %min.iters.check305, label %.lr.ph24.i157.preheader335, label %vector.memcheck306

vector.memcheck306:                               ; preds = %.lr.ph24.i157.preheader
  %i.ku = shl nsw i64 %i.jm, 2
  %i.kv = mul nsw i64 %i.jw, %i.cn
  %i.kw = shl i64 %i.kv, 2
  %i.kx = add i64 %i.ku, %i.jh
  %i.ky = sub i64 %i.kx, %i.kw
  %i.kz = add i64 %i.ky, %invariant.op369
  %diff.check307 = icmp ult i64 %i.kz, 31
  br i1 %diff.check307, label %.lr.ph24.i157.preheader335, label %vector.body310

vector.body310:                                   ; preds = %vector.memcheck306, %vector.body310
  %index311 = phi i64 [ %index.next314, %vector.body310 ], [ 0, %vector.memcheck306 ] ; 3 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %index311 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %wide.load312 = load <4 x i32>, ptr %i.la, align 4, !tbaa !29
  %wide.load313 = load <4 x i32>, ptr %i.lb, align 4, !tbaa !29
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %index311 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 20
  store <4 x i32> %wide.load312, ptr %i.ld, align 4, !tbaa !29
  store <4 x i32> %wide.load313, ptr %i.le, align 4, !tbaa !29
  %index.next314 = add nuw i64 %index311, 8       ; 2 uses
  %i.lf = icmp eq i64 %index.next314, %n.vec309
  br i1 %i.lf, label %middle.block315, label %vector.body310, !llvm.loop !113

middle.block315:                                  ; preds = %vector.body310
  br i1 %cmp.n316, label %Cec_ManSimLoadMappedValue.exit161, label %.lr.ph24.i157.preheader335

.lr.ph24.i157.preheader335:                       ; preds = %vector.memcheck306, %.lr.ph24.i157.preheader, %middle.block315
  %indvars.iv27.i158.ph = phi i64 [ 0, %vector.memcheck306 ], [ 0, %.lr.ph24.i157.preheader ], [ %n.vec309, %middle.block315 ] ; 3 uses
  br i1 %lcmp.mod356.not, label %.lr.ph24.i157.prol.loopexit, label %.lr.ph24.i157.prol

.lr.ph24.i157.prol:                               ; preds = %.lr.ph24.i157.preheader335, %.lr.ph24.i157.prol
  %indvars.iv27.i158.prol = phi i64 [ %indvars.iv.next28.i159.prol, %.lr.ph24.i157.prol ], [ %indvars.iv27.i158.ph, %.lr.ph24.i157.preheader335 ] ; 2 uses
  %prol.iter357 = phi i64 [ %prol.iter357.next, %.lr.ph24.i157.prol ], [ 0, %.lr.ph24.i157.preheader335 ]
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv27.i158.prol
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !29
  %indvars.iv.next28.i159.prol = add nuw nsw i64 %indvars.iv27.i158.prol, 1 ; 3 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next28.i159.prol
  store i32 %i.lh, ptr %i.li, align 4, !tbaa !29
  %prol.iter357.next = add i64 %prol.iter357, 1   ; 2 uses
  %prol.iter357.cmp.not = icmp eq i64 %prol.iter357.next, %xtraiter355
  br i1 %prol.iter357.cmp.not, label %.lr.ph24.i157.prol.loopexit, label %.lr.ph24.i157.prol, !llvm.loop !114

.lr.ph24.i157.prol.loopexit:                      ; preds = %.lr.ph24.i157.prol, %.lr.ph24.i157.preheader335
  %indvars.iv27.i158.unr = phi i64 [ %indvars.iv27.i158.ph, %.lr.ph24.i157.preheader335 ], [ %indvars.iv.next28.i159.prol, %.lr.ph24.i157.prol ]
  %i.lj = sub nsw i64 %indvars.iv27.i158.ph, %wide.trip.count.i149
  %i.lk = icmp ugt i64 %i.lj, -4
  br i1 %i.lk, label %Cec_ManSimLoadMappedValue.exit161, label %.lr.ph24.i157

.lr.ph.i150:                                      ; preds = %.lr.ph.i150.prol.loopexit, %.lr.ph.i150
  %indvars.iv.i151 = phi i64 [ %indvars.iv.next.i152.3, %.lr.ph.i150 ], [ %indvars.iv.i151.unr, %.lr.ph.i150.prol.loopexit ] ; 5 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i151
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !29
  %i.ln = xor i32 %i.lm, -1
  %indvars.iv.next.i152 = add nuw nsw i64 %indvars.iv.i151, 1 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next.i152
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !29
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.next.i152
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !29
  %i.lr = xor i32 %i.lq, -1
  %indvars.iv.next.i152.1 = add nuw nsw i64 %indvars.iv.i151, 2 ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next.i152.1
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !29
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.next.i152.1
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !29
  %i.lv = xor i32 %i.lu, -1
  %indvars.iv.next.i152.2 = add nuw nsw i64 %indvars.iv.i151, 3 ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next.i152.2
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !29
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.next.i152.2
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !29
  %i.lz = xor i32 %i.ly, -1
  %indvars.iv.next.i152.3 = add nuw nsw i64 %indvars.iv.i151, 4 ; 3 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next.i152.3
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !29
  %exitcond.not.i153.3 = icmp eq i64 %indvars.iv.next.i152.3, %wide.trip.count.i149
  br i1 %exitcond.not.i153.3, label %Cec_ManSimLoadMappedValue.exit161, label %.lr.ph.i150, !llvm.loop !115

.lr.ph24.i157:                                    ; preds = %.lr.ph24.i157.prol.loopexit, %.lr.ph24.i157
  %indvars.iv27.i158 = phi i64 [ %indvars.iv.next28.i159.3, %.lr.ph24.i157 ], [ %indvars.iv27.i158.unr, %.lr.ph24.i157.prol.loopexit ] ; 5 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv27.i158
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !29
  %indvars.iv.next28.i159 = add nuw nsw i64 %indvars.iv27.i158, 1 ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next28.i159
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !29
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.next28.i159
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !29
  %indvars.iv.next28.i159.1 = add nuw nsw i64 %indvars.iv27.i158, 2 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next28.i159.1
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !29
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.next28.i159.1
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !29
  %indvars.iv.next28.i159.2 = add nuw nsw i64 %indvars.iv27.i158, 3 ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next28.i159.2
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !29
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.next28.i159.2
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !29
  %indvars.iv.next28.i159.3 = add nuw nsw i64 %indvars.iv27.i158, 4 ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next28.i159.3
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !29
  %exitcond31.not.i160.3 = icmp eq i64 %indvars.iv.next28.i159.3, %wide.trip.count.i149
  br i1 %exitcond31.not.i160.3, label %Cec_ManSimLoadMappedValue.exit161, label %.lr.ph24.i157, !llvm.loop !116

Cec_ManSimLoadMappedValue.exit161:                ; preds = %.lr.ph.i150.prol.loopexit, %.lr.ph.i150, %.lr.ph24.i157.prol.loopexit, %.lr.ph24.i157, %middle.block331, %middle.block315, %.preheader20.i147, %.preheader.i154
  %i.mn = load ptr, ptr %i.cg, align 8, !tbaa !77 ; 6 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 4 ; 3 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !34 ; 7 uses
  %i.mq = load i32, ptr %i.mn, align 8, !tbaa !62
  %i.mr = icmp eq i32 %i.mp, %i.mq
  br i1 %i.mr, label %bb.al, label %Vec_IntPush.exit169

bb.al:                                            ; preds = %Cec_ManSimLoadMappedValue.exit161
  %i.ms = icmp slt i32 %i.mp, 16
  br i1 %i.ms, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i167 = icmp eq ptr %i.mu, null
  br i1 %.not9.i.i167, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.mu, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i168

bb.ao:                                            ; preds = %bb.am
  %i.mw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i168

Vec_IntGrow.exit.i168:                            ; preds = %bb.ao, %bb.an
  %i.mx = phi ptr [ %i.mv, %bb.an ], [ %i.mw, %bb.ao ]
  store ptr %i.mx, ptr %i.mt, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i165

bb.ap:                                            ; preds = %bb.al
  %i.my = icmp samesign ult i32 %i.mp, 1073741823
  %i.mz = shl nuw nsw i32 %i.mp, 1
  %spec.select.i162 = select i1 %i.my, i32 %i.mz, i32 2147483647 ; 3 uses
  %.not.i9.i163 = icmp samesign ult i32 %i.mp, %spec.select.i162
  br i1 %.not.i9.i163, label %bb.aq, label %Vec_IntPush.exit169

bb.aq:                                            ; preds = %bb.ap
  %i.na = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !35 ; 2 uses
  %.not9.i10.i164 = icmp eq ptr %i.nb, null
  %i.nc = zext nneg i32 %spec.select.i162 to i64
  %i.nd = shl nuw nsw i64 %i.nc, 2                ; 2 uses
  br i1 %.not9.i10.i164, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ne = tail call ptr @realloc(ptr noundef nonnull %i.nb, i64 noundef %i.nd) #22
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.nf = tail call noalias ptr @malloc(i64 noundef %i.nd) #23
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ng = phi ptr [ %i.ne, %bb.ar ], [ %i.nf, %bb.as ]
  store ptr %i.ng, ptr %i.na, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i165

Vec_IntGrow.exit11.sink.split.i165:               ; preds = %bb.at, %Vec_IntGrow.exit.i168
  %spec.select.sink.i166 = phi i32 [ %spec.select.i162, %bb.at ], [ 16, %Vec_IntGrow.exit.i168 ]
  store i32 %spec.select.sink.i166, ptr %i.mn, align 8, !tbaa !62
  %.pre231 = load i32, ptr %i.mo, align 4, !tbaa !34
  %.pre232 = load ptr, ptr %0, align 8, !tbaa !65
  br label %Vec_IntPush.exit169

Vec_IntPush.exit169:                              ; preds = %Cec_ManSimLoadMappedValue.exit161, %bb.ap, %Vec_IntGrow.exit11.sink.split.i165
  %i.nh = phi ptr [ %i.je, %Cec_ManSimLoadMappedValue.exit161 ], [ %i.je, %bb.ap ], [ %.pre232, %Vec_IntGrow.exit11.sink.split.i165 ] ; 2 uses
  %i.ni = phi i32 [ %i.mp, %Cec_ManSimLoadMappedValue.exit161 ], [ %i.mp, %bb.ap ], [ %.pre231, %Vec_IntGrow.exit11.sink.split.i165 ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !35
  %i.nl = add nsw i32 %i.ni, 1
  store i32 %i.nl, ptr %i.mo, align 4, !tbaa !34
  %i.nm = sext i32 %i.ni to i64
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.nm
  store i32 %.097190, ptr %i.nn, align 4, !tbaa !29
  %i.no = getelementptr i8, ptr %i.nh, i64 200
  %.val122 = load ptr, ptr %i.no, align 8, !tbaa !55
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.val122, i64 %i.jj
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !29 ; 2 uses
  %i.nr = icmp sgt i32 %i.nq, 0
  br i1 %i.nr, label %.lr.ph191, label %._crit_edge, !llvm.loop !117

._crit_edge:                                      ; preds = %Vec_IntPush.exit169, %bb.ac
  %i.ns = tail call range(i32 -2147483647, -2147483648) i32 @Cec_ManSimClassRefineOne_rec(ptr noundef nonnull readonly %0, i32 noundef %i.hm)
  %i.nt = add nsw i32 %i.ns, %.0198               ; 2 uses
  %i.nu = load ptr, ptr %i.cg, align 8, !tbaa !77 ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 4      ; 2 uses
  %.val112192 = load i32, ptr %i.nv, align 4, !tbaa !34
  %i.nw = icmp sgt i32 %.val112192, 0
  br i1 %i.nw, label %.lr.ph195, label %.critedge6

.lr.ph195:                                        ; preds = %._crit_edge
  %i.nx = getelementptr i8, ptr %i.nu, i64 8
  %.val115 = load ptr, ptr %i.nx, align 8, !tbaa !35
  %i.ny = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  %i.nz = load ptr, ptr %i.cl, align 8, !tbaa !63
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph195, %Cec_ManSimSimDeref.exit170
  %indvars.iv218 = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next219, %Cec_ManSimSimDeref.exit170 ] ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.val115, i64 %indvars.iv218
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !29
end_hunk_0
