Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/run-test262?download=true
inline.NumInlined: 247
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@find_error:bb.a
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
  %i.a = load i8, ptr %1, align 1, !tbaa !27      ; 2 uses
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

.lr.ph51.split.us.split.us:                       ; preds = %.lr.ph51.split.us, %._crit_edge97
  %i.f = phi i8 [ %i.i, %._crit_edge97 ], [ %i.d, %.lr.ph51.split.us ]
  %.050.us.us = phi ptr [ %i.u, %._crit_edge97 ], [ %i.c, %.lr.ph51.split.us ] ; 3 uses
  %.02849.us.us = phi i32 [ %.1.us.us, %._crit_edge97 ], [ 0, %.lr.ph51.split.us ] ; 3 uses
  %i.g = icmp eq i8 %i.f, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !27    ; 4 uses
  br i1 %i.g, label %.preheader.us.us, label %._crit_edge97

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
  br i1 %i.m, label %bb.c, label %.critedge.us.us.loopexit.split.loop.exit134

bb.c:                                             ; preds = %.lr.ph.us.us
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 3 uses
  %i.n = add nuw nsw i32 %.02942.us.us, 1         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 %indvars.iv.next94
  %i.p = load i8, ptr %i.o, align 1, !tbaa !27    ; 2 uses
  %.not37.us.us = icmp eq i8 %i.p, 0
  br i1 %.not37.us.us, label %.critedge.us.us, label %.lr.ph.us.us, !llvm.loop !8

.critedge.us.us.loopexit.split.loop.exit134:      ; preds = %.lr.ph.us.us
  %i.q = trunc nuw nsw i64 %indvars.iv93 to i32
  br label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.c, %.critedge.us.us.loopexit.split.loop.exit134, %.preheader.us.us
  %.029.lcssa.us.us = phi i32 [ 1, %.preheader.us.us ], [ %i.q, %.critedge.us.us.loopexit.split.loop.exit134 ], [ %i.n, %bb.c ] ; 3 uses
  %.lcssa.us.us = phi i64 [ 1, %.preheader.us.us ], [ %indvars.iv93, %.critedge.us.us.loopexit.split.loop.exit134 ], [ %indvars.iv.next94, %bb.c ]
  %i.r = icmp sgt i32 %.029.lcssa.us.us, %.02849.us.us
  br i1 %i.r, label %bb.d, label %._crit_edge97

bb.d:                                             ; preds = %.critedge.us.us
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa.us.us
  %i.t = load i8, ptr %i.s, align 1, !tbaa !27
  %.not40.us.us = icmp eq i8 %i.t, 0
  br i1 %.not40.us.us, label %.loopexit, label %._crit_edge97

