Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/absGlaOld?download=true
inline.NumInlined: 785
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_Print:bb.a
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #29 ; 0 uses
  call void @free(ptr noundef %i.d) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !109, !noalias !111
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #29, !inline_history !114 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Gla_ManRefinement(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @Gia_GlaPrepareCexAndMap(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !72   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !116
  %i.m = tail call ptr @Rnm_ManRefine(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, i32 noundef %i.j, i32 noundef %i.l, i32 noundef 1) #29 ; 5 uses
  tail call void @Abc_CexFree(ptr noundef %i.e) #29
  %i.n = getelementptr i8, ptr %i.m, i64 4        ; 3 uses
  %.val26 = load i32, ptr %i.n, align 4, !tbaa !8
  %i.o = icmp eq i32 %.val26, 0
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.q) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.b, %bb.c
  tail call void @free(ptr noundef nonnull %i.m) #29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 384
  tail call void @Abc_CexFreeP(ptr noundef nonnull %i.t) #29
  %i.u = tail call ptr @Gla_ManDeriveCex(ptr noundef nonnull %0, ptr noundef %i.f)
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 384
  store ptr %i.u, ptr %i.w, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 2 uses
  %.not.i31 = icmp eq ptr %i.y, null
  br i1 %.not.i31, label %Vec_IntFree.exit32, label %bb.d

bb.d:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.y) #29
  br label %Vec_IntFree.exit32

Vec_IntFree.exit32:                               ; preds = %Vec_IntFree.exit, %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #29
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %.not.i33 = icmp eq ptr %i.aa, null
  br i1 %.not.i33, label %Vec_IntFree.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.aa) #29
  br label %Vec_IntFree.exit34

Vec_IntFree.exit34:                               ; preds = %bb.e, %bb.f
  tail call void @free(ptr noundef nonnull %i.f) #29
  %.val2535 = load i32, ptr %i.n, align 4, !tbaa !8 ; 3 uses
  %i.ab = icmp sgt i32 %.val2535, 0
  br i1 %i.ab, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntFree.exit34
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %.val28 = load ptr, ptr %i.ae, align 8, !tbaa !39
  %.not = icmp eq ptr %.val28, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = getelementptr i8, ptr %i.m, i64 8
  %.val27 = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val27, i64 %indvars.iv ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !24
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !24
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val25 = load i32, ptr %i.n, align 4, !tbaa !8 ; 2 uses
  %i.an = sext i32 %.val25 to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.g, label %.critedge, !llvm.loop !118

.critedge:                                        ; preds = %bb.g, %.lr.ph, %Vec_IntFree.exit34
  %.val25.lcssa = phi i32 [ %.val2535, %Vec_IntFree.exit34 ], [ %.val2535, %.lr.ph ], [ %.val25, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !119
  %i.ar = add nsw i32 %i.aq, %.val25.lcssa
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !119
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %Vec_IntFree.exit32
  %.023 = phi ptr [ null, %Vec_IntFree.exit32 ], [ %i.m, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %.023
}

declare ptr @Rnm_ManRefine(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Abc_CexFree(ptr noundef) local_unnamed_addr #2

declare void @Abc_CexFreeP(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef ptr @Gla_ManRefinement2(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @Gla_ManRefinement2.Sign, align 4, !tbaa !24
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @Gla_ManRefinement2.Sign, align 4, !tbaa !24
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !8
  store i32 1000, ptr %i.c, align 8, !tbaa !12
  %i.e = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #27
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !13
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !8
  store i32 1000, ptr %i.g, align 8, !tbaa !12
  %i.i = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #27
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !13
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !8
  store i32 1000, ptr %i.k, align 8, !tbaa !12
  %i.m = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #27
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !13
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  store i32 0, ptr %i.p, align 4, !tbaa !8
  store i32 1000, ptr %i.o, align 8, !tbaa !12
  %i.q = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #27
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !13
  tail call void @Gla_ManCollect(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = load i32, ptr %i.u, align 8, !tbaa !33   ; 2 uses
  %.not506 = icmp slt i32 %i.v, 0
  br i1 %.not506, label %._crit_edge, label %.lr.ph508

.lr.ph508:                                        ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.x = getelementptr i8, ptr %0, i64 144        ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph508, %.critedge6
  %indvars.iv528 = phi i64 [ 0, %.lr.ph508 ], [ %indvars.iv.next529.pre-phi, %.critedge6 ] ; 69 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.ac = getelementptr i8, ptr %i.ab, i64 32
  %.val237 = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
  %.val257 = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.ad = trunc nuw nsw i64 %indvars.iv528 to i32 ; 17 uses
  %i.ae = tail call fastcc ptr @Gla_ObjRef(ptr %.val237, ptr %.val257, ptr noundef %.val237, i32 noundef %i.ad)
  %i.af = load i32, ptr @Gla_ManRefinement2.Sign, align 4, !tbaa !24
  %i.ag = shl i32 %i.af, 19
  %i.ah = and i32 %i.ag, 2146959360
  store i32 %i.ah, ptr %i.ae, align 4
  %.val214 = load i32, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.ai = icmp sgt i32 %.val214, 0
  br i1 %i.ai, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.aj = add nuw nsw i64 %indvars.iv528, 1       ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 4 uses
  %wide.trip.count = zext nneg i32 %.val214 to i64
  %i.al = trunc nsw i64 %i.aj to i32              ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Gla_ObjSatValue.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Gla_ObjSatValue.exit ] ; 2 uses
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.an = getelementptr i8, ptr %i.am, i64 32
  %.val224 = load ptr, ptr %i.an, align 8, !tbaa !39 ; 3 uses
  %.not201 = icmp eq ptr %.val224, null
  br i1 %.not201, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val219 = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val219, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !24
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [12 x i8], ptr %.val224, i64 %i.aq
  %.val255 = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = shl nsw i64 %i.aq, 4
  %i.au = getelementptr inbounds i8, ptr %.val255, i64 %i.at ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8  ; 3 uses
  %i.ax = sext i32 %i.aw to i64                   ; 3 uses
  %.not.i.not.i.i = icmp slt i64 %indvars.iv528, %i.ax
  br i1 %.not.i.not.i.i, label %Gla_ObjRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load i32, ptr %i.au, align 8, !tbaa !12 ; 4 uses
  %i.az = shl nsw i32 %i.ay, 1                    ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %.not.i.i = icmp slt i64 %indvars.iv528, %i.ba
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not9.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = tail call ptr @realloc(ptr noundef nonnull %i.bc, i64 noundef %i.ak) #28
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.ak) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi ptr [ %i.bd, %bb.g ], [ %i.be, %bb.h ]
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.j:                                             ; preds = %bb.e
  %i.bg = sext i32 %i.ay to i64
  %.not.i.i.not.i.i = icmp slt i64 %indvars.iv528, %i.bg
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp slt i32 %i.ay, 1073741823
  %spec.select.i.i.i = select i1 %i.bh, i32 %i.az, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.ay, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.l, label %Vec_IntGrow.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.bj, null
  %i.bk = sext i32 %spec.select.i.i.i to i64
  %i.bl = shl nsw i64 %i.bk, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = tail call ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef %i.bl) #28
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bl) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = phi ptr [ %i.bm, %bb.m ], [ %i.bn, %bb.n ]
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.o, %bb.i
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.o ], [ %i.al, %bb.i ]
  store i32 %spec.select.sink.i.i.i, ptr %i.au, align 8, !tbaa !12
  %.pre.i.i = load i32, ptr %i.av, align 4, !tbaa !8 ; 2 uses
  %.pre576.a = sext i32 %.pre.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.k, %bb.j
  %.pre-phi577.a = phi i64 [ %.pre576.a, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.ax, %bb.k ], [ %i.ax, %bb.j ] ; 2 uses
  %i.bp = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.aw, %bb.k ], [ %i.aw, %bb.j ]
  %.not3.i.i = icmp sgt i64 %.pre-phi577.a, %indvars.iv528
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !13
  %i.bs = shl nsw i64 %.pre-phi577.a, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.br, i64 %i.bs
  %i.bt = sub i32 %i.ad, %i.bp
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.bw, i1 false), !tbaa !24
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.al, ptr %i.av, align 4, !tbaa !8
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !38
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 32
  %.val230.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %Gla_ObjRef.exit

Gla_ObjRef.exit:                                  ; preds = %bb.d, %._crit_edge.i.i.i
  %.val230 = phi ptr [ %.val224, %bb.d ], [ %.val230.pre, %._crit_edge.i.i.i ]
  %i.bx = getelementptr i8, ptr %i.au, i64 8
  %.val.i.i = load ptr, ptr %i.bx, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %indvars.iv528 ; 3 uses
  store i32 0, ptr %i.by, align 4, !tbaa !24
  %i.bz = ptrtoint ptr %.val230 to i64
  %i.ca = sub i64 %i.as, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 12
  %i.cc = load ptr, ptr %i.y, align 8, !tbaa !54
  %sext = shl i64 %i.cb, 32
  %i.cd = ashr exact i64 %sext, 32                ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !24 ; 2 uses
  %.not.i.i434 = icmp ne i32 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i434)
  %i.cg = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [40 x i8], ptr %i.cg, i64 %i.ch ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 28 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8  ; 3 uses
  %i.cm = sext i32 %i.cl to i64                   ; 3 uses
  %.not.i.not.i.i435 = icmp slt i64 %indvars.iv528, %i.cm
  br i1 %.not.i.not.i.i435, label %Gla_ManCheckVar.exit451, label %bb.p

bb.p:                                             ; preds = %Gla_ObjRef.exit
  %i.cn = load i32, ptr %i.cj, align 8, !tbaa !12 ; 4 uses
  %i.co = shl nsw i32 %i.cn, 1                    ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %.not.i4.i436 = icmp slt i64 %indvars.iv528, %i.cp
  br i1 %.not.i4.i436, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i438 = icmp eq ptr %i.cr, null
  br i1 %.not9.i.i.i.i438, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = tail call ptr @realloc(ptr noundef nonnull %i.cr, i64 noundef %i.ak) #28
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ct = tail call noalias ptr @malloc(i64 noundef %i.ak) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cu = phi ptr [ %i.cs, %bb.r ], [ %i.ct, %bb.s ]
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i439

bb.u:                                             ; preds = %bb.p
  %i.cv = sext i32 %i.cn to i64
  %.not.i.i.not.i.i437 = icmp slt i64 %indvars.iv528, %i.cv
  br i1 %.not.i.i.not.i.i437, label %Vec_IntGrow.exit.i.i.i442, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = icmp slt i32 %i.cn, 1073741823
  %spec.select.i.i.i448 = select i1 %i.cw, i32 %i.co, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i449 = icmp slt i32 %i.cn, %spec.select.i.i.i448
  br i1 %.not.i22.i.i.i449, label %bb.w, label %Vec_IntGrow.exit.i.i.i442

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !13 ; 2 uses
  %.not9.i23.i.i.i450 = icmp eq ptr %i.cy, null
  %i.cz = sext i32 %spec.select.i.i.i448 to i64
  %i.da = shl nsw i64 %i.cz, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i450, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = tail call ptr @realloc(ptr noundef nonnull %i.cy, i64 noundef %i.da) #28
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dc = tail call noalias ptr @malloc(i64 noundef %i.da) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dd = phi ptr [ %i.db, %bb.x ], [ %i.dc, %bb.y ]
  store ptr %i.dd, ptr %i.cx, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i439

