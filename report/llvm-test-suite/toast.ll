Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/toast?download=true
inline.NumInlined: 30
inline.NumDeleted: 18
begin_hunk_0_@main:bb.a
bb.k:                                             ; preds = %parse_argv0.exit
  %i.r = load ptr, ptr @f_format, align 8, !tbaa !13 ; 2 uses
  %.not.i12 = icmp eq ptr %i.r, null
  %.not2.i = icmp eq ptr %i.r, @f_ulaw
  %or.cond.i = or i1 %.not.i12, %.not2.i
  br i1 %or.cond.i, label %set_format.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.t = load ptr, ptr @progname, align 8, !tbaa !10 ; 2 uses
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.17, ptr noundef %i.t, ptr noundef %i.t) #23 ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable

set_format.exit:                                  ; preds = %bb.k
  store ptr @f_ulaw, ptr @f_format, align 8, !tbaa !13
  br label %parse_argv0.exit.backedge

bb.m:                                             ; preds = %parse_argv0.exit
  %i.v = load ptr, ptr @f_format, align 8, !tbaa !13 ; 2 uses
  %.not.i13 = icmp eq ptr %i.v, null
  %.not2.i14 = icmp eq ptr %i.v, @f_linear
  %or.cond.i15 = or i1 %.not.i13, %.not2.i14
  br i1 %or.cond.i15, label %set_format.exit16, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.x = load ptr, ptr @progname, align 8, !tbaa !10 ; 2 uses
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.17, ptr noundef %i.x, ptr noundef %i.x) #23 ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable

set_format.exit16:                                ; preds = %bb.m
  store ptr @f_linear, ptr @f_format, align 8, !tbaa !13
  br label %parse_argv0.exit.backedge

bb.o:                                             ; preds = %parse_argv0.exit
  %i.z = load ptr, ptr @f_format, align 8, !tbaa !13 ; 2 uses
  %.not.i17 = icmp eq ptr %i.z, null
  %.not2.i18 = icmp eq ptr %i.z, @f_alaw
  %or.cond.i19 = or i1 %.not.i17, %.not2.i18
  br i1 %or.cond.i19, label %set_format.exit20, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ab = load ptr, ptr @progname, align 8, !tbaa !10 ; 2 uses
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.17, ptr noundef %i.ab, ptr noundef %i.ab) #23 ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable

set_format.exit20:                                ; preds = %bb.o
  store ptr @f_alaw, ptr @f_format, align 8, !tbaa !13
  br label %parse_argv0.exit.backedge

bb.q:                                             ; preds = %parse_argv0.exit
  %i.ad = load ptr, ptr @f_format, align 8, !tbaa !13 ; 2 uses
  %.not.i21 = icmp eq ptr %i.ad, null
  %.not2.i22 = icmp eq ptr %i.ad, @f_audio
  %or.cond.i23 = or i1 %.not.i21, %.not2.i22
  br i1 %or.cond.i23, label %set_format.exit24, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.af = load ptr, ptr @progname, align 8, !tbaa !10 ; 2 uses
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.17, ptr noundef %i.af, ptr noundef %i.af) #23 ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable

set_format.exit24:                                ; preds = %bb.q
  store ptr @f_audio, ptr @f_format, align 8, !tbaa !13
  br label %parse_argv0.exit.backedge

parse_argv0.exit.backedge:                        ; preds = %set_format.exit24, %set_format.exit20, %set_format.exit16, %set_format.exit, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  br label %parse_argv0.exit, !llvm.loop !18

bb.s:                                             ; preds = %parse_argv0.exit
  tail call fastcc void @version()
  tail call void @exit(i32 noundef 0) #25
  unreachable

bb.t:                                             ; preds = %parse_argv0.exit
  tail call fastcc void @help()
  tail call void @exit(i32 noundef 0) #25
  unreachable

bb.u:                                             ; preds = %parse_argv0.exit
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ai = load ptr, ptr @progname, align 8, !tbaa !10
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.13, ptr noundef %i.ai) #23 ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable

bb.v:                                             ; preds = %parse_argv0.exit
  %i.ak = load i32, ptr @f_cat, align 4, !tbaa !7
  %i.al = load i32, ptr @f_precious, align 4, !tbaa !7
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr @f_precious, align 4, !tbaa !7
  %i.an = load i32, ptr @optind, align 4, !tbaa !7 ; 2 uses
  %i.ao = sub nsw i32 %0, %i.an                   ; 2 uses
  %i.ap = tail call ptr @signal(i32 noundef 1, ptr noundef nonnull @onintr) #22 ; 0 uses
  %i.aq = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @onintr) #22 ; 0 uses
  %i.ar = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull @onintr) #22 ; 0 uses
  %i.as = tail call ptr @signal(i32 noundef 15, ptr noundef nonnull @onintr) #22 ; 0 uses
  %i.at = tail call ptr @signal(i32 noundef 25, ptr noundef nonnull @onintr) #22 ; 0 uses
  %i.au = icmp slt i32 %i.ao, 1
  br i1 %i.au, label %bb.w, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.v
  %i.av = sext i32 %i.an to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av
  br label %.preheader

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @process(ptr noundef null)
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.026 = phi ptr [ %i.ay, %.preheader ], [ %i.aw, %.preheader.preheader ] ; 2 uses
  %.0825 = phi i32 [ %i.ax, %.preheader ], [ %i.ao, %.preheader.preheader ]
  %i.ax = add nsw i32 %.0825, -1                  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.026, i64 8
  %i.az = load ptr, ptr %.026, align 8, !tbaa !10
  tail call fastcc void @process(ptr noundef %i.az)
  %.not11 = icmp eq i32 %i.ax, 0
  br i1 %.not11, label %.loopexit, label %.preheader, !llvm.loop !19

