Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cvrout?download=true
inline.NumInlined: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@print_expanded_cube:bb.a
  %i.f = sext i32 %.lcssa47 to i64
  %.pre74 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  br label %.lr.ph59

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %._crit_edge
  %i.g = phi i32 [ %i.a, %.lr.ph52.preheader ], [ %i.ae, %._crit_edge ]
  %i.h = phi ptr [ %.pre, %.lr.ph52.preheader ], [ %i.af, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %.not4648 = icmp sgt i32 %i.k, %i.m
  br i1 %.not4648, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph52, %.lr.ph
  %.03849 = phi i32 [ %i.aa, %.lr.ph ], [ %i.k, %.lr.ph52 ] ; 4 uses
  %i.n = ashr i32 %.03849, 5
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %1, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = and i32 %.03849, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = and i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @.str.3, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = sext i8 %i.x to i32
  %i.z = tail call i32 @putc(i32 noundef %i.y, ptr noundef %0) ; 0 uses
  %i.aa = add nsw i32 %.03849, 1
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %.not46.not = icmp slt i32 %.03849, %i.ad
  br i1 %.not46.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre73 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph52
  %i.ae = phi i32 [ %.pre73, %._crit_edge.loopexit ], [ %i.g, %.lr.ph52 ] ; 3 uses
  %i.af = phi ptr [ %i.ab, %._crit_edge.loopexit ], [ %i.h, %.lr.ph52 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph52, label %.preheader

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %._crit_edge57
  %i.ai = phi i32 [ %i.c, %.lr.ph59.preheader ], [ %i.bg, %._crit_edge57 ]
  %i.aj = phi ptr [ %.pre74, %.lr.ph59.preheader ], [ %i.bh, %._crit_edge57 ] ; 2 uses
  %indvars.iv70 = phi i64 [ %i.f, %.lr.ph59.preheader ], [ %indvars.iv.next71, %._crit_edge57 ] ; 4 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv70
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv70
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %.not4553 = icmp sgt i32 %i.am, %i.ao
  br i1 %.not4553, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph59, %.lr.ph56
  %.13954 = phi i32 [ %i.bc, %.lr.ph56 ], [ %i.am, %.lr.ph59 ] ; 4 uses
  %i.ap = ashr i32 %.13954, 5
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %1, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = and i32 %.13954, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = and i32 %i.av, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @.str.35, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !40
  %i.ba = sext i8 %i.az to i32
  %i.bb = tail call i32 @putc(i32 noundef %i.ba, ptr noundef %0) ; 0 uses
  %i.bc = add nsw i32 %.13954, 1
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34 ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv70
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %.not45.not = icmp slt i32 %.13954, %i.bf
  br i1 %.not45.not, label %.lr.ph56, label %._crit_edge57.loopexit

._crit_edge57.loopexit:                           ; preds = %.lr.ph56
  %.pre75 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %.lr.ph59
  %i.bg = phi i32 [ %.pre75, %._crit_edge57.loopexit ], [ %i.ai, %.lr.ph59 ] ; 2 uses
  %i.bh = phi ptr [ %i.bd, %._crit_edge57.loopexit ], [ %i.aj, %.lr.ph59 ]
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.bi = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next71, %i.bj
  br i1 %i.bk, label %.lr.ph59, label %._crit_edge60

._crit_edge60:                                    ; preds = %._crit_edge57, %.preheader
  %.lcssa = phi i32 [ %i.d, %.preheader ], [ %i.bi, %._crit_edge57 ]
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !28
  %.not = icmp eq i32 %i.bl, -1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge60
  %i.bm = tail call i32 @putc(i32 noundef 32, ptr noundef %0) ; 0 uses
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.bo = sext i32 %.lcssa to i64                 ; 4 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 3 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %.not4362 = icmp sgt i32 %i.bq, %i.bt
  br i1 %.not4362, label %.loopexit, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.b
  %i.bu = icmp eq ptr %2, null
  br i1 %i.bu, label %.lr.ph65.split.us, label %.lr.ph65.split

.lr.ph65.split.us:                                ; preds = %.lr.ph65, %.lr.ph65.split.us
  %.263.us = phi i32 [ %i.ci, %.lr.ph65.split.us ], [ %i.bq, %.lr.ph65 ] ; 4 uses
  %i.bv = ashr i32 %.263.us, 5
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr [4 x i8], ptr %1, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = and i32 %.263.us, 31
  %i.cb = lshr i32 %i.bz, %i.ca
  %i.cc = and i32 %i.cb, 1
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @.str.3, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !40
  %i.cg = sext i8 %i.cf to i32
  %i.ch = tail call i32 @putc(i32 noundef %i.cg, ptr noundef %0) ; 0 uses
  %i.ci = add nsw i32 %.263.us, 1
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.bo
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %.not43.us.not = icmp slt i32 %.263.us, %i.cl
  br i1 %.not43.us.not, label %.lr.ph65.split.us, label %.loopexit

.lr.ph65.split:                                   ; preds = %.lr.ph65, %.lr.ph65.split
  %.263 = phi i32 [ %i.de, %.lr.ph65.split ], [ %i.bq, %.lr.ph65 ] ; 4 uses
  %i.cm = ashr i32 %.263, 5
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %2, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = and i32 %.263, 31                       ; 2 uses
  %i.cs = shl nuw i32 1, %i.cr
  %i.ct = and i32 %i.cq, %i.cs
  %.not44 = icmp eq i32 %i.ct, 0
  %spec.select = select i1 %.not44, ptr @.str.5, ptr @.str.3
  %i.cu = getelementptr [4 x i8], ptr %1, i64 %i.cn
  %i.cv = getelementptr i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = lshr i32 %i.cw, %i.cr
  %i.cy = and i32 %i.cx, 1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !40
  %i.dc = sext i8 %i.db to i32
  %i.dd = tail call i32 @putc(i32 noundef %i.dc, ptr noundef %0) ; 0 uses
  %i.de = add nsw i32 %.263, 1
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.bo
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %.not43.not = icmp slt i32 %.263, %i.dh
  br i1 %.not43.not, label %.lr.ph65.split, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph65.split, %.lr.ph65.split.us, %bb.b, %._crit_edge60
  %i.di = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @pc1(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @fmt_cube(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  ret ptr @pc1.s1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @pc2(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @fmt_cube(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc2.s2) ; 0 uses
  ret ptr @pc2.s2
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_print(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, -3
  %i.i = load i32, ptr @cube, align 8, !tbaa !42  ; 3 uses
  %i.j = icmp slt i32 %i.i, 33
  %i.k = add nsw i32 %i.i, -1
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 536870908
  %i.n = add nuw nsw i32 %i.m, 8
  %narrow = select i1 %i.j, i32 8, i32 %i.n
  %i.o = zext nneg i32 %narrow to i64
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #12
  %i.q = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.p, i32 noundef %i.i) #10 ; 3 uses
  %i.r = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %i.s = icmp ne i32 %i.r, 0
  %i.t = icmp eq i32 %2, 0
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %1, i32 noundef %2, i32 noundef %i.h) ; 0 uses
  %i.v = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !41
  %i.x = tail call ptr @fmt_cube(ptr noundef readonly %i.w, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41  ; 2 uses
  %.not2022 = icmp eq ptr %i.aa, null
  br i1 %.not2022, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.ab = phi ptr [ %i.ai, %.lr.ph ], [ %i.aa, %bb.d ]
  %.024 = phi i32 [ %i.ah, %.lr.ph ], [ 1, %bb.d ] ; 2 uses
  %.01623 = phi ptr [ %i.ac, %.lr.ph ], [ %i.z, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.01623, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !41
  %i.ae = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.q, ptr noundef nonnull %i.ab, ptr noundef %i.ad) #10
  %i.af = tail call ptr @fmt_cube(ptr noundef readonly %i.ae, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %.024, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.ah = add nuw nsw i32 %.024, 1
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %.not20 = icmp eq ptr %i.ai, null
  br i1 %.not20, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %.not21 = icmp eq ptr %i.q, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.q) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  ret void
}

declare ptr @set_clear(...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare ptr @set_or(...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local void @debug1_print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp eq i32 %2, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %1, i32 noundef %2, i32 noundef %i.e) ; 0 uses
  %i.g = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = load i32, ptr %i.d, align 4, !tbaa !20
  %i.k = load i32, ptr %0, align 8, !tbaa !21
  %i.l = mul nsw i32 %i.k, %i.j                   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %.idx = shl nuw nsw i64 %i.m, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.o = icmp sgt i32 %i.l, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.016 = phi ptr [ %i.u, %.lr.ph ], [ %i.i, %bb.d ] ; 2 uses
  %.01415 = phi i32 [ %i.p, %.lr.ph ], [ 1, %bb.d ] ; 2 uses
  %i.p = add nuw nsw i32 %.01415, 1
  %i.q = tail call ptr @fmt_cube(ptr noundef readonly %.016, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %.01415, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !21
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.016, i64 %i.t ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.n
  br i1 %i.v, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cprint(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = load i32, ptr %0, align 8, !tbaa !21
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = tail call ptr @fmt_cube(ptr noundef readonly %.09, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @pc1.s1) ; 0 uses
  %i.k = load i32, ptr %0, align 8, !tbaa !21
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %.09, i64 %i.l ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.h
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @makeup_labels(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @PLA_labels(ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.preheader, label %._crit_edge28

.preheader.preheader:                             ; preds = %bb.c
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !29
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.g = phi i32 [ %i.e, %.preheader.preheader ], [ %i.al, %._crit_edge ]
  %i.h = phi ptr [ %.pre, %.preheader.preheader ], [ %i.am, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 8 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.026 = phi i32 [ %i.ag, %bb.i ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = add nsw i32 %i.q, %.026
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.x = tail call noalias dereferenceable_or_null(15) ptr @malloc(i64 noundef 15) #12 ; 4 uses
  store ptr %i.x, ptr %i.u, align 8, !tbaa !32
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv, %i.z
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %.026, 1
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.g
end_hunk_0