Vec_IntGrow.exit.sink.split.i.i.i439:             ; preds = %bb.z, %bb.t
  %spec.select.sink.i.i.i440 = phi i32 [ %spec.select.i.i.i448, %bb.z ], [ %i.al, %bb.t ]
  store i32 %spec.select.sink.i.i.i440, ptr %i.cj, align 8, !tbaa !12
  %.pre.i.i441 = load i32, ptr %i.ck, align 4, !tbaa !8 ; 2 uses
  %.pre574.a = sext i32 %.pre.i.i441 to i64
  br label %Vec_IntGrow.exit.i.i.i442

Vec_IntGrow.exit.i.i.i442:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i439, %bb.v, %bb.u
  %.pre-phi575.a = phi i64 [ %.pre574.a, %Vec_IntGrow.exit.sink.split.i.i.i439 ], [ %i.cm, %bb.v ], [ %i.cm, %bb.u ] ; 2 uses
  %i.de = phi i32 [ %.pre.i.i441, %Vec_IntGrow.exit.sink.split.i.i.i439 ], [ %i.cl, %bb.v ], [ %i.cl, %bb.u ]
  %.not3.i.i443 = icmp sgt i64 %.pre-phi575.a, %indvars.iv528
  br i1 %.not3.i.i443, label %._crit_edge.i.i.i446, label %.lr.ph.i.i.i444

.lr.ph.i.i.i444:                                  ; preds = %Vec_IntGrow.exit.i.i.i442
  %i.df = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !13
  %i.dh = shl nsw i64 %.pre-phi575.a, 2
  %scevgep.i.i.i445 = getelementptr i8, ptr %i.dg, i64 %i.dh
  %i.di = sub i32 %i.ad, %i.de
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i445, i8 0, i64 %i.dl, i1 false), !tbaa !24
  br label %._crit_edge.i.i.i446

._crit_edge.i.i.i446:                             ; preds = %.lr.ph.i.i.i444, %Vec_IntGrow.exit.i.i.i442
  store i32 %i.al, ptr %i.ck, align 4, !tbaa !8
  br label %Gla_ManCheckVar.exit451

Gla_ManCheckVar.exit451:                          ; preds = %Gla_ObjRef.exit, %._crit_edge.i.i.i446
  %i.dm = getelementptr i8, ptr %i.ci, i64 32
  %.val.i.i447 = load ptr, ptr %i.dm, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i447, i64 %indvars.iv528
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !24
  %i.dp = icmp slt i32 %i.do, 1
  br i1 %i.dp, label %Gla_ObjSatValue.exit, label %bb.aa

bb.aa:                                            ; preds = %Gla_ManCheckVar.exit451
  %i.dq = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.dr = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.cd
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !24
  %i.du = tail call fastcc i32 @Gla_ManGetVar(ptr noundef nonnull %0, i32 noundef %i.dt, i32 noundef %i.ad)
  %i.dv = getelementptr i8, ptr %i.dq, i64 288
  %.val.i = load ptr, ptr %i.dv, align 8, !tbaa !56
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !24
  %i.dz = icmp eq i32 %i.dy, 1
  %i.ea = zext i1 %i.dz to i32
  br label %Gla_ObjSatValue.exit

Gla_ObjSatValue.exit:                             ; preds = %Gla_ManCheckVar.exit451, %bb.aa
  %i.eb = phi i32 [ %i.ea, %bb.aa ], [ 0, %Gla_ManCheckVar.exit451 ]
  %i.ec = load i32, ptr %i.by, align 4
  %i.ed = and i32 %i.ec, -2147483642
  %i.ee = or disjoint i32 %i.ed, %i.eb
  %1 = load i32, ptr @Gla_ManRefinement2.Sign, align 4, !tbaa !24
  %i.ef = shl i32 %1, 19
  %i.eg = and i32 %i.ef, 2146959360
  %i.eh = or disjoint i32 %i.eg, %i.ee
  store i32 %i.eh, ptr %i.by, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !120

.critedge:                                        ; preds = %bb.c, %Gla_ObjSatValue.exit, %bb.b
  %.val213 = load i32, ptr %i.l, align 4, !tbaa !8 ; 2 uses
  %i.ei = icmp sgt i32 %.val213, 0
  br i1 %i.ei, label %.lr.ph497, label %.critedge2

.lr.ph497:                                        ; preds = %.critedge
  %i.ej = add nuw nsw i64 %indvars.iv528, 1       ; 2 uses
  %i.ek = shl nuw nsw i64 %i.ej, 2                ; 4 uses
  %wide.trip.count518 = zext nneg i32 %.val213 to i64
  %i.el = trunc nsw i64 %i.ej to i32              ; 4 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph497, %Gla_ObjSatValue.exit285
  %indvars.iv515 = phi i64 [ 0, %.lr.ph497 ], [ %indvars.iv.next516, %Gla_ObjSatValue.exit285 ] ; 2 uses
  %i.em = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.en = getelementptr i8, ptr %i.em, i64 32
  %.val223 = load ptr, ptr %i.en, align 8, !tbaa !39 ; 3 uses
  %.not202 = icmp eq ptr %.val223, null
  br i1 %.not202, label %.critedge2, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val218 = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val218, i64 %indvars.iv515
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !24
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = getelementptr inbounds [12 x i8], ptr %.val223, i64 %i.eq
  %.val253 = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = shl nsw i64 %i.eq, 4
  %i.eu = getelementptr inbounds i8, ptr %.val253, i64 %i.et ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !8  ; 3 uses
  %i.ex = sext i32 %i.ew to i64                   ; 3 uses
  %.not.i.not.i.i266 = icmp slt i64 %indvars.iv528, %i.ex
  br i1 %.not.i.not.i.i266, label %Gla_ObjRef.exit282, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = load i32, ptr %i.eu, align 8, !tbaa !12 ; 4 uses
  %i.ez = shl nsw i32 %i.ey, 1                    ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %.not.i.i267 = icmp slt i64 %indvars.iv528, %i.fa
  br i1 %.not.i.i267, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i269 = icmp eq ptr %i.fc, null
  br i1 %.not9.i.i.i.i269, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = tail call ptr @realloc(ptr noundef nonnull %i.fc, i64 noundef %i.ek) #28
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fe = tail call noalias ptr @malloc(i64 noundef %i.ek) #27
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ff = phi ptr [ %i.fd, %bb.af ], [ %i.fe, %bb.ag ]
  store ptr %i.ff, ptr %i.fb, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i270

bb.ai:                                            ; preds = %bb.ad
  %i.fg = sext i32 %i.ey to i64
  %.not.i.i.not.i.i268 = icmp slt i64 %indvars.iv528, %i.fg
  br i1 %.not.i.i.not.i.i268, label %Vec_IntGrow.exit.i.i.i273, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fh = icmp slt i32 %i.ey, 1073741823
  %spec.select.i.i.i279 = select i1 %i.fh, i32 %i.ez, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i280 = icmp slt i32 %i.ey, %spec.select.i.i.i279
  br i1 %.not.i22.i.i.i280, label %bb.ak, label %Vec_IntGrow.exit.i.i.i273

bb.ak:                                            ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !13 ; 2 uses
  %.not9.i23.i.i.i281 = icmp eq ptr %i.fj, null
  %i.fk = sext i32 %spec.select.i.i.i279 to i64
  %i.fl = shl nsw i64 %i.fk, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i281, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = tail call ptr @realloc(ptr noundef nonnull %i.fj, i64 noundef %i.fl) #28
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fn = tail call noalias ptr @malloc(i64 noundef %i.fl) #27
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fo = phi ptr [ %i.fm, %bb.al ], [ %i.fn, %bb.am ]
  store ptr %i.fo, ptr %i.fi, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i270

Vec_IntGrow.exit.sink.split.i.i.i270:             ; preds = %bb.an, %bb.ah
  %spec.select.sink.i.i.i271 = phi i32 [ %spec.select.i.i.i279, %bb.an ], [ %i.el, %bb.ah ]
  store i32 %spec.select.sink.i.i.i271, ptr %i.eu, align 8, !tbaa !12
  %.pre.i.i272 = load i32, ptr %i.ev, align 4, !tbaa !8 ; 2 uses
  %.pre572.a = sext i32 %.pre.i.i272 to i64
  br label %Vec_IntGrow.exit.i.i.i273

Vec_IntGrow.exit.i.i.i273:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i270, %bb.aj, %bb.ai
  %.pre-phi573.a = phi i64 [ %.pre572.a, %Vec_IntGrow.exit.sink.split.i.i.i270 ], [ %i.ex, %bb.aj ], [ %i.ex, %bb.ai ] ; 2 uses
  %i.fp = phi i32 [ %.pre.i.i272, %Vec_IntGrow.exit.sink.split.i.i.i270 ], [ %i.ew, %bb.aj ], [ %i.ew, %bb.ai ]
  %.not3.i.i274 = icmp sgt i64 %.pre-phi573.a, %indvars.iv528
  br i1 %.not3.i.i274, label %._crit_edge.i.i.i277, label %.lr.ph.i.i.i275

.lr.ph.i.i.i275:                                  ; preds = %Vec_IntGrow.exit.i.i.i273
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !13
  %i.fs = shl nsw i64 %.pre-phi573.a, 2
  %scevgep.i.i.i276 = getelementptr i8, ptr %i.fr, i64 %i.fs
  %i.ft = sub i32 %i.ad, %i.fp
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fu, 2
  %i.fw = add nuw nsw i64 %i.fv, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i276, i8 0, i64 %i.fw, i1 false), !tbaa !24
  br label %._crit_edge.i.i.i277

._crit_edge.i.i.i277:                             ; preds = %.lr.ph.i.i.i275, %Vec_IntGrow.exit.i.i.i273
  store i32 %i.el, ptr %i.ev, align 4, !tbaa !8
  %.pre535.a = load ptr, ptr %i.w, align 8, !tbaa !38
  %.phi.trans.insert536 = getelementptr i8, ptr %.pre535.a, i64 32
  %.val229.pre = load ptr, ptr %.phi.trans.insert536, align 8, !tbaa !39
  br label %Gla_ObjRef.exit282

Gla_ObjRef.exit282:                               ; preds = %bb.ac, %._crit_edge.i.i.i277
  %.val229 = phi ptr [ %.val223, %bb.ac ], [ %.val229.pre, %._crit_edge.i.i.i277 ]
  %i.fx = getelementptr i8, ptr %i.eu, i64 8
  %.val.i.i278 = load ptr, ptr %i.fx, align 8, !tbaa !13
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i278, i64 %indvars.iv528 ; 3 uses
  store i32 0, ptr %i.fy, align 4, !tbaa !24
  %i.fz = ptrtoint ptr %.val229 to i64
  %i.ga = sub i64 %i.es, %i.fz
  %i.gb = sdiv exact i64 %i.ga, 12
  %i.gc = load ptr, ptr %i.y, align 8, !tbaa !54
  %sext489 = shl i64 %i.gb, 32
  %i.gd = ashr exact i64 %sext489, 32             ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !24 ; 2 uses
  %.not.i.i452 = icmp ne i32 %i.gf, 0
  tail call void @llvm.assume(i1 %.not.i.i452)
  %i.gg = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.gh = sext i32 %i.gf to i64
  %i.gi = getelementptr inbounds [40 x i8], ptr %i.gg, i64 %i.gh ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 28 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !8  ; 3 uses
  %i.gm = sext i32 %i.gl to i64                   ; 3 uses
  %.not.i.not.i.i453 = icmp slt i64 %indvars.iv528, %i.gm
  br i1 %.not.i.not.i.i453, label %Gla_ManCheckVar.exit469, label %bb.ao