.loopexit:                                        ; preds = %.preheader, %bb.w
  tail call void @exit(i32 noundef 0) #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @version() unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @progname, align 8, !tbaa !10
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %i.a, ptr noundef nonnull @.str.19) ; 0 uses
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @help() unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @progname, align 8, !tbaa !10
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef %i.a) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %putchar4 = tail call i32 @putchar(i32 10)      ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %putchar9 = tail call i32 @putchar(i32 10)      ; 0 uses
  %puts10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %putchar13 = tail call i32 @putchar(i32 10)     ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind uwtable
define internal void @onintr() #8 {
bb.a:
  %i.a = load ptr, ptr @outname, align 8, !tbaa !10 ; 2 uses
  store ptr null, ptr @outname, align 8, !tbaa !10
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @unlink(ptr noundef nonnull %i.a) #22 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @exit(i32 noundef 1) #24
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process(ptr noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  store ptr null, ptr @out, align 8, !tbaa !15
  store ptr null, ptr @in, align 8, !tbaa !15
  store ptr null, ptr @outname, align 8, !tbaa !10
  store ptr null, ptr @inname, align 8, !tbaa !10
  %i.b = load ptr, ptr @f_format, align 8, !tbaa !13 ; 3 uses
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @instat, i64 16), align 8, !tbaa !26
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stdin, align 8, !tbaa !15
  store ptr %i.c, ptr @in, align 8, !tbaa !15
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr @f_decode, align 4, !tbaa !7
  %.not15.i = icmp eq i32 %i.d, 0
  br i1 %.not15.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call fastcc noundef ptr @normalname(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.f = load i32, ptr @f_cat, align 4, !tbaa !7
  %.not16.i = icmp eq i32 %i.f, 0
  br i1 %.not16.i, label %bb.f, label %suffix.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #21 ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.g, 4
  br i1 %.not14.i.i, label %bb.g, label %suffix.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 1
  %i.k = icmp ne i32 %i.j, 1836279598
  %i.l = zext i1 %i.k to i32
  %.not15.i.not.i = icmp eq i32 %i.l, 0
  br i1 %.not15.i.not.i, label %bb.h, label %suffix.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.n = load ptr, ptr @progname, align 8, !tbaa !10
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.42, ptr noundef %i.n, ptr noundef nonnull %0, ptr noundef nonnull @.str.41) #23 ; 0 uses
  br label %open_input.exit.thread

suffix.exit.thread.i:                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.q = add i64 %i.p, 1                          ; 2 uses
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #26 ; 3 uses
  %.not.i22.i = icmp eq ptr %i.r, null
  br i1 %.not.i22.i, label %bb.i, label %emalloc.exit.i

bb.i:                                             ; preds = %suffix.exit.thread.i
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.t = load ptr, ptr @progname, align 8, !tbaa !10
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.46, ptr noundef %i.t, i64 noundef %i.q) #23 ; 0 uses
  tail call void @onintr()
  unreachable

emalloc.exit.i:                                   ; preds = %suffix.exit.thread.i
  %i.v = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) %0) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %emalloc.exit.i, %bb.d
  %storemerge.i = phi ptr [ %i.r, %emalloc.exit.i ], [ %i.e, %bb.d ] ; 2 uses
  store ptr %storemerge.i, ptr @inname, align 8, !tbaa !10
  %i.w = tail call noalias ptr @fopen(ptr noundef %storemerge.i, ptr noundef nonnull @.str.43) ; 3 uses
  store ptr %i.w, ptr @in, align 8, !tbaa !15
  %.not18.i = icmp eq ptr %i.w, null
  %i.x = load ptr, ptr @inname, align 8, !tbaa !10 ; 5 uses
  br i1 %.not18.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @perror(ptr noundef %i.x) #27
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.z = load ptr, ptr @progname, align 8, !tbaa !10
  %i.aa = load ptr, ptr @inname, align 8, !tbaa !10
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.44, ptr noundef %i.z, ptr noundef %i.aa) #23 ; 0 uses
  br label %open_input.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ac = tail call i32 @fileno(ptr noundef nonnull %i.w) #22
  %i.ad = tail call i32 @fstat(i32 noundef %i.ac, ptr noundef nonnull @instat) #22
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @perror(ptr noundef %i.x) #27
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ag = load ptr, ptr @progname, align 8, !tbaa !10
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.47, ptr noundef %i.ag, ptr noundef %i.x) #23 ; 0 uses
  br label %open_input.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @instat, i64 24), align 8, !tbaa !27
  %i.aj = and i32 %i.ai, 61440
  %i.ak = icmp eq i32 %i.aj, 32768
  br i1 %i.ak, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.am = load ptr, ptr @progname, align 8, !tbaa !10
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.48, ptr noundef %i.am, ptr noundef %i.x) #23 ; 0 uses
  br label %open_input.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @instat, i64 16), align 8, !tbaa !26 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 2
  %i.aq = load i32, ptr @f_cat, align 4
  %i.ar = icmp ne i32 %i.aq, 0
  %or.cond.i24.i = select i1 %i.ap, i1 true, i1 %i.ar
  %i.as = load i32, ptr @f_precious, align 4
  %i.at = icmp ne i32 %i.as, 0
  %or.cond3.i.i = select i1 %or.cond.i24.i, i1 true, i1 %i.at
  br i1 %or.cond3.i.i, label %okay_as_input.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.av = load ptr, ptr @progname, align 8, !tbaa !10
  %i.aw = add i64 %i.ao, -1
  %i.ax = icmp ult i64 %i.ao, 3
  %i.ay = zext i1 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @.str.50, i64 %i.ay
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.49, ptr noundef %i.av, ptr noundef %i.x, i64 noundef %i.aw, ptr noundef nonnull %i.az) #23 ; 0 uses
  br label %open_input.exit.thread