._crit_edge97:                                    ; preds = %.lr.ph51.split.us.split.us, %bb.d, %.critedge.us.us
  %.1.us.us = phi i32 [ %.029.lcssa.us.us, %bb.d ], [ %.02849.us.us, %.critedge.us.us ], [ %.02849.us.us, %.lr.ph51.split.us.split.us ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 1
  %.not36.us.us = icmp eq i8 %i.i, 0
  br i1 %.not36.us.us, label %.loopexit, label %.lr.ph51.split.us.split.us, !llvm.loop !9

.lr.ph51.split.us.split:                          ; preds = %.lr.ph51.split.us, %bb.g
  %i.v = phi i8 [ %i.an, %bb.g ], [ %i.d, %.lr.ph51.split.us ] ; 3 uses
  %.050.us = phi ptr [ %i.am, %bb.g ], [ %i.c, %.lr.ph51.split.us ] ; 4 uses
  %.02849.us = phi i32 [ %.1.us, %bb.g ], [ 0, %.lr.ph51.split.us ] ; 3 uses
  %.03048.us = phi i32 [ %spec.select.us, %bb.g ], [ %4, %.lr.ph51.split.us ] ; 2 uses
  %i.w = load i8, ptr %1, align 1, !tbaa !27
  %i.x = icmp eq i8 %i.v, %i.w
  br i1 %i.x, label %.preheader.us, label %bb.g

.lr.ph.us:                                        ; preds = %.preheader.us, %bb.e
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %bb.e ], [ 1, %.preheader.us ] ; 4 uses
  %i.y = phi i8 [ %i.ae, %bb.e ], [ %i.ap, %.preheader.us ]
  %.02942.us = phi i32 [ %i.ac, %bb.e ], [ 1, %.preheader.us ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv91
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !27
  %i.ab = icmp eq i8 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge.us.loopexit.split.loop.exit131

bb.e:                                             ; preds = %.lr.ph.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 3 uses
  %i.ac = add nuw nsw i32 %.02942.us, 1           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.050.us, i64 %indvars.iv.next92
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27  ; 2 uses
  %.not37.us = icmp eq i8 %i.ae, 0
  br i1 %.not37.us, label %.critedge.us, label %.lr.ph.us, !llvm.loop !8

.critedge.us.loopexit.split.loop.exit131:         ; preds = %.lr.ph.us
  %i.af = trunc nuw nsw i64 %indvars.iv91 to i32
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.e, %.critedge.us.loopexit.split.loop.exit131, %.preheader.us
  %.029.lcssa.us = phi i32 [ 1, %.preheader.us ], [ %i.af, %.critedge.us.loopexit.split.loop.exit131 ], [ %i.ac, %bb.e ] ; 3 uses
  %.lcssa.us = phi i64 [ 1, %.preheader.us ], [ %indvars.iv91, %.critedge.us.loopexit.split.loop.exit131 ], [ %indvars.iv.next92, %bb.e ]
  %i.ag = icmp sgt i32 %.029.lcssa.us, %.02849.us
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge.us
  store i32 %.03048.us, ptr %5, align 4, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa.us
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27
  %.not40.us = icmp eq i8 %i.ai, 0
  br i1 %.not40.us, label %.loopexit, label %._crit_edge95

._crit_edge95:                                    ; preds = %bb.f
  %.pre96 = load i8, ptr %.050.us, align 1, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge95, %.critedge.us, %.lr.ph51.split.us.split
  %i.aj = phi i8 [ %.pre96, %._crit_edge95 ], [ %i.v, %.critedge.us ], [ %i.v, %.lr.ph51.split.us.split ]
  %.1.us = phi i32 [ %.029.lcssa.us, %._crit_edge95 ], [ %.02849.us, %.critedge.us ], [ %.02849.us, %.lr.ph51.split.us.split ] ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 10
  %i.al = zext i1 %i.ak to i32
  %spec.select.us = add nsw i32 %.03048.us, %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.050.us, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !27  ; 2 uses
  %.not36.us = icmp eq i8 %i.an, 0
  br i1 %.not36.us, label %.loopexit, label %.lr.ph51.split.us.split, !llvm.loop !9

.preheader.us:                                    ; preds = %.lr.ph51.split.us.split
  %i.ao = getelementptr inbounds nuw i8, ptr %.050.us, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !27  ; 2 uses
  %.not3741.us = icmp eq i8 %i.ap, 0
  br i1 %.not3741.us, label %.critedge.us, label %.lr.ph.us

.lr.ph51.split:                                   ; preds = %.lr.ph51
  br i1 %.not39, label %.lr.ph51.split.split.us, label %.lr.ph51.split.split

.lr.ph51.split.split.us:                          ; preds = %.lr.ph51.split, %bb.j
  %i.aq = phi i8 [ %i.bi, %bb.j ], [ %i.d, %.lr.ph51.split ]
  %.050.us56 = phi ptr [ %i.bh, %bb.j ], [ %i.c, %.lr.ph51.split ] ; 4 uses
  %.02849.us57 = phi i32 [ %.1.us65, %bb.j ], [ 0, %.lr.ph51.split ] ; 3 uses
  %i.ar = load i8, ptr %1, align 1, !tbaa !27
  %i.as = icmp eq i8 %i.aq, %i.ar
  br i1 %i.as, label %.preheader.us59, label %bb.j

.preheader.us59:                                  ; preds = %.lr.ph51.split.split.us
  %6 = getelementptr inbounds nuw i8, ptr %.050.us56, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !27        ; 2 uses
  %.not3741.us60 = icmp eq i8 %7, 0
  br i1 %.not3741.us60, label %.critedge.us61, label %.lr.ph.us70

.lr.ph.us70:                                      ; preds = %.preheader.us59, %bb.h
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %bb.h ], [ 1, %.preheader.us59 ] ; 4 uses
  %i.at = phi i8 [ %i.az, %bb.h ], [ %7, %.preheader.us59 ]
  %.02942.us59 = phi i32 [ %i.ax, %bb.h ], [ 1, %.preheader.us59 ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv89
  %i.av = load i8, ptr %i.au, align 1, !tbaa !27
  %i.aw = icmp eq i8 %i.at, %i.av
  br i1 %i.aw, label %bb.h, label %.critedge.us61.loopexit.split.loop.exit128

bb.h:                                             ; preds = %.lr.ph.us70
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 3 uses
  %i.ax = add nuw nsw i32 %.02942.us59, 1         ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.050.us56, i64 %indvars.iv.next90
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !27  ; 2 uses
  %.not37.us60 = icmp eq i8 %i.az, 0
  br i1 %.not37.us60, label %.critedge.us61, label %.lr.ph.us70, !llvm.loop !8

.critedge.us61.loopexit.split.loop.exit128:       ; preds = %.lr.ph.us70
  %i.ba = trunc nuw nsw i64 %indvars.iv89 to i32
  br label %.critedge.us61

.critedge.us61:                                   ; preds = %bb.h, %.critedge.us61.loopexit.split.loop.exit128, %.preheader.us59
  %.029.lcssa.us62 = phi i32 [ 1, %.preheader.us59 ], [ %i.ba, %.critedge.us61.loopexit.split.loop.exit128 ], [ %i.ax, %bb.h ] ; 3 uses
  %.lcssa.us63 = phi i64 [ 1, %.preheader.us59 ], [ %indvars.iv89, %.critedge.us61.loopexit.split.loop.exit128 ], [ %indvars.iv.next90, %bb.h ]
  %i.bb = icmp sgt i32 %.029.lcssa.us62, %.02849.us57
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge.us61
  %i.bc = ptrtoint ptr %.050.us56 to i64
  %i.bd = sub i64 %i.bc, %i.e
  %i.be = trunc i64 %i.bd to i32
  store i32 %i.be, ptr %3, align 4, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa.us63
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !27
  %.not40.us64 = icmp eq i8 %i.bg, 0
  br i1 %.not40.us64, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge.us61, %.lr.ph51.split.split.us
  %.1.us65 = phi i32 [ %.029.lcssa.us62, %bb.i ], [ %.02849.us57, %.critedge.us61 ], [ %.02849.us57, %.lr.ph51.split.split.us ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.050.us56, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27  ; 2 uses
  %.not36.us67 = icmp eq i8 %i.bi, 0
  br i1 %.not36.us67, label %.loopexit, label %.lr.ph51.split.split.us, !llvm.loop !9

.lr.ph51.split.split:                             ; preds = %.lr.ph51.split, %bb.m
  %i.bj = phi i8 [ %i.cg, %bb.m ], [ %i.d, %.lr.ph51.split ] ; 3 uses
  %.050 = phi ptr [ %i.cf, %bb.m ], [ %i.c, %.lr.ph51.split ] ; 5 uses
  %.02849 = phi i32 [ %.1, %bb.m ], [ 0, %.lr.ph51.split ] ; 3 uses
  %.03048 = phi i32 [ %spec.select, %bb.m ], [ %4, %.lr.ph51.split ] ; 2 uses
  %i.bk = load i8, ptr %1, align 1, !tbaa !27
  %i.bl = icmp eq i8 %i.bj, %i.bk
  br i1 %i.bl, label %.preheader, label %bb.m

.preheader:                                       ; preds = %.lr.ph51.split.split
  %i.bm = getelementptr inbounds nuw i8, ptr %.050, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !27  ; 2 uses
  %.not3741 = icmp eq i8 %i.bn, 0
  br i1 %.not3741, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 1, %.preheader ] ; 4 uses
  %i.bo = phi i8 [ %i.bu, %bb.k ], [ %i.bn, %.preheader ]
  %.02942 = phi i32 [ %i.bs, %bb.k ], [ 1, %.preheader ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !27
  %i.br = icmp eq i8 %i.bo, %i.bq
  br i1 %i.br, label %bb.k, label %.critedge.loopexit.split.loop.exit125

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bs = add nuw nsw i32 %.02942, 1              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.050, i64 %indvars.iv.next
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !27  ; 2 uses
  %.not37 = icmp eq i8 %i.bu, 0
  br i1 %.not37, label %.critedge, label %.lr.ph, !llvm.loop !8

.critedge.loopexit.split.loop.exit125:            ; preds = %.lr.ph
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %.critedge.loopexit.split.loop.exit125, %.preheader
  %.029.lcssa = phi i32 [ 1, %.preheader ], [ %i.bv, %.critedge.loopexit.split.loop.exit125 ], [ %i.bs, %bb.k ] ; 3 uses
  %.lcssa = phi i64 [ 1, %.preheader ], [ %indvars.iv, %.critedge.loopexit.split.loop.exit125 ], [ %indvars.iv.next, %bb.k ]
  %i.bw = icmp sgt i32 %.029.lcssa, %.02849
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.bx = ptrtoint ptr %.050 to i64
  %i.by = sub i64 %i.bx, %i.e
  %i.bz = trunc i64 %i.by to i32
  store i32 %i.bz, ptr %3, align 4, !tbaa !41
  store i32 %.03048, ptr %5, align 4, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !27
  %.not40 = icmp eq i8 %i.cb, 0
  br i1 %.not40, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre = load i8, ptr %.050, align 1, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.critedge, %.lr.ph51.split.split
  %i.cc = phi i8 [ %.pre, %._crit_edge ], [ %i.bj, %.critedge ], [ %i.bj, %.lr.ph51.split.split ]
  %.1 = phi i32 [ %.029.lcssa, %._crit_edge ], [ %.02849, %.critedge ], [ %.02849, %.lr.ph51.split.split ] ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 10
  %i.ce = zext i1 %i.cd to i32
  %spec.select = add nsw i32 %.03048, %i.ce
  %i.cf = getelementptr inbounds nuw i8, ptr %.050, i64 1 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !27  ; 2 uses
  %.not36 = icmp eq i8 %i.cg, 0
  br i1 %.not36, label %.loopexit, label %.lr.ph51.split.split, !llvm.loop !9

.loopexit:                                        ; preds = %bb.l, %bb.m, %bb.i, %bb.j, %bb.f, %bb.g, %bb.d, %._crit_edge97, %bb.b, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ %.1.us65, %bb.j ], [ 0, %bb.b ], [ %.029.lcssa.us, %bb.f ], [ %.029.lcssa.us.us, %bb.d ], [ %.1.us.us, %._crit_edge97 ], [ %.1.us, %bb.g ], [ %.029.lcssa.us62, %bb.i ], [ %.029.lcssa, %bb.l ], [ %.1, %bb.m ]
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
  %.pr = phi i8 [ %.pr.pre, %..critedge2_crit_edge ], [ %i.m, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.f, !llvm.loop !10

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, ...) @warning(ptr noundef nonnull @.str.41)
  br label %.loopexit

.critedge:                                        ; preds = %bb.g
  %i.o = ptrtoint ptr %.1 to i64
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = shl i64 %i.q, 32                         ; 2 uses
  %sext = add i64 %i.r, 4294967296
  %i.s = ashr exact i64 %sext, 32
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #44 ; 3 uses
  %i.u = ashr exact i64 %i.r, 32                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.j, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  store i8 0, ptr %i.v, align 1, !tbaa !27
  br label %.loopexit

bb.i:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !11

.loopexit:                                        ; preds = %bb.b, %.critedge, %bb.h
  %.025 = phi ptr [ null, %bb.h ], [ %i.t, %.critedge ], [ null, %bb.b ]
  ret ptr %.025
}

