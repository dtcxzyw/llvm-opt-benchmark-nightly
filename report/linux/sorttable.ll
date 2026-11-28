Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sorttable?download=true
inline.NumInlined: 38
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sort_relative_table_with_data:bb.a
  tail call void %i.h(i32 noundef %i.m, ptr noundef nonnull %i.j) #15
  %i.n = add i32 %.024, 12                        ; 2 uses
  %i.o = icmp slt i32 %i.n, %1
  br i1 %i.o, label %.lr.ph, label %.lr.ph27.preheader, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.a
  %.nonneg = sub i32 0, %1
  %i.p = udiv i32 %.nonneg, 12
  %.neg = sub nsw i32 0, %i.p
  %i.q = sext i32 %.neg to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %i.q, i64 noundef 12, ptr noundef nonnull @compare_relative_table) #15
  br label %._crit_edge28

.lr.ph27.preheader:                               ; preds = %.lr.ph
  %i.r = udiv i32 %1, 12
  %i.s = zext nneg i32 %i.r to i64
  tail call void @qsort(ptr noundef nonnull %0, i64 noundef %i.s, i64 noundef 12, ptr noundef nonnull @compare_relative_table) #15
  br label %.lr.ph27

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %.lr.ph27
  %.125 = phi i32 [ %i.ae, %.lr.ph27 ], [ 0, %.lr.ph27.preheader ] ; 4 uses
  %i.t = sext i32 %.125 to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 184), align 8, !tbaa !19
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !18
  %i.x = tail call i32 %i.w(ptr noundef nonnull %i.u) #15
  %i.y = sub i32 %i.x, %.125
  tail call void %i.v(i32 noundef %i.y, ptr noundef nonnull %i.u) #15
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 184), align 8, !tbaa !19
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.ac = tail call i32 %i.aa(ptr noundef nonnull %i.ab) #15
  %reass.sub = sub i32 %i.ac, %.125
  %i.ad = add i32 %reass.sub, -4
  tail call void %i.z(i32 noundef %i.ad, ptr noundef nonnull %i.ab) #15
  %i.ae = add i32 %.125, 12                       ; 2 uses
  %i.af = icmp slt i32 %i.ae, %1
  br i1 %i.af, label %.lr.ph27, label %._crit_edge28, !llvm.loop !66

._crit_edge28:                                    ; preds = %.lr.ph27, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sort_relative_table(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 184), align 8, !tbaa !19
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !18
  %i.e = tail call i32 %i.d(ptr noundef %i.b) #15
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  %i.g = add i32 %i.e, %i.f
  tail call void %i.c(i32 noundef %i.g, ptr noundef %i.b) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.h = trunc nuw i64 %indvars.iv.next to i32
  %i.i = icmp sgt i32 %1, %i.h
  br i1 %i.i, label %.lr.ph, label %.lr.ph21.preheader, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.a
  %.nonneg = sub i32 0, %1
  %i.j = lshr i32 %.nonneg, 3
  %.neg = sub nsw i32 0, %i.j
  %i.k = sext i32 %.neg to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %i.k, i64 noundef 8, ptr noundef nonnull @compare_relative_table) #15
  br label %._crit_edge22

.lr.ph21.preheader:                               ; preds = %.lr.ph
  %i.l = lshr i32 %1, 3
  %i.m = zext nneg i32 %i.l to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %i.m, i64 noundef 8, ptr noundef nonnull @compare_relative_table) #15
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %.lr.ph21
  %indvars.iv24 = phi i64 [ 0, %.lr.ph21.preheader ], [ %indvars.iv.next25, %.lr.ph21 ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv24 ; 2 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 184), align 8, !tbaa !19
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !18
  %i.q = tail call i32 %i.p(ptr noundef %i.n) #15
  %i.r = trunc nuw nsw i64 %indvars.iv24 to i32
  %i.s = sub i32 %i.q, %i.r
  tail call void %i.o(i32 noundef %i.s, ptr noundef %i.n) #15
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 4 ; 2 uses
  %i.t = trunc nuw i64 %indvars.iv.next25 to i32
  %i.u = icmp sgt i32 %1, %i.t
  br i1 %i.u, label %.lr.ph21, label %._crit_edge22, !llvm.loop !68

._crit_edge22:                                    ; preds = %.lr.ph21, %._crit_edge
  ret void
}

