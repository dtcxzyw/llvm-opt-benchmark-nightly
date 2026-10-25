Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_highlight?download=true
inline.NumInlined: 3
begin_hunk_0
@.str.2 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@language_scanner_globals = external local_unnamed_addr global %struct._zend_php_scanner_globals, align 8
@zend_printf = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"<pre><code style=\22color: %s\22>\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"</span>\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"<span style=\22color: %s\22>\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"</code></pre>\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @zend_html_putc(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  store i8 %0, ptr %i.a, align 1, !tbaa !14
  %i.b = load ptr, ptr @zend_write, align 8, !tbaa !16 ; 5 uses
  switch i8 %0, label %bb.f [
    i8 60, label %bb.b
    i8 62, label %bb.c
    i8 38, label %bb.d
    i8 9, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 %i.b(ptr noundef nonnull @.str, i64 noundef 4) #4 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 %i.b(ptr noundef nonnull @.str.1, i64 noundef 4) #4 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.e = tail call i64 %i.b(ptr noundef nonnull @.str.2, i64 noundef 5) #4 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.f = tail call i64 %i.b(ptr noundef nonnull @.str.3, i64 noundef 4) #4 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.g = call i64 %i.b(ptr noundef nonnull %i.a, i64 noundef 1) #4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_html_puts(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store ptr null, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 208), align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i64 %i.f(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.012 = phi ptr [ %i.h, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %.0 = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ]  ; 4 uses
  %i.k = icmp ult ptr %.012, %.0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.critedge
  %.118 = phi ptr [ %.3, %.critedge ], [ %.012, %bb.c ] ; 3 uses
  %i.l = load i8, ptr %.118, align 1, !tbaa !14   ; 3 uses
  %i.m = icmp eq i8 %i.l, 32
  br i1 %i.m, label %zend_html_putc.exit.preheader, label %bb.d

zend_html_putc.exit.preheader:                    ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !14
  %i.n = load ptr, ptr @zend_write, align 8, !tbaa !16
  %i.o = call i64 %i.n(ptr noundef nonnull %i.b, i64 noundef 1) #4, !inline_history !34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %.118, i64 1 ; 3 uses
  %i.q = icmp ult ptr %i.p, %.0
  br i1 %i.q, label %.lr.ph22, label %.critedge

zend_html_putc.exit:                              ; preds = %.lr.ph22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !14
  %i.r = load ptr, ptr @zend_write, align 8, !tbaa !16
  %i.s = call i64 %i.r(ptr noundef nonnull %i.b, i64 noundef 1) #4, !inline_history !34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 3 uses
  %i.u = icmp ult ptr %i.t, %.0
  br i1 %i.u, label %.lr.ph22, label %.critedge, !llvm.loop !0

.lr.ph22:                                         ; preds = %zend_html_putc.exit.preheader, %zend_html_putc.exit
  %i.v = phi ptr [ %i.t, %zend_html_putc.exit ], [ %i.p, %zend_html_putc.exit.preheader ] ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = icmp eq i8 %i.w, 32
  br i1 %i.x, label %zend_html_putc.exit, label %..critedge.loopexit_crit_edge, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.118, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.l, ptr %i.a, align 1, !tbaa !14
  %i.z = load ptr, ptr @zend_write, align 8, !tbaa !16 ; 5 uses
  switch i8 %i.l, label %bb.i [
    i8 60, label %bb.e
    i8 62, label %bb.f
    i8 38, label %bb.g
    i8 9, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = call i64 %i.z(ptr noundef nonnull @.str, i64 noundef 4) #4, !inline_history !34 ; 0 uses
  br label %zend_html_putc.exit17

bb.f:                                             ; preds = %bb.d
  %i.ab = call i64 %i.z(ptr noundef nonnull @.str.1, i64 noundef 4) #4, !inline_history !34 ; 0 uses
  br label %zend_html_putc.exit17

bb.g:                                             ; preds = %bb.d
  %i.ac = call i64 %i.z(ptr noundef nonnull @.str.2, i64 noundef 5) #4, !inline_history !34 ; 0 uses
  br label %zend_html_putc.exit17

bb.h:                                             ; preds = %bb.d
  %i.ad = call i64 %i.z(ptr noundef nonnull @.str.3, i64 noundef 4) #4, !inline_history !34 ; 0 uses
  br label %zend_html_putc.exit17

bb.i:                                             ; preds = %bb.d
  %i.ae = call i64 %i.z(ptr noundef nonnull %i.a, i64 noundef 1) #4, !inline_history !34 ; 0 uses
  br label %zend_html_putc.exit17

zend_html_putc.exit17:                            ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph22
  br label %.critedge, !llvm.loop !0

.critedge:                                        ; preds = %zend_html_putc.exit, %zend_html_putc.exit.preheader, %..critedge.loopexit_crit_edge, %zend_html_putc.exit17
  %.3 = phi ptr [ %i.y, %zend_html_putc.exit17 ], [ %i.v, %..critedge.loopexit_crit_edge ], [ %i.p, %zend_html_putc.exit.preheader ], [ %i.t, %zend_html_putc.exit ] ; 2 uses
  %i.af = icmp ult ptr %.3, %.0
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.critedge, %bb.c
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 208), align 8, !tbaa !27
  %.not16 = icmp eq ptr %i.ag, null
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !18
  call void @_efree(ptr noundef %i.ah) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_efree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @zend_highlight(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct._zval_struct, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.e = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.f = load ptr, ptr @zend_printf, align 8, !tbaa !16
  %i.g = tail call i64 (ptr, ...) %i.f(ptr noundef nonnull @.str.4, ptr noundef %i.e) #4 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %.outer

.outer:                                           ; preds = %zval_ptr_dtor_str.exit, %bb.a
  %.019.ph = phi ptr [ %.1, %zval_ptr_dtor_str.exit ], [ %i.e, %bb.a ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %i.m = call i32 @lex_scan(ptr noundef nonnull %1, ptr noundef null) #4 ; 6 uses
  switch i32 %i.m, label %bb.d [
    i32 0, label %bb.s
    i32 267, label %.loopexit.loopexit
    i32 392, label %.loopexit
    i32 393, label %.loopexit
    i32 394, label %.loopexit45
    i32 395, label %.loopexit45
    i32 396, label %.loopexit45
    i32 346, label %.loopexit45
    i32 347, label %.loopexit45
    i32 348, label %.loopexit45
    i32 350, label %.loopexit45
    i32 351, label %.loopexit45
    i32 352, label %.loopexit45
    i32 353, label %.loopexit45
    i32 354, label %.loopexit45
    i32 349, label %.loopexit45
    i32 34, label %.loopexit52
    i32 268, label %.loopexit52
    i32 269, label %.loopexit52
    i32 397, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !30
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !31
  %i.p = zext i32 %i.o to i64
  call void @zend_html_puts(ptr noundef %i.n, i64 noundef %i.p)
  store i32 0, ptr %i.h, align 8, !tbaa !14
  br label %bb.b, !llvm.loop !35

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.h, align 8, !tbaa !14
  %i.r = icmp eq i8 %i.q, 0
  %..v = select i1 %i.r, i64 32, i64 16
  %. = getelementptr inbounds nuw i8, ptr %0, i64 %..v
  br label %.loopexit

.loopexit45:                                      ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %.loopexit

.loopexit52:                                      ; preds = %bb.b, %bb.b, %bb.b
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.b, %.loopexit.loopexit, %.loopexit52, %.loopexit45, %bb.d
  %2 = phi i32 [ %i.m, %bb.d ], [ 266, %.loopexit.loopexit ], [ %i.m, %.loopexit45 ], [ %i.m, %.loopexit52 ], [ %i.m, %bb.b ], [ %i.m, %bb.b ]
  %.0.in = phi ptr [ %., %bb.d ], [ %0, %.loopexit.loopexit ], [ %i.j, %.loopexit45 ], [ %i.i, %.loopexit52 ], [ %i.k, %bb.b ], [ %i.k, %bb.b ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !18  ; 5 uses
  %.not22 = icmp eq ptr %.019.ph, %.0
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.s = load ptr, ptr %0, align 8, !tbaa !37
  %.not23 = icmp eq ptr %.019.ph, %i.s
  br i1 %.not23, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr @zend_printf, align 8, !tbaa !16
  %i.u = call i64 (ptr, ...) %i.t(ptr noundef nonnull @.str.5) #4 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !37
  %i.v = icmp eq ptr %.0, %.pre
  br i1 %i.v, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.w = load ptr, ptr @zend_printf, align 8, !tbaa !16
  %i.x = call i64 (ptr, ...) %i.w(ptr noundef nonnull @.str.6, ptr noundef %.0) #4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread, %.loopexit
  %.1 = phi ptr [ %.0, %.thread ], [ %.0, %bb.f ], [ %.019.ph, %.loopexit ]
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !30 ; 3 uses
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !31
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store ptr null, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 208), align 8, !tbaa !27 ; 2 uses
  %.not.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = call i64 %i.ac(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.y, i64 noundef %i.aa) #4, !inline_history !38 ; 0 uses
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.af = load i64, ptr %i.d, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.012.i = phi ptr [ %i.ae, %bb.h ], [ %i.y, %bb.g ] ; 2 uses
  %.0.i = phi ptr [ %i.ag, %bb.h ], [ %i.ab, %bb.g ] ; 4 uses
  %i.ah = icmp ult ptr %.012.i, %.0.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i, %.critedge.i
  %.118.i = phi ptr [ %.3.i, %.critedge.i ], [ %.012.i, %bb.i ] ; 3 uses
  %i.ai = load i8, ptr %.118.i, align 1, !tbaa !14 ; 3 uses
  %i.aj = icmp eq i8 %i.ai, 32
  br i1 %i.aj, label %zend_html_putc.exit.i.preheader, label %bb.j

zend_html_putc.exit.i.preheader:                  ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !14
  %i.ak = load ptr, ptr @zend_write, align 8, !tbaa !16
  %i.al = call i64 %i.ak(ptr noundef nonnull %i.b, i64 noundef 1) #4, !inline_history !39 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %.118.i, i64 1 ; 3 uses
  %i.an = icmp ult ptr %i.am, %.0.i
  br i1 %i.an, label %.lr.ph, label %.critedge.i

zend_html_putc.exit.i:                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !14
  %i.ao = load ptr, ptr @zend_write, align 8, !tbaa !16
  %i.ap = call i64 %i.ao(ptr noundef nonnull %i.b, i64 noundef 1) #4, !inline_history !39 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 3 uses
  %i.ar = icmp ult ptr %i.aq, %.0.i
  br i1 %i.ar, label %.lr.ph, label %.critedge.i, !llvm.loop !0

.lr.ph:                                           ; preds = %zend_html_putc.exit.i.preheader, %zend_html_putc.exit.i
  %i.as = phi ptr [ %i.aq, %zend_html_putc.exit.i ], [ %i.am, %zend_html_putc.exit.i.preheader ] ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !14
  %i.au = icmp eq i8 %i.at, 32
  br i1 %i.au, label %zend_html_putc.exit.i, label %..critedge.i.loopexit_crit_edge, !llvm.loop !0

bb.j:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %.118.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ai, ptr %i.a, align 1, !tbaa !14
  %i.aw = load ptr, ptr @zend_write, align 8, !tbaa !16 ; 5 uses
  switch i8 %i.ai, label %bb.o [
    i8 60, label %bb.k
    i8 62, label %bb.l
    i8 38, label %bb.m
    i8 9, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.ax = call i64 %i.aw(ptr noundef nonnull @.str, i64 noundef 4) #4, !inline_history !39 ; 0 uses
  br label %zend_html_putc.exit17.i

bb.l:                                             ; preds = %bb.j
  %i.ay = call i64 %i.aw(ptr noundef nonnull @.str.1, i64 noundef 4) #4, !inline_history !39 ; 0 uses
  br label %zend_html_putc.exit17.i

bb.m:                                             ; preds = %bb.j
  %i.az = call i64 %i.aw(ptr noundef nonnull @.str.2, i64 noundef 5) #4, !inline_history !39 ; 0 uses
  br label %zend_html_putc.exit17.i

bb.n:                                             ; preds = %bb.j
  %i.ba = call i64 %i.aw(ptr noundef nonnull @.str.3, i64 noundef 4) #4, !inline_history !39 ; 0 uses
  br label %zend_html_putc.exit17.i

bb.o:                                             ; preds = %bb.j
  %i.bb = call i64 %i.aw(ptr noundef nonnull %i.a, i64 noundef 1) #4, !inline_history !39 ; 0 uses
  br label %zend_html_putc.exit17.i

zend_html_putc.exit17.i:                          ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge.i

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !0

.critedge.i:                                      ; preds = %zend_html_putc.exit.i, %zend_html_putc.exit.i.preheader, %..critedge.i.loopexit_crit_edge, %zend_html_putc.exit17.i
  %.3.i = phi ptr [ %i.av, %zend_html_putc.exit17.i ], [ %i.am, %zend_html_putc.exit.i.preheader ], [ %i.as, %..critedge.i.loopexit_crit_edge ], [ %i.aq, %zend_html_putc.exit.i ] ; 2 uses
  %i.bc = icmp ult ptr %.3.i, %.0.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.i
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 208), align 8, !tbaa !27
  %.not16.i = icmp eq ptr %i.bd, null
  br i1 %.not16.i, label %zend_html_puts.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !18
  call void @_efree(ptr noundef %i.be) #4
  br label %zend_html_puts.exit

zend_html_puts.exit:                              ; preds = %._crit_edge.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %i.bf = load i8, ptr %i.h, align 8, !tbaa !14
  %i.bg = icmp ne i8 %i.bf, 6
  %.off = add i32 %2, -392
  %switch = icmp ult i32 %.off, 6
  %or.cond = or i1 %switch, %i.bg
  %i.bh = load i8, ptr %i.l, align 1
  %.not.i = icmp eq i8 %i.bh, 0
  %or.cond27 = select i1 %or.cond, i1 true, i1 %.not.i
  br i1 %or.cond27, label %zval_ptr_dtor_str.exit, label %bb.q

bb.q:                                             ; preds = %zend_html_puts.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !33 ; 2 uses
  %i.bk = icmp ne i32 %i.bj, 0
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !33
  %.not3.i = icmp eq i32 %i.bl, 0
  br i1 %.not3.i, label %bb.r, label %zval_ptr_dtor_str.exit

bb.r:                                             ; preds = %bb.q
  %i.bm = load ptr, ptr %1, align 8, !tbaa !14
  call void @_efree(ptr noundef %i.bm) #4
  br label %zval_ptr_dtor_str.exit

zval_ptr_dtor_str.exit:                           ; preds = %bb.r, %bb.q, %zend_html_puts.exit
  store i32 0, ptr %i.h, align 8, !tbaa !14
  br label %.outer, !llvm.loop !35

bb.s:                                             ; preds = %bb.b
  %i.bn = load ptr, ptr %0, align 8, !tbaa !37
  %.not21 = icmp eq ptr %.019.ph, %i.bn
  br i1 %.not21, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = load ptr, ptr @zend_printf, align 8, !tbaa !16
  %i.bp = call i64 (ptr, ...) %i.bo(ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bq = load ptr, ptr @zend_printf, align 8, !tbaa !16
  %i.br = call i64 (ptr, ...) %i.bq(ptr noundef nonnull @.str.7) #4 ; 0 uses
  call void @zend_clear_exception() #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

declare i32 @lex_scan(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_clear_exception() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @zend_strip() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._zval_struct, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.be, %.backedge ] ; 3 uses
  %i.c = call i32 @lex_scan(ptr noundef nonnull %0, ptr noundef null) #4 ; 2 uses
  switch i32 %i.c, label %bb.h [
    i32 0, label %bb.k
    i32 397, label %bb.c
    i32 392, label %.backedge
    i32 393, label %.backedge
    i32 399, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %.not5 = icmp eq i32 %.0, 0
  br i1 %.not5, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @zend_write, align 8, !tbaa !16
  %i.e = call i64 %i.d(ptr noundef nonnull @.str.8, i64 noundef 1) #4 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.d, %bb.b, %bb.b, %bb.h, %bb.i, %bb.j, %bb.g
  %.0.be = phi i32 [ 1, %bb.g ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.i ], [ 1, %bb.c ], [ 1, %bb.d ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  store i32 0, ptr %i.a, align 8, !tbaa !14
  br label %bb.b, !llvm.loop !40

bb.e:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @zend_write, align 8, !tbaa !16
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !30
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !31
  %i.i = zext i32 %i.h to i64
  %i.j = call i64 %i.f(ptr noundef %i.g, i64 noundef %i.i) #4 ; 0 uses
  %i.k = call i32 @lex_scan(ptr noundef nonnull %0, ptr noundef null) #4
  %.not4 = icmp eq i32 %i.k, 397
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @zend_write, align 8, !tbaa !16
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !30
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !31
  %i.o = zext i32 %i.n to i64
  %i.p = call i64 %i.l(ptr noundef %i.m, i64 noundef %i.o) #4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr @zend_write, align 8, !tbaa !16
  %i.r = call i64 %i.q(ptr noundef nonnull @.str.9, i64 noundef 1) #4 ; 0 uses
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @zend_write, align 8, !tbaa !16
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !30
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !31
  %i.v = zext i32 %i.u to i64
  %i.w = call i64 %i.s(ptr noundef %i.t, i64 noundef %i.v) #4 ; 0 uses
  %i.x = load i8, ptr %i.a, align 8, !tbaa !14
  %i.y = icmp ne i8 %i.x, 6
  %.off = add i32 %i.c, -392
  %switch = icmp ult i32 %.off, 6
  %or.cond = or i1 %switch, %i.y
  %i.z = load i8, ptr %i.b, align 1
  %.not.i = icmp eq i8 %i.z, 0
  %or.cond7 = select i1 %or.cond, i1 true, i1 %.not.i
  br i1 %or.cond7, label %.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33 ; 2 uses
  %i.ac = icmp ne i32 %i.ab, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !33
  %.not3.i = icmp eq i32 %i.ad, 0
  br i1 %.not3.i, label %bb.j, label %.backedge

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %0, align 8, !tbaa !14
  call void @_efree(ptr noundef %i.ae) #4
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  call void @zend_clear_exception() #4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTS17_zend_file_handle", !15, i64 0}
!20 = !{!"_zend_stack", !11, i64 0, !11, i64 4, !11, i64 8, !15, i64 16}
!21 = !{!"any p2 pointer", !15, i64 0}
!22 = !{!"_Bool", !10, i64 0}
!23 = !{!"_zend_ptr_stack", !11, i64 0, !11, i64 4, !21, i64 8, !21, i64 16, !22, i64 24}
!24 = !{!"long", !10, i64 0}
!25 = !{!"p1 _ZTS14_zend_encoding", !15, i64 0}
!26 = !{!"_zend_php_scanner_globals", !19, i64 0, !19, i64 8, !11, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !11, i64 64, !20, i64 72, !23, i64 96, !20, i64 128, !22, i64 152, !11, i64 156, !22, i64 160, !17, i64 168, !24, i64 176, !17, i64 184, !24, i64 192, !15, i64 200, !15, i64 208, !25, i64 216, !11, i64 224, !15, i64 232, !15, i64 240}
!27 = !{!26, !15, i64 208}
!28 = !{!24, !24, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!26, !17, i64 32}
!31 = !{!26, !11, i64 16}
!32 = !{!"_zend_refcounted_h", !11, i64 0, !10, i64 4}
!33 = !{!32, !11, i64 0}
!34 = !{ptr @zend_html_putc}
!35 = distinct !{!35, !29}
!36 = !{!"_zend_syntax_highlighter_ini", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!37 = !{!36, !17, i64 0}
!38 = !{ptr @zend_html_puts}
!39 = !{ptr @zend_html_puts, ptr @zend_html_putc}
!40 = distinct !{!40, !29}
end_hunk_0
