Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/run-test262?download=true
inline.NumInlined: 247
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@find_error:bb.a

skip_prefix.exit:                                 ; preds = %.lr.ph.i41.17, %.lr.ph.i41, %.lr.ph.i41.1, %.lr.ph.i41.2, %.lr.ph.i41.3, %.lr.ph.i41.4, %.lr.ph.i41.5, %.lr.ph.i41.6, %.lr.ph.i41.7, %.lr.ph.i41.8, %.lr.ph.i41.9, %.lr.ph.i41.10, %.lr.ph.i41.11, %.lr.ph.i41.12, %.lr.ph.i41.13, %.lr.ph.i41.14, %.lr.ph.i41.15, %.lr.ph.i41.16
  %.09.i = phi ptr [ %i.bb, %.lr.ph.i41 ], [ %spec.select, %.lr.ph.i41.17 ], [ %i.bb, %.lr.ph.i41.16 ], [ %i.bb, %.lr.ph.i41.15 ], [ %i.bb, %.lr.ph.i41.14 ], [ %i.bb, %.lr.ph.i41.13 ], [ %i.bb, %.lr.ph.i41.12 ], [ %i.bb, %.lr.ph.i41.11 ], [ %i.bb, %.lr.ph.i41.10 ], [ %i.bb, %.lr.ph.i41.9 ], [ %i.bb, %.lr.ph.i41.8 ], [ %i.bb, %.lr.ph.i41.7 ], [ %i.bb, %.lr.ph.i41.6 ], [ %i.bb, %.lr.ph.i41.5 ], [ %i.bb, %.lr.ph.i41.4 ], [ %i.bb, %.lr.ph.i41.3 ], [ %i.bb, %.lr.ph.i41.2 ], [ %i.bb, %.lr.ph.i41.1 ] ; 5 uses
  store ptr %.09.i, ptr %i.a, align 8, !tbaa !29
  %i.cl = call i64 @strcspn(ptr noundef nonnull %.09.i, ptr noundef nonnull @.str.40) #45
  %i.cm = getelementptr inbounds nuw i8, ptr %.09.i, i64 %i.cl ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !27
  %i.co = icmp eq i8 %i.cn, 10
  br i1 %i.co, label %.lr.ph50, label %.critedge

.lr.ph50:                                         ; preds = %skip_prefix.exit, %bb.k
  %.02849 = phi ptr [ %i.ct, %bb.k ], [ %i.cm, %skip_prefix.exit ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02849, i64 1 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !27
  %.not38 = icmp eq i8 %i.cq, 0
  br i1 %.not38, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph50
  %i.cr = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.cp, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 8) #45
  %.not39 = icmp eq i32 %i.cr, 0
  br i1 %.not39, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = call i64 @strcspn(ptr noundef nonnull %i.cp, ptr noundef nonnull @.str.40) #45
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cs ; 3 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !27
  %i.cv = icmp eq i8 %i.cu, 10
  br i1 %i.cv, label %.lr.ph50, label %.critedge, !llvm.loop !80

.critedge:                                        ; preds = %bb.j, %bb.k, %.lr.ph50, %skip_prefix.exit
  %.028.lcssa = phi ptr [ %i.cm, %skip_prefix.exit ], [ %.02849, %.lr.ph50 ], [ %i.ct, %bb.k ], [ %.02849, %bb.j ]
  %.not40 = icmp eq ptr %1, null
  br i1 %.not40, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.critedge
  store i32 %.027, ptr %1, align 4, !tbaa !41
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i, %bb.d, %bb.e, %js__strstart.exit
  %i.cw = phi ptr [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.w, %js__strstart.exit ], [ %i.w, %._crit_edge.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c
  %i.cy = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.cx, ptr noundef nonnull dereferenceable(1) %0) #45 ; 2 uses
  %.not34.not = icmp eq ptr %i.cy, null
  br i1 %.not34.not, label %.sink.split, label %bb.c, !llvm.loop !81

