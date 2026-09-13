Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaFront?download=true
inline.NumInlined: 66
inline.NumDeleted: 27
begin_hunk_0_@Gia_ManFrontTransform:bb.a
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.as
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.au, ptr %i.at, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %i.av, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !31
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph, label %.critedge.thread, !llvm.loop !40

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.not31 = icmp eq ptr %i.e, null
  br i1 %.not31, label %bb.h, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.g, %.critedge
  tail call void @free(ptr noundef nonnull %i.e) #17
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %.critedge.thread
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, -2147483648) i32 @Gia_ManCrossCutSimple(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  tail call void @Gia_ManCreateValueRefs(ptr noundef %0) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.035 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.1, %bb.d ]
  %.01934 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.3, %bb.d ]
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not23 = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not23 to i32
  %spec.select = add nsw i32 %.01934, %i.h        ; 4 uses
  %.1 = tail call i32 @llvm.smax.i32(i32 %.035, i32 %spec.select) ; 2 uses
  %.val30 = load i64, ptr %i.e, align 4           ; 3 uses
  %i.i = and i64 %.val30, 2147483648              ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %.val30, 536870911               ; 3 uses
  %i.k = icmp ne i64 %i.j, 536870911              ; 2 uses
  %narrow.i = and i1 %.not.i, %i.k
  br i1 %narrow.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [12 x i8], ptr %i.e, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35
  %i.p = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.p, ptr %i.n, align 4, !tbaa !35
  %i.q = icmp eq i32 %i.p, 0
  %i.r = sext i1 %i.q to i32
  %spec.select26 = add nsw i32 %spec.select, %i.r
  %i.s = lshr i64 %.val30, 32
  %i.t = and i64 %i.s, 536870911
  br label %.sink.split

bb.c:                                             ; preds = %.lr.ph.split
  %.not.i31 = icmp ne i64 %i.i, 0
  %narrow.i32 = and i1 %.not.i31, %i.k
  br i1 %narrow.i32, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink46 = phi i64 [ %i.t, %bb.b ], [ %i.j, %bb.c ]
  %spec.select26.sink = phi i32 [ %spec.select26, %bb.b ], [ %spec.select, %bb.c ]
  %i.u = sub nsw i64 0, %.sink46
  %i.v = getelementptr inbounds [12 x i8], ptr %i.e, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !35
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = sext i1 %i.z to i32
  %spec.select28 = add nsw i32 %spec.select26.sink, %i.aa
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.3 = phi i32 [ %spec.select, %bb.c ], [ %spec.select28, %.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !0

.critedge:                                        ; preds = %bb.d, %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %.1, %bb.d ]
  ret i32 %.0.lcssa
}