bb.ao:                                            ; preds = %Gla_ObjRef.exit282
  %i.gn = load i32, ptr %i.gj, align 8, !tbaa !12 ; 4 uses
  %i.go = shl nsw i32 %i.gn, 1                    ; 2 uses
  %i.gp = sext i32 %i.go to i64
  %.not.i4.i454 = icmp slt i64 %indvars.iv528, %i.gp
  br i1 %.not.i4.i454, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 32 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i456 = icmp eq ptr %i.gr, null
  br i1 %.not9.i.i.i.i456, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gs = tail call ptr @realloc(ptr noundef nonnull %i.gr, i64 noundef %i.ek) #28
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gt = tail call noalias ptr @malloc(i64 noundef %i.ek) #27
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gu = phi ptr [ %i.gs, %bb.aq ], [ %i.gt, %bb.ar ]
  store ptr %i.gu, ptr %i.gq, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i457

bb.at:                                            ; preds = %bb.ao
  %i.gv = sext i32 %i.gn to i64
  %.not.i.i.not.i.i455 = icmp slt i64 %indvars.iv528, %i.gv
  br i1 %.not.i.i.not.i.i455, label %Vec_IntGrow.exit.i.i.i460, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gw = icmp slt i32 %i.gn, 1073741823
  %spec.select.i.i.i466 = select i1 %i.gw, i32 %i.go, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i467 = icmp slt i32 %i.gn, %spec.select.i.i.i466
  br i1 %.not.i22.i.i.i467, label %bb.av, label %Vec_IntGrow.exit.i.i.i460

bb.av:                                            ; preds = %bb.au
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gi, i64 32 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !13 ; 2 uses
  %.not9.i23.i.i.i468 = icmp eq ptr %i.gy, null
  %i.gz = sext i32 %spec.select.i.i.i466 to i64
  %i.ha = shl nsw i64 %i.gz, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i468, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hb = tail call ptr @realloc(ptr noundef nonnull %i.gy, i64 noundef %i.ha) #28
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.hc = tail call noalias ptr @malloc(i64 noundef %i.ha) #27
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hd = phi ptr [ %i.hb, %bb.aw ], [ %i.hc, %bb.ax ]
  store ptr %i.hd, ptr %i.gx, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i457

Vec_IntGrow.exit.sink.split.i.i.i457:             ; preds = %bb.ay, %bb.as
  %spec.select.sink.i.i.i458 = phi i32 [ %spec.select.i.i.i466, %bb.ay ], [ %i.el, %bb.as ]
  store i32 %spec.select.sink.i.i.i458, ptr %i.gj, align 8, !tbaa !12
  %.pre.i.i459 = load i32, ptr %i.gk, align 4, !tbaa !8 ; 2 uses
  %.pre570.a = sext i32 %.pre.i.i459 to i64
  br label %Vec_IntGrow.exit.i.i.i460

Vec_IntGrow.exit.i.i.i460:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i457, %bb.au, %bb.at
  %.pre-phi571.a = phi i64 [ %.pre570.a, %Vec_IntGrow.exit.sink.split.i.i.i457 ], [ %i.gm, %bb.au ], [ %i.gm, %bb.at ] ; 2 uses
  %i.he = phi i32 [ %.pre.i.i459, %Vec_IntGrow.exit.sink.split.i.i.i457 ], [ %i.gl, %bb.au ], [ %i.gl, %bb.at ]
  %.not3.i.i461 = icmp sgt i64 %.pre-phi571.a, %indvars.iv528
  br i1 %.not3.i.i461, label %._crit_edge.i.i.i464, label %.lr.ph.i.i.i462

.lr.ph.i.i.i462:                                  ; preds = %Vec_IntGrow.exit.i.i.i460
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !13
  %i.hh = shl nsw i64 %.pre-phi571.a, 2
  %scevgep.i.i.i463 = getelementptr i8, ptr %i.hg, i64 %i.hh
  %i.hi = sub i32 %i.ad, %i.he
  %i.hj = zext i32 %i.hi to i64
  %i.hk = shl nuw nsw i64 %i.hj, 2
  %i.hl = add nuw nsw i64 %i.hk, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i463, i8 0, i64 %i.hl, i1 false), !tbaa !24
  br label %._crit_edge.i.i.i464

._crit_edge.i.i.i464:                             ; preds = %.lr.ph.i.i.i462, %Vec_IntGrow.exit.i.i.i460
  store i32 %i.el, ptr %i.gk, align 4, !tbaa !8
  br label %Gla_ManCheckVar.exit469

Gla_ManCheckVar.exit469:                          ; preds = %Gla_ObjRef.exit282, %._crit_edge.i.i.i464
  %i.hm = getelementptr i8, ptr %i.gi, i64 32
  %.val.i.i465 = load ptr, ptr %i.hm, align 8, !tbaa !13
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i465, i64 %indvars.iv528
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !24
  %i.hp = icmp slt i32 %i.ho, 1
  br i1 %i.hp, label %Gla_ObjSatValue.exit285, label %bb.az

bb.az:                                            ; preds = %Gla_ManCheckVar.exit469
  %i.hq = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.hr = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.gd
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !24
  %i.hu = tail call fastcc i32 @Gla_ManGetVar(ptr noundef nonnull %0, i32 noundef %i.ht, i32 noundef %i.ad)
  %i.hv = getelementptr i8, ptr %i.hq, i64 288
  %.val.i284 = load ptr, ptr %i.hv, align 8, !tbaa !56
  %i.hw = sext i32 %i.hu to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %.val.i284, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !24
  %i.hz = icmp eq i32 %i.hy, 1
  %i.ia = zext i1 %i.hz to i32
  br label %Gla_ObjSatValue.exit285

Gla_ObjSatValue.exit285:                          ; preds = %Gla_ManCheckVar.exit469, %bb.az
  %i.ib = phi i32 [ %i.ia, %bb.az ], [ 0, %Gla_ManCheckVar.exit469 ]
  %i.ic = load i32, ptr %i.fy, align 4
  %i.id = and i32 %i.ic, -2147483646
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1 ; 3 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv.next516 to i32
  %i.if = shl i32 %i.ie, 3
  %i.ig = and i32 %i.if, 524280
  %i.ih = or disjoint i32 %i.ig, %i.ib
  %i.ii = or disjoint i32 %i.ih, %i.id
  %2 = load i32, ptr @Gla_ManRefinement2.Sign, align 4, !tbaa !24
  %i.ij = shl i32 %2, 19
  %i.ik = and i32 %i.ij, 2146959360
  %i.il = or disjoint i32 %i.ii, %i.ik
  %i.im = or disjoint i32 %i.il, 4
  store i32 %i.im, ptr %i.fy, align 4
  %exitcond519.not = icmp eq i64 %indvars.iv.next516, %wide.trip.count518
  br i1 %exitcond519.not, label %.critedge2, label %bb.ab, !llvm.loop !121

.critedge2:                                       ; preds = %bb.ab, %Gla_ObjSatValue.exit285, %.critedge
  %.val212499 = load i32, ptr %i.p, align 4, !tbaa !8
  %i.in = icmp sgt i32 %.val212499, 0
  br i1 %i.in, label %.lr.ph501, label %.critedge4

.lr.ph501:                                        ; preds = %.critedge2
  %i.io = add nuw nsw i64 %indvars.iv528, 1       ; 2 uses
  %i.ip = shl nuw nsw i64 %i.io, 2                ; 10 uses
  %i.iq = icmp eq i64 %indvars.iv528, 0
  %i.ir = add nsw i64 %indvars.iv528, -1          ; 2 uses
  %i.is = shl nuw nsw i64 %indvars.iv528, 2       ; 2 uses
  %i.it = trunc nsw i64 %i.io to i32              ; 10 uses
  %i.iu = trunc nsw i64 %i.ir to i32
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph501, %bb.ef
  %indvars.iv520 = phi i64 [ 0, %.lr.ph501 ], [ %indvars.iv.next521, %bb.ef ] ; 2 uses
  %i.iv = load ptr, ptr %i.w, align 8, !tbaa !38  ; 2 uses
  %.val217 = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.val217, i64 %indvars.iv520
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !24
  %i.iy = getelementptr i8, ptr %i.iv, i64 32
  %.val222 = load ptr, ptr %i.iy, align 8, !tbaa !39 ; 2 uses
  %i.iz = sext i32 %i.ix to i64                   ; 2 uses
  %i.ja = getelementptr inbounds [12 x i8], ptr %.val222, i64 %i.iz ; 8 uses
  %.not203 = icmp eq ptr %.val222, null
  br i1 %.not203, label %.critedge4, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.val251 = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.jb = ptrtoint ptr %i.ja to i64               ; 2 uses
  %i.jc = shl nsw i64 %i.iz, 4
  %i.jd = getelementptr inbounds i8, ptr %.val251, i64 %i.jc ; 7 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 3 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !8  ; 3 uses
  %i.jg = sext i32 %i.jf to i64                   ; 3 uses
  %.not.i.not.i.i287 = icmp slt i64 %indvars.iv528, %i.jg
  br i1 %.not.i.not.i.i287, label %Gla_ObjRef.exit303, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jh = load i32, ptr %i.jd, align 8, !tbaa !12 ; 4 uses
  %i.ji = shl nsw i32 %i.jh, 1                    ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %.not.i.i288 = icmp slt i64 %indvars.iv528, %i.jj
  br i1 %.not.i.i288, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i290 = icmp eq ptr %i.jl, null
  br i1 %.not9.i.i.i.i290, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jm = tail call ptr @realloc(ptr noundef nonnull %i.jl, i64 noundef %i.ip) #28
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.jn = tail call noalias ptr @malloc(i64 noundef %i.ip) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.jo = phi ptr [ %i.jm, %bb.be ], [ %i.jn, %bb.bf ]
  store ptr %i.jo, ptr %i.jk, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i291

bb.bh:                                            ; preds = %bb.bc
  %i.jp = sext i32 %i.jh to i64
  %.not.i.i.not.i.i289 = icmp slt i64 %indvars.iv528, %i.jp
  br i1 %.not.i.i.not.i.i289, label %Vec_IntGrow.exit.i.i.i294, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jq = icmp slt i32 %i.jh, 1073741823
  %spec.select.i.i.i300 = select i1 %i.jq, i32 %i.ji, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i301 = icmp slt i32 %i.jh, %spec.select.i.i.i300
  br i1 %.not.i22.i.i.i301, label %bb.bj, label %Vec_IntGrow.exit.i.i.i294

bb.bj:                                            ; preds = %bb.bi
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !13 ; 2 uses
  %.not9.i23.i.i.i302 = icmp eq ptr %i.js, null
  %i.jt = sext i32 %spec.select.i.i.i300 to i64
  %i.ju = shl nsw i64 %i.jt, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i302, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jv = tail call ptr @realloc(ptr noundef nonnull %i.js, i64 noundef %i.ju) #28
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.jw = tail call noalias ptr @malloc(i64 noundef %i.ju) #27
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.jx = phi ptr [ %i.jv, %bb.bk ], [ %i.jw, %bb.bl ]
  store ptr %i.jx, ptr %i.jr, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i291

Vec_IntGrow.exit.sink.split.i.i.i291:             ; preds = %bb.bm, %bb.bg
  %spec.select.sink.i.i.i292 = phi i32 [ %spec.select.i.i.i300, %bb.bm ], [ %i.it, %bb.bg ]
  store i32 %spec.select.sink.i.i.i292, ptr %i.jd, align 8, !tbaa !12
  %.pre.i.i293 = load i32, ptr %i.je, align 4, !tbaa !8 ; 2 uses
  %.pre568.a = sext i32 %.pre.i.i293 to i64
  br label %Vec_IntGrow.exit.i.i.i294