okay_as_input.exit.i:                             ; preds = %bb.p
  %.not20.i = icmp eq ptr %i.b, null
  br i1 %.not20.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %okay_as_input.exit.i
  %i.bb = load ptr, ptr @inname, align 8, !tbaa !10 ; 2 uses
  %.not.i25.i = icmp eq ptr %i.bb, null
  br i1 %.not.i25.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = tail call fastcc noundef ptr @normalname(ptr noundef nonnull readonly %i.bb, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41) ; 4 uses
  %i.bd = load ptr, ptr @alldescs, align 16, !tbaa !13 ; 2 uses
  %.not1623.i.i = icmp eq ptr %i.bd, null
  br i1 %.not1623.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %suffix.exit.thread.i.i
  %i.be = phi ptr [ %i.bo, %suffix.exit.thread.i.i ], [ %i.bd, %bb.s ]
  %.024.i.i = phi ptr [ %i.bn, %suffix.exit.thread.i.i ], [ @alldescs, %bb.s ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29 ; 4 uses
  %.not17.i.i = icmp eq ptr %i.bg, null
  br i1 %.not17.i.i, label %suffix.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11
  %.not18.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not18.i.i, label %suffix.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bc) #21 ; 2 uses
  %i.bj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bg) #21 ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.bj, 0
  %.not14.i.i.i = icmp ugt i64 %i.bi, %i.bj
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not14.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.v, label %suffix.exit.thread.i.i

bb.v:                                             ; preds = %bb.u
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bk
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.bl, ptr nonnull readonly %i.bg, i64 %i.bj)
  %.not15.i.not.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not15.i.not.i.i, label %bb.w, label %suffix.exit.thread.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.bc) #22
  %i.bm = load ptr, ptr %.024.i.i, align 8, !tbaa !13
  br label %bb.x

suffix.exit.thread.i.i:                           ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !13 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.bo, null
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !20

._crit_edge.i.i:                                  ; preds = %suffix.exit.thread.i.i, %bb.s
  tail call void @free(ptr noundef %i.bc) #22
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i, %bb.w, %bb.r, %okay_as_input.exit.i, %bb.b
  %.0.i = phi ptr [ %i.b, %okay_as_input.exit.i ], [ %i.b, %bb.b ], [ %i.bm, %bb.w ], [ null, %._crit_edge.i.i ], [ null, %bb.r ] ; 2 uses
  %.not21.i = icmp eq ptr %.0.i, null
  %i.bp = select i1 %.not21.i, ptr @f_ulaw, ptr %.0.i ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !30
  store ptr %i.br, ptr @output, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !31
  store ptr %i.bt, ptr @input, align 8, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !32 ; 2 uses
  store ptr %i.bv, ptr @init_input, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !33 ; 2 uses
  store ptr %i.bx, ptr @init_output, align 8, !tbaa !17
  %i.by = load i32, ptr @f_cat, align 4
  %i.bz = icmp ne i32 %i.by, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.bz
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ca = load ptr, ptr @stdout, align 8, !tbaa !15
  store ptr %i.ca, ptr @out, align 8, !tbaa !15
  br label %open_output.exit

bb.z:                                             ; preds = %bb.x
  %i.cb = load i32, ptr @f_decode, align 4, !tbaa !7
  %.not.i.not.i.a = icmp eq i32 %i.cb, 0
  br i1 %.not.i.not.i.a, label %call.1.i, label %call.0.i

call.0.i:                                         ; preds = %bb.z
  %1 = tail call fastcc noundef ptr @normalname(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41)
  br label %.tail.i

call.1.i:                                         ; preds = %bb.z
  %2 = tail call fastcc noundef ptr @normalname(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45)
  br label %.tail.i

.tail.i:                                          ; preds = %call.1.i, %call.0.i
  %3 = phi ptr [ %1, %call.0.i ], [ %2, %call.1.i ] ; 8 uses
  %.not.i.not.i = icmp eq ptr %3, null
  br i1 %.not.i.not.i, label %open_input.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.tail.i
  %i.cc = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %3, i32 noundef 193, i32 noundef 438) #22 ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, -1                  ; 2 uses
  br i1 %i.cd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ce = tail call noalias ptr @fdopen(i32 noundef %i.cc, ptr noundef nonnull @.str.51) #22
  br label %bb.ak

bb.ac:                                            ; preds = %bb.aa
  %i.cf = tail call ptr @__errno_location() #28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %.not19.i = icmp eq i32 %i.cg, 17
  br i1 %.not19.i, label %bb.ad, label %.thread.i

