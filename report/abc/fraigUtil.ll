Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraigUtil?download=true
inline.NumInlined: 19
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Fraig_BitStringCountOnes:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1, !tbaa !42
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43
  %i.h = add nsw i32 %i.g, %.010
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !42
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = add nsw i32 %i.n, %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !42
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = add nsw i32 %i.u, %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !42
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !43
  %i.ac = add nsw i32 %i.ab, %i.v                 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ac, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define noundef i32 @Fraig_ManCheckConsistency(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !8
  %i.d = tail call ptr @Fraig_NodeVecAlloc(i32 noundef 100) #16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %Fraig_Dfs.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.r, %.lr.ph.i ], [ %i.f, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -2
  %i.q = inttoptr i64 %i.p to ptr
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !8
  tail call fastcc void @Fraig_Dfs_rec(i32 %.val.i, ptr noundef %i.q, ptr noundef %i.d, i32 noundef 0)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !24
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next.i, %i.u
  br i1 %i.v, label %.lr.ph.i, label %Fraig_Dfs.exit, !llvm.loop !29

Fraig_Dfs.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !24
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Fraig_Dfs.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 11 uses
  %i.ad = tail call i32 @Fraig_NodeIsVar(ptr noundef %i.ac) #16
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %.not25 = icmp eq ptr %i.af, null
  br i1 %.not25, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.ac, align 8, !tbaa !37
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ag) ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.ai = tail call i32 @Fraig_NodeIsConst(ptr noundef %i.ac) #16
  %.not20 = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45
  %.not21 = icmp eq ptr %i.ak, null               ; 2 uses
  br i1 %.not20, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not21, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !37
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.al) ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !37
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.an) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, -2
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !45
  %.not22 = icmp eq ptr %i.av, null
  br i1 %.not22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.ac, align 8, !tbaa !37
  %i.ax = load i32, ptr %i.at, align 8, !tbaa !37
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.aw, i32 noundef %i.ax) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !34
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, -2
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !45
  %.not23 = icmp eq ptr %i.bf, null
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load i32, ptr %i.ac, align 8, !tbaa !37
  %i.bh = load i32, ptr %i.bd, align 8, !tbaa !37
  %i.bi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.bg, i32 noundef %i.bh) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.c, %bb.l, %bb.m, %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = load i32, ptr %i.w, align 4, !tbaa !24
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.b, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.n, %Fraig_Dfs.exit
  tail call void @Fraig_NodeVecFree(ptr noundef nonnull %i.d) #16
  ret i32 1
}