declare i32 @elf_map_long_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @compare_extable_32(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !18
  %i.b = tail call i32 %i.a(ptr noundef %0) #15
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !18
  %i.d = tail call i32 %i.c(ptr noundef %1) #15
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @compare_extable_64(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 176), align 8, !tbaa !69
  %i.b = tail call i64 %i.a(ptr noundef %0) #15
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 176), align 8, !tbaa !69
  %i.d = tail call i64 %i.c(ptr noundef %1) #15
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.b, i64 %i.d)
  ret i32 %.0
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @compare_relative_table(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !18
  %i.b = tail call i32 %i.a(ptr noundef %0) #15
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !18
  %i.d = tail call i32 %i.c(ptr noundef %1) #15
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @sort_orctable(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.b = zext i32 %i.a to i64
  %i.c = lshr i32 %i.a, 2                         ; 3 uses
  %i.d = zext nneg i32 %i.c to i64                ; 8 uses
  %i.e = mul i32 %i.c, 6
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #20 ; 10 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #19
  %i.i = load i32, ptr %i.h, align 4, !tbaa !10
  %i.j = tail call ptr @strerror(i32 noundef %i.i) #15
  %i.k = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @g_err, i64 noundef 256, ptr noundef nonnull @.str.22, ptr noundef %i.j) #15 ; 0 uses
  tail call void @pthread_exit(ptr noundef nonnull @g_err) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %0, align 4, !tbaa !10
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #20 ; 7 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__errno_location() #19
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10
  %i.q = tail call ptr @strerror(i32 noundef %i.p) #15
  %i.r = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @g_err, i64 noundef 256, ptr noundef nonnull @.str.23, ptr noundef %i.q) #15 ; 0 uses
  tail call void @pthread_exit(ptr noundef nonnull @g_err) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.e to i64                     ; 3 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #20 ; 5 uses
  %.not46 = icmp eq ptr %i.t, null
  br i1 %.not46, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not52 = icmp eq i32 %i.c, 0
  br i1 %.not52, label %._crit_edge51.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.u = load ptr, ptr @g_orc_ip_table, align 8, !tbaa !14 ; 5 uses
  %min.iters.check = icmp ult i32 %i.a, 32
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = sub i64 %i.g, %i.v
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.d, 1073741816               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind62 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next65, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind62, splat (i32 4) ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> %vec.ind62, ptr %i.x, align 4, !tbaa !10
  store <4 x i32> %step.add, ptr %i.y, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !10
  %wide.load64 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !10
  %i.ab = shl nuw <4 x i32> %vec.ind62, splat (i32 2)
  %step.add63 = shl nuw <4 x i32> %step.add, splat (i32 2)
  %i.ac = add <4 x i32> %wide.load, %i.ab
  %i.ad = add <4 x i32> %wide.load64, %step.add63
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %i.ac, ptr %i.ae, align 4, !tbaa !10
  store <4 x i32> %i.ad, ptr %i.af, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next65 = add <4 x i32> %vec.ind62, splat (i32 8)
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 8 uses
  %xtraiter = and i64 %i.d, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.ph
  %i.ai = trunc nuw nsw i64 %indvars.iv.ph to i32
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.ph
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %indvars.iv.tr.prol = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.al = shl nuw i32 %indvars.iv.tr.prol, 2
  %i.am = add i32 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.ph
  store i32 %i.am, ptr %i.an, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ao = add nsw i64 %i.d, -1
  %i.ap = icmp eq i64 %indvars.iv.ph, %i.ao
  br i1 %i.ap, label %._crit_edge, label %scalar.ph

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call ptr @__errno_location() #19
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  %i.as = tail call ptr @strerror(i32 noundef %i.ar) #15
  %i.at = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @g_err, i64 noundef 256, ptr noundef nonnull @.str.24, ptr noundef %i.as) #15 ; 0 uses
  tail call void @pthread_exit(ptr noundef nonnull @g_err) #21
  unreachable

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.av, ptr %i.au, align 4, !tbaa !10
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !10
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ay = shl nuw i32 %indvars.iv.tr, 2
  %i.az = add i32 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.bc = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !10
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !10
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.bf = shl nuw i32 %indvars.iv.tr.1, 2
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.d
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bi = load ptr, ptr @g_orc_table, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.bi, i64 %i.s, i1 false)
  tail call void @qsort(ptr noundef nonnull %i.f, i64 noundef %i.d, i64 noundef 4, ptr noundef nonnull @orc_sort_cmp) #15
  %i.bj = load ptr, ptr @g_orc_ip_table, align 8
  %i.bk = load ptr, ptr @g_orc_table, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.i
  %indvars.iv55 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next56, %bb.i ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv55 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !10 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp eq i64 %indvars.iv55, %i.bn
  br i1 %i.bo, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !10
  %indvars.iv55.tr = trunc nuw i64 %indvars.iv55 to i32
  %i.bs = shl nuw i32 %indvars.iv55.tr, 2
  %i.bt = sub i32 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv55
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !10
  %i.bv = getelementptr inbounds nuw [6 x i8], ptr %i.bk, i64 %indvars.iv55
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !10
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [6 x i8], ptr %i.t, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bv, ptr noundef nonnull align 1 dereferenceable(6) %i.by, i64 6, i1 false), !tbaa.struct !77
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %i.d
  br i1 %exitcond59.not, label %._crit_edge51, label %bb.g, !llvm.loop !72

._crit_edge51.critedge:                           ; preds = %.preheader
  %i.bz = load ptr, ptr @g_orc_table, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.bz, i64 %i.s, i1 false)
  tail call void @qsort(ptr noundef nonnull %i.f, i64 noundef %i.d, i64 noundef 4, ptr noundef nonnull @orc_sort_cmp) #15
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.i, %._crit_edge51.critedge
  tail call void @free(ptr noundef nonnull %i.f) #15
  tail call void @free(ptr noundef %i.n) #15
  tail call void @free(ptr noundef %i.t) #15
  tail call void @pthread_exit(ptr noundef null) #21
  unreachable
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @orc_sort_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = load ptr, ptr @g_orc_ip_table, align 8, !tbaa !14 ; 2 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !10
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !10
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = load i32, ptr %i.d, align 4, !tbaa !10
  %i.j = sext i32 %i.i to i64
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = load i32, ptr %i.g, align 4, !tbaa !10
  %i.n = sext i32 %i.m to i64
  %i.o = add i64 %i.n, %i.l                       ; 2 uses
  %i.p = icmp ugt i64 %i.k, %i.o
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.k, %i.o
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr @g_orc_table, align 8, !tbaa !16 ; 2 uses
  %i.s = getelementptr inbounds [6 x i8], ptr %i.r, i64 %i.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i16, ptr %i.t, align 1
  %i.v = and i16 %i.u, 1792
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds [6 x i8], ptr %i.r, i64 %i.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i16, ptr %i.y, align 1
  %i.aa = and i16 %i.z, 1792
  %i.ab = icmp ne i16 %i.aa, 0
  %spec.select = sext i1 %i.ab to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.d ], [ 1, %bb.a ], [ -1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #14

end_hunk_0