Vec_IntGrow.exit.i.i.i294:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i291, %bb.bi, %bb.bh
  %.pre-phi569.a = phi i64 [ %.pre568.a, %Vec_IntGrow.exit.sink.split.i.i.i291 ], [ %i.jg, %bb.bi ], [ %i.jg, %bb.bh ] ; 2 uses
  %i.jy = phi i32 [ %.pre.i.i293, %Vec_IntGrow.exit.sink.split.i.i.i291 ], [ %i.jf, %bb.bi ], [ %i.jf, %bb.bh ]
  %.not3.i.i295 = icmp sgt i64 %.pre-phi569.a, %indvars.iv528
  br i1 %.not3.i.i295, label %._crit_edge.i.i.i298, label %.lr.ph.i.i.i296

.lr.ph.i.i.i296:                                  ; preds = %Vec_IntGrow.exit.i.i.i294
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !13
  %i.kb = shl nsw i64 %.pre-phi569.a, 2
  %scevgep.i.i.i297 = getelementptr i8, ptr %i.ka, i64 %i.kb
  %i.kc = sub i32 %i.ad, %i.jy
  %i.kd = zext i32 %i.kc to i64
  %i.ke = shl nuw nsw i64 %i.kd, 2
  %i.kf = add nuw nsw i64 %i.ke, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i297, i8 0, i64 %i.kf, i1 false), !tbaa !24
  br label %._crit_edge.i.i.i298

._crit_edge.i.i.i298:                             ; preds = %.lr.ph.i.i.i296, %Vec_IntGrow.exit.i.i.i294
  store i32 %i.it, ptr %i.je, align 4, !tbaa !8
  %.pre538 = load ptr, ptr %i.w, align 8, !tbaa !38
  br label %Gla_ObjRef.exit303

Gla_ObjRef.exit303:                               ; preds = %bb.bb, %._crit_edge.i.i.i298
  %i.kg = phi ptr [ %i.iv, %bb.bb ], [ %.pre538, %._crit_edge.i.i.i298 ] ; 4 uses
  %i.kh = getelementptr i8, ptr %i.jd, i64 8
  %.val.i.i299 = load ptr, ptr %i.kh, align 8, !tbaa !13
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i299, i64 %indvars.iv528 ; 8 uses
  store i32 0, ptr %i.ki, align 4, !tbaa !24
  %.val264 = load i64, ptr %i.ja, align 4         ; 4 uses
  %i.kj = and i64 %.val264, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.kj, 2684354559
  br i1 %narrow.i.not.i, label %Gia_ObjIsRo.exit, label %Gia_ObjIsRo.exit.thread

Gia_ObjIsRo.exit:                                 ; preds = %Gla_ObjRef.exit303
  %i.kk = lshr i64 %.val264, 32
  %i.kl = trunc nuw i64 %i.kk to i32
  %i.km = and i32 %i.kl, 536870911                ; 2 uses
  %i.kn = getelementptr i8, ptr %i.kg, i64 16
  %.val.i304 = load i32, ptr %i.kn, align 8, !tbaa !74
  %i.ko = getelementptr i8, ptr %i.kg, i64 64
  %.val3.i = load ptr, ptr %i.ko, align 8, !tbaa !75
  %i.kp = getelementptr i8, ptr %.val3.i, i64 4
  %.val3.val.i = load i32, ptr %i.kp, align 4, !tbaa !8 ; 2 uses
  %i.kq = sub nsw i32 %.val3.val.i, %.val.i304
  %.not490 = icmp slt i32 %i.km, %i.kq
  br i1 %.not490, label %Gia_ObjIsRo.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %Gia_ObjIsRo.exit
  br i1 %i.iq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %3 = load i32, ptr @Gla_ManRefinement2.Sign, align 4, !tbaa !24
  %i.kr = shl i32 %3, 19
  %i.ks = and i32 %i.kr, 2146959360
  br label %bb.ef

bb.bp:                                            ; preds = %bb.bn
  %i.kt = getelementptr i8, ptr %i.kg, i64 72
  %.val6.i = load ptr, ptr %i.kt, align 8, !tbaa !83 ; 2 uses
  %i.ku = getelementptr i8, ptr %.val6.i, i64 4
  %.val6.val.i = load i32, ptr %i.ku, align 4, !tbaa !8
  %i.kv = add i32 %.val6.val.i, %i.km
  %i.kw = sub i32 %i.kv, %.val3.val.i
  %i.kx = getelementptr i8, ptr %.val6.i, i64 8
  %.val5.val.i = load ptr, ptr %i.kx, align 8, !tbaa !13
  %i.ky = sext i32 %i.kw to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %.val5.val.i, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !24
  %i.lb = zext i32 %i.la to i64
  %.val249 = load ptr, ptr %i.x, align 8, !tbaa !91
  %sext.i305 = shl nuw i64 %i.lb, 32
  %i.lc = ashr exact i64 %sext.i305, 28
  %i.ld = getelementptr inbounds i8, ptr %.val249, i64 %i.lc ; 7 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4 ; 3 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !8  ; 3 uses
  %i.lg = sext i32 %i.lf to i64                   ; 3 uses
  %.not.i.not.i.i306.not = icmp sgt i64 %indvars.iv528, %i.lg
  br i1 %.not.i.not.i.i306.not, label %bb.bq, label %Gla_ObjRef.exit322

bb.bq:                                            ; preds = %bb.bp
  %i.lh = load i32, ptr %i.ld, align 8, !tbaa !12 ; 4 uses
  %i.li = shl nsw i32 %i.lh, 1                    ; 2 uses
  %i.lj = sext i32 %i.li to i64
  %.not.i.i307.not = icmp sgt i64 %indvars.iv528, %i.lj
  br i1 %.not.i.i307.not, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i309 = icmp eq ptr %i.ll, null
  br i1 %.not9.i.i.i.i309, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lm = tail call ptr @realloc(ptr noundef nonnull %i.ll, i64 noundef %i.is) #28
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.ln = tail call noalias ptr @malloc(i64 noundef %i.is) #27
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.lo = phi ptr [ %i.lm, %bb.bs ], [ %i.ln, %bb.bt ]
  store ptr %i.lo, ptr %i.lk, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i310

bb.bv:                                            ; preds = %bb.bq
  %i.lp = sext i32 %i.lh to i64
  %.not.i.i.not.i.i308.not = icmp sgt i64 %indvars.iv528, %i.lp
  br i1 %.not.i.i.not.i.i308.not, label %bb.bw, label %Vec_IntGrow.exit.i.i.i313

bb.bw:                                            ; preds = %bb.bv
  %i.lq = icmp slt i32 %i.lh, 1073741823
  %spec.select.i.i.i319 = select i1 %i.lq, i32 %i.li, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i320 = icmp slt i32 %i.lh, %spec.select.i.i.i319
  br i1 %.not.i22.i.i.i320, label %bb.bx, label %Vec_IntGrow.exit.i.i.i313

bb.bx:                                            ; preds = %bb.bw
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !13 ; 2 uses
  %.not9.i23.i.i.i321 = icmp eq ptr %i.ls, null
  %i.lt = sext i32 %spec.select.i.i.i319 to i64
  %i.lu = shl nsw i64 %i.lt, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i321, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lv = tail call ptr @realloc(ptr noundef nonnull %i.ls, i64 noundef %i.lu) #28
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.lw = tail call noalias ptr @malloc(i64 noundef %i.lu) #27
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.lx = phi ptr [ %i.lv, %bb.by ], [ %i.lw, %bb.bz ]
  store ptr %i.lx, ptr %i.lr, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i310

Vec_IntGrow.exit.sink.split.i.i.i310:             ; preds = %bb.ca, %bb.bu
  %spec.select.sink.i.i.i311 = phi i32 [ %spec.select.i.i.i319, %bb.ca ], [ %i.ad, %bb.bu ]
  store i32 %spec.select.sink.i.i.i311, ptr %i.ld, align 8, !tbaa !12
  %.pre.i.i312 = load i32, ptr %i.le, align 4, !tbaa !8 ; 2 uses
  %.pre566.a = sext i32 %.pre.i.i312 to i64
  br label %Vec_IntGrow.exit.i.i.i313

Vec_IntGrow.exit.i.i.i313:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i310, %bb.bw, %bb.bv
  %.pre-phi567.a = phi i64 [ %.pre566.a, %Vec_IntGrow.exit.sink.split.i.i.i310 ], [ %i.lg, %bb.bw ], [ %i.lg, %bb.bv ] ; 2 uses
  %i.ly = phi i32 [ %.pre.i.i312, %Vec_IntGrow.exit.sink.split.i.i.i310 ], [ %i.lf, %bb.bw ], [ %i.lf, %bb.bv ]
  %.not3.i.i314.not = icmp slt i64 %.pre-phi567.a, %indvars.iv528
  br i1 %.not3.i.i314.not, label %.lr.ph.i.i.i315, label %._crit_edge.i.i.i317

.lr.ph.i.i.i315:                                  ; preds = %Vec_IntGrow.exit.i.i.i313
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !13
  %i.mb = shl nsw i64 %.pre-phi567.a, 2
  %scevgep.i.i.i316 = getelementptr i8, ptr %i.ma, i64 %i.mb
  %i.mc = sub i32 %i.iu, %i.ly
  %i.md = zext i32 %i.mc to i64
  %i.me = shl nuw nsw i64 %i.md, 2
  %i.mf = add nuw nsw i64 %i.me, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i316, i8 0, i64 %i.mf, i1 false), !tbaa !24
  br label %._crit_edge.i.i.i317

._crit_edge.i.i.i317:                             ; preds = %.lr.ph.i.i.i315, %Vec_IntGrow.exit.i.i.i313
  store i32 %i.ad, ptr %i.le, align 4, !tbaa !8
  %.pre539.a = load i32, ptr %i.ki, align 4
  %i.mg = and i32 %.pre539.a, -2
  br label %Gla_ObjRef.exit322

Gla_ObjRef.exit322:                               ; preds = %bb.bp, %._crit_edge.i.i.i317
  %i.mh = phi i32 [ 0, %bb.bp ], [ %i.mg, %._crit_edge.i.i.i317 ]
  %i.mi = getelementptr i8, ptr %i.ld, i64 8
  %.val.i.i318 = load ptr, ptr %i.mi, align 8, !tbaa !13
  %i.mj = getelementptr inbounds [4 x i8], ptr %.val.i.i318, i64 %i.ir ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4
  %i.ml = and i32 %i.mk, 1
  %i.mm = or disjoint i32 %i.mh, %i.ml            ; 2 uses
  store i32 %i.mm, ptr %i.ki, align 4
  %i.mn = load i32, ptr %i.mj, align 4
  %i.mo = and i32 %i.mn, 524280
  %i.mp = and i32 %i.mm, -2147483641
  %i.mq = or disjoint i32 %i.mp, %i.mo
  %4 = load i32, ptr @Gla_ManRefinement2.Sign, align 4, !tbaa !24
  %i.mr = shl i32 %4, 19
  %i.ms = and i32 %i.mr, 2146959360
  %i.mt = or disjoint i32 %i.ms, %i.mq
  br label %bb.ef