declare void @Gia_ManCreateValueRefs(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @Gia_ManFront(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  tail call void @Gia_ManCreateValueRefs(ptr noundef %0) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %Gia_ManCrossCutSimple.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %Gia_ManCrossCutSimple.exit, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.d, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.035.i = phi i32 [ 0, %.lr.ph.split.preheader.i ], [ %.1.i, %bb.d ]
  %.01934.i = phi i32 [ 0, %.lr.ph.split.preheader.i ], [ %.3.i, %bb.d ]
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %.val.i, i64 %indvars.iv.i ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not23.i = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not23.i to i32
  %spec.select.i = add nsw i32 %.01934.i, %i.h    ; 4 uses
  %.1.i = tail call i32 @llvm.smax.i32(i32 %.035.i, i32 %spec.select.i) ; 2 uses
  %.val30.i = load i64, ptr %i.e, align 4         ; 3 uses
  %i.i = and i64 %.val30.i, 2147483648            ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %.val30.i, 536870911             ; 3 uses
  %i.k = icmp ne i64 %i.j, 536870911              ; 2 uses
  %narrow.i.i = and i1 %.not.i.i, %i.k
  br i1 %narrow.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [12 x i8], ptr %i.e, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35
  %i.p = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.p, ptr %i.n, align 4, !tbaa !35
  %i.q = icmp eq i32 %i.p, 0
  %i.r = sext i1 %i.q to i32
  %spec.select26.i = add nsw i32 %spec.select.i, %i.r
  %i.s = lshr i64 %.val30.i, 32
  %i.t = and i64 %i.s, 536870911
  br label %.sink.split.i

bb.c:                                             ; preds = %.lr.ph.split.i
  %.not.i31.i = icmp ne i64 %i.i, 0
  %narrow.i32.i = and i1 %.not.i31.i, %i.k
  br i1 %narrow.i32.i, label %.sink.split.i, label %bb.d

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink46.i = phi i64 [ %i.t, %bb.b ], [ %i.j, %bb.c ]
  %spec.select26.sink.i = phi i32 [ %spec.select26.i, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.u = sub nsw i64 0, %.sink46.i
  %i.v = getelementptr inbounds [12 x i8], ptr %i.e, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !35
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = sext i1 %i.z to i32
  %spec.select28.i = add nsw i32 %spec.select26.sink.i, %i.aa
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i, %bb.c
  %.3.i = phi i32 [ %spec.select.i, %bb.c ], [ %spec.select28.i, %.sink.split.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManCrossCutSimple.exit.loopexit, label %.lr.ph.split.i, !llvm.loop !0

Gia_ManCrossCutSimple.exit.loopexit:              ; preds = %bb.d
  %i.ab = uitofp nneg i32 %.1.i to float
  %i.ac = fmul nnan float %i.ab, 1.100000e+00
  %i.ad = fptosi float %i.ac to i32
  %i.ae = add nsw i32 %i.ad, 1
  br label %Gia_ManCrossCutSimple.exit

Gia_ManCrossCutSimple.exit:                       ; preds = %Gia_ManCrossCutSimple.exit.loopexit, %bb.a, %.lr.ph.i
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ 1, %.lr.ph.i ], [ %i.ae, %Gia_ManCrossCutSimple.exit.loopexit ] ; 2 uses
  tail call void @Gia_ManCreateValueRefs(ptr noundef %0) #17
  %.val122 = load i32, ptr %i.a, align 8, !tbaa !31
  %i.af = tail call ptr @Gia_ManStart(i32 noundef %.val122) #17 ; 13 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !43    ; 3 uses
  %.not.i138 = icmp eq ptr %i.ag, null
  br i1 %.not.i138, label %Abc_UtilStrsav.exit, label %bb.e

bb.e:                                             ; preds = %Gia_ManCrossCutSimple.exit
  %i.ah = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ag) #18
  %i.ai = add i64 %i.ah, 1
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #16 ; 2 uses
  %i.ak = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull readonly dereferenceable(1) %i.ag) #17 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %Gia_ManCrossCutSimple.exit, %bb.e
  %i.al = phi ptr [ %i.aj, %bb.e ], [ null, %Gia_ManCrossCutSimple.exit ]
  store ptr %i.al, ptr %i.af, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 3 uses
  %.not.i139 = icmp eq ptr %i.an, null
  br i1 %.not.i139, label %Gia_ManFrontFindNext.exit, label %bb.f

bb.f:                                             ; preds = %Abc_UtilStrsav.exit
  %i.ao = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.an) #18
  %i.ap = add i64 %i.ao, 1
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #16 ; 2 uses
  %i.ar = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull readonly dereferenceable(1) %i.an) #17 ; 0 uses
  br label %Gia_ManFrontFindNext.exit