; Function Attrs: nounwind uwtable
define hidden void @update_stats(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #20 {
bb.a:
  %2 = alloca %struct.JSMemoryUsage, align 8      ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @JS_ComputeMemoryUsage(ptr noundef %0, ptr noundef nonnull %2) #40
  %i.a = call i32 @pthread_mutex_lock(ptr noundef nonnull @stats_mutex) #40
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %js_mutex_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @abort() #42
  unreachable

js_mutex_lock.exit:                               ; preds = %bb.a
  %i.b = load i32, ptr @stats_count, align 4, !tbaa !41 ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @stats_count, align 4, !tbaa !41
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %js_mutex_lock.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) @stats_max, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 208, i1 false), !tbaa.struct !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) @stats_min, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 208, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) @stats_all, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 208, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) @stats_avg, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 208, i1 false)
  %i.e = load ptr, ptr @stats_min_filename, align 8, !tbaa !29
  call void @free(ptr noundef %i.e) #40
  %i.f = call noalias ptr @strdup(ptr noundef %1) #40
  store ptr %i.f, ptr @stats_min_filename, align 8, !tbaa !29
  %i.g = load ptr, ptr @stats_max_filename, align 8, !tbaa !29
  call void @free(ptr noundef %i.g) #40
  %i.h = call noalias ptr @strdup(ptr noundef %1) #40
  store ptr %i.h, ptr @stats_max_filename, align 8, !tbaa !29
  br label %bb.i

bb.d:                                             ; preds = %js_mutex_lock.exit
  %i.i = load i64, ptr @stats_max, align 8, !tbaa !84
  %i.j = load i64, ptr %2, align 8, !tbaa !84     ; 2 uses
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %bb.f
end_hunk_0
