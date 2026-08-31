Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cmdutils?download=true
inline.NumInlined: 52
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@write_option:bb.a
  %.not.i142 = icmp eq i8 %i.cc, 0
  br i1 %.not.i142, label %bb.ac, label %parse_number.exit146.thread

parse_number.exit146.thread:                      ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull %.098, ptr noundef %.097, double noundef -inf, double noundef +inf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.thread

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.cd = fptrunc nsz double %i.ca to float
  store float %i.cd, ptr %.195, align 4, !tbaa !46
  br label %bb.al

bb.ad:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ce = call nsz double @av_strtod(ptr noundef %.097, ptr noundef nonnull %i.b) #14
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !14
  %.not.i147 = icmp eq i8 %i.cg, 0
  br i1 %.not.i147, label %bb.ae, label %parse_number.exit151.thread

parse_number.exit151.thread:                      ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull %.098, ptr noundef %.097, double noundef -inf, double noundef +inf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.thread

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  store double %i.ce, ptr %.195, align 8, !tbaa !15
  br label %bb.al

bb.af:                                            ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !14 ; 2 uses
  %.not126 = icmp eq ptr %i.ci, null
  br i1 %.not126, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.o, %bb.af
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.58, i32 noundef 352) #14
  tail call void @abort() #16
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cj = tail call i32 %i.ci(ptr noundef %0, ptr noundef nonnull %.098, ptr noundef %.097) #14 ; 5 uses
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.098, ptr noundef nonnull dereferenceable(15) @.str.100) #15
  %.not127 = icmp eq i32 %i.cl, 0
  br i1 %.not127, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.097, ptr noundef nonnull dereferenceable(5) @.str.101) #15
  %.not128 = icmp eq i32 %i.cm, 0
  br i1 %.not128, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  %i.cn = call i32 @av_strerror(i32 noundef range(i32 -2147483648, 0) %i.cj, ptr noundef nonnull %i.g, i64 noundef 64) #14 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.102, ptr noundef %.097, ptr noundef nonnull %.098, ptr noundef nonnull %i.g) #14
  br label %.thread