Gia_ManFrontFindNext.exit:                        ; preds = %bb.f, %Abc_UtilStrsav.exit
  %i.as = phi ptr [ %i.aq, %bb.f ], [ null, %Abc_UtilStrsav.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 180 ; 3 uses
  store i32 %.0.lcssa.i, ptr %i.au, align 4, !tbaa !30
  %1 = sext i32 %.0.lcssa.i to i64
  %i.av = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 1) #19 ; 12 uses
  store i8 1, ptr %i.av, align 1, !tbaa !45
  %i.aw = getelementptr i8, ptr %i.af, i64 32     ; 8 uses
  %.val124 = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %.val124, i64 8
  store i32 0, ptr %i.ax, align 4, !tbaa !35
  %i.ay = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %.val123 = load ptr, ptr %i.ay, align 8, !tbaa !32
  %i.az = getelementptr i8, ptr %.val123, i64 8
  %.val129 = load i32, ptr %i.az, align 4, !tbaa !35
  %i.ba = icmp eq i32 %.val129, 0
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %Gia_ManFrontFindNext.exit
  store i8 0, ptr %i.av, align 1, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %Gia_ManFrontFindNext.exit, %bb.g
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !31
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 72 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  br label %bb.i

.critedge.preheader:                              ; preds = %bb.an, %bb.h
  tail call void @free(ptr noundef %i.av) #17
  %i.bg = getelementptr i8, ptr %0, i64 16
  %.val137 = load i32, ptr %i.bg, align 8, !tbaa !46
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.af, i32 noundef %.val137) #17
  ret ptr %i.af

bb.i:                                             ; preds = %.lr.ph, %bb.an
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.an ] ; 5 uses
  %.0179 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.an ] ; 8 uses
  %.val120 = load ptr, ptr %i.ay, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %.val120, i64 %indvars.iv ; 14 uses
  %.val130 = load i64, ptr %i.bh, align 4         ; 3 uses
  %i.bi = and i64 %.val130, 2684354559
  %narrow.i.not = icmp eq i64 %i.bi, 2684354559
  br i1 %narrow.i.not, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr i8, ptr %i.bh, i64 8
  %i.bk = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.af) ; 4 uses
  %i.bl = load i64, ptr %i.bk, align 4
  %i.bm = or i64 %i.bl, 2684354559                ; 2 uses
  store i64 %i.bm, ptr %i.bk, align 4
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %.val.i144 = load i32, ptr %i.bo, align 4, !tbaa !37
  %i.bp = and i32 %.val.i144, 536870911
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 32
  %i.bs = and i64 %i.bm, -2305843004918726657
  %i.bt = or disjoint i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.bk, align 4
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !47 ; 6 uses
  %.val11.i = load ptr, ptr %i.aw, align 8, !tbaa !32 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !37 ; 7 uses
  %i.bx = load i32, ptr %i.bu, align 8, !tbaa !38
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.k, label %Gia_ManAppendCi.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp slt i32 %i.bw, 16
  br i1 %i.bz, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not9.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.cd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.n, %bb.m
  %i.ce = phi ptr [ %i.cc, %bb.m ], [ %i.cd, %bb.n ]
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.o:                                             ; preds = %bb.k
  %i.cf = icmp samesign ult i32 %i.bw, 1073741823
  %i.cg = shl nuw nsw i32 %i.bw, 1
  %spec.select.i.i = select i1 %i.cf, i32 %i.cg, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bw, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.p, label %Gia_ManAppendCi.exit

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.ci, null
  %i.cj = zext nneg i32 %spec.select.i.i to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = tail call ptr @realloc(ptr noundef nonnull %i.ci, i64 noundef %i.ck) #20
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.ck) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cn = phi ptr [ %i.cl, %bb.q ], [ %i.cm, %bb.r ]
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.s, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.s ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.bu, align 8, !tbaa !38
  %.pre.i = load i32, ptr %i.bv, align 4, !tbaa !37
  %.val10.pre.i = load ptr, ptr %i.aw, align 8, !tbaa !32
  br label %Gia_ManAppendCi.exit

