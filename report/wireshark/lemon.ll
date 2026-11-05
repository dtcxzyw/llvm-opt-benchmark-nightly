Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lemon?download=true
inline.NumInlined: 160
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@OptPrint:bb.a
    i32 8, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.x = load ptr, ptr @errstream, align 8
  %i.y = getelementptr i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.x, i32 noundef 2, ptr noundef @.str.68, i32 noundef %spec.select, ptr noundef nonnull %i.u, ptr noundef %i.z) ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.ab = load ptr, ptr @errstream, align 8
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #44
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = sub i32 %i.f, %i.ad
  %i.af = getelementptr i8, ptr %i.v, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ab, i32 noundef 2, ptr noundef @.str.69, ptr noundef nonnull %i.u, i32 noundef %i.ae, ptr noundef @.str.70, ptr noundef %i.ag) ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.f, %bb.f
  %i.ai = load ptr, ptr @errstream, align 8
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #44
  %i.ak = trunc i64 %i.aj to i32
  %i.al = sub i32 %i.e, %i.ak
  %i.am = getelementptr i8, ptr %i.v, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ai, i32 noundef 2, ptr noundef @.str.71, ptr noundef nonnull %i.u, i32 noundef %i.al, ptr noundef @.str.70, ptr noundef %i.an) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.f
  %i.ap = load ptr, ptr @errstream, align 8
  %i.aq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #44
  %i.ar = trunc i64 %i.aq to i32
  %i.as = sub i32 %i.d, %i.ar
  %i.at = getelementptr i8, ptr %i.v, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ap, i32 noundef 2, ptr noundef @.str.72, ptr noundef nonnull %i.u, i32 noundef %i.as, ptr noundef @.str.70, ptr noundef %i.au) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %i.aw = add i32 %.13039, 1                      ; 2 uses
  %i.ax = load ptr, ptr @op, align 8
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr [32 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not32 = icmp eq ptr %i.bb, null
  br i1 %.not32, label %._crit_edge, label %bb.f, !llvm.loop !228

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @OptErr(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @g_argv, align 8           ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %argindex.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %.not18.i = icmp eq ptr %i.b, null
  br i1 %.not18.i, label %argindex.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1922.i = icmp eq ptr %i.d, null
  br i1 %.not1922.i, label %argindex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.tail.i
  %i.e = phi ptr [ %i.t, %.tail.i ], [ %i.d, %.preheader.i ] ; 5 uses
  %.025.i = phi i32 [ %spec.select.i, %.tail.i ], [ 0, %.preheader.i ] ; 4 uses
  %.01124.i = phi i32 [ %i.q, %.tail.i ], [ 1, %.preheader.i ] ; 3 uses
  %.01223.i = phi i32 [ %.113.i, %.tail.i ], [ %0, %.preheader.i ] ; 5 uses
  %.not20.i = icmp eq i32 %.025.i, 0
  br i1 %.not20.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = load i8, ptr %i.e, align 1               ; 4 uses
  switch i8 %i.f, label %bb.d [
    i8 45, label %sub_0.i
    i8 43, label %sub_0.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 noundef 61) #44
  %.not21.i = icmp eq ptr %i.g, null
  br i1 %.not21.i, label %bb.e, label %sub_0.i

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.h = icmp eq i32 %.01223.i, 0
  br i1 %i.h, label %argindex.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add i32 %.01223.i, -1
  %.pre.i = load i8, ptr %i.e, align 1
  br label %sub_0.i

sub_0.i:                                          ; preds = %bb.f, %bb.d, %bb.c, %bb.c
  %i.j = phi i8 [ %.pre.i, %bb.f ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.d ]
  %.113.i = phi i32 [ %i.i, %bb.f ], [ %.01223.i, %bb.c ], [ %.01223.i, %bb.c ], [ %.01223.i, %bb.d ]
  %.not28.i = icmp eq i8 %i.j, 45
  br i1 %.not28.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %.not29.i = icmp eq i8 %i.l, 45
  br i1 %.not29.i, label %sub_2.i, label %.tail.i

sub_2.i:                                          ; preds = %sub_1.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 0
  %i.p = select i1 %i.o, i32 1, i32 %.025.i
  br label %.tail.i

.tail.i:                                          ; preds = %sub_2.i, %sub_1.i, %sub_0.i
  %spec.select.i = phi i32 [ %.025.i, %sub_0.i ], [ %.025.i, %sub_1.i ], [ %i.p, %sub_2.i ]
  %i.q = add i32 %.01124.i, 1                     ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %i.a, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not19.i = icmp eq ptr %i.t, null
  br i1 %.not19.i, label %argindex.exit.thread, label %.lr.ph.i, !llvm.loop !27

argindex.exit:                                    ; preds = %bb.e
  %i.u = icmp sgt i32 %.01124.i, -1
  br i1 %i.u, label %bb.g, label %argindex.exit.thread

bb.g:                                             ; preds = %argindex.exit
  %i.v = load ptr, ptr @errstream, align 8
  tail call fastcc void @errline(i32 noundef %.01124.i, i32 noundef 0, ptr noundef %i.v)
  br label %argindex.exit.thread

argindex.exit.thread:                             ; preds = %.tail.i, %.preheader.i, %bb.a, %bb.b, %bb.g, %argindex.exit
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @errline(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @g_argv, align 8           ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef @.str.84, ptr noundef nonnull %i.b) ; 0 uses
  %i.d = load ptr, ptr @g_argv, align 8           ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 @strlen(ptr noundef %i.e) #44
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.019 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.j = icmp sgt i32 %0, 1
  br i1 %i.j, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.k = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.o, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.12028 = phi i32 [ %.019, %.lr.ph.preheader ], [ %i.u, %bb.d ] ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.m, null
  br i1 %.not26, label %.critedge.loopexit.split.loop.exit42, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.n = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef @.str.86, ptr noundef nonnull %i.m) ; 0 uses
  %i.o = load ptr, ptr @g_argv, align 8           ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 @strlen(ptr noundef %i.q) #44
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %.12028, 1
  %i.u = add i32 %i.t, %i.s                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !229

.critedge.loopexit.split.loop.exit42:             ; preds = %.lr.ph
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit42, %bb.c
  %i.w = phi ptr [ %i.i, %bb.c ], [ %i.k, %.critedge.loopexit.split.loop.exit42 ], [ %i.o, %bb.d ]
  %.120.lcssa = phi i32 [ %.019, %bb.c ], [ %.12028, %.critedge.loopexit.split.loop.exit42 ], [ %i.u, %bb.d ]
  %.0.lcssa = phi i32 [ 1, %bb.c ], [ %i.v, %.critedge.loopexit.split.loop.exit42 ], [ %0, %bb.d ] ; 2 uses
  %i.x = add i32 %.120.lcssa, %1                  ; 3 uses
  %3 = sext i32 %.0.lcssa to i64
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %3
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not2734 = icmp eq ptr %i.z, null
  br i1 %.not2734, label %._crit_edge, label %.lr.ph36

.lr.ph36:                                         ; preds = %.critedge, %.lr.ph36
  %i.aa = phi ptr [ %i.ag, %.lr.ph36 ], [ %i.z, %.critedge ]
  %.135 = phi i32 [ %i.ac, %.lr.ph36 ], [ %.0.lcssa, %.critedge ]
  %i.ab = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef @.str.86, ptr noundef nonnull %i.aa) ; 0 uses
  %i.ac = add i32 %.135, 1                        ; 2 uses
  %i.ad = load ptr, ptr @g_argv, align 8
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not27 = icmp eq ptr %i.ag, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph36, !llvm.loop !230