bb.n:                                             ; preds = %.critedge, %bb.l
  %i.cz = ptrtoint ptr %.028.lcssa to i64
  %i.da = ptrtoint ptr %.09.i to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = shl i64 %i.db, 32                       ; 2 uses
  %sext = add i64 %i.dc, 4294967296
  %i.dd = ashr exact i64 %sext, 32
  %i.de = call noalias noundef ptr @malloc(i64 noundef %i.dd) #44 ; 3 uses
  %i.df = ashr exact i64 %i.dc, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr nonnull readonly align 1 %.09.i, i64 %i.df, i1 false)
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 %i.df
  store i8 0, ptr %i.dg, align 1, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.b, %bb.n
  %.1.ph = phi ptr [ %i.de, %bb.n ], [ null, %bb.b ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.1.ph, %.sink.split ]
  ret ptr %.1
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #28

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @skip_comments(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !27      ; 2 uses
  %.not5061 = icmp eq i8 %i.b, 0
  br i1 %.not5061, label %.critedge38, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #46
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer.backedge
  %i.e = phi i8 [ %i.b, %.lr.ph.lr.ph ], [ %.pr, %.outer.backedge ]
  %i.f = phi ptr [ %i.a, %.lr.ph.lr.ph ], [ %i.o, %.outer.backedge ]
  %.0.ph63 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %.0.ph.be.ph, %.outer.backedge ]
  %.023.ph62 = phi i32 [ %1, %.lr.ph.lr.ph ], [ %.023.ph.be.ph, %.outer.backedge ] ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %i.g = phi i8 [ %i.e, %.lr.ph ], [ %i.s, %.critedge ] ; 3 uses
  %i.h = phi ptr [ %i.f, %.lr.ph ], [ %i.t, %.critedge ] ; 5 uses
  %.051 = phi ptr [ %.0.ph63, %.lr.ph ], [ %i.r, %.critedge ]
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !33
  %i.l = and i16 %i.k, 8192
  %.not32 = icmp eq i16 %i.l, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i8 %i.g, 10
  %i.n = zext i1 %i.m to i32
  %spec.select = add nsw i32 %.023.ph62, %i.n
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.j, %bb.c
  %.023.ph.be.ph = phi i32 [ %.225, %bb.j ], [ %spec.select, %bb.c ] ; 2 uses
  %.0.ph.be.ph = phi ptr [ %i.ab, %bb.j ], [ %i.h, %bb.c ] ; 3 uses
  %.pr = load i8, ptr %.0.ph.be.ph, align 1, !tbaa !27 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.ph.be.ph, i64 1 ; 2 uses
  %.not50 = icmp eq i8 %.pr, 0
  br i1 %.not50, label %.critedge38, label %.lr.ph, !llvm.loop !6

bb.d:                                             ; preds = %bb.b
  %i.p = icmp eq i8 %i.g, 47
  br i1 %i.p, label %bb.e, label %.critedge38

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.h, align 1, !tbaa !27
  switch i8 %i.q, label %.critedge38 [
    i8 47, label %.preheader
    i8 42, label %bb.f
  ]