.thread.i:                                        ; preds = %bb.ac
  store ptr null, ptr @out, align 8, !tbaa !15
  br label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.ch = load i32, ptr @f_force, align 4, !tbaa !7
  %.not.i22.i45 = icmp eq i32 %i.ch, 0
  br i1 %.not.i22.i45, label %bb.ae, label %ok_to_replace.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cj = tail call i32 @fileno(ptr noundef %i.ci) #22
  %i.ck = tail call i32 @isatty(i32 noundef %i.cj) #22
  %.not6.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not6.i.i, label %open_input.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cl, ptr noundef nonnull @.str.54, ptr noundef nonnull %3, ptr noundef nonnull %3) #23 ; 0 uses
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.co = tail call i32 @fflush(ptr noundef %i.cn) ; 0 uses
  %i.cp = load ptr, ptr @stdin, align 8, !tbaa !15
  %i.cq = tail call i32 @getc(ptr noundef %i.cp), !inline_history !21 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.0.i23.i = phi i32 [ %i.cq, %bb.af ], [ %i.cs, %bb.ah ]
  switch i32 %.0.i23.i, label %bb.ah [
    i32 -1, label %bb.ai
    i32 10, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cr = load ptr, ptr @stdin, align 8, !tbaa !15
  %i.cs = tail call i32 @getc(ptr noundef %i.cr), !inline_history !21
  br label %bb.ag, !llvm.loop !22

bb.ai:                                            ; preds = %bb.ag, %bb.ag
  %i.ct = icmp eq i32 %i.cq, 121
  br i1 %i.ct, label %ok_to_replace.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.55, i64 17, i64 1, ptr %i.cu) #27 ; 0 uses
  br label %open_input.exit.thread

ok_to_replace.exit.i:                             ; preds = %bb.ai, %bb.ad
  %i.cv = tail call noalias ptr @fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.51)
  br label %bb.ak

bb.ak:                                            ; preds = %ok_to_replace.exit.i, %bb.ab
  %storemerge.i46 = phi ptr [ %i.cv, %ok_to_replace.exit.i ], [ %i.ce, %bb.ab ] ; 2 uses
  store ptr %storemerge.i46, ptr @out, align 8, !tbaa !15
  %.not21.i47 = icmp eq ptr %storemerge.i46, null
  br i1 %.not21.i47, label %bb.al, label %.open_output.exit_crit_edge

.open_output.exit_crit_edge:                      ; preds = %bb.ak
  %.pre = load ptr, ptr @init_output, align 8
  %.pre57.a = load ptr, ptr @init_input, align 8
  br label %open_output.exit

bb.al:                                            ; preds = %bb.ak, %.thread.i
  tail call void @perror(ptr noundef nonnull %3) #27
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cx = load ptr, ptr @progname, align 8, !tbaa !10
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.52, ptr noundef %i.cx, ptr noundef nonnull %3) #23 ; 0 uses
  br i1 %i.cd, label %bb.am, label %open_input.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.cz = tail call i32 @close(i32 noundef %i.cc) #22 ; 0 uses
  br label %open_input.exit.thread

open_output.exit:                                 ; preds = %.open_output.exit_crit_edge, %bb.y
  %i.da = phi ptr [ %i.bv, %bb.y ], [ %.pre57.a, %.open_output.exit_crit_edge ]
  %i.db = phi ptr [ %i.bx, %bb.y ], [ %.pre, %.open_output.exit_crit_edge ]
  %storemerge = phi ptr [ null, %bb.y ], [ %3, %.open_output.exit_crit_edge ]
  store ptr %storemerge, ptr @outname, align 8, !tbaa !10
  %i.dc = load i32, ptr @f_decode, align 4, !tbaa !7
  %.not16 = icmp eq i32 %i.dc, 0
  %i.dd = select i1 %.not16, ptr %i.da, ptr %i.db
  %i.de = tail call i32 %i.dd() #22
  %.not17 = icmp eq i32 %i.de, 0
  br i1 %.not17, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %open_output.exit
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dg = load ptr, ptr @progname, align 8, !tbaa !10
  %i.dh = load i32, ptr @f_decode, align 4, !tbaa !7
  %.not27 = icmp eq i32 %i.dh, 0                  ; 3 uses
  %i.di = select i1 %.not27, ptr @.str.35, ptr @.str.34
  %.str.37..str.36 = select i1 %.not27, ptr @.str.37, ptr @.str.36
  %inname.val = load ptr, ptr @inname, align 8
  %outname.val = load ptr, ptr @outname, align 8
  %i.dj = select i1 %.not27, ptr %inname.val, ptr %outname.val ; 2 uses
  %.not28 = icmp eq ptr %i.dj, null
  %i.dk = select i1 %.not28, ptr %.str.37..str.36, ptr %i.dj
  %i.dl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.df, ptr noundef nonnull @.str.33, ptr noundef %i.dg, ptr noundef nonnull %i.di, ptr noundef nonnull %i.dk) #23 ; 0 uses
  br label %open_input.exit.thread