Gia_ObjIsRo.exit.thread:                          ; preds = %Gla_ObjRef.exit303, %Gia_ObjIsRo.exit
  %i.mu = and i64 %.val264, 536870911
  %i.mv = sub nsw i64 0, %i.mu
  %i.mw = getelementptr inbounds [12 x i8], ptr %i.ja, i64 %i.mv
  %.val247 = load ptr, ptr %i.x, align 8, !tbaa !91 ; 2 uses
  %i.mx = getelementptr i8, ptr %i.kg, i64 32
  %.val246.val = load ptr, ptr %i.mx, align 8, !tbaa !39
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %.val246.val to i64        ; 2 uses
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = sdiv exact i64 %i.na, 12
  %sext.i323 = shl i64 %i.nb, 32
  %i.nc = ashr exact i64 %sext.i323, 28
  %i.nd = getelementptr inbounds i8, ptr %.val247, i64 %i.nc ; 7 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4 ; 3 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !8  ; 3 uses
  %i.ng = sext i32 %i.nf to i64                   ; 3 uses
  %.not.i.not.i.i324 = icmp slt i64 %indvars.iv528, %i.ng
  br i1 %.not.i.not.i.i324, label %Gla_ObjRef.exit340, label %bb.cb

bb.cb:                                            ; preds = %Gia_ObjIsRo.exit.thread
  %i.nh = load i32, ptr %i.nd, align 8, !tbaa !12 ; 4 uses
  %i.ni = shl nsw i32 %i.nh, 1                    ; 2 uses
  %i.nj = sext i32 %i.ni to i64
  %.not.i.i325 = icmp slt i64 %indvars.iv528, %i.nj
  br i1 %.not.i.i325, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i327 = icmp eq ptr %i.nl, null
  br i1 %.not9.i.i.i.i327, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nm = tail call ptr @realloc(ptr noundef nonnull %i.nl, i64 noundef %i.ip) #28
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.nn = tail call noalias ptr @malloc(i64 noundef %i.ip) #27
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.no = phi ptr [ %i.nm, %bb.cd ], [ %i.nn, %bb.ce ]
  store ptr %i.no, ptr %i.nk, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i328

bb.cg:                                            ; preds = %bb.cb
  %i.np = sext i32 %i.nh to i64
  %.not.i.i.not.i.i326 = icmp slt i64 %indvars.iv528, %i.np
  br i1 %.not.i.i.not.i.i326, label %Vec_IntGrow.exit.i.i.i331, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nq = icmp slt i32 %i.nh, 1073741823
  %spec.select.i.i.i337 = select i1 %i.nq, i32 %i.ni, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i338 = icmp slt i32 %i.nh, %spec.select.i.i.i337
  br i1 %.not.i22.i.i.i338, label %bb.ci, label %Vec_IntGrow.exit.i.i.i331

bb.ci:                                            ; preds = %bb.ch
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !13 ; 2 uses
  %.not9.i23.i.i.i339 = icmp eq ptr %i.ns, null
  %i.nt = sext i32 %spec.select.i.i.i337 to i64
  %i.nu = shl nsw i64 %i.nt, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i339, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nv = tail call ptr @realloc(ptr noundef nonnull %i.ns, i64 noundef %i.nu) #28
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.nw = tail call noalias ptr @malloc(i64 noundef %i.nu) #27
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.nx = phi ptr [ %i.nv, %bb.cj ], [ %i.nw, %bb.ck ]
  store ptr %i.nx, ptr %i.nr, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i328

Vec_IntGrow.exit.sink.split.i.i.i328:             ; preds = %bb.cl, %bb.cf
  %spec.select.sink.i.i.i329 = phi i32 [ %spec.select.i.i.i337, %bb.cl ], [ %i.it, %bb.cf ]
  store i32 %spec.select.sink.i.i.i329, ptr %i.nd, align 8, !tbaa !12
  %.pre.i.i330 = load i32, ptr %i.ne, align 4, !tbaa !8 ; 2 uses
  %.pre564.a = sext i32 %.pre.i.i330 to i64
  br label %Vec_IntGrow.exit.i.i.i331

Vec_IntGrow.exit.i.i.i331:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i328, %bb.ch, %bb.cg
  %.pre-phi565.a = phi i64 [ %.pre564.a, %Vec_IntGrow.exit.sink.split.i.i.i328 ], [ %i.ng, %bb.ch ], [ %i.ng, %bb.cg ] ; 2 uses
  %i.ny = phi i32 [ %.pre.i.i330, %Vec_IntGrow.exit.sink.split.i.i.i328 ], [ %i.nf, %bb.ch ], [ %i.nf, %bb.cg ]
  %.not3.i.i332 = icmp sgt i64 %.pre-phi565.a, %indvars.iv528
  br i1 %.not3.i.i332, label %._crit_edge.i.i.i335, label %.lr.ph.i.i.i333

.lr.ph.i.i.i333:                                  ; preds = %Vec_IntGrow.exit.i.i.i331
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !13
  %i.ob = shl nsw i64 %.pre-phi565.a, 2
  %scevgep.i.i.i334 = getelementptr i8, ptr %i.oa, i64 %i.ob
  %i.oc = sub i32 %i.ad, %i.ny
  %i.od = zext i32 %i.oc to i64
  %i.oe = shl nuw nsw i64 %i.od, 2
  %i.of = add nuw nsw i64 %i.oe, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i334, i8 0, i64 %i.of, i1 false), !tbaa !24
  br label %._crit_edge.i.i.i335

._crit_edge.i.i.i335:                             ; preds = %.lr.ph.i.i.i333, %Vec_IntGrow.exit.i.i.i331
  store i32 %i.it, ptr %i.ne, align 4, !tbaa !8
  %.pre540 = load i64, ptr %i.ja, align 4
  %.val244.pre = load ptr, ptr %i.w, align 8, !tbaa !38
  %.val245.pre = load ptr, ptr %i.x, align 8, !tbaa !91
  %.phi.trans.insert543 = getelementptr i8, ptr %.val244.pre, i64 32
  %.val244.val.pre = load ptr, ptr %.phi.trans.insert543, align 8, !tbaa !39
  %.pre556.a = ptrtoint ptr %.val244.val.pre to i64
  br label %Gla_ObjRef.exit340

Gla_ObjRef.exit340:                               ; preds = %Gia_ObjIsRo.exit.thread, %._crit_edge.i.i.i335
  %.pre-phi557.a = phi i64 [ %i.mz, %Gia_ObjIsRo.exit.thread ], [ %.pre556.a, %._crit_edge.i.i.i335 ]
  %.val245 = phi ptr [ %.val247, %Gia_ObjIsRo.exit.thread ], [ %.val245.pre, %._crit_edge.i.i.i335 ]
  %i.og = phi i64 [ %.val264, %Gia_ObjIsRo.exit.thread ], [ %.pre540, %._crit_edge.i.i.i335 ] ; 2 uses
  %i.oh = getelementptr i8, ptr %i.nd, i64 8
  %.val.i.i336 = load ptr, ptr %i.oh, align 8, !tbaa !13
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i336, i64 %indvars.iv528 ; 2 uses
  %i.oj = lshr i64 %i.og, 32
  %i.ok = and i64 %i.oj, 536870911
  %i.ol = sub nsw i64 0, %i.ok
  %i.om = getelementptr inbounds [12 x i8], ptr %i.ja, i64 %i.ol
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = sub i64 %i.on, %.pre-phi557.a
  %i.op = sdiv exact i64 %i.oo, 12
  %sext.i341 = shl i64 %i.op, 32
  %i.oq = ashr exact i64 %sext.i341, 28
  %i.or = getelementptr inbounds i8, ptr %.val245, i64 %i.oq ; 7 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4 ; 3 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !8  ; 3 uses
  %i.ou = sext i32 %i.ot to i64                   ; 3 uses
  %.not.i.not.i.i342 = icmp slt i64 %indvars.iv528, %i.ou
  br i1 %.not.i.not.i.i342, label %Gla_ObjRef.exit358, label %bb.cm

bb.cm:                                            ; preds = %Gla_ObjRef.exit340
  %i.ov = load i32, ptr %i.or, align 8, !tbaa !12 ; 4 uses
  %i.ow = shl nsw i32 %i.ov, 1                    ; 2 uses
  %i.ox = sext i32 %i.ow to i64
  %.not.i.i343 = icmp slt i64 %indvars.iv528, %i.ox
  br i1 %.not.i.i343, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oy = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i345 = icmp eq ptr %i.oz, null
  br i1 %.not9.i.i.i.i345, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pa = tail call ptr @realloc(ptr noundef nonnull %i.oz, i64 noundef %i.ip) #28
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.pb = tail call noalias ptr @malloc(i64 noundef %i.ip) #27
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.pc = phi ptr [ %i.pa, %bb.co ], [ %i.pb, %bb.cp ]
  store ptr %i.pc, ptr %i.oy, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i346

bb.cr:                                            ; preds = %bb.cm
  %i.pd = sext i32 %i.ov to i64
  %.not.i.i.not.i.i344 = icmp slt i64 %indvars.iv528, %i.pd
  br i1 %.not.i.i.not.i.i344, label %Vec_IntGrow.exit.i.i.i349, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pe = icmp slt i32 %i.ov, 1073741823
  %spec.select.i.i.i355 = select i1 %i.pe, i32 %i.ow, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i356 = icmp slt i32 %i.ov, %spec.select.i.i.i355
  br i1 %.not.i22.i.i.i356, label %bb.ct, label %Vec_IntGrow.exit.i.i.i349

bb.ct:                                            ; preds = %bb.cs
  %i.pf = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !13 ; 2 uses
  %.not9.i23.i.i.i357 = icmp eq ptr %i.pg, null
  %i.ph = sext i32 %spec.select.i.i.i355 to i64
  %i.pi = shl nsw i64 %i.ph, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i357, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pj = tail call ptr @realloc(ptr noundef nonnull %i.pg, i64 noundef %i.pi) #28
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.pk = tail call noalias ptr @malloc(i64 noundef %i.pi) #27
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.pl = phi ptr [ %i.pj, %bb.cu ], [ %i.pk, %bb.cv ]
  store ptr %i.pl, ptr %i.pf, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i346

Vec_IntGrow.exit.sink.split.i.i.i346:             ; preds = %bb.cw, %bb.cq
  %spec.select.sink.i.i.i347 = phi i32 [ %spec.select.i.i.i355, %bb.cw ], [ %i.it, %bb.cq ]
end_hunk_0
begin_hunk_1_@Gla_ManRefinement2:bb.a
  %i.sf = getelementptr i8, ptr %i.se, i64 32
  %.val226 = load ptr, ptr %i.sf, align 8, !tbaa !39
  %i.sg = ptrtoint ptr %.val226 to i64
  %i.sh = sub i64 %i.jb, %i.sg
  %i.si = sdiv exact i64 %i.sh, 12
  %i.sj = load ptr, ptr %i.y, align 8, !tbaa !54
  %sext492 = shl i64 %i.si, 32
  %i.sk = ashr exact i64 %sext492, 32             ; 2 uses
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sj, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !24 ; 2 uses
  %.not.i.i470 = icmp ne i32 %i.sm, 0
  tail call void @llvm.assume(i1 %.not.i.i470)
  %i.sn = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.so = sext i32 %i.sm to i64
  %i.sp = getelementptr inbounds [40 x i8], ptr %i.sn, i64 %i.so ; 6 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 24 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 28 ; 3 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !8  ; 3 uses
  %i.st = sext i32 %i.ss to i64                   ; 3 uses
  %.not.i.not.i.i471 = icmp slt i64 %indvars.iv528, %i.st
  br i1 %.not.i.not.i.i471, label %Gla_ManCheckVar.exit487, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.su = load i32, ptr %i.sq, align 8, !tbaa !12 ; 4 uses
  %i.sv = shl nsw i32 %i.su, 1                    ; 2 uses
  %i.sw = sext i32 %i.sv to i64
  %.not.i4.i472 = icmp slt i64 %indvars.iv528, %i.sw
  br i1 %.not.i4.i472, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sp, i64 32 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i474 = icmp eq ptr %i.sy, null
  br i1 %.not9.i.i.i.i474, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sz = tail call ptr @realloc(ptr noundef nonnull %i.sy, i64 noundef %i.ip) #28
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.ta = tail call noalias ptr @malloc(i64 noundef %i.ip) #27
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.tb = phi ptr [ %i.sz, %bb.dm ], [ %i.ta, %bb.dn ]
  store ptr %i.tb, ptr %i.sx, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i475

