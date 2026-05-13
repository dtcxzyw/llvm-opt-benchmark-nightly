inline.NumInlined: 128
inline.NumDeleted: 6
begin_hunk_0_@lqsort:bb.a
  %.145.lcssa = phi ptr [ %0, %.loopexit.thread90 ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ], [ %i.ae, %.lr.ph64.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %.145.lcssa, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19 ; 3 uses
  %i.ah = icmp eq ptr %2, null
  %i.ai = icmp eq ptr %1, null
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.l
  %.070 = phi ptr [ null, %._crit_edge ], [ %.1, %bb.l ] ; 3 uses
  %.04169 = phi ptr [ null, %._crit_edge ], [ %.142, %bb.l ] ; 3 uses
  %.268 = phi ptr [ %0, %._crit_edge ], [ %i.bf, %bb.l ] ; 3 uses
  %.24867 = phi i32 [ 0, %._crit_edge ], [ %i.bg, %bb.l ] ; 2 uses
  %.not53 = icmp eq i32 %i.k, %.24867
  br i1 %.not53, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.268, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  br i1 %i.ah, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = call ptr @funcall1(ptr noundef nonnull %2, ptr noundef %i.al)
  %i.an = call ptr @funcall1(ptr noundef nonnull %2, ptr noundef %i.ag)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %i.ao = phi ptr [ %i.am, %bb.e ], [ %i.al, %bb.d ] ; 2 uses
  %i.ap = phi ptr [ %i.an, %bb.e ], [ %i.ag, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !14
  br i1 %i.ai, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.aq = load i16, ptr %i.aj, align 2, !tbaa !16
  switch i16 %i.aq, label %.thread.i [
    i16 6, label %bb.g
    i16 21, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ar = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.as = icmp ult ptr %i.a, %i.ar
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @err_stack(ptr noundef nonnull %i.a) #24
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %.pre.i, %bb.h ], [ %1, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.aw = call ptr %i.av(ptr noundef %i.ao, ptr noundef %i.ap) #24, !inline_history !124
  br label %funcall2.exit

.thread.i:                                        ; preds = %bb.f, %.thread
  %i.ax = call ptr @cons(ptr noundef %i.ap, ptr noundef null) #24
  %i.ay = call ptr @cons(ptr noundef %i.ao, ptr noundef %i.ax) #24
  %i.az = call ptr @lapply(ptr noundef %1, ptr noundef %i.ay) #24
  br label %funcall2.exit

funcall2.exit:                                    ; preds = %bb.i, %.thread.i
  %.0.i = phi ptr [ %i.az, %.thread.i ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not54 = icmp eq ptr %.0.i, null
  %i.ba = getelementptr inbounds nuw i8, ptr %.268, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19 ; 2 uses
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %funcall2.exit
  %i.bc = call ptr @cons(ptr noundef %i.bb, ptr noundef %.04169) #24
  br label %bb.l

bb.k:                                             ; preds = %funcall2.exit
  %i.bd = call ptr @cons(ptr noundef %i.bb, ptr noundef %.070) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k, %bb.j
  %.142 = phi ptr [ %i.bc, %bb.j ], [ %.04169, %bb.k ], [ %.04169, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %.070, %bb.j ], [ %i.bd, %bb.k ], [ %.070, %bb.c ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.268, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19 ; 2 uses
  %i.bg = add nuw nsw i32 %.24867, 1
  %.not52 = icmp eq ptr %i.bf, null
  br i1 %.not52, label %._crit_edge73, label %bb.c, !llvm.loop !125

._crit_edge73:                                    ; preds = %bb.l
  %i.bh = call ptr @lqsort(ptr noundef %.142, ptr noundef %1, ptr noundef %2) ; 7 uses
  %i.bi = call ptr @lqsort(ptr noundef %.1, ptr noundef %1, ptr noundef %2)
  %i.bj = call ptr @cons(ptr noundef %i.ag, ptr noundef %i.bi) #24 ; 2 uses
  %i.bk = icmp eq ptr %i.bh, null
  br i1 %i.bk, label %nconc.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge73
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !16
  %i.bn = icmp eq i16 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %.critedge.i.i

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19
  br label %bb.o

.critedge.i.i:                                    ; preds = %bb.m
  %i.bq = call ptr @err(ptr noundef nonnull @.str.76, ptr noundef nonnull %i.bh) #24
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i.i, %bb.n
  %i.br = phi ptr [ %i.bp, %bb.n ], [ %i.bq, %.critedge.i.i ] ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %last.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !16
  %i.bv = icmp eq i16 %i.bu, 1
  br i1 %i.bv, label %.lr.ph.i, label %last.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !16
  %i.by = icmp eq i16 %i.bx, 1
  br i1 %i.by, label %.lr.ph.i, label %last.exit.i, !llvm.loop !120

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %.015.i7.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %i.br, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.015.i7.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.last.exit.loopexit_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !120

.last.exit.loopexit_crit_edge.i:                  ; preds = %.lr.ph.i
  br label %last.exit.i, !llvm.loop !120

last.exit.i:                                      ; preds = %.lr.ph.i.i, %.last.exit.loopexit_crit_edge.i, %.lr.ph.i.preheader.i, %bb.o
  %.010.lcssa.i.i = phi ptr [ %i.bh, %bb.o ], [ %i.bh, %.lr.ph.i.preheader.i ], [ %.015.i7.i, %.last.exit.loopexit_crit_edge.i ], [ %.015.i7.i, %.lr.ph.i.i ]
  %i.cc = call ptr @setcdr(ptr noundef nonnull %.010.lcssa.i.i, ptr noundef %i.bj) #24 ; 0 uses
  br label %nconc.exit

nconc.exit:                                       ; preds = %bb.a, %last.exit.i, %._crit_edge73, %.loopexit
  %.043 = phi ptr [ null, %.loopexit ], [ %i.bh, %last.exit.i ], [ %i.bj, %._crit_edge73 ], [ null, %bb.a ]
  ret ptr %.043
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local ptr @string_lessp(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @get_c_string(ptr noundef %0) #24
  %i.b = tail call ptr @get_c_string(ptr noundef %1) #24
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.d = icmp slt i32 %i.c, 0
  %i.e = load ptr, ptr @sym_t, align 8
  %.0 = select i1 %i.d, ptr %i.e, ptr null
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @benchmark_funcall1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  %i.d = icmp eq i16 %i.c, 2
  br i1 %i.d, label %get_c_long.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @err(ptr noundef nonnull @.str.44, ptr noundef %0) #24 ; 0 uses
  br label %get_c_long.exit

get_c_long.exit:                                  ; preds = %bb.b, %.critedge.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !19
  %i.h = fptosi double %i.g to i64                ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %get_c_long.exit, %.lr.ph
  %.067 = phi i64 [ %i.k, %.lr.ph ], [ 0, %get_c_long.exit ]
  %i.j = tail call ptr @funcall1(ptr noundef %1, ptr noundef %2)
  %i.k = add nuw nsw i64 %.067, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph, %get_c_long.exit
  %.0.lcssa = phi ptr [ null, %get_c_long.exit ], [ %i.j, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @benchmark_funcall2(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = tail call ptr @car(ptr noundef %0) #24   ; 4 uses
  %i.c = tail call ptr @cdr(ptr noundef %0) #24
  %i.d = tail call ptr @car(ptr noundef %i.c) #24 ; 5 uses
  %i.e = tail call ptr @cdr(ptr noundef %0) #24
  %i.f = tail call ptr @cdr(ptr noundef %i.e) #24
  %i.g = tail call ptr @car(ptr noundef %i.f) #24 ; 3 uses
  %i.h = tail call ptr @cdr(ptr noundef %0) #24
  %i.i = tail call ptr @cdr(ptr noundef %i.h) #24
  %i.j = tail call ptr @cdr(ptr noundef %i.i) #24
  %i.k = tail call ptr @car(ptr noundef %i.j) #24 ; 3 uses
  %i.l = icmp eq ptr %i.b, null
  br i1 %i.l, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !16
  %i.o = icmp eq i16 %i.n, 2
  br i1 %i.o, label %get_c_long.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.p = tail call ptr @err(ptr noundef nonnull @.str.44, ptr noundef %i.b) #24 ; 0 uses
  br label %get_c_long.exit

get_c_long.exit:                                  ; preds = %bb.b, %.critedge.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !19
  %i.s = fptosi double %i.r to i64                ; 3 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %get_c_long.exit
  %i.u = icmp eq ptr %i.d, null
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br i1 %i.u, label %.thread.i.us, label %.lr.ph.split

.thread.i.us:                                     ; preds = %.lr.ph, %.thread.i.us
  %.01112.us = phi i64 [ %i.z, %.thread.i.us ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !14
  %i.w = tail call ptr @cons(ptr noundef %i.k, ptr noundef null) #24
  %i.x = tail call ptr @cons(ptr noundef %i.g, ptr noundef %i.w) #24
  %i.y = tail call ptr @lapply(ptr noundef null, ptr noundef %i.x) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = add nuw nsw i64 %.01112.us, 1            ; 2 uses
  %exitcond14.not = icmp eq i64 %i.z, %i.s
  br i1 %exitcond14.not, label %._crit_edge, label %.thread.i.us, !llvm.loop !127

.lr.ph.split:                                     ; preds = %.lr.ph, %funcall2.exit
  %.01112 = phi i64 [ %i.ak, %funcall2.exit ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !14
  %i.aa = load i16, ptr %i.v, align 2, !tbaa !16
  switch i16 %i.aa, label %.thread.i [
    i16 6, label %bb.c
    i16 21, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.split, %.lr.ph.split
  %i.ab = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.ac = icmp ult ptr %i.a, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @err_stack(ptr noundef nonnull %i.a) #24
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = phi ptr [ %.pre.i, %bb.d ], [ %i.d, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.ag = call ptr %i.af(ptr noundef %i.g, ptr noundef %i.k) #24, !inline_history !124
  br label %funcall2.exit

.thread.i:                                        ; preds = %.lr.ph.split
  %i.ah = call ptr @cons(ptr noundef %i.k, ptr noundef null) #24
  %i.ai = call ptr @cons(ptr noundef %i.g, ptr noundef %i.ah) #24
  %i.aj = call ptr @lapply(ptr noundef nonnull %i.d, ptr noundef %i.ai) #24
  br label %funcall2.exit

funcall2.exit:                                    ; preds = %bb.e, %.thread.i
  %.0.i = phi ptr [ %i.aj, %.thread.i ], [ %i.ag, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = add nuw nsw i64 %.01112, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !127

._crit_edge:                                      ; preds = %funcall2.exit, %.thread.i.us, %get_c_long.exit
  %.0.lcssa = phi ptr [ null, %get_c_long.exit ], [ %i.y, %.thread.i.us ], [ %.0.i, %funcall2.exit ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @benchmark_eval(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  %i.d = icmp eq i16 %i.c, 2
  br i1 %i.d, label %get_c_long.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @err(ptr noundef nonnull @.str.44, ptr noundef %0) #24 ; 0 uses
  br label %get_c_long.exit

get_c_long.exit:                                  ; preds = %bb.b, %.critedge.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !19
  %i.h = fptosi double %i.g to i64                ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %get_c_long.exit, %.lr.ph
  %.067 = phi i64 [ %i.k, %.lr.ph ], [ 0, %get_c_long.exit ]
  %i.j = tail call ptr @leval(ptr noundef %1, ptr noundef %2) #24
  %i.k = add nuw nsw i64 %.067, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !128

._crit_edge:                                      ; preds = %.lr.ph, %get_c_long.exit
  %.0.lcssa = phi ptr [ null, %get_c_long.exit ], [ %i.j, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mapcar1(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @car(ptr noundef nonnull %1) #24
  %i.c = tail call ptr @funcall1(ptr noundef %0, ptr noundef %i.b)
  %i.d = tail call ptr @cons(ptr noundef %i.c, ptr noundef null) #24 ; 4 uses
  %i.e = tail call ptr @cdr(ptr noundef nonnull %1) #24 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.017 = phi ptr [ %i.q, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %.01316 = phi ptr [ %i.o, %bb.c ], [ %i.d, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.017, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !16
  %i.i = icmp eq i16 %i.h, 1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = tail call ptr @funcall1(ptr noundef %0, ptr noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %.01316, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = tail call ptr @cons(ptr noundef %i.l, ptr noundef %i.n) #24 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge, label %.lr.ph, !llvm.loop !129

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.b, %bb.a
  %.014 = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ], [ %i.d, %.lr.ph ], [ %i.d, %bb.c ]
  ret ptr %.014
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mapcar2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @car(ptr noundef nonnull %1) #24 ; 2 uses
  %i.f = tail call ptr @car(ptr noundef nonnull %2) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !tbaa !14
  %i.g = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.g, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !16
  switch i16 %i.i, label %.thread.i [
    i16 6, label %bb.d
    i16 21, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.j = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.k = icmp ult ptr %i.b, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @err_stack(ptr noundef nonnull %i.b) #24
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %.pre.i, %bb.e ], [ %0, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = call ptr %i.n(ptr noundef %i.e, ptr noundef %i.f) #24, !inline_history !124
  br label %funcall2.exit

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.p = tail call ptr @cons(ptr noundef %i.f, ptr noundef null) #24
  %i.q = tail call ptr @cons(ptr noundef %i.e, ptr noundef %i.p) #24
  %i.r = tail call ptr @lapply(ptr noundef %0, ptr noundef %i.q) #24
  br label %funcall2.exit

funcall2.exit:                                    ; preds = %bb.f, %.thread.i
  %.0.i = phi ptr [ %i.r, %.thread.i ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = call ptr @cons(ptr noundef %.0.i, ptr noundef null) #24 ; 9 uses
  %i.t = call ptr @cdr(ptr noundef nonnull %1) #24 ; 3 uses
  %i.u = call ptr @cdr(ptr noundef nonnull %2) #24 ; 2 uses
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %funcall2.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread.i32.us
  %.036.us = phi ptr [ %i.ar, %.thread.i32.us ], [ %i.u, %.lr.ph ] ; 4 uses
  %.02135.us = phi ptr [ %i.ap, %.thread.i32.us ], [ %i.t, %.lr.ph ] ; 3 uses
  %.02234.us = phi ptr [ %i.an, %.thread.i32.us ], [ %i.s, %.lr.ph ]
  %i.x = getelementptr inbounds nuw i8, ptr %.02135.us, i64 2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !16
  %i.z = icmp ne i16 %i.y, 1
  %i.aa = icmp eq ptr %.036.us, null
  %or.cond29.us = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond29.us, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ab = getelementptr inbounds nuw i8, ptr %.036.us, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !16
  %i.ad = icmp eq i16 %i.ac, 1
  br i1 %i.ad, label %.thread.i32.us, label %.critedge

.thread.i32.us:                                   ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.02135.us, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %.036.us, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !14
  %i.ai = call ptr @cons(ptr noundef %i.ah, ptr noundef null) #24
  %i.aj = call ptr @cons(ptr noundef %i.af, ptr noundef %i.ai) #24
  %i.ak = call ptr @lapply(ptr noundef null, ptr noundef %i.aj) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %.02234.us, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.an = call ptr @cons(ptr noundef %i.ak, ptr noundef %i.am) #24 ; 2 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %.02135.us, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.036.us, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19
  %i.as = icmp eq ptr %i.ap, null
  br i1 %i.as, label %.critedge, label %.lr.ph.split.us, !llvm.loop !130

.lr.ph.split:                                     ; preds = %.lr.ph, %funcall2.exit33
  %.036 = phi ptr [ %i.bu, %funcall2.exit33 ], [ %i.u, %.lr.ph ] ; 4 uses
  %.02135 = phi ptr [ %i.bs, %funcall2.exit33 ], [ %i.t, %.lr.ph ] ; 3 uses
  %.02234 = phi ptr [ %i.bq, %funcall2.exit33 ], [ %i.s, %.lr.ph ]
  %i.at = getelementptr inbounds nuw i8, ptr %.02135, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !16
  %i.av = icmp ne i16 %i.au, 1
  %i.aw = icmp eq ptr %.036, null
  %or.cond29 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond29, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.ax = getelementptr inbounds nuw i8, ptr %.036, i64 2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !16
  %i.az = icmp eq i16 %i.ay, 1
  br i1 %i.az, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.02135, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !14
  %i.be = load i16, ptr %i.w, align 2, !tbaa !16
  switch i16 %i.be, label %.thread.i32 [
    i16 6, label %bb.j
    i16 21, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.bf = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.bg = icmp ult ptr %i.a, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @err_stack(ptr noundef nonnull %i.a) #24
  %.pre.i31 = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bh = phi ptr [ %.pre.i31, %bb.k ], [ %0, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !19
  %i.bk = call ptr %i.bj(ptr noundef %i.bb, ptr noundef %i.bd) #24, !inline_history !124
  br label %funcall2.exit33

.thread.i32:                                      ; preds = %bb.i
  %i.bl = call ptr @cons(ptr noundef %i.bd, ptr noundef null) #24
  %i.bm = call ptr @cons(ptr noundef %i.bb, ptr noundef %i.bl) #24
  %i.bn = call ptr @lapply(ptr noundef nonnull %0, ptr noundef %i.bm) #24
  br label %funcall2.exit33

funcall2.exit33:                                  ; preds = %bb.l, %.thread.i32
  %.0.i30 = phi ptr [ %i.bn, %.thread.i32 ], [ %i.bk, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bo = getelementptr inbounds nuw i8, ptr %.02234, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19
  %i.bq = call ptr @cons(ptr noundef %.0.i30, ptr noundef %i.bp) #24 ; 2 uses
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %.02135, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !19 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.bv = icmp eq ptr %i.bs, null
  br i1 %i.bv, label %.critedge, label %.lr.ph.split, !llvm.loop !130

.critedge:                                        ; preds = %funcall2.exit33, %.lr.ph.split, %bb.h, %.thread.i32.us, %.lr.ph.split.us, %bb.g, %funcall2.exit, %bb.a
  %.023 = phi ptr [ null, %bb.a ], [ %i.s, %funcall2.exit ], [ %i.s, %.thread.i32.us ], [ %i.s, %bb.g ], [ %i.s, %.lr.ph.split.us ], [ %i.s, %bb.h ], [ %i.s, %.lr.ph.split ], [ %i.s, %funcall2.exit33 ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mapcar(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @car(ptr noundef %0) #24   ; 2 uses
  %i.b = tail call i64 @nlength(ptr noundef %0)
  %i.c = sitofp i64 %i.b to double
  %i.d = tail call ptr @flocons(double noundef %i.c) #24 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !16
  %i.h = icmp eq i16 %i.g, 2
  br i1 %i.h, label %get_c_long.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.i = tail call ptr @err(ptr noundef nonnull @.str.44, ptr noundef %i.d) #24 ; 0 uses
  br label %get_c_long.exit

get_c_long.exit:                                  ; preds = %bb.b, %.critedge.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !19
  %i.l = fptosi double %i.k to i64
  switch i64 %i.l, label %bb.e [
    i64 2, label %bb.c
    i64 3, label %bb.d
  ]

bb.c:                                             ; preds = %get_c_long.exit
  %i.m = tail call ptr @cdr(ptr noundef %0) #24
  %i.n = tail call ptr @car(ptr noundef %i.m) #24
  %i.o = tail call ptr @mapcar1(ptr noundef %i.a, ptr noundef %i.n)
  br label %bb.f

bb.d:                                             ; preds = %get_c_long.exit
  %i.p = tail call ptr @cdr(ptr noundef %0) #24
  %i.q = tail call ptr @car(ptr noundef %i.p) #24
  %i.r = tail call ptr @cdr(ptr noundef %0) #24
  %i.s = tail call ptr @cdr(ptr noundef %i.r) #24
  %i.t = tail call ptr @car(ptr noundef %i.s) #24
  %i.u = tail call ptr @mapcar2(ptr noundef %i.a, ptr noundef %i.q, ptr noundef %i.t)
  br label %bb.f

bb.e:                                             ; preds = %get_c_long.exit
  %i.v = tail call ptr @err(ptr noundef nonnull @.str.80, ptr noundef %0) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ %i.v, %bb.e ], [ %i.o, %bb.c ], [ %i.u, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lfmod(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  %i.d = icmp eq i16 %i.c, 2
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = tail call ptr @err(ptr noundef nonnull @.str.81, ptr noundef %0) #24 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %.critedge11, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !16
  %i.i = icmp eq i16 %i.h, 2
  br i1 %i.i, label %bb.e, label %.critedge11

.critedge11:                                      ; preds = %bb.c, %bb.d
  %i.j = tail call ptr @err(ptr noundef nonnull @.str.82, ptr noundef %1) #24 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.critedge11, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !19
  %i.o = tail call double @fmod(double noundef %i.l, double noundef %i.n) #24, !tbaa !4
  %i.p = tail call ptr @flocons(double noundef %i.o) #24
  ret ptr %i.p
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local ptr @lsubset(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.011 = phi ptr [ %i.k, %bb.d ], [ %1, %bb.a ]  ; 3 uses
  %.0910 = phi ptr [ %.1, %bb.d ], [ null, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.011, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  %i.d = icmp eq i16 %i.c, 1
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = tail call ptr @funcall1(ptr noundef %0, ptr noundef %i.f)
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.i = tail call ptr @cons(ptr noundef %i.h, ptr noundef %.0910) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi ptr [ %i.i, %bb.c ], [ %.0910, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge, label %.lr.ph, !llvm.loop !131

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.a
  %.09.lcssa = phi ptr [ null, %bb.a ], [ %.1, %bb.d ], [ %.0910, %.lr.ph ]
  %i.m = tail call ptr @nreverse(ptr noundef %.09.lcssa) #24
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ass(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge17.us
  %.01419.us = phi ptr [ %i.t, %.critedge17.us ], [ %1, %.lr.ph ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01419.us, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !16
  %i.g = icmp eq i16 %i.f, 1
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %.01419.us, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.critedge17.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !16
  %i.m = icmp eq i16 %i.l, 1
  br i1 %i.m, label %.thread.i.us, label %.critedge17.us

.thread.i.us:                                     ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !14
  %i.p = tail call ptr @cons(ptr noundef %0, ptr noundef null) #24
  %i.q = tail call ptr @cons(ptr noundef %i.o, ptr noundef %i.p) #24
  %i.r = tail call ptr @lapply(ptr noundef null, ptr noundef %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.us = icmp eq ptr %i.r, null
  br i1 %.not.us, label %.critedge17.us, label %.critedge18

.critedge17.us:                                   ; preds = %.thread.i.us, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.01419.us, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.critedge18, label %.lr.ph.split.us, !llvm.loop !132

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge17
  %.01419 = phi ptr [ %i.ar, %.critedge17 ], [ %1, %.lr.ph ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01419, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !16
  %i.x = icmp eq i16 %i.w, 1
  br i1 %i.x, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.split
  %i.y = getelementptr inbounds nuw i8, ptr %.01419, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.critedge17, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !16
  %i.ad = icmp eq i16 %i.ac, 1
  br i1 %i.ad, label %bb.f, label %.critedge17

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !tbaa !14
  %i.ag = load i16, ptr %i.d, align 2, !tbaa !16
  switch i16 %i.ag, label %.thread.i [
    i16 6, label %bb.g
    i16 21, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ah = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.ai = icmp ult ptr %i.a, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @err_stack(ptr noundef nonnull %i.a) #24
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = phi ptr [ %.pre.i, %bb.h ], [ %2, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.am = call ptr %i.al(ptr noundef %i.af, ptr noundef %0) #24, !inline_history !124
  br label %funcall2.exit

.thread.i:                                        ; preds = %bb.f
  %i.an = call ptr @cons(ptr noundef %0, ptr noundef null) #24
  %i.ao = call ptr @cons(ptr noundef %i.af, ptr noundef %i.an) #24
  %i.ap = call ptr @lapply(ptr noundef nonnull %2, ptr noundef %i.ao) #24
  br label %funcall2.exit

funcall2.exit:                                    ; preds = %bb.i, %.thread.i
  %.0.i = phi ptr [ %i.ap, %.thread.i ], [ %i.am, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %.critedge17, label %.critedge18

.critedge17:                                      ; preds = %bb.d, %bb.e, %funcall2.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.01419, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.critedge18, label %.lr.ph.split, !llvm.loop !132

.critedge:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.at = call ptr @err(ptr noundef nonnull @.str.83, ptr noundef nonnull %1) #24
  br label %.critedge18

.critedge18:                                      ; preds = %funcall2.exit, %.critedge17, %.thread.i.us, %.critedge17.us, %bb.a, %.critedge
  %.0 = phi ptr [ %i.at, %.critedge ], [ %i.i, %.thread.i.us ], [ null, %bb.a ], [ null, %.critedge17.us ], [ %i.z, %funcall2.exit ], [ null, %.critedge17 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @append2(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @nlength(ptr noundef %0)
  %i.b = tail call i64 @nlength(ptr noundef %1)
  %i.c = add nsw i64 %i.b, %i.a                   ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.preheader23

.preheader23:                                     ; preds = %.lr.ph, %bb.a
  %.020.lcssa = phi ptr [ null, %bb.a ], [ %i.e, %.lr.ph ] ; 3 uses
  %.not26 = icmp eq ptr %0, null
  br i1 %.not26, label %.preheader, label %.lr.ph29

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02025 = phi ptr [ %i.e, %.lr.ph ], [ null, %bb.a ]
  %.02124 = phi i64 [ %i.f, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = tail call ptr @cons(ptr noundef null, ptr noundef %.02025) #24 ; 2 uses
  %i.f = add nsw i64 %.02124, -1
  %i.g = icmp samesign ugt i64 %.02124, 1
  br i1 %i.g, label %.lr.ph, label %.preheader23, !llvm.loop !133

.preheader:                                       ; preds = %.lr.ph29, %.preheader23
  %.018.lcssa = phi ptr [ %.020.lcssa, %.preheader23 ], [ %i.j, %.lr.ph29 ]
  %.not2231 = icmp eq ptr %1, null
  br i1 %.not2231, label %._crit_edge, label %.lr.ph34

.lr.ph29:                                         ; preds = %.preheader23, %.lr.ph29
  %.028 = phi ptr [ %i.k, %.lr.ph29 ], [ %0, %.preheader23 ] ; 2 uses
  %.01827 = phi ptr [ %i.j, %.lr.ph29 ], [ %.020.lcssa, %.preheader23 ] ; 2 uses
  %i.h = tail call ptr @car(ptr noundef nonnull %.028) #24
  %i.i = tail call ptr @setcar(ptr noundef %.01827, ptr noundef %i.h) #24 ; 0 uses
  %i.j = tail call ptr @cdr(ptr noundef %.01827) #24 ; 2 uses
  %i.k = tail call ptr @cdr(ptr noundef nonnull %.028) #24 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.preheader, label %.lr.ph29, !llvm.loop !134

.lr.ph34:                                         ; preds = %.preheader, %.lr.ph34
  %.133 = phi ptr [ %i.o, %.lr.ph34 ], [ %1, %.preheader ] ; 2 uses
  %.11932 = phi ptr [ %i.n, %.lr.ph34 ], [ %.018.lcssa, %.preheader ] ; 2 uses
  %i.l = tail call ptr @car(ptr noundef nonnull %.133) #24
  %i.m = tail call ptr @setcar(ptr noundef %.11932, ptr noundef %i.l) #24 ; 0 uses
  %i.n = tail call ptr @cdr(ptr noundef %.11932) #24
  %i.o = tail call ptr @cdr(ptr noundef nonnull %.133) #24 ; 2 uses
  %.not22 = icmp eq ptr %i.o, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph34, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph34, %.preheader
  ret ptr %.020.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @append(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !14
  %i.b = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.c = icmp ult ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @err_stack(ptr noundef nonnull %i.a) #24
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pr, %bb.b ], [ %0, %bb.a ]   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call ptr @cdr(ptr noundef nonnull %i.d) #24
  %i.g = icmp eq ptr %i.f, null
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = call ptr @car(ptr noundef %i.h) #24
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = call ptr @cddr(ptr noundef %i.h) #24
  %i.k = icmp eq ptr %i.j, null
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.m = call ptr @car(ptr noundef %i.l) #24      ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = call ptr @cadr(ptr noundef %i.n) #24
  %i.p = call ptr @append2(ptr noundef %i.m, ptr noundef %i.o)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = call ptr @cdr(ptr noundef %i.n) #24
  %i.r = call ptr @append(ptr noundef %i.q)
  %i.s = call ptr @append2(ptr noundef %i.m, ptr noundef %i.r)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.e
  %.0 = phi ptr [ %i.s, %bb.h ], [ %i.i, %bb.e ], [ %i.p, %bb.g ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @cddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @listn(i64 noundef %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = icmp sgt i64 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge
end_hunk_0