bb.ao:                                            ; preds = %open_output.exit
  %i.dm = load i32, ptr @f_decode, align 4, !tbaa !7
  %.not18 = icmp eq i32 %i.dm, 0
  %i.dn = select i1 %.not18, ptr @process_encode, ptr @process_decode
  %i.do = tail call i32 %i.dn() #22, !callees !34
  %.not19 = icmp eq i32 %i.do, 0
  br i1 %.not19, label %bb.ap, label %open_input.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.dp = load ptr, ptr @out, align 8, !tbaa !15
  %i.dq = tail call i32 @fflush(ptr noundef %i.dp)
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = load ptr, ptr @out, align 8, !tbaa !15  ; 2 uses
  %i.dt = tail call i32 @ferror(ptr noundef %i.ds) #22
  %.not20 = icmp eq i32 %i.dt, 0
  br i1 %.not20, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.du = load ptr, ptr @outname, align 8, !tbaa !10 ; 2 uses
  %.not25 = icmp eq ptr %i.du, null
  %i.dv = select i1 %.not25, ptr @.str.36, ptr %i.du
  tail call void @perror(ptr noundef nonnull %i.dv) #27
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dx = load ptr, ptr @progname, align 8, !tbaa !10
  %i.dy = load ptr, ptr @outname, align 8, !tbaa !10 ; 2 uses
  %.not26 = icmp eq ptr %i.dy, null
  %i.dz = select i1 %.not26, ptr @.str.36, ptr %i.dy
  %i.ea = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.38, ptr noundef %i.dx, ptr noundef nonnull %i.dz) #23 ; 0 uses
  br label %open_input.exit.thread

bb.as:                                            ; preds = %bb.aq
  %i.eb = load ptr, ptr @stdout, align 8, !tbaa !15
  %.not21 = icmp eq ptr %i.ds, %i.eb
  br i1 %.not21, label %bb.bc, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ec = load i64, ptr getelementptr inbounds nuw (i8, ptr @instat, i64 16), align 8, !tbaa !26 ; 2 uses
  %i.ed = icmp ne i64 %i.ec, 0
  %i.ee = load ptr, ptr @outname, align 8         ; 2 uses
  %i.ef = icmp ne ptr %i.ee, null
  %or.cond.i48 = select i1 %i.ed, i1 %i.ef, i1 false
  br i1 %or.cond.i48, label %bb.au, label %update_times.exit

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.eg = load i64, ptr getelementptr inbounds nuw (i8, ptr @instat, i64 72), align 8, !tbaa !35
  store i64 %i.eg, ptr %i.a, align 16, !tbaa !36
  %i.eh = load i64, ptr getelementptr inbounds nuw (i8, ptr @instat, i64 88), align 8, !tbaa !37
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !36
  %i.ej = call i32 @utime(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.a) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.pr = load i64, ptr getelementptr inbounds nuw (i8, ptr @instat, i64 16), align 8, !tbaa !26
  br label %update_times.exit

update_times.exit:                                ; preds = %bb.at, %bb.au
  %i.ek = phi i64 [ %i.ec, %bb.at ], [ %.pr, %bb.au ]
  %.not.i49.a = icmp eq i64 %i.ek, 0
  br i1 %.not.i49.a, label %update_mode.exit, label %bb.av

bb.av:                                            ; preds = %update_times.exit
  %i.el = load ptr, ptr @out, align 8, !tbaa !15
  %i.em = tail call i32 @fileno(ptr noundef %i.el) #22
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @instat, i64 24), align 8, !tbaa !27
  %i.eo = and i32 %i.en, 4095
  %i.ep = tail call i32 @fchmod(i32 noundef %i.em, i32 noundef %i.eo) #22
  %.not1.i = icmp eq i32 %i.ep, 0
  br i1 %.not1.i, label %update_mode.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eq = load ptr, ptr @outname, align 8, !tbaa !10
  tail call void @perror(ptr noundef %i.eq) #27
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.es = load ptr, ptr @progname, align 8, !tbaa !10
  %i.et = load ptr, ptr @outname, align 8, !tbaa !10
  %i.eu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.60, ptr noundef %i.es, ptr noundef %i.et) #23 ; 0 uses
  br label %update_mode.exit

update_mode.exit:                                 ; preds = %update_times.exit, %bb.av, %bb.aw
  %i.ev = load i64, ptr getelementptr inbounds nuw (i8, ptr @instat, i64 16), align 8, !tbaa !26
  %.not.i50 = icmp eq i64 %i.ev, 0
  %.pre59 = load ptr, ptr @out, align 8, !tbaa !15 ; 2 uses
  br i1 %.not.i50, label %update_own.exit, label %bb.ax

bb.ax:                                            ; preds = %update_mode.exit
  %i.ew = tail call i32 @fileno(ptr noundef %.pre59) #22
  %i.ex = load i32, ptr getelementptr inbounds nuw (i8, ptr @instat, i64 28), align 4, !tbaa !38
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @instat, i64 32), align 8, !tbaa !39
  %i.ez = tail call i32 @fchown(i32 noundef %i.ew, i32 noundef %i.ex, i32 noundef %i.ey) #22 ; 0 uses
  %.pre58 = load ptr, ptr @out, align 8, !tbaa !15
  br label %update_own.exit

update_own.exit:                                  ; preds = %update_mode.exit, %bb.ax
  %i.fa = phi ptr [ %.pre59, %update_mode.exit ], [ %.pre58, %bb.ax ]
  %i.fb = tail call i32 @fclose(ptr noundef %i.fa)
  %i.fc = icmp slt i32 %i.fb, 0
  %i.fd = load ptr, ptr @outname, align 8, !tbaa !10 ; 3 uses
  br i1 %i.fc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %update_own.exit
  tail call void @perror(ptr noundef %i.fd) #27
  %i.fe = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ff = load ptr, ptr @progname, align 8, !tbaa !10
  %i.fg = load ptr, ptr @outname, align 8, !tbaa !10
  %i.fh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fe, ptr noundef nonnull @.str.38, ptr noundef %i.ff, ptr noundef %i.fg) #23 ; 0 uses
  br label %open_input.exit.thread