declare i32 @Fraig_NodeIsVar(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i32 @Fraig_NodeIsConst(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Fraig_PrintNode(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !8
  %i.d = tail call ptr @Fraig_NodeVecAlloc(i32 noundef 100) #16 ; 4 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, -2
  %i.g = inttoptr i64 %i.f to ptr
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !8
  tail call fastcc void @Fraig_Dfs_rec(i32 %.val.i, ptr noundef %i.g, ptr noundef %i.d, i32 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %select.unfold._crit_edge.i30
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %select.unfold._crit_edge.i30 ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 10 uses
  %i.o = tail call i32 @Fraig_NodeIsVar(ptr noundef %i.n) #16
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.lr.ph19.split.i33, label %.lr.ph19.split.i.a

.lr.ph19.split.i.a:                               ; preds = %bb.b
  %2 = load i32, ptr %i.n, align 8, !tbaa !37
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %2) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 104 ; 20 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !47 ; 20 uses
  %4 = load i32, ptr %i.p, align 8, !tbaa !43
  %5 = lshr i32 %4, 19
  %6 = and i32 %5, 1
  %7 = or disjoint i32 %6, 48
  %fputc.i = tail call i32 @fputc(i32 %7, ptr %i.q) ; 0 uses
  %8 = load i32, ptr %i.p, align 8, !tbaa !43
  %9 = lshr i32 %8, 18
  %10 = and i32 %9, 1
  %11 = or disjoint i32 %10, 48
  %fputc.i.1 = tail call i32 @fputc(i32 %11, ptr %i.q) ; 0 uses
  %12 = load i32, ptr %i.p, align 8, !tbaa !43
  %13 = lshr i32 %12, 17
  %14 = and i32 %13, 1
  %15 = or disjoint i32 %14, 48
  %fputc.i.2 = tail call i32 @fputc(i32 %15, ptr %i.q) ; 0 uses
  %16 = load i32, ptr %i.p, align 8, !tbaa !43
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 1
  %19 = or disjoint i32 %18, 48
  %fputc.i.3 = tail call i32 @fputc(i32 %19, ptr %i.q) ; 0 uses
  %20 = load i32, ptr %i.p, align 8, !tbaa !43
  %21 = lshr i32 %20, 15
  %22 = and i32 %21, 1
  %23 = or disjoint i32 %22, 48
  %fputc.i.4 = tail call i32 @fputc(i32 %23, ptr %i.q) ; 0 uses
  %24 = load i32, ptr %i.p, align 8, !tbaa !43
  %25 = lshr i32 %24, 14
  %26 = and i32 %25, 1
  %27 = or disjoint i32 %26, 48
  %fputc.i.5 = tail call i32 @fputc(i32 %27, ptr %i.q) ; 0 uses
  %28 = load i32, ptr %i.p, align 8, !tbaa !43
  %29 = lshr i32 %28, 13
  %30 = and i32 %29, 1
  %31 = or disjoint i32 %30, 48
  %fputc.i.6 = tail call i32 @fputc(i32 %31, ptr %i.q) ; 0 uses
  %32 = load i32, ptr %i.p, align 8, !tbaa !43
  %33 = lshr i32 %32, 12
  %34 = and i32 %33, 1
  %35 = or disjoint i32 %34, 48
  %fputc.i.7 = tail call i32 @fputc(i32 %35, ptr %i.q) ; 0 uses
  %36 = load i32, ptr %i.p, align 8, !tbaa !43
  %37 = lshr i32 %36, 11
  %38 = and i32 %37, 1
  %39 = or disjoint i32 %38, 48
  %fputc.i.8 = tail call i32 @fputc(i32 %39, ptr %i.q) ; 0 uses
  %40 = load i32, ptr %i.p, align 8, !tbaa !43
  %41 = lshr i32 %40, 10
  %42 = and i32 %41, 1
  %43 = or disjoint i32 %42, 48
  %fputc.i.9 = tail call i32 @fputc(i32 %43, ptr %i.q) ; 0 uses
  %44 = load i32, ptr %i.p, align 8, !tbaa !43
  %45 = lshr i32 %44, 9
  %46 = and i32 %45, 1
  %47 = or disjoint i32 %46, 48
  %fputc.i.10 = tail call i32 @fputc(i32 %47, ptr %i.q) ; 0 uses
  %48 = load i32, ptr %i.p, align 8, !tbaa !43
  %49 = lshr i32 %48, 8
  %50 = and i32 %49, 1
  %51 = or disjoint i32 %50, 48
  %fputc.i.11 = tail call i32 @fputc(i32 %51, ptr %i.q) ; 0 uses
  %52 = load i32, ptr %i.p, align 8, !tbaa !43
  %53 = lshr i32 %52, 7
  %54 = and i32 %53, 1
  %55 = or disjoint i32 %54, 48
  %fputc.i.12 = tail call i32 @fputc(i32 %55, ptr %i.q) ; 0 uses
  %56 = load i32, ptr %i.p, align 8, !tbaa !43
  %57 = lshr i32 %56, 6
  %58 = and i32 %57, 1
  %59 = or disjoint i32 %58, 48
  %fputc.i.13 = tail call i32 @fputc(i32 %59, ptr %i.q) ; 0 uses
  %60 = load i32, ptr %i.p, align 8, !tbaa !43
  %61 = lshr i32 %60, 5
  %62 = and i32 %61, 1
  %63 = or disjoint i32 %62, 48
  %fputc.i.14 = tail call i32 @fputc(i32 %63, ptr %i.q) ; 0 uses
  %64 = load i32, ptr %i.p, align 8, !tbaa !43
  %65 = lshr i32 %64, 4
  %66 = and i32 %65, 1
  %67 = or disjoint i32 %66, 48
  %fputc.i.15 = tail call i32 @fputc(i32 %67, ptr %i.q) ; 0 uses
  %68 = load i32, ptr %i.p, align 8, !tbaa !43
  %69 = lshr i32 %68, 3
  %70 = and i32 %69, 1
  %71 = or disjoint i32 %70, 48
  %fputc.i.16 = tail call i32 @fputc(i32 %71, ptr %i.q) ; 0 uses
  %72 = load i32, ptr %i.p, align 8, !tbaa !43
  %73 = lshr i32 %72, 2
  %74 = and i32 %73, 1
  %75 = or disjoint i32 %74, 48
  %fputc.i.17 = tail call i32 @fputc(i32 %75, ptr %i.q) ; 0 uses
  %76 = load i32, ptr %i.p, align 8, !tbaa !43
  %77 = lshr i32 %76, 1
  %78 = and i32 %77, 1
  %79 = or disjoint i32 %78, 48
  %fputc.i.18 = tail call i32 @fputc(i32 %79, ptr %i.q) ; 0 uses
  %80 = load i32, ptr %i.p, align 8, !tbaa !43
  %81 = and i32 %80, 1
  %82 = or disjoint i32 %81, 48
  %fputc.i.19 = tail call i32 @fputc(i32 %82, ptr %i.q) ; 0 uses
  %83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 20 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !47 ; 20 uses
  %84 = load i32, ptr %i.r, align 8, !tbaa !43
  %85 = lshr i32 %84, 19
  %86 = and i32 %85, 1
  %87 = or disjoint i32 %86, 48
  %fputc.i29 = tail call i32 @fputc(i32 %87, ptr %i.s) ; 0 uses
  %88 = load i32, ptr %i.r, align 8, !tbaa !43
  %89 = lshr i32 %88, 18
  %90 = and i32 %89, 1
  %91 = or disjoint i32 %90, 48
  %fputc.i29.1 = tail call i32 @fputc(i32 %91, ptr %i.s) ; 0 uses
  %92 = load i32, ptr %i.r, align 8, !tbaa !43
  %93 = lshr i32 %92, 17
  %94 = and i32 %93, 1
  %95 = or disjoint i32 %94, 48
  %fputc.i29.2 = tail call i32 @fputc(i32 %95, ptr %i.s) ; 0 uses
  %96 = load i32, ptr %i.r, align 8, !tbaa !43
  %97 = lshr i32 %96, 16
  %98 = and i32 %97, 1
  %99 = or disjoint i32 %98, 48
  %fputc.i29.3 = tail call i32 @fputc(i32 %99, ptr %i.s) ; 0 uses
  %100 = load i32, ptr %i.r, align 8, !tbaa !43
  %101 = lshr i32 %100, 15
  %102 = and i32 %101, 1
  %103 = or disjoint i32 %102, 48
  %fputc.i29.4 = tail call i32 @fputc(i32 %103, ptr %i.s) ; 0 uses
  %104 = load i32, ptr %i.r, align 8, !tbaa !43
  %105 = lshr i32 %104, 14
  %106 = and i32 %105, 1
  %107 = or disjoint i32 %106, 48
  %fputc.i29.5 = tail call i32 @fputc(i32 %107, ptr %i.s) ; 0 uses
  %108 = load i32, ptr %i.r, align 8, !tbaa !43
  %109 = lshr i32 %108, 13
  %110 = and i32 %109, 1
  %111 = or disjoint i32 %110, 48
  %fputc.i29.6 = tail call i32 @fputc(i32 %111, ptr %i.s) ; 0 uses
  %112 = load i32, ptr %i.r, align 8, !tbaa !43
  %113 = lshr i32 %112, 12
  %114 = and i32 %113, 1
  %115 = or disjoint i32 %114, 48
  %fputc.i29.7 = tail call i32 @fputc(i32 %115, ptr %i.s) ; 0 uses
  %116 = load i32, ptr %i.r, align 8, !tbaa !43
  %117 = lshr i32 %116, 11
  %118 = and i32 %117, 1
  %119 = or disjoint i32 %118, 48
  %fputc.i29.8 = tail call i32 @fputc(i32 %119, ptr %i.s) ; 0 uses
  %120 = load i32, ptr %i.r, align 8, !tbaa !43
  %121 = lshr i32 %120, 10
  %122 = and i32 %121, 1
  %123 = or disjoint i32 %122, 48
  %fputc.i29.9 = tail call i32 @fputc(i32 %123, ptr %i.s) ; 0 uses
  %124 = load i32, ptr %i.r, align 8, !tbaa !43
  %125 = lshr i32 %124, 9
  %126 = and i32 %125, 1
  %127 = or disjoint i32 %126, 48
  %fputc.i29.10 = tail call i32 @fputc(i32 %127, ptr %i.s) ; 0 uses
  %128 = load i32, ptr %i.r, align 8, !tbaa !43
  %129 = lshr i32 %128, 8
  %130 = and i32 %129, 1
  %131 = or disjoint i32 %130, 48
  %fputc.i29.11 = tail call i32 @fputc(i32 %131, ptr %i.s) ; 0 uses
  %132 = load i32, ptr %i.r, align 8, !tbaa !43
  %133 = lshr i32 %132, 7
  %134 = and i32 %133, 1
  %135 = or disjoint i32 %134, 48
  %fputc.i29.12 = tail call i32 @fputc(i32 %135, ptr %i.s) ; 0 uses
  %136 = load i32, ptr %i.r, align 8, !tbaa !43
  %137 = lshr i32 %136, 6
  %138 = and i32 %137, 1
  %139 = or disjoint i32 %138, 48
  %fputc.i29.13 = tail call i32 @fputc(i32 %139, ptr %i.s) ; 0 uses
  %140 = load i32, ptr %i.r, align 8, !tbaa !43
  %141 = lshr i32 %140, 5
  %142 = and i32 %141, 1
  %143 = or disjoint i32 %142, 48
  %fputc.i29.14 = tail call i32 @fputc(i32 %143, ptr %i.s) ; 0 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !43
  %144 = lshr i32 %i.t, 4
  %145 = and i32 %144, 1
  %146 = or disjoint i32 %145, 48
  %fputc.i29.15 = tail call i32 @fputc(i32 %146, ptr %i.s) ; 0 uses
  %147 = load i32, ptr %i.r, align 8, !tbaa !43
  %148 = lshr i32 %147, 3
  %149 = and i32 %148, 1
  %150 = or disjoint i32 %149, 48
  %fputc.i29.16 = tail call i32 @fputc(i32 %150, ptr %i.s) ; 0 uses
  %i.u = load i32, ptr %i.r, align 8, !tbaa !43
  %151 = lshr i32 %i.u, 2
  %152 = and i32 %151, 1
  %153 = or disjoint i32 %152, 48
  %fputc.i29.17 = tail call i32 @fputc(i32 %153, ptr %i.s) ; 0 uses
  %154 = load i32, ptr %i.r, align 8, !tbaa !43
  %155 = lshr i32 %154, 1
  %156 = and i32 %155, 1
  %157 = or disjoint i32 %156, 48
  %fputc.i29.18 = tail call i32 @fputc(i32 %157, ptr %i.s) ; 0 uses
  %i.v = load i32, ptr %i.r, align 8, !tbaa !43
  %158 = and i32 %i.v, 1
  %159 = or disjoint i32 %158, 48
  %fputc.i29.19 = tail call i32 @fputc(i32 %159, ptr %i.s) ; 0 uses
  br label %select.unfold._crit_edge.i30

.lr.ph19.split.i33:                               ; preds = %bb.b
  %160 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %161 = load ptr, ptr %160, align 8, !tbaa !33
  %162 = ptrtoint ptr %161 to i64                 ; 2 uses
  %163 = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.w = load ptr, ptr %163, align 8, !tbaa !34
  %164 = ptrtoint ptr %i.w to i64                 ; 2 uses
  %165 = load i32, ptr %i.n, align 8, !tbaa !37
  %166 = and i64 %162, 1
  %.not22 = icmp eq i64 %166, 0
  %167 = select i1 %.not22, i32 43, i32 45
  %168 = and i64 %162, -2
  %169 = inttoptr i64 %168 to ptr
  %170 = load i32, ptr %169, align 8, !tbaa !37
  %171 = and i64 %164, 1
  %.not23 = icmp eq i64 %171, 0
  %172 = select i1 %.not23, i32 43, i32 45
  %173 = and i64 %164, -2
  %174 = inttoptr i64 %173 to ptr
  %175 = load i32, ptr %174, align 8, !tbaa !37
  %176 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %165, i32 noundef %167, i32 noundef %170, i32 noundef %172, i32 noundef %175) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 104 ; 20 uses
  %177 = load ptr, ptr @stdout, align 8, !tbaa !47 ; 20 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !43
  %i.z = lshr i32 %i.y, 19
  %i.aa = and i32 %i.z, 1
  %i.ab = or disjoint i32 %i.aa, 48
  %fputc.i38 = tail call i32 @fputc(i32 %i.ab, ptr %177) ; 0 uses
  %i.ac = load i32, ptr %i.x, align 8, !tbaa !43
  %i.ad = lshr i32 %i.ac, 18
  %i.ae = and i32 %i.ad, 1
  %i.af = or disjoint i32 %i.ae, 48
  %fputc.i38.1 = tail call i32 @fputc(i32 %i.af, ptr %177) ; 0 uses
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !43
  %i.ah = lshr i32 %i.ag, 17
  %i.ai = and i32 %i.ah, 1
  %i.aj = or disjoint i32 %i.ai, 48
  %fputc.i38.2 = tail call i32 @fputc(i32 %i.aj, ptr %177) ; 0 uses
  %i.ak = load i32, ptr %i.x, align 8, !tbaa !43
  %i.al = lshr i32 %i.ak, 16
  %i.am = and i32 %i.al, 1
  %i.an = or disjoint i32 %i.am, 48
  %fputc.i38.3 = tail call i32 @fputc(i32 %i.an, ptr %177) ; 0 uses
  %i.ao = load i32, ptr %i.x, align 8, !tbaa !43
  %i.ap = lshr i32 %i.ao, 15
  %i.aq = and i32 %i.ap, 1
  %i.ar = or disjoint i32 %i.aq, 48
  %fputc.i38.4 = tail call i32 @fputc(i32 %i.ar, ptr %177) ; 0 uses
  %i.as = load i32, ptr %i.x, align 8, !tbaa !43
  %i.at = lshr i32 %i.as, 14
  %i.au = and i32 %i.at, 1
  %i.av = or disjoint i32 %i.au, 48
  %fputc.i38.5 = tail call i32 @fputc(i32 %i.av, ptr %177) ; 0 uses
  %i.aw = load i32, ptr %i.x, align 8, !tbaa !43
  %i.ax = lshr i32 %i.aw, 13
  %i.ay = and i32 %i.ax, 1
  %i.az = or disjoint i32 %i.ay, 48
  %fputc.i38.6 = tail call i32 @fputc(i32 %i.az, ptr %177) ; 0 uses
  %i.ba = load i32, ptr %i.x, align 8, !tbaa !43
  %i.bb = lshr i32 %i.ba, 12
  %i.bc = and i32 %i.bb, 1
  %i.bd = or disjoint i32 %i.bc, 48
  %fputc.i38.7 = tail call i32 @fputc(i32 %i.bd, ptr %177) ; 0 uses
  %i.be = load i32, ptr %i.x, align 8, !tbaa !43
  %i.bf = lshr i32 %i.be, 11
  %i.bg = and i32 %i.bf, 1
  %i.bh = or disjoint i32 %i.bg, 48
  %fputc.i38.8 = tail call i32 @fputc(i32 %i.bh, ptr %177) ; 0 uses
  %i.bi = load i32, ptr %i.x, align 8, !tbaa !43
  %i.bj = lshr i32 %i.bi, 10
  %i.bk = and i32 %i.bj, 1
  %i.bl = or disjoint i32 %i.bk, 48
  %fputc.i38.9 = tail call i32 @fputc(i32 %i.bl, ptr %177) ; 0 uses
  %i.bm = load i32, ptr %i.x, align 8, !tbaa !43
  %i.bn = lshr i32 %i.bm, 9
  %i.bo = and i32 %i.bn, 1
  %i.bp = or disjoint i32 %i.bo, 48
  %fputc.i38.10 = tail call i32 @fputc(i32 %i.bp, ptr %177) ; 0 uses
  %i.bq = load i32, ptr %i.x, align 8, !tbaa !43
  %i.br = lshr i32 %i.bq, 8
  %i.bs = and i32 %i.br, 1
  %i.bt = or disjoint i32 %i.bs, 48
  %fputc.i38.11 = tail call i32 @fputc(i32 %i.bt, ptr %177) ; 0 uses
  %i.bu = load i32, ptr %i.x, align 8, !tbaa !43
  %i.bv = lshr i32 %i.bu, 7
  %i.bw = and i32 %i.bv, 1
  %i.bx = or disjoint i32 %i.bw, 48
  %fputc.i38.12 = tail call i32 @fputc(i32 %i.bx, ptr %177) ; 0 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !43
  %i.bz = lshr i32 %i.by, 6
  %i.ca = and i32 %i.bz, 1
  %i.cb = or disjoint i32 %i.ca, 48
  %fputc.i38.13 = tail call i32 @fputc(i32 %i.cb, ptr %177) ; 0 uses
  %i.cc = load i32, ptr %i.x, align 8, !tbaa !43
  %i.cd = lshr i32 %i.cc, 5
  %i.ce = and i32 %i.cd, 1
  %i.cf = or disjoint i32 %i.ce, 48
  %fputc.i38.14 = tail call i32 @fputc(i32 %i.cf, ptr %177) ; 0 uses
  %i.cg = load i32, ptr %i.x, align 8, !tbaa !43
  %i.ch = lshr i32 %i.cg, 4
  %i.ci = and i32 %i.ch, 1
  %i.cj = or disjoint i32 %i.ci, 48
  %fputc.i38.15 = tail call i32 @fputc(i32 %i.cj, ptr %177) ; 0 uses
  %i.ck = load i32, ptr %i.x, align 8, !tbaa !43
  %i.cl = lshr i32 %i.ck, 3
  %i.cm = and i32 %i.cl, 1
  %i.cn = or disjoint i32 %i.cm, 48
  %fputc.i38.16 = tail call i32 @fputc(i32 %i.cn, ptr %177) ; 0 uses
  %i.co = load i32, ptr %i.x, align 8, !tbaa !43
  %i.cp = lshr i32 %i.co, 2
  %i.cq = and i32 %i.cp, 1
  %i.cr = or disjoint i32 %i.cq, 48
  %fputc.i38.17 = tail call i32 @fputc(i32 %i.cr, ptr %177) ; 0 uses
  %i.cs = load i32, ptr %i.x, align 8, !tbaa !43
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = and i32 %i.ct, 1
  %i.cv = or disjoint i32 %i.cu, 48
  %fputc.i38.18 = tail call i32 @fputc(i32 %i.cv, ptr %177) ; 0 uses
  %i.cw = load i32, ptr %i.x, align 8, !tbaa !43
  %i.cx = and i32 %i.cw, 1
  %i.cy = or disjoint i32 %i.cx, 48
  %fputc.i38.19 = tail call i32 @fputc(i32 %i.cy, ptr %177) ; 0 uses
  %i.cz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %178 = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 20 uses
  %179 = load ptr, ptr @stdout, align 8, !tbaa !47 ; 20 uses
  %i.da = load i32, ptr %178, align 8, !tbaa !43
  %i.db = lshr i32 %i.da, 19
  %i.dc = and i32 %i.db, 1
  %i.dd = or disjoint i32 %i.dc, 48
  %fputc.i47 = tail call i32 @fputc(i32 %i.dd, ptr %179) ; 0 uses
  %i.de = load i32, ptr %178, align 8, !tbaa !43
  %i.df = lshr i32 %i.de, 18
  %i.dg = and i32 %i.df, 1
  %i.dh = or disjoint i32 %i.dg, 48
  %fputc.i47.1 = tail call i32 @fputc(i32 %i.dh, ptr %179) ; 0 uses
  %i.di = load i32, ptr %178, align 8, !tbaa !43
  %i.dj = lshr i32 %i.di, 17
  %i.dk = and i32 %i.dj, 1
  %i.dl = or disjoint i32 %i.dk, 48
  %fputc.i47.2 = tail call i32 @fputc(i32 %i.dl, ptr %179) ; 0 uses
  %i.dm = load i32, ptr %178, align 8, !tbaa !43
  %i.dn = lshr i32 %i.dm, 16
  %i.do = and i32 %i.dn, 1
  %i.dp = or disjoint i32 %i.do, 48
  %fputc.i47.3 = tail call i32 @fputc(i32 %i.dp, ptr %179) ; 0 uses
  %i.dq = load i32, ptr %178, align 8, !tbaa !43
  %i.dr = lshr i32 %i.dq, 15
  %i.ds = and i32 %i.dr, 1
  %i.dt = or disjoint i32 %i.ds, 48
  %fputc.i47.4 = tail call i32 @fputc(i32 %i.dt, ptr %179) ; 0 uses
  %i.du = load i32, ptr %178, align 8, !tbaa !43
  %i.dv = lshr i32 %i.du, 14
  %i.dw = and i32 %i.dv, 1
  %i.dx = or disjoint i32 %i.dw, 48
  %fputc.i47.5 = tail call i32 @fputc(i32 %i.dx, ptr %179) ; 0 uses
  %i.dy = load i32, ptr %178, align 8, !tbaa !43
  %i.dz = lshr i32 %i.dy, 13
  %i.ea = and i32 %i.dz, 1
  %i.eb = or disjoint i32 %i.ea, 48
  %fputc.i47.6 = tail call i32 @fputc(i32 %i.eb, ptr %179) ; 0 uses
  %i.ec = load i32, ptr %178, align 8, !tbaa !43
  %i.ed = lshr i32 %i.ec, 12
  %i.ee = and i32 %i.ed, 1
  %i.ef = or disjoint i32 %i.ee, 48
  %fputc.i47.7 = tail call i32 @fputc(i32 %i.ef, ptr %179) ; 0 uses
  %i.eg = load i32, ptr %178, align 8, !tbaa !43
  %i.eh = lshr i32 %i.eg, 11
  %i.ei = and i32 %i.eh, 1
  %i.ej = or disjoint i32 %i.ei, 48
  %fputc.i47.8 = tail call i32 @fputc(i32 %i.ej, ptr %179) ; 0 uses
  %i.ek = load i32, ptr %178, align 8, !tbaa !43
  %i.el = lshr i32 %i.ek, 10
  %i.em = and i32 %i.el, 1
  %i.en = or disjoint i32 %i.em, 48
  %fputc.i47.9 = tail call i32 @fputc(i32 %i.en, ptr %179) ; 0 uses
  %i.eo = load i32, ptr %178, align 8, !tbaa !43
  %i.ep = lshr i32 %i.eo, 9
  %i.eq = and i32 %i.ep, 1
  %i.er = or disjoint i32 %i.eq, 48
  %fputc.i47.10 = tail call i32 @fputc(i32 %i.er, ptr %179) ; 0 uses
  %i.es = load i32, ptr %178, align 8, !tbaa !43
  %i.et = lshr i32 %i.es, 8
  %i.eu = and i32 %i.et, 1
  %i.ev = or disjoint i32 %i.eu, 48
  %fputc.i47.11 = tail call i32 @fputc(i32 %i.ev, ptr %179) ; 0 uses
  %i.ew = load i32, ptr %178, align 8, !tbaa !43
  %i.ex = lshr i32 %i.ew, 7
  %i.ey = and i32 %i.ex, 1
  %i.ez = or disjoint i32 %i.ey, 48
  %fputc.i47.12 = tail call i32 @fputc(i32 %i.ez, ptr %179) ; 0 uses
  %i.fa = load i32, ptr %178, align 8, !tbaa !43
  %i.fb = lshr i32 %i.fa, 6
  %i.fc = and i32 %i.fb, 1
  %i.fd = or disjoint i32 %i.fc, 48
  %fputc.i47.13 = tail call i32 @fputc(i32 %i.fd, ptr %179) ; 0 uses
  %i.fe = load i32, ptr %178, align 8, !tbaa !43
  %i.ff = lshr i32 %i.fe, 5
  %i.fg = and i32 %i.ff, 1
  %i.fh = or disjoint i32 %i.fg, 48
  %fputc.i47.14 = tail call i32 @fputc(i32 %i.fh, ptr %179) ; 0 uses
  %i.fi = load i32, ptr %178, align 8, !tbaa !43
  %i.fj = lshr i32 %i.fi, 4
  %i.fk = and i32 %i.fj, 1
  %i.fl = or disjoint i32 %i.fk, 48
  %fputc.i47.15 = tail call i32 @fputc(i32 %i.fl, ptr %179) ; 0 uses
  %i.fm = load i32, ptr %178, align 8, !tbaa !43
  %i.fn = lshr i32 %i.fm, 3
  %i.fo = and i32 %i.fn, 1
  %i.fp = or disjoint i32 %i.fo, 48
  %fputc.i47.16 = tail call i32 @fputc(i32 %i.fp, ptr %179) ; 0 uses
  %i.fq = load i32, ptr %178, align 8, !tbaa !43
  %i.fr = lshr i32 %i.fq, 2
  %i.fs = and i32 %i.fr, 1
  %i.ft = or disjoint i32 %i.fs, 48
  %fputc.i47.17 = tail call i32 @fputc(i32 %i.ft, ptr %179) ; 0 uses
  %i.fu = load i32, ptr %178, align 8, !tbaa !43
  %i.fv = lshr i32 %i.fu, 1
  %i.fw = and i32 %i.fv, 1
  %i.fx = or disjoint i32 %i.fw, 48
  %fputc.i47.18 = tail call i32 @fputc(i32 %i.fx, ptr %179) ; 0 uses
  %i.fy = load i32, ptr %178, align 8, !tbaa !43
  %i.fz = and i32 %i.fy, 1
  %i.ga = or disjoint i32 %i.fz, 48
  %fputc.i47.19.a = tail call i32 @fputc(i32 %i.ga, ptr %179) ; 0 uses
  br label %select.unfold._crit_edge.i30

select.unfold._crit_edge.i30:                     ; preds = %.lr.ph19.split.i.a, %.lr.ph19.split.i33
  %180 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, 1
  %183 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %182) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %184 = load i32, ptr %i.h, align 4, !tbaa !24
  %185 = sext i32 %184 to i64
  %186 = icmp slt i64 %indvars.iv.next, %185
  br i1 %186, label %bb.b, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %select.unfold._crit_edge.i30, %bb.a
  tail call void @Fraig_NodeVecFree(ptr noundef nonnull %i.d) #16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Fraig_PrintBinary(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = and i32 %2, 31                           ; 2 uses
  %i.c = lshr i64 %i.a, 5
  %i.d = icmp ne i32 %i.b, 0                      ; 2 uses
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %i.c, %i.e               ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph19, label %._crit_edge

.lr.ph19:                                         ; preds = %bb.a
  %i.i = add nuw nsw i64 %i.f, 4294967295
  %i.j = add nsw i32 %i.b, -1
  %i.k = and i64 %i.i, 4294967295                 ; 3 uses
  br i1 %i.d, label %.lr.ph19.split, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph19, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us ], [ %i.k, %.lr.ph19 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 32 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !43
  %i.n = lshr i32 %i.m, 31
  %i.o = or disjoint i32 %i.n, 48
  %fputc.us = tail call i32 @fputc(i32 %i.o, ptr %0) ; 0 uses
  %i.p = load i32, ptr %i.l, align 4, !tbaa !43
  %i.q = lshr i32 %i.p, 30
  %i.r = and i32 %i.q, 1
  %i.s = or disjoint i32 %i.r, 48
  %fputc.us.1 = tail call i32 @fputc(i32 %i.s, ptr %0) ; 0 uses
  %i.t = load i32, ptr %i.l, align 4, !tbaa !43
  %i.u = lshr i32 %i.t, 29
  %i.v = and i32 %i.u, 1
  %i.w = or disjoint i32 %i.v, 48
  %fputc.us.2 = tail call i32 @fputc(i32 %i.w, ptr %0) ; 0 uses
  %i.x = load i32, ptr %i.l, align 4, !tbaa !43
  %i.y = lshr i32 %i.x, 28
  %i.z = and i32 %i.y, 1
  %i.aa = or disjoint i32 %i.z, 48
  %fputc.us.3 = tail call i32 @fputc(i32 %i.aa, ptr %0) ; 0 uses
  %i.ab = load i32, ptr %i.l, align 4, !tbaa !43
  %i.ac = lshr i32 %i.ab, 27
  %i.ad = and i32 %i.ac, 1
  %i.ae = or disjoint i32 %i.ad, 48
  %fputc.us.4 = tail call i32 @fputc(i32 %i.ae, ptr %0) ; 0 uses
  %i.af = load i32, ptr %i.l, align 4, !tbaa !43
  %i.ag = lshr i32 %i.af, 26
  %i.ah = and i32 %i.ag, 1
  %i.ai = or disjoint i32 %i.ah, 48
  %fputc.us.5 = tail call i32 @fputc(i32 %i.ai, ptr %0) ; 0 uses
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !43
  %i.ak = lshr i32 %i.aj, 25
  %i.al = and i32 %i.ak, 1
  %i.am = or disjoint i32 %i.al, 48
  %fputc.us.6 = tail call i32 @fputc(i32 %i.am, ptr %0) ; 0 uses
  %i.an = load i32, ptr %i.l, align 4, !tbaa !43
  %i.ao = lshr i32 %i.an, 24
  %i.ap = and i32 %i.ao, 1
  %i.aq = or disjoint i32 %i.ap, 48
  %fputc.us.7 = tail call i32 @fputc(i32 %i.aq, ptr %0) ; 0 uses
  %i.ar = load i32, ptr %i.l, align 4, !tbaa !43
  %i.as = lshr i32 %i.ar, 23
  %i.at = and i32 %i.as, 1
  %i.au = or disjoint i32 %i.at, 48
  %fputc.us.8 = tail call i32 @fputc(i32 %i.au, ptr %0) ; 0 uses
  %i.av = load i32, ptr %i.l, align 4, !tbaa !43
  %i.aw = lshr i32 %i.av, 22
  %i.ax = and i32 %i.aw, 1
  %i.ay = or disjoint i32 %i.ax, 48
  %fputc.us.9 = tail call i32 @fputc(i32 %i.ay, ptr %0) ; 0 uses
  %i.az = load i32, ptr %i.l, align 4, !tbaa !43
  %i.ba = lshr i32 %i.az, 21
  %i.bb = and i32 %i.ba, 1
  %i.bc = or disjoint i32 %i.bb, 48
  %fputc.us.10 = tail call i32 @fputc(i32 %i.bc, ptr %0) ; 0 uses
  %i.bd = load i32, ptr %i.l, align 4, !tbaa !43
  %i.be = lshr i32 %i.bd, 20
  %i.bf = and i32 %i.be, 1
  %i.bg = or disjoint i32 %i.bf, 48
  %fputc.us.11 = tail call i32 @fputc(i32 %i.bg, ptr %0) ; 0 uses
  %i.bh = load i32, ptr %i.l, align 4, !tbaa !43
  %i.bi = lshr i32 %i.bh, 19
  %i.bj = and i32 %i.bi, 1
  %i.bk = or disjoint i32 %i.bj, 48
  %fputc.us.12 = tail call i32 @fputc(i32 %i.bk, ptr %0) ; 0 uses
  %i.bl = load i32, ptr %i.l, align 4, !tbaa !43
  %i.bm = lshr i32 %i.bl, 18
  %i.bn = and i32 %i.bm, 1
  %i.bo = or disjoint i32 %i.bn, 48
  %fputc.us.13 = tail call i32 @fputc(i32 %i.bo, ptr %0) ; 0 uses
  %i.bp = load i32, ptr %i.l, align 4, !tbaa !43
  %i.bq = lshr i32 %i.bp, 17
  %i.br = and i32 %i.bq, 1
  %i.bs = or disjoint i32 %i.br, 48
  %fputc.us.14 = tail call i32 @fputc(i32 %i.bs, ptr %0) ; 0 uses
  %i.bt = load i32, ptr %i.l, align 4, !tbaa !43
  %i.bu = lshr i32 %i.bt, 16
  %i.bv = and i32 %i.bu, 1
  %i.bw = or disjoint i32 %i.bv, 48
  %fputc.us.15 = tail call i32 @fputc(i32 %i.bw, ptr %0) ; 0 uses
  %i.bx = load i32, ptr %i.l, align 4, !tbaa !43
  %i.by = lshr i32 %i.bx, 15
  %i.bz = and i32 %i.by, 1
  %i.ca = or disjoint i32 %i.bz, 48
  %fputc.us.16 = tail call i32 @fputc(i32 %i.ca, ptr %0) ; 0 uses
  %i.cb = load i32, ptr %i.l, align 4, !tbaa !43
  %i.cc = lshr i32 %i.cb, 14
  %i.cd = and i32 %i.cc, 1
  %i.ce = or disjoint i32 %i.cd, 48
  %fputc.us.17 = tail call i32 @fputc(i32 %i.ce, ptr %0) ; 0 uses
  %i.cf = load i32, ptr %i.l, align 4, !tbaa !43
  %i.cg = lshr i32 %i.cf, 13
  %i.ch = and i32 %i.cg, 1
  %i.ci = or disjoint i32 %i.ch, 48
  %fputc.us.18 = tail call i32 @fputc(i32 %i.ci, ptr %0) ; 0 uses
  %i.cj = load i32, ptr %i.l, align 4, !tbaa !43
  %i.ck = lshr i32 %i.cj, 12
  %i.cl = and i32 %i.ck, 1
  %i.cm = or disjoint i32 %i.cl, 48
  %fputc.us.19 = tail call i32 @fputc(i32 %i.cm, ptr %0) ; 0 uses
  %i.cn = load i32, ptr %i.l, align 4, !tbaa !43
  %i.co = lshr i32 %i.cn, 11
  %i.cp = and i32 %i.co, 1
  %i.cq = or disjoint i32 %i.cp, 48
  %fputc.us.20 = tail call i32 @fputc(i32 %i.cq, ptr %0) ; 0 uses
  %i.cr = load i32, ptr %i.l, align 4, !tbaa !43
  %i.cs = lshr i32 %i.cr, 10
  %i.ct = and i32 %i.cs, 1
  %i.cu = or disjoint i32 %i.ct, 48
  %fputc.us.21 = tail call i32 @fputc(i32 %i.cu, ptr %0) ; 0 uses
  %i.cv = load i32, ptr %i.l, align 4, !tbaa !43
  %i.cw = lshr i32 %i.cv, 9
  %i.cx = and i32 %i.cw, 1
  %i.cy = or disjoint i32 %i.cx, 48
  %fputc.us.22 = tail call i32 @fputc(i32 %i.cy, ptr %0) ; 0 uses
  %i.cz = load i32, ptr %i.l, align 4, !tbaa !43
  %i.da = lshr i32 %i.cz, 8
  %i.db = and i32 %i.da, 1
  %i.dc = or disjoint i32 %i.db, 48
  %fputc.us.23 = tail call i32 @fputc(i32 %i.dc, ptr %0) ; 0 uses
  %i.dd = load i32, ptr %i.l, align 4, !tbaa !43
  %i.de = lshr i32 %i.dd, 7
  %i.df = and i32 %i.de, 1
  %i.dg = or disjoint i32 %i.df, 48
  %fputc.us.24 = tail call i32 @fputc(i32 %i.dg, ptr %0) ; 0 uses
  %i.dh = load i32, ptr %i.l, align 4, !tbaa !43
  %i.di = lshr i32 %i.dh, 6
  %i.dj = and i32 %i.di, 1
  %i.dk = or disjoint i32 %i.dj, 48
  %fputc.us.25 = tail call i32 @fputc(i32 %i.dk, ptr %0) ; 0 uses
  %i.dl = load i32, ptr %i.l, align 4, !tbaa !43
  %i.dm = lshr i32 %i.dl, 5
  %i.dn = and i32 %i.dm, 1
  %i.do = or disjoint i32 %i.dn, 48
  %fputc.us.26 = tail call i32 @fputc(i32 %i.do, ptr %0) ; 0 uses
  %i.dp = load i32, ptr %i.l, align 4, !tbaa !43
  %i.dq = lshr i32 %i.dp, 4
  %i.dr = and i32 %i.dq, 1
  %i.ds = or disjoint i32 %i.dr, 48
  %fputc.us.27 = tail call i32 @fputc(i32 %i.ds, ptr %0) ; 0 uses
  %i.dt = load i32, ptr %i.l, align 4, !tbaa !43
  %i.du = lshr i32 %i.dt, 3
  %i.dv = and i32 %i.du, 1
  %i.dw = or disjoint i32 %i.dv, 48
  %fputc.us.28 = tail call i32 @fputc(i32 %i.dw, ptr %0) ; 0 uses
  %i.dx = load i32, ptr %i.l, align 4, !tbaa !43
  %i.dy = lshr i32 %i.dx, 2
  %i.dz = and i32 %i.dy, 1
  %i.ea = or disjoint i32 %i.dz, 48
  %fputc.us.29 = tail call i32 @fputc(i32 %i.ea, ptr %0) ; 0 uses
  %i.eb = load i32, ptr %i.l, align 4, !tbaa !43
  %i.ec = lshr i32 %i.eb, 1
  %i.ed = and i32 %i.ec, 1
  %i.ee = or disjoint i32 %i.ed, 48
  %fputc.us.30 = tail call i32 @fputc(i32 %i.ee, ptr %0) ; 0 uses
  %i.ef = load i32, ptr %i.l, align 4, !tbaa !43
  %i.eg = and i32 %i.ef, 1
  %i.eh = or disjoint i32 %i.eg, 48
  %fputc.us.31 = tail call i32 @fputc(i32 %i.eh, ptr %0) ; 0 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.us, !llvm.loop !50

.lr.ph19.split:                                   ; preds = %.lr.ph19, %select.unfold._crit_edge
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %select.unfold._crit_edge ], [ %i.k, %.lr.ph19 ] ; 4 uses
  %i.ei = icmp eq i64 %indvars.iv22, %i.k
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv22
  %spec.select = select i1 %i.ei, i32 %i.j, i32 31
  br label %select.unfold

select.unfold:                                    ; preds = %.lr.ph19.split, %select.unfold
  %.017 = phi i32 [ %i.eo, %select.unfold ], [ %spec.select, %.lr.ph19.split ] ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !43
  %i.el = lshr i32 %i.ek, %.017
  %i.em = and i32 %i.el, 1
end_hunk_0