bb.dp:                                            ; preds = %bb.dk
  %i.tc = sext i32 %i.su to i64
  %.not.i.i.not.i.i473 = icmp slt i64 %indvars.iv528, %i.tc
  br i1 %.not.i.i.not.i.i473, label %Vec_IntGrow.exit.i.i.i478, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.td = icmp slt i32 %i.su, 1073741823
  %spec.select.i.i.i484 = select i1 %i.td, i32 %i.sv, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i485 = icmp slt i32 %i.su, %spec.select.i.i.i484
  br i1 %.not.i22.i.i.i485, label %bb.dr, label %Vec_IntGrow.exit.i.i.i478

bb.dr:                                            ; preds = %bb.dq
  %i.te = getelementptr inbounds nuw i8, ptr %i.sp, i64 32 ; 2 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !13 ; 2 uses
  %.not9.i23.i.i.i486 = icmp eq ptr %i.tf, null
  %i.tg = sext i32 %spec.select.i.i.i484 to i64
  %i.th = shl nsw i64 %i.tg, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i486, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ti = tail call ptr @realloc(ptr noundef nonnull %i.tf, i64 noundef %i.th) #28
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.tj = tail call noalias ptr @malloc(i64 noundef %i.th) #27
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.tk = phi ptr [ %i.ti, %bb.ds ], [ %i.tj, %bb.dt ]
  store ptr %i.tk, ptr %i.te, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i475

Vec_IntGrow.exit.sink.split.i.i.i475:             ; preds = %bb.du, %bb.do
  %spec.select.sink.i.i.i476 = phi i32 [ %spec.select.i.i.i484, %bb.du ], [ %i.it, %bb.do ]
  store i32 %spec.select.sink.i.i.i476, ptr %i.sq, align 8, !tbaa !12
  %.pre.i.i477 = load i32, ptr %i.sr, align 4, !tbaa !8 ; 2 uses
  %.pre558 = sext i32 %.pre.i.i477 to i64
  br label %Vec_IntGrow.exit.i.i.i478

Vec_IntGrow.exit.i.i.i478:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i475, %bb.dq, %bb.dp
  %.pre-phi559 = phi i64 [ %.pre558, %Vec_IntGrow.exit.sink.split.i.i.i475 ], [ %i.st, %bb.dq ], [ %i.st, %bb.dp ] ; 2 uses
  %i.tl = phi i32 [ %.pre.i.i477, %Vec_IntGrow.exit.sink.split.i.i.i475 ], [ %i.ss, %bb.dq ], [ %i.ss, %bb.dp ]
  %.not3.i.i479 = icmp sgt i64 %.pre-phi559, %indvars.iv528
  br i1 %.not3.i.i479, label %._crit_edge.i.i.i482, label %.lr.ph.i.i.i480

.lr.ph.i.i.i480:                                  ; preds = %Vec_IntGrow.exit.i.i.i478
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sp, i64 32
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !13
  %i.to = shl nsw i64 %.pre-phi559, 2
  %scevgep.i.i.i481 = getelementptr i8, ptr %i.tn, i64 %i.to
  %i.tp = sub i32 %i.ad, %i.tl
  %i.tq = zext i32 %i.tp to i64
  %i.tr = shl nuw nsw i64 %i.tq, 2
  %i.ts = add nuw nsw i64 %i.tr, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i481, i8 0, i64 %i.ts, i1 false), !tbaa !24
  br label %._crit_edge.i.i.i482

._crit_edge.i.i.i482:                             ; preds = %.lr.ph.i.i.i480, %Vec_IntGrow.exit.i.i.i478
  store i32 %i.it, ptr %i.sr, align 4, !tbaa !8
  br label %Gla_ManCheckVar.exit487

Gla_ManCheckVar.exit487:                          ; preds = %bb.dj, %._crit_edge.i.i.i482
  %i.tt = getelementptr i8, ptr %i.sp, i64 32
  %.val.i.i483 = load ptr, ptr %i.tt, align 8, !tbaa !13
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i483, i64 %indvars.iv528
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !24
  %i.tw = icmp slt i32 %i.tv, 1
  br i1 %i.tw, label %Gla_ObjSatValue.exit377, label %bb.dv

bb.dv:                                            ; preds = %Gla_ManCheckVar.exit487
  %i.tx = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ty = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.sk
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !24
  %i.ub = tail call fastcc i32 @Gla_ManGetVar(ptr noundef nonnull %0, i32 noundef %i.ua, i32 noundef %i.ad)
  %i.uc = getelementptr i8, ptr %i.tx, i64 288
  %.val.i376 = load ptr, ptr %i.uc, align 8, !tbaa !56
  %i.ud = sext i32 %i.ub to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %.val.i376, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !24
  %i.ug = icmp eq i32 %i.uf, 1
  %i.uh = zext i1 %i.ug to i32
  br label %Gla_ObjSatValue.exit377

Gla_ObjSatValue.exit377:                          ; preds = %Gla_ManCheckVar.exit487, %bb.dv
  %i.ui = phi i32 [ %i.uh, %bb.dv ], [ 0, %Gla_ManCheckVar.exit487 ]
  %.not208 = icmp eq i32 %i.sd, %i.ui
  br i1 %.not208, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %Gla_ObjSatValue.exit377
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1)
  %i.uj = load ptr, ptr %i.w, align 8, !tbaa !38
  tail call void @Gia_ObjPrint(ptr noundef %i.uj, ptr noundef nonnull %i.ja) #29
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %Gla_ObjSatValue.exit377, %Gla_ManCheckVar.exit, %Gla_ObjRef.exit358
  %i.uk = load i32, ptr %i.ki, align 4            ; 2 uses
  %i.ul = and i32 %i.uk, 1
  %.not209 = icmp eq i32 %i.ul, 0
  %i.um = load i32, ptr %i.oi, align 4            ; 4 uses
  br i1 %.not209, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.un = lshr i32 %i.um, 3
  %i.uo = and i32 %i.un, 65535
  %i.up = load i32, ptr %i.pv, align 4
  %i.uq = lshr i32 %i.up, 3
  %i.ur = and i32 %i.uq, 65535
  %i.us = tail call i32 @llvm.umax.i32(i32 %i.uo, i32 %i.ur)
  %i.ut = shl nuw nsw i32 %i.us, 3
  br label %bb.ee

bb.dz:                                            ; preds = %bb.dx
  %.val260 = load i64, ptr %i.ja, align 4         ; 2 uses
  %i.uu = trunc i64 %.val260 to i32
  %i.uv = lshr i32 %i.uu, 29
  %i.uw = xor i32 %i.uv, %i.um
  %i.ux = and i32 %i.uw, 1
  %i.uy = icmp eq i32 %i.ux, 0
  %i.uz = load i32, ptr %i.pv, align 4            ; 3 uses
  br i1 %i.uy, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.va = lshr i64 %.val260, 61
  %i.vb = trunc nuw nsw i64 %i.va to i32
  %i.vc = xor i32 %i.uz, %i.vb
  %i.vd = and i32 %i.vc, 1
  %i.ve = icmp eq i32 %i.vd, 0
  br i1 %i.ve, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.vf = lshr i32 %i.um, 3
  %i.vg = and i32 %i.vf, 65535
  %i.vh = lshr i32 %i.uz, 3
  %i.vi = and i32 %i.vh, 65535
  %i.vj = tail call i32 @llvm.umin.i32(i32 %i.vg, i32 %i.vi)
  %i.vk = shl nuw nsw i32 %i.vj, 3
  br label %bb.ee

bb.ec:                                            ; preds = %bb.ea
  %i.vl = and i32 %i.um, 524280
  br label %bb.ee

bb.ed:                                            ; preds = %bb.dz
  %i.vm = and i32 %i.uz, 524280
  br label %bb.ee

bb.ee:                                            ; preds = %bb.eb, %bb.ed, %bb.ec, %bb.dy
  %.sink631 = phi i32 [ -524282, %bb.eb ], [ -524282, %bb.ed ], [ -524282, %bb.ec ], [ -524281, %bb.dy ]
  %.sink = phi i32 [ %i.vk, %bb.eb ], [ %i.vm, %bb.ed ], [ %i.vl, %bb.ec ], [ %i.ut, %bb.dy ]
  %i.vn = and i32 %i.uk, %.sink631
  %i.vo = or disjoint i32 %.sink, %i.vn
  %i.vp = load i32, ptr @Gla_ManRefinement2.Sign, align 4, !tbaa !24
  %i.vq = shl i32 %i.vp, 19
  %i.vr = and i32 %i.vq, 2146959360
  %i.vs = and i32 %i.vo, -2146959361
  %i.vt = or disjoint i32 %i.vs, %i.vr
  br label %bb.ef

bb.ef:                                            ; preds = %bb.bo, %Gla_ObjRef.exit322, %bb.ee
  %.sink632 = phi i32 [ %i.ks, %bb.bo ], [ %i.mt, %Gla_ObjRef.exit322 ], [ %i.vt, %bb.ee ]
  store i32 %.sink632, ptr %i.ki, align 4
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %.val212 = load i32, ptr %i.p, align 4, !tbaa !8
  %i.vu = sext i32 %.val212 to i64
  %i.vv = icmp slt i64 %indvars.iv.next521, %i.vu
  br i1 %i.vv, label %bb.ba, label %.critedge4, !llvm.loop !122

.critedge4:                                       ; preds = %bb.ba, %bb.ef, %.critedge2
  %.val211 = load i32, ptr %i.d, align 4, !tbaa !8 ; 2 uses
  %i.vw = icmp sgt i32 %.val211, 0
  br i1 %i.vw, label %.lr.ph504, label %.critedge4..critedge6_crit_edge

.critedge4..critedge6_crit_edge:                  ; preds = %.critedge4
  %.pre578 = add nuw nsw i64 %indvars.iv528, 1
  br label %.critedge6

.lr.ph504:                                        ; preds = %.critedge4
  %.val216 = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.vx = add nuw nsw i64 %indvars.iv528, 1       ; 4 uses
  %i.vy = shl nuw nsw i64 %i.vx, 2                ; 4 uses
  %wide.trip.count526 = zext nneg i32 %.val211 to i64
  %i.vz = trunc nsw i64 %i.vx to i32              ; 4 uses
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph504, %Gla_ObjRef.exit413
  %indvars.iv523 = phi i64 [ 0, %.lr.ph504 ], [ %indvars.iv.next524, %Gla_ObjRef.exit413 ] ; 2 uses
  %i.wa = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.val216, i64 %indvars.iv523
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !24
  %i.wd = getelementptr i8, ptr %i.wa, i64 32
  %.val221 = load ptr, ptr %i.wd, align 8, !tbaa !39 ; 3 uses
  %i.we = sext i32 %i.wc to i64                   ; 2 uses
  %i.wf = getelementptr inbounds [12 x i8], ptr %.val221, i64 %i.we ; 3 uses
  %.not204 = icmp eq ptr %.val221, null
  br i1 %.not204, label %.critedge6, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.val243 = load ptr, ptr %i.x, align 8, !tbaa !91 ; 2 uses
  %i.wg = shl nsw i64 %i.we, 4
  %i.wh = getelementptr inbounds i8, ptr %.val243, i64 %i.wg ; 7 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 4 ; 3 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !8  ; 3 uses
  %i.wk = sext i32 %i.wj to i64                   ; 3 uses
  %.not.i.not.i.i379 = icmp slt i64 %indvars.iv528, %i.wk
  br i1 %.not.i.not.i.i379, label %Gla_ObjRef.exit395, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wl = load i32, ptr %i.wh, align 8, !tbaa !12 ; 4 uses
  %i.wm = shl nsw i32 %i.wl, 1                    ; 2 uses
  %i.wn = sext i32 %i.wm to i64
  %.not.i.i380 = icmp slt i64 %indvars.iv528, %i.wn
  br i1 %.not.i.i380, label %bb.en, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wh, i64 8 ; 2 uses
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i382 = icmp eq ptr %i.wp, null
  br i1 %.not9.i.i.i.i382, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.wq = tail call ptr @realloc(ptr noundef nonnull %i.wp, i64 noundef %i.vy) #28
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.wr = tail call noalias ptr @malloc(i64 noundef %i.vy) #27
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.ws = phi ptr [ %i.wq, %bb.ek ], [ %i.wr, %bb.el ]
  store ptr %i.ws, ptr %i.wo, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i383

