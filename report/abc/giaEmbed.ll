inline.NumInlined: 455
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 32
begin_hunk_0_@Emb_ManPlacementRefine:bb.a
  %i.fv = getelementptr i8, ptr %i.fu, i64 2
  store i16 %i.fk, ptr %i.fv, align 2, !tbaa !191
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count208
  br i1 %exitcond209.not, label %._crit_edge.thread, label %bb.g, !llvm.loop !200

._crit_edge:                                      ; preds = %.critedge4
  %.not141 = icmp eq ptr %i.ey, null
  br i1 %.not141, label %bb.h, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  call void @free(ptr noundef nonnull %i.ey) #29
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %.not142 = icmp eq ptr %i.fa, null
  br i1 %.not142, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.fa) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pre = add nuw nsw i32 %.0118190, 1            ; 3 uses
  br i1 %.not143, label %._crit_edge211, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %.pre, double noundef %.0124.lcssa227) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.fx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #29
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %Abc_Clock.exit155, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fz = load i64, ptr %3, align 8, !tbaa !97
  %i.ga = mul nsw i64 %i.fz, 1000000
  %i.gb = load i64, ptr %i.t, align 8, !tbaa !99
  %i.gc = sdiv i64 %i.gb, 1000
  %i.gd = add nsw i64 %i.gc, %i.ga
  br label %Abc_Clock.exit155

Abc_Clock.exit155:                                ; preds = %bb.k, %bb.l
  %.0.i154 = phi i64 [ %i.gd, %bb.l ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ge = add i64 %.0.i154, %.0.i.neg
  %i.gf = sitofp i64 %i.ge to double
  %i.gg = fdiv double %i.gf, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, double noundef %i.gg)
  br label %._crit_edge211

._crit_edge211:                                   ; preds = %bb.j, %Abc_Clock.exit155
  %exitcond210.not = icmp eq i32 %.pre, %1
  br i1 %exitcond210.not, label %._crit_edge191, label %.preheader, !llvm.loop !201

._crit_edge191:                                   ; preds = %._crit_edge211, %bb.c
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge191
  call void @free(ptr noundef nonnull %i.m) #29
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge191, %bb.m
  %.not136 = icmp eq ptr %i.n, null
  br i1 %.not136, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.n) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.not137 = icmp eq ptr %i.o, null
  br i1 %.not137, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.o) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.not138 = icmp eq ptr %i.p, null
  br i1 %.not138, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.p) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %Abc_Clock.exit
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Emb_ManPrintSolutions(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph14, %._crit_edge
  %.0912 = phi i32 [ 0, %.lr.ph14 ], [ %i.p, %._crit_edge ] ; 2 uses
  %.val = load i32, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %.val10 = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.d = mul nsw i32 %.val, %.0912
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %.val10, i64 %i.e
  %i.g = icmp sgt i32 %.val, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load float, ptr %i.h, align 4, !tbaa !112
  %i.j = fmul float %i.i, 1.000000e+02
  %i.k = fptosi float %i.j to i32
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.k) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !56
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !202

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.p = add nuw nsw i32 %.0912, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %1
  br i1 %exitcond.not, label %._crit_edge15, label %bb.b, !llvm.loop !203

._crit_edge15:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Emb_ManDumpGnuplotPrepare(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(350500) ptr @calloc(i64 noundef 350500, i64 noundef 1) #30 ; 7 uses
  %i.b = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #31 ; 9 uses
  br label %bb.b

.preheader93:                                     ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.4, %bb.b ] ; 7 uses
  %i.h = mul nuw nsw i64 %indvars.iv, 701
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.i, ptr %i.j, align 8, !tbaa !204
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = mul nuw nsw i64 %indvars.iv.next, 701
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %i.l, ptr %i.m, align 8, !tbaa !204
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.n = mul nuw nsw i64 %indvars.iv.next.1, 701
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.1
  store ptr %i.o, ptr %i.p, align 8, !tbaa !204
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.q = mul nuw nsw i64 %indvars.iv.next.2, 701
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.2
  store ptr %i.r, ptr %i.s, align 8, !tbaa !204
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.t = mul nuw nsw i64 %indvars.iv.next.3, 701
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.3
  store ptr %i.u, ptr %i.v, align 8, !tbaa !204
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 500
  br i1 %exitcond.not.4, label %.preheader93, label %bb.b, !llvm.loop !205

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.15795 = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.d ] ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !50  ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = zext i32 %.15795 to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !83   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10
  %i.ab = shl i32 %i.aa, 1                        ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !191
  %i.af = zext i16 %i.ae to i64
  %i.ag = mul nuw nsw i64 %i.af, 700
  %i.ah = lshr i64 %i.ag, 16
  %i.ai = or disjoint i32 %i.ab, 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !191
  %i.am = zext i16 %i.al to i64
  %i.an = mul nuw nsw i64 %i.am, 500
  %i.ao = lshr i64 %i.an, 16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !204
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ah
  store i8 1, ptr %i.ar, align 1, !tbaa !10
  %.val64 = load i32, ptr %i.x, align 4
  %i.as = getelementptr i8, ptr %i.x, i64 4
  %.val65 = load i32, ptr %i.as, align 4, !tbaa !55
  %i.at = lshr i32 %.val64, 4
  %narrow.i = add i32 %.15795, 5
  %i.au = add i32 %narrow.i, %i.at
  %i.av = add i32 %i.au, %.val65                  ; 2 uses
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !49
  %i.ax = icmp slt i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.c, label %.critedge, !llvm.loop !206