bb.al:                                            ; preds = %.thread173, %bb.z, %bb.u, %bb.ae, %bb.ah, %bb.ac, %bb.y
  %.093 = phi i32 [ %i.q, %.thread173 ], [ 3, %bb.u ], [ %i.q, %bb.y ], [ %i.q, %bb.ah ], [ %i.q, %bb.ac ], [ %i.q, %bb.ae ], [ 4, %bb.z ]
  %.4 = phi i32 [ 0, %.thread173 ], [ 0, %bb.u ], [ 0, %bb.y ], [ %i.cj, %bb.ah ], [ 0, %bb.ac ], [ 0, %bb.ae ], [ %i.by, %bb.z ] ; 2 uses
  %i.co = load i32, ptr %i.h, align 4, !tbaa !19  ; 2 uses
  %i.cp = and i32 %i.co, 2
  %.not131 = icmp eq i32 %i.cp, 0
  br i1 %.not131, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %.not132 = icmp eq ptr %.092, null
  br i1 %.not132, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cq = getelementptr inbounds nuw i8, ptr %.092, i64 24
  store i32 %.093, ptr %i.cq, align 8, !tbaa !48
  %i.cr = and i32 %i.co, 16384
  %.not133 = icmp eq i32 %i.cr, 0
  br i1 %.not133, label %find_option.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !14 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !14
  %i.cv = icmp eq i8 %i.cu, 47
  %spec.select.idx.i = zext i1 %i.cv to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 %spec.select.idx.i
  %i.cw = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %.not16.i = icmp eq ptr %i.cw, null
  br i1 %.not16.i, label %find_option.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao, %bb.aq
  %i.cx = phi ptr [ %i.dc, %bb.aq ], [ %i.cw, %bb.ao ]
  %.0817.i = phi ptr [ %i.db, %bb.aq ], [ %4, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.cy = call i32 @av_strstart(ptr noundef nonnull %spec.select.i, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.a) #14
  %.not10.i = icmp eq i32 %i.cy, 0
  br i1 %.not10.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !14
  switch i8 %i.da, label %bb.aq [
    i8 0, label %.thread.i
    i8 58, label %.thread.i
  ]

.thread.i:                                        ; preds = %bb.ap, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %find_option.exit

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i
  %i.db = getelementptr inbounds nuw i8, ptr %.0817.i, i64 48 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !17 ; 2 uses
  %.not.i152 = icmp eq ptr %i.dc, null
  br i1 %.not.i152, label %find_option.exit, label %.lr.ph.i

find_option.exit:                                 ; preds = %bb.aq, %.thread.i, %bb.ao, %bb.an
  %i.dd = phi ptr [ %1, %bb.an ], [ %.0817.i, %.thread.i ], [ %4, %bb.ao ], [ %i.db, %bb.aq ]
  %i.de = getelementptr inbounds nuw i8, ptr %.092, i64 16
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !49
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.m, %bb.k, %parse_number.exit151.thread, %parse_number.exit146.thread, %parse_number.exit141.thread, %parse_number.exit.thread, %bb.q, %bb.al, %bb.am, %find_option.exit, %bb.aj, %bb.ak, %bb.aa
  %.5 = phi i32 [ -12, %bb.q ], [ %.4, %find_option.exit ], [ %.4, %bb.am ], [ -1414092869, %bb.al ], [ -22, %parse_number.exit.thread ], [ -22, %parse_number.exit141.thread ], [ %i.by, %bb.aa ], [ -22, %parse_number.exit146.thread ], [ -22, %parse_number.exit151.thread ], [ %i.cj, %bb.ak ], [ %i.cj, %bb.aj ], [ %i.az, %bb.m ], [ -12, %bb.k ], [ -12, %bb.j ], [ -34, %bb.i ]
  call void @av_freep(ptr noundef nonnull %i.f) #14
  br label %bb.ar

bb.ar:                                            ; preds = %.thread, %bb.f, %opt_has_arg.exit.thread
  %.096 = phi i32 [ -22, %opt_has_arg.exit.thread ], [ -22, %bb.f ], [ %.5, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  ret i32 %.096
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @parse_options(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %.not29 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not29, label %.lr.ph.split.us54, label %.lr.ph.split

.lr.ph.split.us54:                                ; preds = %.lr.ph.lr.ph, %bb.f
  %.02131.us45.us = phi i32 [ %.1.us46.us, %bb.f ], [ 1, %.lr.ph.lr.ph ] ; 2 uses
  %i.b = add nsw i32 %.02131.us45.us, 1           ; 6 uses
  %i.c = sext i32 %.02131.us45.us to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = icmp eq i8 %i.f, 45
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.split.us54
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  switch i8 %i.i, label %bb.d [
    i8 0, label %bb.f
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %.outer.loopexit.split.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = sext i32 %i.b to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = tail call i32 @parse_option(ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %i.o, ptr noundef %3) ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.outer._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.p, %i.b
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us54, %bb.b, %bb.e
  %.1.us46.us = phi i32 [ %i.r, %bb.e ], [ %i.b, %bb.b ], [ %i.b, %.lr.ph.split.us54 ] ; 2 uses
  %i.s = icmp slt i32 %.1.us46.us, %1
  br i1 %i.s, label %.lr.ph.split.us54, label %.outer._crit_edge, !llvm.loop !50

.outer.loopexit.split.us.us:                      ; preds = %bb.c
  %i.t = icmp slt i32 %i.b, %1
  br i1 %i.t, label %.lr.ph.split.us, label %.outer._crit_edge

.outer.loopexit.split:                            ; preds = %bb.k
  %i.u = icmp slt i32 %i.aa, %1
  br i1 %i.u, label %.lr.ph.split.us, label %.outer._crit_edge

.lr.ph.split.us:                                  ; preds = %.outer.loopexit.split, %.outer.loopexit.split.us.us
  %.us-phi56 = phi i32 [ %i.b, %.outer.loopexit.split.us.us ], [ %i.aa, %.outer.loopexit.split ]
  %i.v = sext i32 %.us-phi56 to i64
  %5 = zext nneg i32 %1 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.v, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  br i1 %.not29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = tail call i32 %4(ptr noundef %0, ptr noundef %i.x) #14 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.outer._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %6 = icmp slt i64 %indvars.iv.next, %5
  br i1 %6, label %bb.g, label %.outer._crit_edge, !llvm.loop !50

.lr.ph.split:                                     ; preds = %.lr.ph.lr.ph, %bb.o
  %.02131 = phi i32 [ %.1, %bb.o ], [ 1, %.lr.ph.lr.ph ] ; 2 uses
  %i.aa = add nsw i32 %.02131, 1                  ; 5 uses
  %i.ab = sext i32 %.02131 to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = icmp eq i8 %i.ae, 45
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.split
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  switch i8 %i.ah, label %bb.l [
    i8 0, label %bb.n
    i8 45, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %.outer.loopexit.split, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.al = sext i32 %i.aa to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12
  %i.ao = tail call i32 @parse_option(ptr noundef %0, ptr noundef nonnull %i.ag, ptr noundef %i.an, ptr noundef %3) ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %.outer._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ao, %i.aa
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %.lr.ph.split
  %i.ar = tail call i32 %4(ptr noundef %0, ptr noundef nonnull %i.ad) #14 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.outer._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ %i.aq, %bb.m ], [ %i.aa, %bb.n ] ; 2 uses
  %i.at = icmp slt i32 %.1, %1
  br i1 %i.at, label %.lr.ph.split, label %.outer._crit_edge, !llvm.loop !50

.outer._crit_edge:                                ; preds = %bb.l, %bb.n, %bb.o, %bb.d, %bb.f, %bb.h, %bb.i, %.outer.loopexit.split, %.outer.loopexit.split.us.us, %bb.a
  %.022 = phi i32 [ 0, %.outer.loopexit.split ], [ 0, %bb.i ], [ 0, %.outer.loopexit.split.us.us ], [ 0, %bb.a ], [ 0, %bb.f ], [ %i.y, %bb.h ], [ %i.p, %bb.d ], [ %i.ar, %bb.n ], [ 0, %bb.o ], [ %i.ao, %bb.l ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @parse_optgroup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !51
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 48, ptr noundef nonnull @.str.15, ptr noundef %i.b, ptr noundef %i.d) #14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !59
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !59
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.c, label %._crit_edge, !llvm.loop !60

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 5 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !62   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !63  ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19
  %i.s = and i32 %i.r, %i.p
  %.not29 = icmp eq i32 %i.s, 0
  br i1 %.not29, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !58
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.x, ptr noundef %i.y) #14
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 48, ptr noundef nonnull @.str.17, ptr noundef %i.aa, ptr noundef %i.ac, ptr noundef %i.ae) #14
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !66
  %i.ai = tail call fastcc i32 @write_option(ptr noundef %0, ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %i.ah, ptr noundef %2) ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.b, label %.loopexit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 48, ptr noundef nonnull @.str.18) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.thread, %._crit_edge
  %.2 = phi i32 [ -22, %.thread ], [ 0, %._crit_edge ], [ %i.ai, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @locate_option(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp sgt i32 %0, 1
  br i1 %i.c, label %.lr.ph, label %.thread._crit_edge

.lr.ph:                                           ; preds = %bb.a, %opt_has_arg.exit.thread
  %.02687 = phi i32 [ %i.aq, %opt_has_arg.exit.thread ], [ 1, %bb.a ] ; 8 uses
  %i.d = sext i32 %.02687 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = icmp eq i8 %i.g, 45
  br i1 %i.h, label %bb.b, label %opt_has_arg.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14    ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %opt_has_arg.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.j, 47
  %spec.select.idx.i = zext i1 %i.k to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %spec.select.idx.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %.not16.i = icmp eq ptr %i.l, null
  br i1 %.not16.i, label %find_option.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %i.m = phi ptr [ %i.r, %bb.e ], [ %i.l, %bb.c ]
  %.0817.i = phi ptr [ %i.q, %bb.e ], [ %2, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.n = call i32 @av_strstart(ptr noundef nonnull %spec.select.i, ptr noundef nonnull %i.m, ptr noundef nonnull %i.b) #14
  %.not10.i = icmp eq i32 %i.n, 0
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  switch i8 %i.p, label %bb.e [
    i8 0, label %find_option.exit
    i8 58, label %find_option.exit
  ]

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0817.i, i64 48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %find_option.exit.thread, label %.lr.ph.i

find_option.exit:                                 ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %.pr = load ptr, ptr %.0817.i, align 8, !tbaa !17 ; 2 uses
  %.not32 = icmp eq ptr %.pr, null
  br i1 %.not32, label %find_option.exit.thread, label %.thread

find_option.exit.thread:                          ; preds = %bb.e, %bb.c, %find_option.exit
  %i.s = load i8, ptr %i.i, align 1, !tbaa !14
  %i.t = icmp eq i8 %i.s, 110
  br i1 %i.t, label %bb.f, label %find_option.exit48.thread

bb.f:                                             ; preds = %find_option.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14
  %i.w = icmp eq i8 %i.v, 111
  br i1 %i.w, label %bb.g, label %find_option.exit48.thread

bb.g:                                             ; preds = %bb.f
end_hunk_0