bb.az:                                            ; preds = %update_own.exit
  %.not22 = icmp eq ptr %i.fd, %0
  br i1 %.not22, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @free(ptr noundef %i.fd) #22
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  store ptr null, ptr @outname, align 8, !tbaa !10
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.as
  store ptr null, ptr @out, align 8, !tbaa !15
  %i.fi = load ptr, ptr @in, align 8, !tbaa !15   ; 2 uses
  %i.fj = load ptr, ptr @stdin, align 8, !tbaa !15
  %.not23 = icmp eq ptr %i.fi, %i.fj
  br i1 %.not23, label %bb.bs, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fk = tail call i32 @fclose(ptr noundef %i.fi) ; 0 uses
  store ptr null, ptr @in, align 8, !tbaa !15
  %i.fl = load i32, ptr @f_cat, align 4, !tbaa !7
  %i.fm = icmp ne i32 %i.fl, 0
  %i.fn = load i32, ptr @f_precious, align 4
  %i.fo = icmp ne i32 %i.fn, 0
  %or.cond = select i1 %i.fm, i1 true, i1 %i.fo
  %i.fp = load ptr, ptr @inname, align 8, !tbaa !10 ; 3 uses
  br i1 %or.cond, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fq = tail call i32 @unlink(ptr noundef %i.fp) #22
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %bb.bf, label %open_input.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.fs = load ptr, ptr @inname, align 8, !tbaa !10
  tail call void @perror(ptr noundef %i.fs) #27
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.fu = load ptr, ptr @progname, align 8, !tbaa !10
  %i.fv = load ptr, ptr @inname, align 8, !tbaa !10
  %i.fw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ft, ptr noundef nonnull @.str.39, ptr noundef %i.fu, ptr noundef %i.fv) #23 ; 0 uses
  br label %open_input.exit.thread

bb.bg:                                            ; preds = %bb.bd
  %.not24 = icmp eq ptr %i.fp, %0
  br i1 %.not24, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @free(ptr noundef %i.fp) #22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store ptr null, ptr @inname, align 8, !tbaa !10
  br label %bb.bs