.critedge:                                        ; preds = %bb.c, %bb.d, %.preheader93
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 10 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 5 uses
  store i32 0, ptr %i.az, align 4, !tbaa !42
  store i32 1000, ptr %i.ay, align 8, !tbaa !43
  %i.ba = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #31 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 5 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !44
  br label %.preheader

.preheader:                                       ; preds = %.critedge, %bb.af
  %i.bc = phi ptr [ %i.ba, %.critedge ], [ %i.eo, %bb.af ]
  %i.bd = phi i32 [ 1000, %.critedge ], [ %i.ep, %bb.af ]
  %i.be = phi ptr [ %i.ba, %.critedge ], [ %i.eq, %bb.af ]
  %i.bf = phi ptr [ %i.ba, %.critedge ], [ %i.er, %bb.af ]
  %i.bg = phi i32 [ 1000, %.critedge ], [ %i.es, %bb.af ]
  %i.bh = phi i32 [ 0, %.critedge ], [ %i.et, %bb.af ]
  %indvars.iv105 = phi i64 [ 0, %.critedge ], [ %indvars.iv.next106, %bb.af ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv105
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !204
  %i.bk = trunc nuw nsw i64 %indvars.iv105 to i32
  %i.bl = trunc nuw nsw i64 %indvars.iv105 to i32
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.ae
  %i.bm = phi ptr [ %i.bc, %.preheader ], [ %i.eo, %bb.ae ] ; 3 uses
  %i.bn = phi i32 [ %i.bd, %.preheader ], [ %i.ep, %bb.ae ]
  %i.bo = phi ptr [ %i.be, %.preheader ], [ %i.eq, %bb.ae ] ; 3 uses
  %i.bp = phi ptr [ %i.bf, %.preheader ], [ %i.er, %bb.ae ] ; 7 uses
  %i.bq = phi i32 [ %i.bg, %.preheader ], [ %i.es, %bb.ae ] ; 6 uses
  %i.br = phi i32 [ %i.bh, %.preheader ], [ %i.et, %bb.ae ] ; 7 uses
  %indvars.iv101 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next102, %bb.ae ] ; 4 uses
  %.098 = phi i32 [ 0, %.preheader ], [ %.2, %bb.ae ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv101 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !10  ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 0
  %i.bv = icmp ne i32 %.098, 0
  %or.cond = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bw = icmp eq i32 %i.br, %i.bq
  br i1 %i.bw, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.bx = icmp slt i32 %i.bq, 16
  br i1 %i.bx, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i = icmp eq ptr %i.bp, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bp, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.bz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.ca = icmp samesign ult i32 %i.bq, 1073741823
  %i.cb = shl nuw nsw i32 %i.bq, 1
  %spec.select.i = select i1 %i.ca, i32 %i.cb, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bq, %spec.select.i
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i = icmp eq ptr %i.bp, null
  %i.cc = zext nneg i32 %spec.select.i to i64
  %i.cd = shl nuw nsw i64 %i.cc, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = tail call ptr @realloc(ptr noundef nonnull %i.bp, i64 noundef %i.cd) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.cd) #31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %storemerge = phi ptr [ %i.bz, %bb.j ], [ %i.by, %bb.i ], [ %i.ce, %bb.m ], [ %i.cf, %bb.n ] ; 4 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ]
  store ptr %storemerge, ptr %i.bb, align 8, !tbaa !44
  store i32 %spec.select.sink.i, ptr %i.ay, align 8, !tbaa !43
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.k, %Vec_IntGrow.exit11.sink.split.i
  %i.cg = phi ptr [ %i.bm, %bb.f ], [ %i.bm, %bb.k ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ch = phi ptr [ %i.bo, %bb.f ], [ %i.bo, %bb.k ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ci = phi ptr [ %i.bp, %bb.f ], [ %i.bp, %bb.k ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.cj = add nsw i32 %i.br, 1                    ; 6 uses
  store i32 %i.cj, ptr %i.az, align 4, !tbaa !42
  %i.ck = sext i32 %i.br to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = trunc nuw nsw i64 %indvars.iv101 to i32
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !11
  %i.cn = load i32, ptr %i.ay, align 8, !tbaa !43 ; 2 uses
  %i.co = icmp eq i32 %i.cj, %i.cn
  br i1 %i.co, label %bb.o, label %Vec_IntPush.exit73

bb.o:                                             ; preds = %Vec_IntPush.exit
  %i.cp = icmp slt i32 %i.br, 15
  br i1 %i.cp, label %Vec_IntGrow.exit11.sink.split.i69, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = icmp samesign ult i32 %i.br, 1073741822
  %i.cr = shl nuw nsw i32 %i.cj, 1
  %spec.select.i66 = select i1 %i.cq, i32 %i.cr, i32 2147483647 ; 3 uses
  %.not.i9.i67 = icmp samesign ult i32 %i.cj, %spec.select.i66
  br i1 %.not.i9.i67, label %bb.q, label %Vec_IntPush.exit73

bb.q:                                             ; preds = %bb.p
  %i.cs = zext nneg i32 %spec.select.i66 to i64
  %i.ct = shl nuw nsw i64 %i.cs, 2
  br label %Vec_IntGrow.exit11.sink.split.i69

Vec_IntGrow.exit11.sink.split.i69:                ; preds = %bb.o, %bb.q
  %.sink = phi i64 [ %i.ct, %bb.q ], [ 64, %bb.o ]
  %spec.select.sink.i70 = phi i32 [ %spec.select.i66, %bb.q ], [ 16, %bb.o ] ; 2 uses
  %i.cu = tail call ptr @realloc(ptr noundef nonnull %i.ci, i64 noundef %.sink) #32 ; 3 uses
  store ptr %i.cu, ptr %i.bb, align 8, !tbaa !44
  store i32 %spec.select.sink.i70, ptr %i.ay, align 8, !tbaa !43
  br label %Vec_IntPush.exit73

Vec_IntPush.exit73:                               ; preds = %Vec_IntPush.exit, %bb.p, %Vec_IntGrow.exit11.sink.split.i69
  %i.cv = phi ptr [ %i.cg, %Vec_IntPush.exit ], [ %i.cg, %bb.p ], [ %i.cu, %Vec_IntGrow.exit11.sink.split.i69 ]
  %i.cw = phi i32 [ %i.cn, %Vec_IntPush.exit ], [ %i.cj, %bb.p ], [ %spec.select.sink.i70, %Vec_IntGrow.exit11.sink.split.i69 ] ; 2 uses
  %i.cx = phi ptr [ %i.ch, %Vec_IntPush.exit ], [ %i.ch, %bb.p ], [ %i.cu, %Vec_IntGrow.exit11.sink.split.i69 ] ; 3 uses
  %i.cy = add nsw i32 %i.br, 2                    ; 2 uses
  store i32 %i.cy, ptr %i.az, align 4, !tbaa !42
  %i.cz = sext i32 %i.cj to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cz
  store i32 %i.bk, ptr %i.da, align 4, !tbaa !11
  %.pre = load i8, ptr %i.bs, align 1, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %Vec_IntPush.exit73, %bb.e
  %i.db = phi ptr [ %i.bm, %bb.e ], [ %i.cv, %Vec_IntPush.exit73 ] ; 3 uses
  %i.dc = phi i32 [ %i.bn, %bb.e ], [ %i.cw, %Vec_IntPush.exit73 ] ; 6 uses
  %i.dd = phi i8 [ %i.bt, %bb.e ], [ %.pre, %Vec_IntPush.exit73 ]
  %i.de = phi ptr [ %i.bo, %bb.e ], [ %i.cx, %Vec_IntPush.exit73 ] ; 7 uses
  %i.df = phi ptr [ %i.bp, %bb.e ], [ %i.cx, %Vec_IntPush.exit73 ]
  %i.dg = phi i32 [ %i.bq, %bb.e ], [ %i.cw, %Vec_IntPush.exit73 ]
  %i.dh = phi i32 [ %i.br, %bb.e ], [ %i.cy, %Vec_IntPush.exit73 ] ; 7 uses
  %.1 = phi i32 [ %.098, %bb.e ], [ 1, %Vec_IntPush.exit73 ] ; 2 uses
  %i.di = icmp eq i8 %i.dd, 0
  %i.dj = icmp ne i32 %.1, 0
  %or.cond3 = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond3, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.dk = icmp eq i32 %i.dh, %i.dc
  br i1 %i.dk, label %bb.t, label %Vec_IntPush.exit81

bb.t:                                             ; preds = %bb.s
  %i.dl = icmp slt i32 %i.dc, 16
  br i1 %i.dl, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not9.i.i79 = icmp eq ptr %i.de, null
  br i1 %.not9.i.i79, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.de, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i77

bb.w:                                             ; preds = %bb.u
  %i.dn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i77

bb.x:                                             ; preds = %bb.t
  %i.do = icmp samesign ult i32 %i.dc, 1073741823
  %i.dp = shl nuw nsw i32 %i.dc, 1
  %spec.select.i74 = select i1 %i.do, i32 %i.dp, i32 2147483647 ; 4 uses
  %.not.i9.i75 = icmp samesign ult i32 %i.dc, %spec.select.i74
  br i1 %.not.i9.i75, label %bb.y, label %Vec_IntPush.exit81

bb.y:                                             ; preds = %bb.x
  %.not9.i10.i76 = icmp eq ptr %i.de, null
  %i.dq = zext nneg i32 %spec.select.i74 to i64
  %i.dr = shl nuw nsw i64 %i.dq, 2                ; 2 uses
  br i1 %.not9.i10.i76, label %bb.aa, label %bb.z

end_hunk_0