bb.en:                                            ; preds = %bb.ei
  %i.wt = sext i32 %i.wl to i64
  %.not.i.i.not.i.i381 = icmp slt i64 %indvars.iv528, %i.wt
  br i1 %.not.i.i.not.i.i381, label %Vec_IntGrow.exit.i.i.i386, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wu = icmp slt i32 %i.wl, 1073741823
  %spec.select.i.i.i392 = select i1 %i.wu, i32 %i.wm, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i393 = icmp slt i32 %i.wl, %spec.select.i.i.i392
  br i1 %.not.i22.i.i.i393, label %bb.ep, label %Vec_IntGrow.exit.i.i.i386

bb.ep:                                            ; preds = %bb.eo
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wh, i64 8 ; 2 uses
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !13 ; 2 uses
  %.not9.i23.i.i.i394 = icmp eq ptr %i.ww, null
  %i.wx = sext i32 %spec.select.i.i.i392 to i64
  %i.wy = shl nsw i64 %i.wx, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i394, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.wz = tail call ptr @realloc(ptr noundef nonnull %i.ww, i64 noundef %i.wy) #28
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.xa = tail call noalias ptr @malloc(i64 noundef %i.wy) #27
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.xb = phi ptr [ %i.wz, %bb.eq ], [ %i.xa, %bb.er ]
  store ptr %i.xb, ptr %i.wv, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i383

Vec_IntGrow.exit.sink.split.i.i.i383:             ; preds = %bb.es, %bb.em
  %spec.select.sink.i.i.i384 = phi i32 [ %spec.select.i.i.i392, %bb.es ], [ %i.vz, %bb.em ]
  store i32 %spec.select.sink.i.i.i384, ptr %i.wh, align 8, !tbaa !12
  %.pre.i.i385 = load i32, ptr %i.wi, align 4, !tbaa !8 ; 2 uses
  %.pre554.a = sext i32 %.pre.i.i385 to i64
  br label %Vec_IntGrow.exit.i.i.i386

Vec_IntGrow.exit.i.i.i386:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i383, %bb.eo, %bb.en
  %.pre-phi555 = phi i64 [ %.pre554.a, %Vec_IntGrow.exit.sink.split.i.i.i383 ], [ %i.wk, %bb.eo ], [ %i.wk, %bb.en ] ; 2 uses
  %i.xc = phi i32 [ %.pre.i.i385, %Vec_IntGrow.exit.sink.split.i.i.i383 ], [ %i.wj, %bb.eo ], [ %i.wj, %bb.en ]
  %.not3.i.i387 = icmp sgt i64 %.pre-phi555, %indvars.iv528
  br i1 %.not3.i.i387, label %._crit_edge.i.i.i390, label %.lr.ph.i.i.i388

.lr.ph.i.i.i388:                                  ; preds = %Vec_IntGrow.exit.i.i.i386
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !13
  %i.xf = shl nsw i64 %.pre-phi555, 2
  %scevgep.i.i.i389 = getelementptr i8, ptr %i.xe, i64 %i.xf
  %i.xg = sub i32 %i.ad, %i.xc
  %i.xh = zext i32 %i.xg to i64
  %i.xi = shl nuw nsw i64 %i.xh, 2
  %i.xj = add nuw nsw i64 %i.xi, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i389, i8 0, i64 %i.xj, i1 false), !tbaa !24
  br label %._crit_edge.i.i.i390

._crit_edge.i.i.i390:                             ; preds = %.lr.ph.i.i.i388, %Vec_IntGrow.exit.i.i.i386
  store i32 %i.vz, ptr %i.wi, align 4, !tbaa !8
  %.val240.pre = load ptr, ptr %i.w, align 8, !tbaa !38
  %.val241.pre = load ptr, ptr %i.x, align 8, !tbaa !91
  %.phi.trans.insert548 = getelementptr i8, ptr %.val240.pre, i64 32
  %.val240.val.pre = load ptr, ptr %.phi.trans.insert548, align 8, !tbaa !39
  br label %Gla_ObjRef.exit395

Gla_ObjRef.exit395:                               ; preds = %bb.eh, %._crit_edge.i.i.i390
  %.val240.val = phi ptr [ %.val221, %bb.eh ], [ %.val240.val.pre, %._crit_edge.i.i.i390 ]
  %.val241 = phi ptr [ %.val243, %bb.eh ], [ %.val241.pre, %._crit_edge.i.i.i390 ]
  %i.xk = getelementptr i8, ptr %i.wh, i64 8
  %.val.i.i391 = load ptr, ptr %i.xk, align 8, !tbaa !13
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i391, i64 %indvars.iv528 ; 4 uses
  store i32 0, ptr %i.xl, align 4, !tbaa !24
  %i.xm = load i64, ptr %i.wf, align 4            ; 2 uses
  %i.xn = and i64 %i.xm, 536870911
  %i.xo = sub nsw i64 0, %i.xn
  %i.xp = getelementptr inbounds [12 x i8], ptr %i.wf, i64 %i.xo
  %i.xq = ptrtoint ptr %i.xp to i64
  %i.xr = ptrtoint ptr %.val240.val to i64
  %i.xs = sub i64 %i.xq, %i.xr
  %i.xt = sdiv exact i64 %i.xs, 12
  %sext.i396 = shl i64 %i.xt, 32
  %i.xu = ashr exact i64 %sext.i396, 28
  %i.xv = getelementptr inbounds i8, ptr %.val241, i64 %i.xu ; 7 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 4 ; 3 uses
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !8  ; 3 uses
  %i.xy = sext i32 %i.xx to i64                   ; 3 uses
  %.not.i.not.i.i397 = icmp slt i64 %indvars.iv528, %i.xy
  br i1 %.not.i.not.i.i397, label %Gla_ObjRef.exit413, label %bb.et

bb.et:                                            ; preds = %Gla_ObjRef.exit395
  %i.xz = load i32, ptr %i.xv, align 8, !tbaa !12 ; 4 uses
  %i.ya = shl nsw i32 %i.xz, 1                    ; 2 uses
  %i.yb = sext i32 %i.ya to i64
  %.not.i.i398 = icmp slt i64 %indvars.iv528, %i.yb
  br i1 %.not.i.i398, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xv, i64 8 ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i400 = icmp eq ptr %i.yd, null
  br i1 %.not9.i.i.i.i400, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ye = tail call ptr @realloc(ptr noundef nonnull %i.yd, i64 noundef %i.vy) #28
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.yf = tail call noalias ptr @malloc(i64 noundef %i.vy) #27
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.yg = phi ptr [ %i.ye, %bb.ev ], [ %i.yf, %bb.ew ]
  store ptr %i.yg, ptr %i.yc, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i401

bb.ey:                                            ; preds = %bb.et
  %i.yh = sext i32 %i.xz to i64
  %.not.i.i.not.i.i399 = icmp slt i64 %indvars.iv528, %i.yh
  br i1 %.not.i.i.not.i.i399, label %Vec_IntGrow.exit.i.i.i404, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.yi = icmp slt i32 %i.xz, 1073741823
  %spec.select.i.i.i410 = select i1 %i.yi, i32 %i.ya, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i411 = icmp slt i32 %i.xz, %spec.select.i.i.i410
  br i1 %.not.i22.i.i.i411, label %bb.fa, label %Vec_IntGrow.exit.i.i.i404

bb.fa:                                            ; preds = %bb.ez
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xv, i64 8 ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !13 ; 2 uses
  %.not9.i23.i.i.i412 = icmp eq ptr %i.yk, null
  %i.yl = sext i32 %spec.select.i.i.i410 to i64
  %i.ym = shl nsw i64 %i.yl, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i412, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.yn = tail call ptr @realloc(ptr noundef nonnull %i.yk, i64 noundef %i.ym) #28
  br label %bb.fd

bb.fc:                                            ; preds = %bb.fa
  %i.yo = tail call noalias ptr @malloc(i64 noundef %i.ym) #27
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.yp = phi ptr [ %i.yn, %bb.fb ], [ %i.yo, %bb.fc ]
  store ptr %i.yp, ptr %i.yj, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i.i401

Vec_IntGrow.exit.sink.split.i.i.i401:             ; preds = %bb.fd, %bb.ex
  %spec.select.sink.i.i.i402 = phi i32 [ %spec.select.i.i.i410, %bb.fd ], [ %i.vz, %bb.ex ]
  store i32 %spec.select.sink.i.i.i402, ptr %i.xv, align 8, !tbaa !12
  %.pre.i.i403 = load i32, ptr %i.xw, align 4, !tbaa !8 ; 2 uses
  %.pre553.a = sext i32 %.pre.i.i403 to i64
  br label %Vec_IntGrow.exit.i.i.i404

Vec_IntGrow.exit.i.i.i404:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i401, %bb.ez, %bb.ey
  %.pre-phi = phi i64 [ %.pre553.a, %Vec_IntGrow.exit.sink.split.i.i.i401 ], [ %i.xy, %bb.ez ], [ %i.xy, %bb.ey ] ; 2 uses
  %i.yq = phi i32 [ %.pre.i.i403, %Vec_IntGrow.exit.sink.split.i.i.i401 ], [ %i.xx, %bb.ez ], [ %i.xx, %bb.ey ]
  %.not3.i.i405 = icmp sgt i64 %.pre-phi, %indvars.iv528
  br i1 %.not3.i.i405, label %._crit_edge.i.i.i408, label %.lr.ph.i.i.i406

.lr.ph.i.i.i406:                                  ; preds = %Vec_IntGrow.exit.i.i.i404
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !13
  %i.yt = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i.i407 = getelementptr i8, ptr %i.ys, i64 %i.yt
  %i.yu = sub i32 %i.ad, %i.yq
  %i.yv = zext i32 %i.yu to i64
  %i.yw = shl nuw nsw i64 %i.yv, 2
  %i.yx = add nuw nsw i64 %i.yw, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i407, i8 0, i64 %i.yx, i1 false), !tbaa !24
  br label %._crit_edge.i.i.i408

._crit_edge.i.i.i408:                             ; preds = %.lr.ph.i.i.i406, %Vec_IntGrow.exit.i.i.i404
  store i32 %i.vz, ptr %i.xw, align 4, !tbaa !8
  %.val258.pre = load i64, ptr %i.wf, align 4
  %.pre551 = load i32, ptr %i.xl, align 4
  %i.yy = and i32 %.pre551, -2
  br label %Gla_ObjRef.exit413