open_input.exit.thread:                           ; preds = %bb.aj, %bb.ae, %bb.al, %bb.am, %.tail.i, %bb.q, %bb.o, %bb.m, %bb.k, %bb.h, %bb.be, %bb.bf, %bb.ao, %bb.ay, %bb.ar, %bb.an
  %i.fx = load ptr, ptr @out, align 8, !tbaa !15  ; 3 uses
  %.not30 = icmp eq ptr %i.fx, null
  %i.fy = load ptr, ptr @stdout, align 8
  %.not31 = icmp eq ptr %i.fx, %i.fy
  %or.cond40 = select i1 %.not30, i1 true, i1 %.not31
  br i1 %or.cond40, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %open_input.exit.thread
  %i.fz = tail call i32 @fclose(ptr noundef nonnull %i.fx) ; 0 uses
  store ptr null, ptr @out, align 8, !tbaa !15
  %i.ga = load ptr, ptr @outname, align 8, !tbaa !10
  %i.gb = tail call i32 @unlink(ptr noundef %i.ga) #22
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.gd = tail call ptr @__errno_location() #28
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !7
  switch i32 %i.ge, label %bb.bl [
    i32 2, label %bb.bm
    i32 4, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.gf = load ptr, ptr @outname, align 8, !tbaa !10
  tail call void @perror(ptr noundef %i.gf) #27
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.gh = load ptr, ptr @progname, align 8, !tbaa !10
  %i.gi = load ptr, ptr @outname, align 8, !tbaa !10
  %i.gj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gg, ptr noundef nonnull @.str.40, ptr noundef %i.gh, ptr noundef %i.gi) #23 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bk, %bb.bj, %bb.bl, %open_input.exit.thread
  %i.gk = load ptr, ptr @in, align 8, !tbaa !15   ; 3 uses
  %.not34 = icmp eq ptr %i.gk, null
  %i.gl = load ptr, ptr @stdin, align 8
  %.not35 = icmp eq ptr %i.gk, %i.gl
  %or.cond41 = select i1 %.not34, i1 true, i1 %.not35
  br i1 %or.cond41, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gm = tail call i32 @fclose(ptr noundef nonnull %i.gk) ; 0 uses
  store ptr null, ptr @in, align 8, !tbaa !15
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.gn = load ptr, ptr @inname, align 8, !tbaa !10 ; 3 uses
  %.not36 = icmp eq ptr %i.gn, null
  %.not37 = icmp eq ptr %i.gn, %0
  %or.cond42 = or i1 %.not36, %.not37
  br i1 %or.cond42, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @free(ptr noundef nonnull %i.gn) #22
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.go = load ptr, ptr @outname, align 8, !tbaa !10 ; 3 uses
  %.not38 = icmp eq ptr %i.go, null
  %.not39 = icmp eq ptr %i.go, %0
  %or.cond43 = or i1 %.not38, %.not39
  br i1 %or.cond43, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @free(ptr noundef nonnull %i.go) #22
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bc, %bb.bi
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @process_decode() unnamed_addr #9 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 4 uses
  %i.b = alloca [160 x i16], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = tail call ptr @gsm_create() #22          ; 9 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @progname, align 8, !tbaa !10
  tail call void @perror(ptr noundef %i.d) #27
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @gsm_option(ptr noundef nonnull %i.c, i32 noundef 2, ptr noundef nonnull @f_fast) #22 ; 0 uses
  %i.f = tail call i32 @gsm_option(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @f_verbose) #22 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %i.g = load ptr, ptr @in, align 8, !tbaa !15
  %i.h = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 33, ptr noundef %i.g) ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %i.h, 2147483647                 ; 3 uses
  %.not18 = icmp eq i64 %i.k, 33
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.m = load ptr, ptr @progname, align 8, !tbaa !10
  %i.n = sub nsw i64 33, %i.k
  %i.o = icmp eq i64 %i.k, 32
  %i.p = zext i1 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @.str.50, i64 %i.p
  %i.r = load ptr, ptr @inname, align 8, !tbaa !10 ; 2 uses
  %.not21 = icmp eq ptr %i.r, null
  %i.s = select i1 %.not21, ptr @.str.37, ptr %i.r
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.56, ptr noundef %i.m, i64 noundef %i.n, ptr noundef nonnull %i.q, ptr noundef nonnull %i.s) #23 ; 0 uses
  call void @gsm_destroy(ptr noundef nonnull %i.c) #22
  %i.u = tail call ptr @__errno_location() #28
  store i32 0, ptr %i.u, align 4, !tbaa !7
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.v = call i32 @gsm_decode(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %.not19 = icmp eq i32 %i.v, 0
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.x = load ptr, ptr @progname, align 8, !tbaa !10
  %i.y = load ptr, ptr @inname, align 8, !tbaa !10 ; 2 uses
  %.not20 = icmp eq ptr %i.y, null
  %i.z = select i1 %.not20, ptr @.str.37, ptr %i.y
  %i.aa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.57, ptr noundef %i.x, ptr noundef nonnull %i.z) #23 ; 0 uses
  call void @gsm_destroy(ptr noundef nonnull %i.c) #22
  %i.ab = tail call ptr @__errno_location() #28
  store i32 0, ptr %i.ab, align 4, !tbaa !7
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr @output, align 8, !tbaa !17
  %i.ad = call i32 %i.ac(ptr noundef nonnull %i.b) #22
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.d, !llvm.loop !40

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr @outname, align 8, !tbaa !10
  call void @perror(ptr noundef %i.af) #27
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ah = load ptr, ptr @progname, align 8, !tbaa !10
  %i.ai = load ptr, ptr @outname, align 8, !tbaa !10
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.58, ptr noundef %i.ah, ptr noundef %i.ai) #23 ; 0 uses
  call void @gsm_destroy(ptr noundef nonnull %i.c) #22
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.ak = icmp slt i32 %i.i, 0
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr @inname, align 8, !tbaa !10 ; 2 uses
  %.not16 = icmp eq ptr %i.al, null
  %i.am = select i1 %.not16, ptr @.str.37, ptr %i.al
  call void @perror(ptr noundef nonnull %i.am) #27
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ao = load ptr, ptr @progname, align 8, !tbaa !10
  %i.ap = load ptr, ptr @inname, align 8, !tbaa !10 ; 2 uses
  %.not17 = icmp eq ptr %i.ap, null
  %i.aq = select i1 %.not17, ptr @.str.37, ptr %i.ap
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.59, ptr noundef %i.ao, ptr noundef nonnull %i.aq) #23 ; 0 uses
  call void @gsm_destroy(ptr noundef nonnull %i.c) #22
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @gsm_destroy(ptr noundef nonnull %i.c) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.l ], [ 0, %bb.m ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @process_encode() unnamed_addr #9 {
bb.a:
  %i.a = alloca [160 x i16], align 16             ; 5 uses
  %i.b = alloca [33 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = tail call ptr @gsm_create() #22          ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @progname, align 8, !tbaa !10
  tail call void @perror(ptr noundef %i.d) #27
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @gsm_option(ptr noundef nonnull %i.c, i32 noundef 2, ptr noundef nonnull @f_fast) #22 ; 0 uses
  %i.f = tail call i32 @gsm_option(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @f_verbose) #22 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.g = load ptr, ptr @input, align 8, !tbaa !17
  %i.h = call i32 %i.g(ptr noundef nonnull %i.a) #22 ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = icmp samesign ult i32 %i.h, 160
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = zext nneg i32 %i.h to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.k
  %i.m = shl nuw nsw i64 %i.k, 1
  %i.n = sub nuw nsw i64 320, %i.m
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.l, i8 0, i64 %i.n, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @gsm_encode(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.o = load ptr, ptr @out, align 8, !tbaa !15
  %i.p = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 33, i64 noundef 1, ptr noundef %i.o)
  %.not15 = icmp eq i64 %i.p, 1
  br i1 %.not15, label %bb.d, label %bb.h, !llvm.loop !41

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr @outname, align 8, !tbaa !10 ; 2 uses
  %.not16 = icmp eq ptr %i.q, null
  %i.r = select i1 %.not16, ptr @.str.36, ptr %i.q
  call void @perror(ptr noundef nonnull %i.r) #27
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.t = load ptr, ptr @progname, align 8, !tbaa !10
  %i.u = load ptr, ptr @outname, align 8, !tbaa !10 ; 2 uses
  %.not17 = icmp eq ptr %i.u, null
  %i.v = select i1 %.not17, ptr @.str.36, ptr %i.u
  %i.w = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.58, ptr noundef %i.t, ptr noundef nonnull %i.v) #23 ; 0 uses
  call void @gsm_destroy(ptr noundef nonnull %i.c) #22
  br label %bb.l

bb.i:                                             ; preds = %bb.d
  %i.x = icmp slt i32 %i.h, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr @inname, align 8, !tbaa !10 ; 2 uses
  %.not13 = icmp eq ptr %i.y, null
  %i.z = select i1 %.not13, ptr @.str.37, ptr %i.y
  call void @perror(ptr noundef nonnull %i.z) #27
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ab = load ptr, ptr @progname, align 8, !tbaa !10
  %i.ac = load ptr, ptr @inname, align 8, !tbaa !10 ; 2 uses
  %.not14 = icmp eq ptr %i.ac, null
  %i.ad = select i1 %.not14, ptr @.str.37, ptr %i.ac
  %i.ae = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.59, ptr noundef %i.ab, ptr noundef nonnull %i.ad) #23 ; 0 uses
  call void @gsm_destroy(ptr noundef nonnull %i.c) #22
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @gsm_destroy(ptr noundef nonnull %i.c) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.b
  %.0 = phi i32 [ -1, %bb.h ], [ -1, %bb.j ], [ 0, %bb.k ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef ptr @normalname(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.b = add i64 %i.a, 1
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.d = add i64 %i.b, %i.c
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %i.f = add i64 %i.d, %i.e                       ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #26 ; 10 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %emalloc.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.i = load ptr, ptr @progname, align 8, !tbaa !10
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.46, ptr noundef %i.i, i64 noundef %i.f) #23 ; 0 uses
  tail call void @onintr()
  unreachable

emalloc.exit:                                     ; preds = %bb.b
  %i.k = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %0) #22 ; 0 uses
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.g) #21 ; 4 uses
  %i.m = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #21 ; 4 uses
  %.not.i22 = icmp ne i64 %i.m, 0
  %.not14.i = icmp ugt i64 %i.l, %i.m
  %or.cond.i = select i1 %.not.i22, i1 %.not14.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %suffix.exit.thread