Gia_ManAppendCi.exit:                             ; preds = %bb.j, %bb.o, %Vec_IntGrow.exit11.sink.split.i.i
  %.val119 = phi ptr [ %.val11.i, %bb.j ], [ %.val11.i, %bb.o ], [ %.val10.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.co = phi i32 [ %i.bw, %bb.j ], [ %i.bw, %bb.o ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.cp = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.cq = ptrtoint ptr %.val11.i to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 12
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !39
  %i.cw = add nsw i32 %i.co, 1
  store i32 %i.cw, ptr %i.bv, align 4, !tbaa !37
  %i.cx = sext i32 %i.co to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cx
  store i32 %i.ct, ptr %i.cy, align 4, !tbaa !33
  %i.cz = ptrtoint ptr %.val119 to i64
  %i.da = sub i64 %i.cp, %i.cz
  %i.db = sdiv exact i64 %i.da, 12
  %i.dc = shl i64 %i.db, 33
  %i.dd = ashr exact i64 %i.dc, 33
  %i.de = getelementptr inbounds [12 x i8], ptr %.val119, i64 %i.dd
  %i.df = load i32, ptr %i.au, align 4, !tbaa !30
  %i.dg = sext i32 %.0179 to i64                  ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.av, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !45
  %.not7.i145 = icmp eq i8 %i.di, 0
  br i1 %.not7.i145, label %Gia_ManFrontFindNext.exit151, label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %Gia_ManAppendCi.exit, %.lr.ph.i146
  %.08.i147 = phi i32 [ %i.dk, %.lr.ph.i146 ], [ %.0179, %Gia_ManAppendCi.exit ]
  %i.dj = add nsw i32 %.08.i147, 1
  %i.dk = srem i32 %i.dj, %i.df                   ; 3 uses
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.av, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !45
  %.not.i148 = icmp eq i8 %i.dn, 0
  br i1 %.not.i148, label %Gia_ManFrontFindNext.exit151, label %.lr.ph.i146, !llvm.loop !41

Gia_ManFrontFindNext.exit151:                     ; preds = %.lr.ph.i146, %Gia_ManAppendCi.exit
  %.lcssa6.i149 = phi i64 [ %i.dg, %Gia_ManAppendCi.exit ], [ %i.dl, %.lr.ph.i146 ]
  %.0.lcssa.i150 = phi i32 [ %.0179, %Gia_ManAppendCi.exit ], [ %i.dk, %.lr.ph.i146 ] ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %i.av, i64 %.lcssa6.i149
  store i8 1, ptr %i.do, align 1, !tbaa !45
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 %.0.lcssa.i150, ptr %i.dp, align 4, !tbaa !35
  %.val127 = load i32, ptr %i.bj, align 4, !tbaa !35
  %i.dq = icmp eq i32 %.val127, 0
  br i1 %i.dq, label %bb.t, label %bb.an

bb.t:                                             ; preds = %Gia_ManFrontFindNext.exit151
  %i.dr = sext i32 %.0.lcssa.i150 to i64
  br label %.sink.split

bb.u:                                             ; preds = %bb.i
  %i.ds = and i64 %.val130, 2147483648
  %.not.i152 = icmp eq i64 %i.ds, 0
  %i.dt = and i64 %.val130, 536870911
  %i.du = icmp eq i64 %i.dt, 536870911
  %narrow.i153.not = or i1 %.not.i152, %i.du
  br i1 %narrow.i153.not, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.af) ; 8 uses
  %i.dw = load i64, ptr %i.dv, align 4
  %i.dx = or i64 %i.dw, 2147483648                ; 2 uses
  store i64 %i.dx, ptr %i.dv, align 4
  %.val20.i = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.dy = ptrtoint ptr %i.dv to i64               ; 3 uses
  %i.dz = ptrtoint ptr %.val20.i to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 12
  %i.ec = and i64 %i.eb, 536870911
  %i.ed = and i64 %i.dx, -1073741824
  %i.ee = or disjoint i64 %i.ec, %i.ed            ; 2 uses
end_hunk_0