Gla_ObjRef.exit413:                               ; preds = %Gla_ObjRef.exit395, %._crit_edge.i.i.i408
  %i.yz = phi i32 [ 0, %Gla_ObjRef.exit395 ], [ %i.yy, %._crit_edge.i.i.i408 ]
  %.val258 = phi i64 [ %i.xm, %Gla_ObjRef.exit395 ], [ %.val258.pre, %._crit_edge.i.i.i408 ]
  %i.za = getelementptr i8, ptr %i.xv, i64 8
  %.val.i.i409 = load ptr, ptr %i.za, align 8, !tbaa !13
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i409, i64 %indvars.iv528 ; 2 uses
  %i.zc = load i32, ptr %i.zb, align 4
  %i.zd = trunc i64 %.val258 to i32
  %i.ze = lshr i32 %i.zd, 29
  %i.zf = xor i32 %i.ze, %i.zc
  %i.zg = and i32 %i.zf, 1
  %i.zh = or disjoint i32 %i.zg, %i.yz            ; 2 uses
  store i32 %i.zh, ptr %i.xl, align 4
  %i.zi = load i32, ptr %i.zb, align 4
  %i.zj = and i32 %i.zi, 524280
  %i.zk = and i32 %i.zh, -2147483641
  %i.zl = or disjoint i32 %i.zk, %i.zj
  %5 = load i32, ptr @Gla_ManRefinement2.Sign, align 4, !tbaa !24
  %6 = shl i32 %5, 19
  %7 = and i32 %6, 2146959360
  %i.zm = or disjoint i32 %i.zl, %7
  store i32 %i.zm, ptr %i.xl, align 4
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1 ; 2 uses
  %exitcond527.not = icmp eq i64 %indvars.iv.next524, %wide.trip.count526
  br i1 %exitcond527.not, label %.critedge6, label %bb.eg, !llvm.loop !123

.critedge6:                                       ; preds = %Gla_ObjRef.exit413, %bb.eg, %.critedge4..critedge6_crit_edge
  %indvars.iv.next529.pre-phi = phi i64 [ %.pre578, %.critedge4..critedge6_crit_edge ], [ %i.vx, %bb.eg ], [ %i.vx, %Gla_ObjRef.exit413 ]
  %i.zn = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 136
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !33 ; 2 uses
  %i.zq = sext i32 %i.zp to i64
  %.not.not = icmp slt i64 %indvars.iv528, %i.zq
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !124

._crit_edge:                                      ; preds = %.critedge6, %bb.a
  %.lcssa = phi i32 [ %i.v, %bb.a ], [ %i.zp, %.critedge6 ]
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !38 ; 2 uses
  %i.zt = getelementptr i8, ptr %i.zs, i64 32
  %.val234 = load ptr, ptr %i.zt, align 8, !tbaa !39 ; 2 uses
  %i.zu = getelementptr i8, ptr %i.zs, i64 72
  %.val235 = load ptr, ptr %i.zu, align 8, !tbaa !83
  %i.zv = getelementptr i8, ptr %.val235, i64 8
  %.val235.val = load ptr, ptr %i.zv, align 8, !tbaa !13
  %.val235.val.val = load i32, ptr %.val235.val, align 4, !tbaa !24
  %i.zw = sext i32 %.val235.val.val to i64
  %i.zx = getelementptr inbounds [12 x i8], ptr %.val234, i64 %i.zw
  %i.zy = getelementptr i8, ptr %0, i64 144
  %.val239 = load ptr, ptr %i.zy, align 8, !tbaa !91
  %i.zz = tail call fastcc ptr @Gla_ObjRef(ptr %.val234, ptr %.val239, ptr noundef %i.zx, i32 noundef %.lcssa) ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4           ; 2 uses
  %i.aab = and i32 %i.aaa, 1
  %.not199.not = icmp eq i32 %i.aab, 0
  br i1 %.not199.not, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2)
  %.pre552 = load i32, ptr %i.zz, align 4
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %._crit_edge
  %i.aac = phi i32 [ %.pre552, %bb.fe ], [ %i.aaa, %._crit_edge ]
  %i.aad = and i32 %i.aac, 524280
  %i.aae = icmp eq i32 %i.aad, 0
  br i1 %i.aae, label %bb.fg, label %bb.fl

bb.fg:                                            ; preds = %bb.ff
  %i.aaf = tail call ptr @Gla_ManDeriveCex(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  %i.aag = load ptr, ptr %i.zr, align 8, !tbaa !38
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 384
  store ptr %i.aaf, ptr %i.aah, align 8, !tbaa !117
  %i.aai = load ptr, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %.not.i414 = icmp eq ptr %i.aai, null
  br i1 %.not.i414, label %Vec_IntFree.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void @free(ptr noundef nonnull %i.aai) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.fg, %bb.fh
  tail call void @free(ptr noundef nonnull %i.g) #29
  %i.aaj = load ptr, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %.not.i415 = icmp eq ptr %i.aaj, null
  br i1 %.not.i415, label %Vec_IntFree.exit416, label %bb.fi

bb.fi:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.aaj) #29
  br label %Vec_IntFree.exit416

Vec_IntFree.exit416:                              ; preds = %Vec_IntFree.exit, %bb.fi
  tail call void @free(ptr noundef nonnull %i.k) #29
  %i.aak = load ptr, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %.not.i417 = icmp eq ptr %i.aak, null
  br i1 %.not.i417, label %Vec_IntFree.exit418, label %bb.fj

bb.fj:                                            ; preds = %Vec_IntFree.exit416
  tail call void @free(ptr noundef nonnull %i.aak) #29
  br label %Vec_IntFree.exit418

Vec_IntFree.exit418:                              ; preds = %Vec_IntFree.exit416, %bb.fj
  tail call void @free(ptr noundef nonnull %i.o) #29
  %i.aal = load ptr, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %.not.i419 = icmp eq ptr %i.aal, null
  br i1 %.not.i419, label %Vec_IntFree.exit420, label %bb.fk

bb.fk:                                            ; preds = %Vec_IntFree.exit418
  tail call void @free(ptr noundef nonnull %i.aal) #29
  br label %Vec_IntFree.exit420

Vec_IntFree.exit420:                              ; preds = %Vec_IntFree.exit418, %bb.fk
  tail call void @free(ptr noundef nonnull %i.c) #29
  br label %bb.fz

bb.fl:                                            ; preds = %bb.ff
  %i.aam = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 6 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 4 ; 8 uses
  store i32 0, ptr %i.aan, align 4, !tbaa !8
  store i32 100, ptr %i.aam, align 8, !tbaa !12
  %i.aao = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #27
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aam, i64 8 ; 4 uses
  store ptr %i.aao, ptr %i.aap, align 8, !tbaa !13
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !98 ; 5 uses
  %i.aas = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 136
  %i.aau = load i32, ptr %i.aat, align 8, !tbaa !33 ; 3 uses
  %i.aav = add nsw i32 %i.aau, 1                  ; 4 uses
  %i.aaw = load i32, ptr %i.aar, align 8, !tbaa !12
  %.not.i.i421.not = icmp sgt i32 %i.aaw, %i.aau
  br i1 %.not.i.i421.not, label %Vec_IntGrow.exit.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aar, i64 8 ; 2 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aay, null
  %i.aaz = sext i32 %i.aav to i64
  %i.aba = shl nsw i64 %i.aaz, 2                  ; 2 uses
  br i1 %.not9.i.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.abb = tail call ptr @realloc(ptr noundef nonnull %i.aay, i64 noundef %i.aba) #28
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.abc = tail call noalias ptr @malloc(i64 noundef %i.aba) #27
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.abd = phi ptr [ %i.abb, %bb.fn ], [ %i.abc, %bb.fo ]
  store ptr %i.abd, ptr %i.aax, align 8, !tbaa !13
  store i32 %i.aav, ptr %i.aar, align 8, !tbaa !12
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.fp, %bb.fl
  %i.abe = icmp sgt i32 %i.aau, -1
  br i1 %i.abe, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !13
  %wide.trip.count.i = zext nneg i32 %i.aav to i64
  %i.abh = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abg, i8 0, i64 %i.abh, i1 false), !tbaa !24
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %.lr.ph.i, %Vec_IntGrow.exit.i
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aar, i64 4
  store i32 %i.aav, ptr %i.abi, align 4, !tbaa !8
  %i.abj = load ptr, ptr %i.zr, align 8, !tbaa !38 ; 2 uses
  %i.abk = getelementptr i8, ptr %i.abj, i64 32
  %.val232 = load ptr, ptr %i.abk, align 8, !tbaa !39
  %i.abl = getelementptr i8, ptr %i.abj, i64 72
  %.val233 = load ptr, ptr %i.abl, align 8, !tbaa !83
  %i.abm = getelementptr i8, ptr %.val233, i64 8
  %.val233.val = load ptr, ptr %i.abm, align 8, !tbaa !13
  %.val233.val.val = load i32, ptr %.val233.val, align 4, !tbaa !24
  %i.abn = sext i32 %.val233.val.val to i64
  %i.abo = getelementptr inbounds [12 x i8], ptr %.val232, i64 %i.abn ; 2 uses
  %i.abp = load i64, ptr %i.abo, align 4
  %i.abq = and i64 %i.abp, 536870911
  %i.abr = sub nsw i64 0, %i.abq
  %i.abs = getelementptr inbounds [12 x i8], ptr %i.abo, i64 %i.abr
  %i.abt = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 136
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !33
  %i.abw = load i32, ptr @Gla_ManRefinement2.Sign, align 4, !tbaa !24
  tail call void @Gla_ManRefSelect_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.abs, i32 noundef %i.abv, ptr noundef nonnull %i.aam, i32 noundef %i.abw)
  %i.abx = load i32, ptr %i.aan, align 4, !tbaa !8 ; 2 uses
  %i.aby = icmp slt i32 %i.abx, 2
  br i1 %i.aby, label %Vec_IntUniqify.exit, label %bb.fq

bb.fq:                                            ; preds = %Vec_IntFill.exit
  %i.abz = load ptr, ptr %i.aap, align 8, !tbaa !13
  %i.aca = zext nneg i32 %i.abx to i64
  tail call void @qsort(ptr noundef %i.abz, i64 noundef %i.aca, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #29
  %i.acb = load i32, ptr %i.aan, align 4, !tbaa !8 ; 2 uses
  %i.acc = icmp sgt i32 %i.acb, 1
  br i1 %i.acc, label %.lr.ph.i422, label %._crit_edge.i

.lr.ph.i422:                                      ; preds = %bb.fq
  %i.acd = load ptr, ptr %i.aap, align 8, !tbaa !13 ; 2 uses
  br label %bb.fr

bb.fr:                                            ; preds = %bb.ft, %.lr.ph.i422
  %i.ace = phi i32 [ %i.acb, %.lr.ph.i422 ], [ %i.acm, %bb.ft ]
  %indvars.iv.i423 = phi i64 [ 1, %.lr.ph.i422 ], [ %indvars.iv.next.i425, %bb.ft ] ; 2 uses
  %.023.i = phi i32 [ 1, %.lr.ph.i422 ], [ %.1.i, %bb.ft ] ; 3 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %indvars.iv.i423 ; 2 uses
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !24 ; 2 uses
  %i.ach = getelementptr i8, ptr %i.acf, i64 -4
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !24
  %.not.i424 = icmp eq i32 %i.acg, %i.aci
  br i1 %.not.i424, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.acj = add nsw i32 %.023.i, 1
  %i.ack = sext i32 %.023.i to i64
  %i.acl = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.ack
  store i32 %i.acg, ptr %i.acl, align 4, !tbaa !24
  %.pre.i = load i32, ptr %i.aan, align 4, !tbaa !8
end_hunk_1