._crit_edge:                                      ; preds = %.lr.ph36, %.critedge
  %i.ah = icmp slt i32 %i.x, 20
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ai = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef @.str.269, i32 noundef %i.x, ptr noundef @.str.70) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.aj = add nsw i32 %i.x, -7
  %i.ak = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 2, ptr noundef @.str.270, i32 noundef %i.aj, ptr noundef @.str.70) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #30

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #30

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: nofree nounwind null_pointer_is_valid
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden nonnull ptr @Plink_new() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @plink_freelist, align 8   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #40 ; 10 uses
  store ptr %i.c, ptr @plink_freelist, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 2, ptr noundef @.str.80) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.2, %.preheader ], [ 0, %bb.b ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.h = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.j = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv.next.1
  %i.k = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.m = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv.next.2
  %i.n = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv.next.1
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 99
  br i1 %exitcond.not.2, label %bb.d, label %.preheader, !llvm.loop !20

bb.d:                                             ; preds = %.preheader
  %i.p = getelementptr i8, ptr %i.c, i64 1592
  store ptr null, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.q = phi ptr [ %i.c, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr @plink_freelist, align 8
  ret ptr %i.q
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden nonnull ptr @file_makename(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr @outputDir, align 8        ; 3 uses
  %.not = icmp eq ptr %i.c, null                  ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @strrchr(ptr noundef %i.b, i32 noundef 47) #44 ; 2 uses
  %.not27 = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %spec.select = select i1 %.not27, ptr %i.b, ptr %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.021 = phi ptr [ %i.b, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.f = tail call i64 @strlen(ptr noundef %.021) #44
  %i.g = tail call i64 @strlen(ptr noundef %1) #44
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #44
  %i.j = add i64 %i.h, 1
  %i.k = add i64 %i.j, %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ]
  %i.l = shl i64 %.0, 32
  %sext = add i64 %i.l, 21474836480
  %i.m = ashr exact i64 %sext, 32
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #45 ; 11 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @stderr, align 8
  %i.q = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.p, i32 noundef 2, ptr noundef @.str.81) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.n, align 1
  br i1 %.not, label %lemon_strcat.exit, label %.preheader

.preheader:                                       ; preds = %bb.g, %.preheader
  %.02.i = phi ptr [ %i.t, %.preheader ], [ %i.n, %bb.g ] ; 2 uses
  %.0.i = phi ptr [ %i.r, %.preheader ], [ %i.c, %bb.g ] ; 2 uses
  %i.r = getelementptr i8, ptr %.0.i, i64 1
  %i.s = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.t = getelementptr i8, ptr %.02.i, i64 1
  store i8 %i.s, ptr %.02.i, align 1
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %lemon_strcpy.exit, label %.preheader, !llvm.loop !28

lemon_strcpy.exit:                                ; preds = %.preheader
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %scevgep.i = getelementptr i8, ptr %i.n, i64 %strlen.i
  store i16 47, ptr %scevgep.i, align 1
  br label %lemon_strcat.exit

lemon_strcat.exit:                                ; preds = %lemon_strcpy.exit, %bb.g
  %strlen.i31 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %scevgep.i32 = getelementptr i8, ptr %i.n, i64 %strlen.i31
  br label %.preheader.i33

.preheader.i33:                                   ; preds = %.preheader.i33, %lemon_strcat.exit
  %.02.i.i34 = phi ptr [ %i.w, %.preheader.i33 ], [ %scevgep.i32, %lemon_strcat.exit ] ; 2 uses
  %.0.i.i35 = phi ptr [ %i.u, %.preheader.i33 ], [ %.021, %lemon_strcat.exit ] ; 2 uses
  %i.u = getelementptr i8, ptr %.0.i.i35, i64 1
  %i.v = load i8, ptr %.0.i.i35, align 1          ; 2 uses
  %i.w = getelementptr i8, ptr %.02.i.i34, i64 1
  store i8 %i.v, ptr %.02.i.i34, align 1
  %.not.i.i36 = icmp eq i8 %i.v, 0
  br i1 %.not.i.i36, label %lemon_strcat.exit37, label %.preheader.i33, !llvm.loop !28

lemon_strcat.exit37:                              ; preds = %.preheader.i33
  %i.x = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef 46) #44 ; 2 uses
  %.not30 = icmp eq ptr %i.x, null
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %lemon_strcat.exit37
  store i8 0, ptr %i.x, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %lemon_strcat.exit37
  %strlen.i38 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %scevgep.i39 = getelementptr i8, ptr %i.n, i64 %strlen.i38
  br label %.preheader.i40

end_hunk_0