.preheader:                                       ; preds = %bb.e, %.preheader
  %.1 = phi ptr [ %i.r, %.preheader ], [ %i.h, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27    ; 3 uses
  switch i8 %i.s, label %.preheader [
    i8 0, label %.critedge
    i8 10, label %.critedge
  ]

.critedge:                                        ; preds = %.preheader, %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %.critedge38, label %bb.b, !llvm.loop !6

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.051, i64 2
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.225 = phi i32 [ %.023.ph62, %bb.f ], [ %.326, %bb.k ] ; 5 uses
  %.2 = phi ptr [ %i.u, %bb.f ], [ %i.ac, %bb.k ] ; 5 uses
  %i.v = load i8, ptr %.2, align 1, !tbaa !27
  switch i8 %i.v, label %bb.k [
    i8 0, label %.outer.backedge.thread
    i8 10, label %bb.h
    i8 42, label %bb.i
  ]

.outer.backedge.thread:                           ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %.critedge38

bb.h:                                             ; preds = %bb.g
  %i.x = add nsw i32 %.225, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !27
  %i.aa = icmp eq i8 %i.z, 47
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.2, i64 2
  br label %.outer.backedge

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.326 = phi i32 [ %i.x, %bb.h ], [ %.225, %bb.i ], [ %.225, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.g, !llvm.loop !7

.critedge38:                                      ; preds = %.outer.backedge, %.critedge, %bb.d, %bb.e, %.outer.backedge.thread, %bb.a
  %.023.ph.lcssa = phi i32 [ %.023.ph62, %.critedge ], [ %1, %bb.a ], [ %.225, %.outer.backedge.thread ], [ %.023.ph62, %bb.e ], [ %.023.ph62, %bb.d ], [ %.023.ph.be.ph, %.outer.backedge ]
  %.lcssa42 = phi ptr [ %i.t, %.critedge ], [ %i.a, %bb.a ], [ %i.w, %.outer.backedge.thread ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.o, %.outer.backedge ]
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge38
  store i32 %.023.ph.lcssa, ptr %2, align 4, !tbaa !41
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge38
  %i.ad = ptrtoint ptr %.lcssa42 to i64
  %i.ae = ptrtoint ptr %0 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  ret i32 %i.ag
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, -2147483648) i32 @longest_match(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #29 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !27      ; 3 uses
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 5 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !27    ; 5 uses
  %.not3647 = icmp eq i8 %i.d, 0
  br i1 %.not3647, label %.loopexit, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.b
  %.not38 = icmp eq ptr %3, null
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %.not39 = icmp eq ptr %5, null                  ; 2 uses
  br i1 %.not38, label %.lr.ph51.split.us, label %.lr.ph51.split

.lr.ph51.split.us:                                ; preds = %.lr.ph51
  br i1 %.not39, label %.lr.ph51.split.us.split.us, label %.lr.ph51.split.us.split

.lr.ph51.split.us.split.us:                       ; preds = %.lr.ph51.split.us, %._crit_edge97.a
  %i.f = phi i8 [ %i.i, %._crit_edge97.a ], [ %i.d, %.lr.ph51.split.us ]
  %.050.us.us = phi ptr [ %i.u, %._crit_edge97.a ], [ %i.c, %.lr.ph51.split.us ] ; 3 uses
  %.02849.us.us = phi i32 [ %.1.us.us, %._crit_edge97.a ], [ 0, %.lr.ph51.split.us ] ; 3 uses
  %i.g = icmp eq i8 %i.f, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !27    ; 4 uses
  br i1 %i.g, label %.preheader.us.us, label %._crit_edge97.a

.preheader.us.us:                                 ; preds = %.lr.ph51.split.us.split.us
  %.not3741.us.us = icmp eq i8 %i.i, 0
  br i1 %.not3741.us.us, label %.critedge.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.preheader.us.us, %bb.c
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %bb.c ], [ 1, %.preheader.us.us ] ; 4 uses
  %i.j = phi i8 [ %i.p, %bb.c ], [ %i.i, %.preheader.us.us ]
  %.02942.us.us = phi i32 [ %i.n, %bb.c ], [ 1, %.preheader.us.us ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv93
  %i.l = load i8, ptr %i.k, align 1, !tbaa !27
  %i.m = icmp eq i8 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %.critedge.us.us.loopexit.split.loop.exit

bb.c:                                             ; preds = %.lr.ph.us.us
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 3 uses
  %i.n = add nuw nsw i32 %.02942.us.us, 1         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 %indvars.iv.next94
  %i.p = load i8, ptr %i.o, align 1, !tbaa !27    ; 2 uses
  %.not37.us.us = icmp eq i8 %i.p, 0
  br i1 %.not37.us.us, label %.critedge.us.us, label %.lr.ph.us.us, !llvm.loop !8

.critedge.us.us.loopexit.split.loop.exit:         ; preds = %.lr.ph.us.us
  %i.q = trunc nuw nsw i64 %indvars.iv93 to i32
  br label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.c, %.critedge.us.us.loopexit.split.loop.exit, %.preheader.us.us
  %.029.lcssa.us.us = phi i32 [ 1, %.preheader.us.us ], [ %i.q, %.critedge.us.us.loopexit.split.loop.exit ], [ %i.n, %bb.c ] ; 3 uses
  %.lcssa.us.us = phi i64 [ 1, %.preheader.us.us ], [ %indvars.iv93, %.critedge.us.us.loopexit.split.loop.exit ], [ %indvars.iv.next94, %bb.c ]
  %i.r = icmp sgt i32 %.029.lcssa.us.us, %.02849.us.us
  br i1 %i.r, label %bb.d, label %._crit_edge97.a

bb.d:                                             ; preds = %.critedge.us.us
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa.us.us
  %i.t = load i8, ptr %i.s, align 1, !tbaa !27
  %.not40.us.us = icmp eq i8 %i.t, 0
  br i1 %.not40.us.us, label %.loopexit, label %._crit_edge97.a

._crit_edge97.a:                                  ; preds = %.lr.ph51.split.us.split.us, %bb.d, %.critedge.us.us
  %.1.us.us = phi i32 [ %.029.lcssa.us.us, %bb.d ], [ %.02849.us.us, %.critedge.us.us ], [ %.02849.us.us, %.lr.ph51.split.us.split.us ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 1
  %.not36.us.us = icmp eq i8 %i.i, 0
  br i1 %.not36.us.us, label %.loopexit, label %.lr.ph51.split.us.split.us, !llvm.loop !9

.lr.ph51.split.us.split:                          ; preds = %.lr.ph51.split.us, %bb.g
  %i.v = phi i8 [ %i.ai, %bb.g ], [ %i.a, %.lr.ph51.split.us ] ; 4 uses
  %6 = phi i8 [ %i.am, %bb.g ], [ %i.d, %.lr.ph51.split.us ] ; 2 uses
  %.050.us = phi ptr [ %i.al, %bb.g ], [ %i.c, %.lr.ph51.split.us ] ; 4 uses
  %.03048.us.a = phi i32 [ %.1.us, %bb.g ], [ 0, %.lr.ph51.split.us ] ; 3 uses
  %.03048.us = phi i32 [ %spec.select.us, %bb.g ], [ %4, %.lr.ph51.split.us ] ; 2 uses
  %i.w = icmp eq i8 %6, %i.v
  br i1 %i.w, label %.preheader.us, label %bb.g

.lr.ph.us:                                        ; preds = %.preheader.us, %bb.e
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %bb.e ], [ 1, %.preheader.us ] ; 4 uses
  %i.x = phi i8 [ %i.ad, %bb.e ], [ %i.ao, %.preheader.us ]
  %.02942.us = phi i32 [ %i.ab, %bb.e ], [ 1, %.preheader.us ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv91
  %i.z = load i8, ptr %i.y, align 1, !tbaa !27
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %.critedge.us.loopexit.split.loop.exit131

bb.e:                                             ; preds = %.lr.ph.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 3 uses
  %i.ab = add nuw nsw i32 %.02942.us, 1           ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.050.us, i64 %indvars.iv.next92
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !27  ; 2 uses
  %.not37.us = icmp eq i8 %i.ad, 0
  br i1 %.not37.us, label %.critedge.us, label %.lr.ph.us, !llvm.loop !8

.critedge.us.loopexit.split.loop.exit131:         ; preds = %.lr.ph.us
  %i.ae = trunc nuw nsw i64 %indvars.iv91 to i32
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.e, %.critedge.us.loopexit.split.loop.exit131, %.preheader.us
  %.029.lcssa.us = phi i32 [ 1, %.preheader.us ], [ %i.ae, %.critedge.us.loopexit.split.loop.exit131 ], [ %i.ab, %bb.e ] ; 3 uses
  %.lcssa.us = phi i64 [ 1, %.preheader.us ], [ %indvars.iv91, %.critedge.us.loopexit.split.loop.exit131 ], [ %indvars.iv.next92, %bb.e ]
  %i.af = icmp sgt i32 %.029.lcssa.us, %.03048.us.a
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge.us
  store i32 %.03048.us, ptr %5, align 4, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa.us
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27
  %.not40.us = icmp eq i8 %i.ah, 0
  br i1 %.not40.us, label %.loopexit, label %._crit_edge95

._crit_edge95:                                    ; preds = %bb.f
  %.pre95 = load i8, ptr %1, align 1, !tbaa !27
  %.pre96 = load i8, ptr %.050.us, align 1, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge95, %.critedge.us, %.lr.ph51.split.us.split
  %7 = phi i8 [ %.pre96, %._crit_edge95 ], [ %i.v, %.critedge.us ], [ %6, %.lr.ph51.split.us.split ]
  %i.ai = phi i8 [ %.pre95, %._crit_edge95 ], [ %i.v, %.critedge.us ], [ %i.v, %.lr.ph51.split.us.split ]
  %.1.us = phi i32 [ %.029.lcssa.us, %._crit_edge95 ], [ %.03048.us.a, %.critedge.us ], [ %.03048.us.a, %.lr.ph51.split.us.split ] ; 2 uses
  %i.aj = icmp eq i8 %7, 10
  %i.ak = zext i1 %i.aj to i32
  %spec.select.us = add nsw i32 %.03048.us, %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %.050.us, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !27  ; 2 uses
  %.not36.us = icmp eq i8 %i.am, 0
  br i1 %.not36.us, label %.loopexit, label %.lr.ph51.split.us.split, !llvm.loop !9

.preheader.us:                                    ; preds = %.lr.ph51.split.us.split
  %i.an = getelementptr inbounds nuw i8, ptr %.050.us, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27  ; 2 uses
  %.not3741.us = icmp eq i8 %i.ao, 0
  br i1 %.not3741.us, label %.critedge.us, label %.lr.ph.us

.lr.ph51.split:                                   ; preds = %.lr.ph51
  br i1 %.not39, label %.lr.ph51.split.split.us, label %.lr.ph51.split.split

.lr.ph51.split.split.us:                          ; preds = %.lr.ph51.split, %bb.j
  %i.ap = phi i8 [ %i.bj, %bb.j ], [ %i.d, %.lr.ph51.split ]
  %.050.us56 = phi ptr [ %i.bi, %bb.j ], [ %i.c, %.lr.ph51.split ] ; 4 uses
  %.02849.us57 = phi i32 [ %.1.us74, %bb.j ], [ 0, %.lr.ph51.split ] ; 3 uses
  %i.aq = load i8, ptr %1, align 1, !tbaa !27
  %i.ar = icmp eq i8 %i.ap, %i.aq
  br i1 %i.ar, label %.preheader.us59, label %bb.j

.preheader.us59:                                  ; preds = %.lr.ph51.split.split.us
  %i.as = getelementptr inbounds nuw i8, ptr %.050.us56, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !27  ; 2 uses
  %.not3741.us60 = icmp eq i8 %i.at, 0
  br i1 %.not3741.us60, label %.critedge.us70, label %.lr.ph.us61

.lr.ph.us61:                                      ; preds = %.preheader.us59, %bb.h
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %bb.h ], [ 1, %.preheader.us59 ] ; 4 uses
  %i.au = phi i8 [ %i.ba, %bb.h ], [ %i.at, %.preheader.us59 ]
  %.02942.us62 = phi i32 [ %i.ay, %bb.h ], [ 1, %.preheader.us59 ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv89
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27
  %i.ax = icmp eq i8 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %.critedge.us70.loopexit.split.loop.exit

bb.h:                                             ; preds = %.lr.ph.us61
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 3 uses
  %i.ay = add nuw nsw i32 %.02942.us62, 1         ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.050.us56, i64 %indvars.iv.next90
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !27  ; 2 uses
  %.not37.us63 = icmp eq i8 %i.ba, 0
  br i1 %.not37.us63, label %.critedge.us70, label %.lr.ph.us61, !llvm.loop !8

.critedge.us70.loopexit.split.loop.exit:          ; preds = %.lr.ph.us61
  %i.bb = trunc nuw nsw i64 %indvars.iv89 to i32
  br label %.critedge.us70

.critedge.us70:                                   ; preds = %bb.h, %.critedge.us70.loopexit.split.loop.exit, %.preheader.us59
  %.029.lcssa.us71 = phi i32 [ 1, %.preheader.us59 ], [ %i.bb, %.critedge.us70.loopexit.split.loop.exit ], [ %i.ay, %bb.h ] ; 3 uses
  %.lcssa.us72 = phi i64 [ 1, %.preheader.us59 ], [ %indvars.iv89, %.critedge.us70.loopexit.split.loop.exit ], [ %indvars.iv.next90, %bb.h ]
  %i.bc = icmp sgt i32 %.029.lcssa.us71, %.02849.us57
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge.us70
  %i.bd = ptrtoint ptr %.050.us56 to i64
  %i.be = sub i64 %i.bd, %i.e
  %i.bf = trunc i64 %i.be to i32
  store i32 %i.bf, ptr %3, align 4, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa.us72
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !27
  %.not40.us73 = icmp eq i8 %i.bh, 0
  br i1 %.not40.us73, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge.us70, %.lr.ph51.split.split.us
  %.1.us74 = phi i32 [ %.029.lcssa.us71, %bb.i ], [ %.02849.us57, %.critedge.us70 ], [ %.02849.us57, %.lr.ph51.split.split.us ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.050.us56, i64 1 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !27  ; 2 uses
  %.not36.us76 = icmp eq i8 %i.bj, 0
  br i1 %.not36.us76, label %.loopexit, label %.lr.ph51.split.split.us, !llvm.loop !9

.lr.ph51.split.split:                             ; preds = %.lr.ph51.split, %bb.m
  %i.bk = phi i8 [ %i.ch, %bb.m ], [ %i.d, %.lr.ph51.split ] ; 3 uses
  %.050 = phi ptr [ %i.cg, %bb.m ], [ %i.c, %.lr.ph51.split ] ; 5 uses
  %.02849 = phi i32 [ %.1, %bb.m ], [ 0, %.lr.ph51.split ] ; 3 uses
  %.03048 = phi i32 [ %spec.select, %bb.m ], [ %4, %.lr.ph51.split ] ; 2 uses
  %i.bl = load i8, ptr %1, align 1, !tbaa !27
  %i.bm = icmp eq i8 %i.bk, %i.bl
  br i1 %i.bm, label %.preheader, label %bb.m

.preheader:                                       ; preds = %.lr.ph51.split.split
  %i.bn = getelementptr inbounds nuw i8, ptr %.050, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !27  ; 2 uses
  %.not3741 = icmp eq i8 %i.bo, 0
  br i1 %.not3741, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 1, %.preheader ] ; 4 uses
  %i.bp = phi i8 [ %i.bv, %bb.k ], [ %i.bo, %.preheader ]
  %.02942 = phi i32 [ %i.bt, %bb.k ], [ 1, %.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !27
  %i.bs = icmp eq i8 %i.bp, %i.br
  br i1 %i.bs, label %bb.k, label %.critedge.loopexit.split.loop.exit125

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bt = add nuw nsw i32 %.02942, 1              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.050, i64 %indvars.iv.next
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !27  ; 2 uses
  %.not37 = icmp eq i8 %i.bv, 0
  br i1 %.not37, label %.critedge, label %.lr.ph, !llvm.loop !8

.critedge.loopexit.split.loop.exit125:            ; preds = %.lr.ph
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %.critedge.loopexit.split.loop.exit125, %.preheader
  %.029.lcssa = phi i32 [ 1, %.preheader ], [ %i.bw, %.critedge.loopexit.split.loop.exit125 ], [ %i.bt, %bb.k ] ; 3 uses
  %.lcssa = phi i64 [ 1, %.preheader ], [ %indvars.iv, %.critedge.loopexit.split.loop.exit125 ], [ %indvars.iv.next, %bb.k ]
  %i.bx = icmp sgt i32 %.029.lcssa, %.02849
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.by = ptrtoint ptr %.050 to i64
  %i.bz = sub i64 %i.by, %i.e
  %i.ca = trunc i64 %i.bz to i32
  store i32 %i.ca, ptr %3, align 4, !tbaa !41
  store i32 %.03048, ptr %5, align 4, !tbaa !41
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !27
  %.not40 = icmp eq i8 %i.cc, 0
  br i1 %.not40, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre = load i8, ptr %.050, align 1, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.critedge, %.lr.ph51.split.split
  %i.cd = phi i8 [ %.pre, %._crit_edge ], [ %i.bk, %.critedge ], [ %i.bk, %.lr.ph51.split.split ]
  %.1 = phi i32 [ %.029.lcssa, %._crit_edge ], [ %.02849, %.critedge ], [ %.02849, %.lr.ph51.split.split ] ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 10
  %i.cf = zext i1 %i.ce to i32
  %spec.select = add nsw i32 %.03048, %i.cf
  %i.cg = getelementptr inbounds nuw i8, ptr %.050, i64 1 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !27  ; 2 uses
  %.not36 = icmp eq i8 %i.ch, 0
  br i1 %.not36, label %.loopexit, label %.lr.ph51.split.split, !llvm.loop !9

.loopexit:                                        ; preds = %bb.l, %bb.m, %bb.i, %bb.j, %bb.f, %bb.g, %bb.d, %._crit_edge97.a, %bb.b, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ %.1.us74, %bb.j ], [ 0, %bb.b ], [ %.029.lcssa.us, %bb.f ], [ %.029.lcssa.us.us, %bb.d ], [ %.1.us.us, %._crit_edge97.a ], [ %.1.us, %bb.g ], [ %.029.lcssa.us71, %bb.i ], [ %.029.lcssa, %bb.l ], [ %.1, %bb.m ]
  ret i32 %.3
}

; Function Attrs: nofree nounwind uwtable
define hidden noalias noundef ptr @extract_desc(ptr noundef %0) local_unnamed_addr #30 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.w, %bb.i ]    ; 6 uses
  %i.a = load i8, ptr %.0, align 1, !tbaa !27
  switch i8 %i.a, label %bb.i [
    i8 0, label %.loopexit
    i8 47, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !27
  %i.d = icmp eq i8 %i.c, 42
  br i1 %i.d, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !27
  %i.g = icmp eq i8 %i.f, 45
  br i1 %i.g, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !27    ; 2 uses
  %.not28 = icmp eq i8 %i.i, 47
  br i1 %.not28, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 3 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge2
  %i.k = phi i8 [ %.pr, %.critedge2 ], [ %i.i, %.preheader ]
  %.1 = phi ptr [ %i.n, %.critedge2 ], [ %i.j, %.preheader ] ; 4 uses
  switch i8 %i.k, label %..critedge2_crit_edge [
    i8 0, label %bb.h
    i8 42, label %bb.g
  ]

..critedge2_crit_edge:                            ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %.pr.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !27
  br label %.critedge2

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !27    ; 2 uses
  %.not31 = icmp eq i8 %i.m, 47
  br i1 %.not31, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.g
end_hunk_0