bb.d:                                             ; preds = %emalloc.exit
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.n ; 2 uses
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.o, ptr nonnull readonly %2, i64 %i.m)
  %.not15.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %.not15.i.not, label %bb.e, label %suffix.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %1) #22 ; 0 uses
  br label %bb.h

suffix.exit.thread:                               ; preds = %emalloc.exit, %bb.d
  %i.q = load i8, ptr %1, align 1, !tbaa !11
  %.not20 = icmp eq i8 %i.q, 0
  br i1 %.not20, label %bb.h, label %bb.f

bb.f:                                             ; preds = %suffix.exit.thread
  %i.r = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #21 ; 4 uses
  %.not.i23 = icmp ne i64 %i.r, 0
  %.not14.i24 = icmp ugt i64 %i.l, %i.r
  %or.cond.i25 = select i1 %.not.i23, i1 %.not14.i24, i1 false
  br i1 %or.cond.i25, label %bb.g, label %suffix.exit29.thread

bb.g:                                             ; preds = %bb.f
  %i.s = sub nuw i64 %i.l, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.s
  %bcmp.i27 = tail call i32 @bcmp(ptr nonnull readonly %i.t, ptr nonnull readonly %1, i64 %i.r)
  %.not15.i28.not = icmp eq i32 %bcmp.i27, 0
  br i1 %.not15.i28.not, label %bb.h, label %suffix.exit29.thread

suffix.exit29.thread:                             ; preds = %bb.f, %bb.g
  %i.u = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %1) #22 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %suffix.exit29.thread, %suffix.exit.thread, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %suffix.exit.thread ], [ %i.g, %bb.g ], [ %i.g, %suffix.exit29.thread ], [ %i.g, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @gsm_create() local_unnamed_addr #0

declare i32 @gsm_option(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

declare void @gsm_destroy(ptr noundef) local_unnamed_addr #0

declare i32 @gsm_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

declare void @gsm_encode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind }
attributes #23 = { cold nounwind }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { cold }
attributes #28 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"p1 _ZTS7fmtdesc", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!8, !8, i64 0}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{null}
!22 = distinct !{!22, !16}
!23 = !{!"long", !5, i64 0}
!24 = !{!"timespec", !23, i64 0, !23, i64 8}
!25 = !{!"stat", !23, i64 0, !23, i64 8, !23, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !24, i64 72, !24, i64 88, !24, i64 104, !5, i64 120}
!26 = !{!25, !23, i64 16}
!27 = !{!25, !6, i64 24}
!28 = !{!"fmtdesc", !9, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!29 = !{!28, !9, i64 16}
!30 = !{!28, !8, i64 48}
!31 = !{!28, !8, i64 40}
!32 = !{!28, !8, i64 24}
!33 = !{!28, !8, i64 32}
!34 = !{ptr @process_decode, ptr @process_encode}
!35 = !{!25, !23, i64 72}
!36 = !{!23, !23, i64 0}
!37 = !{!25, !23, i64 88}
!38 = !{!25, !6, i64 28}
!39 = !{!25, !6, i64 32}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
end_hunk_0
