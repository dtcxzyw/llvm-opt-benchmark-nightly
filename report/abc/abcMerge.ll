Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcMerge?download=true
inline.NumInlined: 134
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Abc_NtkCollectOverlapCands:bb.a
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ao:                                            ; preds = %bb.ak
  %i.gj = icmp samesign ult i32 %i.gc, 1073741823
  %i.gk = shl nuw nsw i32 %i.gc, 1
  %spec.select.i = select i1 %i.gj, i32 %i.gk, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.gc, %spec.select.i
  %.pre115 = load ptr, ptr %i.aq, align 8, !tbaa !35 ; 3 uses
  br i1 %.not.i10.i, label %bb.ap, label %Vec_PtrPush.exit

bb.ap:                                            ; preds = %bb.ao
  %.not9.i11.i = icmp eq ptr %.pre115, null
  %i.gl = zext nneg i32 %spec.select.i to i64
  %i.gm = shl nuw nsw i64 %i.gl, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gn = tail call ptr @realloc(ptr noundef nonnull %.pre115, i64 noundef %i.gm) #16
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ar:                                            ; preds = %bb.ap
  %i.go = tail call noalias ptr @malloc(i64 noundef %i.gm) #17
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.aq, %bb.ar, %bb.am, %bb.an
  %i.gp = phi ptr [ %i.gi, %bb.an ], [ %i.gh, %bb.am ], [ %i.gn, %bb.aq ], [ %i.go, %bb.ar ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select.i, %bb.aq ], [ %spec.select.i, %bb.ar ]
  store ptr %i.gp, ptr %i.aq, align 8, !tbaa !35
  store i32 %spec.select.sink.i, ptr %1, align 8, !tbaa !46
  %.pre116 = load i32, ptr %i.p, align 4, !tbaa !45
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.Vec_PtrPush.exit_crit_edge, %bb.ao, %Vec_PtrGrow.exit12.sink.split.i
  %i.gq = phi i32 [ %i.gc, %.Vec_PtrPush.exit_crit_edge ], [ %i.gc, %bb.ao ], [ %.pre116, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.gr = phi ptr [ %.pre, %.Vec_PtrPush.exit_crit_edge ], [ %.pre115, %bb.ao ], [ %i.gp, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.gs = add nsw i32 %i.gq, 1
  store i32 %i.gs, ptr %i.p, align 4, !tbaa !45
  %i.gt = sext i32 %i.gq to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.gt
  store ptr %i.bn, ptr %i.gu, align 8, !tbaa !37
  br label %bb.as

bb.as:                                            ; preds = %Abc_NtkCountTotalFanins.exit, %Abc_NodeSetTravIdCurrent.exit, %Abc_NodeIsTravIdCurrent.exit, %bb.g, %Vec_PtrPush.exit
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %.val68 = load i32, ptr %i.bc, align 4, !tbaa !43
  %i.gv = sext i32 %.val68 to i64
  %i.gw = icmp slt i64 %indvars.iv.next107, %i.gv
  br i1 %i.gw, label %bb.g, label %.critedge4.loopexit, !llvm.loop !63

.critedge4.loopexit:                              ; preds = %bb.as
  %.val60.pre = load i32, ptr %i.a, align 4, !tbaa !17
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %bb.f, %bb.e
  %.val60 = phi i32 [ %.val60.pre, %.critedge4.loopexit ], [ %.val60117, %bb.e ], [ %.val60117, %bb.f ] ; 3 uses
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.gx = sext i32 %.val60 to i64
  %i.gy = icmp slt i64 %indvars.iv.next110, %i.gx
  br i1 %i.gy, label %bb.e, label %.critedge2.preheader, !llvm.loop !64

.critedge2:                                       ; preds = %.lr.ph104, %.critedge2
  %indvars.iv112 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next113, %.critedge2 ] ; 2 uses
  %.val62 = load ptr, ptr %0, align 8, !tbaa !15
  %.val63 = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.gz = getelementptr i8, ptr %.val62, i64 32
  %.val62.val = load ptr, ptr %i.gz, align 8, !tbaa !32
  %i.ha = getelementptr i8, ptr %.val62.val, i64 8
  %.val62.val.val = load ptr, ptr %i.ha, align 8, !tbaa !35
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.val63, i64 %indvars.iv112
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !36
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %.val62.val.val, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !37
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 20 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = and i32 %i.hh, -65
  store i32 %i.hi, ptr %i.hg, align 4
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %.val59 = load i32, ptr %i.a, align 4, !tbaa !17
  %i.hj = sext i32 %.val59 to i64
  %i.hk = icmp slt i64 %indvars.iv.next113, %i.hj
  br i1 %i.hk, label %.critedge2, label %.critedge6, !llvm.loop !65

.critedge6:                                       ; preds = %.critedge2, %Abc_NtkIncrementTravId.exit, %.critedge2.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkLutMerge(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #18
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %5, align 8, !tbaa !72
  %.neg130 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !73
  %.neg = sdiv i64 %i.e, -1000
  %.neg131 = add i64 %.neg, %.neg130
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg131, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val112 = load i32, ptr %i.h, align 4, !tbaa !45 ; 2 uses
  %i.i = icmp sgt i32 %.val112, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_Clock.exit
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val116.val = load ptr, ptr %i.j, align 8, !tbaa !35
  %wide.trip.count = zext nneg i32 %.val112 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.080138 = phi i32 [ 0, %.lr.ph ], [ %.181, %bb.f ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val116.val, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.l, i64 20
  %.val93 = load i32, ptr %i.n, align 4
  %i.o = and i32 %.val93, 15
  %.not136 = icmp eq i32 %i.o, 7
  br i1 %.not136, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.l, i64 28
  %.val102 = load i32, ptr %i.p, align 4, !tbaa !17
  %i.q = load i32, ptr %1, align 4, !tbaa !74
  %i.r = icmp sle i32 %.val102, %i.q
  %i.s = zext i1 %i.r to i32
  %i.t = add nsw i32 %.080138, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.181 = phi i32 [ %.080138, %bb.c ], [ %i.t, %bb.e ], [ %.080138, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !66

.critedge:                                        ; preds = %bb.f, %Abc_Clock.exit
  %.080.lcssa = phi i32 [ 0, %Abc_Clock.exit ], [ %.181, %bb.f ]
  %i.u = call ptr @Nwk_ManGraphAlloc(i32 noundef %.080.lcssa) #18 ; 10 uses
  %i.v = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !45
  store i32 1000, ptr %i.v, align 8, !tbaa !46
  %i.x = call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !35
  %i.z = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 0, ptr %i.aa, align 4, !tbaa !45
  store i32 1000, ptr %i.z, align 8, !tbaa !46
  %i.ab = call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !35
  %i.ad = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !45
  store i32 1000, ptr %i.ad, align 8, !tbaa !46
  %i.af = call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !35
  %i.ah = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !45
  store i32 1000, ptr %i.ah, align 8, !tbaa !46
  %i.aj = call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !35
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %.val111143 = load i32, ptr %i.am, align 4, !tbaa !45
  %i.an = icmp sgt i32 %.val111143, 0
  br i1 %i.an, label %.lr.ph146, label %.critedge2

.lr.ph146:                                        ; preds = %.critedge
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph146, %bb.q
  %.val107.pre162 = phi i32 [ 0, %.lr.ph146 ], [ %.val107.pre163, %bb.q ] ; 4 uses
  %indvars.iv159 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next160, %bb.q ] ; 2 uses
  %i.aq = phi ptr [ %i.al, %.lr.ph146 ], [ %i.bq, %bb.q ]
  %.0145 = phi i32 [ 0, %.lr.ph146 ], [ %.1, %bb.q ] ; 6 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val115.val = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val115.val, i64 %indvars.iv159
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37 ; 8 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr i8, ptr %i.at, i64 20
  %.val = load i32, ptr %i.av, align 4
  %i.aw = and i32 %.val, 15
  %.not135 = icmp eq i32 %i.aw, 7
  br i1 %.not135, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr i8, ptr %i.at, i64 28     ; 2 uses
  %.val101 = load i32, ptr %i.ax, align 4, !tbaa !17
  %i.ay = load i32, ptr %1, align 4, !tbaa !74
  %i.az = icmp sgt i32 %.val101, %i.ay
  br i1 %i.az, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @Abc_NtkCollectOverlapCands(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ad, ptr noundef nonnull %1)
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !75
  %.not90 = icmp eq i32 %i.ba, 0
  br i1 %.not90, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @Abc_NtkCollectNonOverlapCands(ptr noundef nonnull %i.at, ptr noundef nonnull %i.v, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ah, ptr noundef nonnull %1)
  %.val107.pre.pre = load i32, ptr %i.ai, align 4, !tbaa !45
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.val107.pre = phi i32 [ %.val107.pre.pre, %bb.k ], [ %.val107.pre162, %bb.j ] ; 7 uses
  %.val110 = load i32, ptr %i.ae, align 4, !tbaa !45 ; 5 uses
  %i.bb = icmp eq i32 %.val110, 0
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = icmp eq i32 %.val107.pre, 0
  br i1 %i.bc, label %bb.q, label %.critedge4.preheader

bb.n:                                             ; preds = %bb.l
  %6 = add i32 %.val110, %.0145                   ; 2 uses
  %i.bd = icmp sgt i32 %.val110, 0
  br i1 %i.bd, label %.lr.ph140, label %.critedge4.preheader

.lr.ph140:                                        ; preds = %bb.n
  %.val114 = load ptr, ptr %i.ag, align 8, !tbaa !35
  %i.be = getelementptr i8, ptr %i.at, i64 16
  %wide.trip.count152 = zext nneg i32 %.val110 to i64
  br label %bb.o

.critedge4.preheader:                             ; preds = %bb.o, %bb.m, %bb.n
  %.0145.pn = phi i32 [ %.0145, %bb.m ], [ %6, %bb.n ], [ %6, %bb.o ]
  %7 = add i32 %.0145.pn, %.val107.pre            ; 2 uses
  %i.bf = icmp sgt i32 %.val107.pre, 0
  br i1 %i.bf, label %.lr.ph142, label %.critedge6

.lr.ph142:                                        ; preds = %.critedge4.preheader
  %.val113 = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.bg = getelementptr i8, ptr %i.at, i64 16
  %wide.trip.count157 = zext nneg i32 %.val107.pre to i64
  br label %.critedge4

bb.o:                                             ; preds = %.lr.ph140, %bb.o
  %indvars.iv149 = phi i64 [ 0, %.lr.ph140 ], [ %indvars.iv.next150, %bb.o ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.val114, i64 %indvars.iv149
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !37
  %.val98 = load i32, ptr %i.be, align 8, !tbaa !16
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %.val97 = load i32, ptr %i.bj, align 8, !tbaa !16
  call void @Nwk_ManGraphHashEdge(ptr noundef %i.u, i32 noundef %.val98, i32 noundef %.val97) #18
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.critedge4.preheader, label %bb.o, !llvm.loop !67

.critedge4:                                       ; preds = %.lr.ph142, %.critedge4
  %indvars.iv154 = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next155, %.critedge4 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val113, i64 %indvars.iv154
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !37
  %.val96 = load i32, ptr %i.bg, align 8, !tbaa !16
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %.val95 = load i32, ptr %i.bm, align 8, !tbaa !16
  call void @Nwk_ManGraphHashEdge(ptr noundef %i.u, i32 noundef %.val96, i32 noundef %.val95) #18
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %.critedge6, label %.critedge4, !llvm.loop !68

.critedge6:                                       ; preds = %.critedge4, %.critedge4.preheader
  %i.bn = load i32, ptr %i.ap, align 4, !tbaa !76
  %.not91 = icmp eq i32 %i.bn, 0
  br i1 %.not91, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge6
  %i.bo = getelementptr i8, ptr %i.at, i64 16
  %.val94 = load i32, ptr %i.bo, align 8, !tbaa !16
  %.val100 = load i32, ptr %i.ax, align 4, !tbaa !17 ; 2 uses
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.val94, i32 noundef %.val100, i32 noundef %.val100, i32 noundef %.val110, i32 noundef %.val107.pre) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.g, %bb.p, %.critedge6, %bb.m, %bb.i
  %.val107.pre163 = phi i32 [ %.val107.pre162, %bb.g ], [ %.val107.pre162, %bb.i ], [ 0, %bb.m ], [ %.val107.pre, %bb.p ], [ %.val107.pre, %.critedge6 ], [ %.val107.pre162, %bb.h ]
  %.1 = phi i32 [ %.0145, %bb.g ], [ %.0145, %bb.i ], [ %.0145, %bb.m ], [ %7, %bb.p ], [ %7, %.critedge6 ], [ %.0145, %bb.h ] ; 2 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %.val111 = load i32, ptr %i.br, align 4, !tbaa !45
  %i.bs = sext i32 %.val111 to i64
  %i.bt = icmp slt i64 %indvars.iv.next160, %i.bs
  br i1 %i.bt, label %bb.g, label %.critedge2.loopexit, !llvm.loop !69

.critedge2.loopexit:                              ; preds = %bb.q
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !35
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %i.bu = phi ptr [ %i.x, %.critedge ], [ %.pre, %.critedge2.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.critedge ], [ %.1, %.critedge2.loopexit ]
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.r

bb.r:                                             ; preds = %.critedge2
  call void @free(ptr noundef nonnull %i.bu) #18
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge2, %bb.r
  call void @free(ptr noundef nonnull %i.v) #18
  %i.bv = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 2 uses
  %.not.i118 = icmp eq ptr %i.bv, null
  br i1 %.not.i118, label %Vec_PtrFree.exit119, label %bb.s

bb.s:                                             ; preds = %Vec_PtrFree.exit
  call void @free(ptr noundef nonnull %i.bv) #18
  br label %Vec_PtrFree.exit119

Vec_PtrFree.exit119:                              ; preds = %Vec_PtrFree.exit, %bb.s
  call void @free(ptr noundef nonnull %i.z) #18
  %i.bw = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 2 uses
  %.not.i120 = icmp eq ptr %i.bw, null
  br i1 %.not.i120, label %Vec_PtrFree.exit121, label %bb.t

bb.t:                                             ; preds = %Vec_PtrFree.exit119
  call void @free(ptr noundef nonnull %i.bw) #18
  br label %Vec_PtrFree.exit121

Vec_PtrFree.exit121:                              ; preds = %Vec_PtrFree.exit119, %bb.t
  call void @free(ptr noundef nonnull %i.ad) #18
  %i.bx = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 2 uses
  %.not.i122 = icmp eq ptr %i.bx, null
  br i1 %.not.i122, label %Vec_PtrFree.exit123, label %bb.u

bb.u:                                             ; preds = %Vec_PtrFree.exit121
  call void @free(ptr noundef nonnull %i.bx) #18
  br label %Vec_PtrFree.exit123

Vec_PtrFree.exit123:                              ; preds = %Vec_PtrFree.exit121, %bb.u
  call void @free(ptr noundef nonnull %i.ah) #18
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !77
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %Vec_PtrFree.exit123
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !83
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.cb, i32 noundef %.0.lcssa) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #18
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %Abc_Clock.exit125, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = load i64, ptr %4, align 8, !tbaa !72
  %i.cg = mul nsw i64 %i.cf, 1000000
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !73
  %i.cj = sdiv i64 %i.ci, 1000
  %i.ck = add nsw i64 %i.cj, %i.cg
  br label %Abc_Clock.exit125

Abc_Clock.exit125:                                ; preds = %bb.v, %bb.w
  %.0.i124 = phi i64 [ %i.ck, %bb.w ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.cl = add i64 %.0.i124, %.0.i.neg
  %i.cm = sitofp i64 %i.cl to double
  %i.cn = fdiv double %i.cm, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.cn)
  br label %bb.x

bb.x:                                             ; preds = %Abc_Clock.exit125, %Vec_PtrFree.exit123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.co = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #18
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %Abc_Clock.exit127, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = load i64, ptr %3, align 8, !tbaa !72
  %.neg133 = mul i64 %i.cq, -1000000
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !73
  %.neg132 = sdiv i64 %i.cs, -1000
  %.neg134 = add i64 %.neg132, %.neg133
  br label %Abc_Clock.exit127

Abc_Clock.exit127:                                ; preds = %bb.x, %bb.y
  %.0.i126.neg = phi i64 [ %.neg134, %bb.y ], [ 1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @Nwk_ManGraphSolve(ptr noundef %i.u) #18
  %i.ct = load i32, ptr %i.by, align 4, !tbaa !77
  %.not88 = icmp eq i32 %i.ct, 0
  br i1 %.not88, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %Abc_Clock.exit127
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !84
  %i.cw = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !85
  %i.cy = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !86
  %i.da = getelementptr i8, ptr %i.cz, i64 4
  %.val117 = load i32, ptr %i.da, align 4, !tbaa !39
  %i.db = sdiv i32 %.val117, 2
  %i.dc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.cv, i32 noundef %i.cx, i32 noundef %i.db) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #18
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %Abc_Clock.exit129, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load i64, ptr %2, align 8, !tbaa !72
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !73
  %i.dj = sdiv i64 %i.di, 1000
  %i.dk = add nsw i64 %i.dj, %i.dg
  br label %Abc_Clock.exit129

Abc_Clock.exit129:                                ; preds = %bb.z, %bb.aa
  %.0.i128 = phi i64 [ %i.dk, %bb.aa ], [ -1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.dl = add i64 %.0.i128, %.0.i126.neg
  %i.dm = sitofp i64 %i.dl to double
  %i.dn = fdiv double %i.dm, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.dn)
  call void @Nwk_ManGraphReportMemoryUsage(ptr noundef nonnull %i.u) #18
  br label %bb.ab

bb.ab:                                            ; preds = %Abc_Clock.exit129, %Abc_Clock.exit127
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !86
  store ptr null, ptr %i.do, align 8, !tbaa !86
  call void @Nwk_ManGraphFree(ptr noundef %i.u) #18
  ret ptr %i.dp
}

declare ptr @Nwk_ManGraphAlloc(i32 noundef) local_unnamed_addr #5

declare void @Nwk_ManGraphHashEdge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #7 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !36
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #18 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #18
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #18 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !91
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #19
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #18 ; 0 uses
  call void @free(ptr noundef %i.d) #18
  br label %bb.e

end_hunk_0
