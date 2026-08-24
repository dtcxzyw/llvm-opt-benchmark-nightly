Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/signal?download=true
inline.NumInlined: 138
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Init_signal:bb.a
  %i.bd = call i32 @sigemptyset(ptr noundef nonnull %i.bc) #16 ; 0 uses
  store ptr @sighandler, ptr %33, align 8, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %33, i64 136
  store i32 %spec.select.i.i, ptr %i.be, align 8, !tbaa !71
  %i.bf = call i32 @sigaction(i32 noundef 14, ptr noundef nonnull %33, ptr noundef nonnull %34) #16
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %install_sighandler_core.exit60.thread
  %.0.i.i63 = load ptr, ptr %34, align 8, !tbaa !59 ; 4 uses
  %i.bh = icmp ne ptr %.0.i.i63, inttoptr (i64 -1 to ptr)
  call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  %.not14.i64 = icmp eq ptr %.0.i.i63, null
  br i1 %.not14.i64, label %install_sighandler_core.exit70.thread, label %ruby_signal.exit18.i67

ruby_signal.exit18.i67:                           ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #16
  %i.bi = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.bj = call i32 @sigemptyset(ptr noundef nonnull %i.bi) #16 ; 0 uses
  %i.bk = icmp ult ptr %.0.i.i63, inttoptr (i64 2 to ptr)
  %spec.select.i15.i65 = select i1 %i.bk, i32 0, i32 4
  store ptr %.0.i.i63, ptr %31, align 8, !tbaa !59
  %i.bl = getelementptr inbounds nuw i8, ptr %31, i64 136
  store i32 %spec.select.i15.i65, ptr %i.bl, align 8, !tbaa !71
  %i.bm = call i32 @sigaction(i32 noundef 14, ptr noundef nonnull %31, ptr noundef nonnull %32) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  br label %install_sighandler_core.exit70.thread

bb.k:                                             ; preds = %install_sighandler_core.exit60.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  call void @perror(ptr noundef nonnull @Init_signal.failed.11) #27
  br label %install_sighandler_core.exit70.thread

install_sighandler_core.exit70.thread:            ; preds = %ruby_signal.exit18.i67, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #16
  %i.bn = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bo = call i32 @sigemptyset(ptr noundef nonnull %i.bn) #16 ; 0 uses
  store ptr @sighandler, ptr %29, align 8, !tbaa !59
  %i.bp = getelementptr inbounds nuw i8, ptr %29, i64 136
  store i32 %spec.select.i.i, ptr %i.bp, align 8, !tbaa !71
  %i.bq = call i32 @sigaction(i32 noundef 10, ptr noundef nonnull %29, ptr noundef nonnull %30) #16
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %install_sighandler_core.exit70.thread
  %.0.i.i73 = load ptr, ptr %30, align 8, !tbaa !59 ; 4 uses
  %i.bs = icmp ne ptr %.0.i.i73, inttoptr (i64 -1 to ptr)
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  %.not14.i74 = icmp eq ptr %.0.i.i73, null
  br i1 %.not14.i74, label %install_sighandler_core.exit80.thread, label %ruby_signal.exit18.i77

ruby_signal.exit18.i77:                           ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  %i.bt = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bu = call i32 @sigemptyset(ptr noundef nonnull %i.bt) #16 ; 0 uses
  %i.bv = icmp ult ptr %.0.i.i73, inttoptr (i64 2 to ptr)
  %spec.select.i15.i75 = select i1 %i.bv, i32 0, i32 4
  store ptr %.0.i.i73, ptr %27, align 8, !tbaa !59
  %i.bw = getelementptr inbounds nuw i8, ptr %27, i64 136
  store i32 %spec.select.i15.i75, ptr %i.bw, align 8, !tbaa !71
  %i.bx = call i32 @sigaction(i32 noundef 10, ptr noundef nonnull %27, ptr noundef nonnull %28) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  br label %install_sighandler_core.exit80.thread

bb.m:                                             ; preds = %install_sighandler_core.exit70.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  call void @perror(ptr noundef nonnull @Init_signal.failed.12) #27
  br label %install_sighandler_core.exit80.thread

install_sighandler_core.exit80.thread:            ; preds = %ruby_signal.exit18.i77, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  %i.by = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bz = call i32 @sigemptyset(ptr noundef nonnull %i.by) #16 ; 0 uses
  store ptr @sighandler, ptr %25, align 8, !tbaa !59
  %i.ca = getelementptr inbounds nuw i8, ptr %25, i64 136
  store i32 %spec.select.i.i, ptr %i.ca, align 8, !tbaa !71
  %i.cb = call i32 @sigaction(i32 noundef 12, ptr noundef nonnull %25, ptr noundef nonnull %26) #16
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %install_sighandler_core.exit80.thread
  %.0.i.i83 = load ptr, ptr %26, align 8, !tbaa !59 ; 4 uses
  %i.cd = icmp ne ptr %.0.i.i83, inttoptr (i64 -1 to ptr)
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  %.not14.i84 = icmp eq ptr %.0.i.i83, null
  br i1 %.not14.i84, label %install_sighandler_core.exit90.thread, label %ruby_signal.exit18.i87

ruby_signal.exit18.i87:                           ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %i.ce = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.cf = call i32 @sigemptyset(ptr noundef nonnull %i.ce) #16 ; 0 uses
  %i.cg = icmp ult ptr %.0.i.i83, inttoptr (i64 2 to ptr)
  %spec.select.i15.i85 = select i1 %i.cg, i32 0, i32 4
  store ptr %.0.i.i83, ptr %23, align 8, !tbaa !59
  %i.ch = getelementptr inbounds nuw i8, ptr %23, i64 136
  store i32 %spec.select.i15.i85, ptr %i.ch, align 8, !tbaa !71
  %i.ci = call i32 @sigaction(i32 noundef 12, ptr noundef nonnull %23, ptr noundef nonnull %24) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %install_sighandler_core.exit90.thread

bb.o:                                             ; preds = %install_sighandler_core.exit80.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @perror(ptr noundef nonnull @Init_signal.failed.13) #27
  br label %install_sighandler_core.exit90.thread

install_sighandler_core.exit90.thread:            ; preds = %ruby_signal.exit18.i87, %bb.n, %bb.o
  %i.cj = load i32, ptr @ruby_enable_coredump, align 4, !tbaa !7
  %.not16 = icmp eq i32 %i.cj, 0
  br i1 %.not16, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %install_sighandler_core.exit90.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.ck = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cl = call i32 @sigemptyset(ptr noundef nonnull %i.ck) #16 ; 0 uses
  %i.cm = icmp ult ptr @sigbus, inttoptr (i64 2 to ptr)
  store ptr @sigbus, ptr %21, align 8, !tbaa !59
  %i.cn = getelementptr inbounds nuw i8, ptr %21, i64 136
  %i.co = select i1 %i.cm, i32 134217728, i32 134217732
  store i32 %i.co, ptr %i.cn, align 8, !tbaa !71
  %i.cp = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %21, ptr noundef nonnull %22) #16
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @Init_signal.failed.14) #26
  unreachable

bb.r:                                             ; preds = %bb.p
  %.0.i.i93 = load ptr, ptr %22, align 8, !tbaa !59 ; 3 uses
  %i.cr = icmp ne ptr %.0.i.i93, inttoptr (i64 -1 to ptr)
  call void @llvm.assume(i1 %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  %i.cs = icmp eq ptr %.0.i.i93, inttoptr (i64 1 to ptr)
  %i.ct = select i1 %i.cs, ptr null, ptr %.0.i.i93
  store ptr %i.ct, ptr @default_sigbus_handler, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cv = call i32 @sigemptyset(ptr noundef nonnull %i.cu) #16 ; 0 uses
  %i.cw = icmp ult ptr @sigill, inttoptr (i64 2 to ptr)
  %spec.select.i.i98 = select i1 %i.cw, i32 0, i32 4
  store ptr @sigill, ptr %19, align 8, !tbaa !59
  %i.cx = getelementptr inbounds nuw i8, ptr %19, i64 136
  store i32 %spec.select.i.i98, ptr %i.cx, align 8, !tbaa !71
  %i.cy = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %19, ptr noundef nonnull %20) #16
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @Init_signal.failed.15) #26
  unreachable

bb.t:                                             ; preds = %bb.r
  %.0.i.i99 = load ptr, ptr %20, align 8, !tbaa !59 ; 3 uses
  %i.da = icmp ne ptr %.0.i.i99, inttoptr (i64 -1 to ptr)
  call void @llvm.assume(i1 %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.db = icmp eq ptr %.0.i.i99, inttoptr (i64 1 to ptr)
  %i.dc = select i1 %i.db, ptr null, ptr %.0.i.i99
  store ptr %i.dc, ptr @default_sigill_handler, align 8, !tbaa !99
  %i.dd = load i32, ptr @rb_sigaltstack_size_value, align 4, !tbaa !7 ; 2 uses
  %.not.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.de = call i64 @sysconf(i32 noundef 250) #16
  %i.df = trunc i64 %i.de to i32
  %i.dg = call i64 @sysconf(i32 noundef 30) #16
  %i.dh = trunc i64 %i.dg to i32
  %spec.select.i.i104 = call i32 @llvm.smax.i32(i32 %i.df, i32 %i.dh)
  %.1.i.i = call range(i32 16384, -2147483648) i32 @llvm.smax.i32(i32 %spec.select.i.i104, i32 16384) ; 2 uses
  store i32 %.1.i.i, ptr @rb_sigaltstack_size_value, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.di = phi i32 [ %.1.i.i, %bb.u ], [ %i.dd, %bb.t ]
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = call noalias ptr @malloc(i64 noundef %i.dj) #25 ; 2 uses
  %.not2.i = icmp eq ptr %i.dk, null
  br i1 %.not2.i, label %bb.w, label %rb_allocate_sigaltstack.exit

bb.w:                                             ; preds = %bb.v
  call void @rb_memerror() #26
  unreachable

rb_allocate_sigaltstack.exit:                     ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %52 = load i32, ptr @rb_sigaltstack_size_value, align 4, !tbaa !7
  %53 = zext nneg i32 %52 to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 %53, ptr %i.dl, align 8, !tbaa !67
  store ptr %i.dk, ptr %17, align 8, !tbaa !69
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 0, ptr %i.dm, align 8, !tbaa !70
  %i.dn = call i32 @sigaltstack(ptr noundef nonnull %17, ptr noundef nonnull %18) #16 ; 0 uses
  %i.do = load ptr, ptr %17, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.dp = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !11
  %i.dq = getelementptr i8, ptr %i.dp, i64 488
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ds = call i32 @sigemptyset(ptr noundef nonnull %i.dr) #16 ; 0 uses
  %i.dt = icmp ult ptr @sigsegv, inttoptr (i64 2 to ptr)
  store ptr @sigsegv, ptr %15, align 8, !tbaa !59
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.dv = select i1 %i.dt, i32 134217728, i32 134217732
  store i32 %i.dv, ptr %i.du, align 8, !tbaa !71
  %i.dw = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %15, ptr noundef nonnull %16) #16
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %rb_allocate_sigaltstack.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @Init_signal.failed.16) #26
  unreachable

bb.y:                                             ; preds = %rb_allocate_sigaltstack.exit
  %.0.i.i106 = load ptr, ptr %16, align 8, !tbaa !59 ; 3 uses
  %i.dy = icmp ne ptr %.0.i.i106, inttoptr (i64 -1 to ptr)
  call void @llvm.assume(i1 %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.dz = icmp eq ptr %.0.i.i106, inttoptr (i64 1 to ptr)
  %i.ea = select i1 %i.dz, ptr null, ptr %.0.i.i106
  store ptr %i.ea, ptr @default_sigsegv_handler, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ec = call i32 @sigemptyset(ptr noundef nonnull %i.eb) #16 ; 0 uses
  %i.ed = icmp ult ptr @sigabrt, inttoptr (i64 2 to ptr)
  %spec.select.i.i111 = select i1 %i.ed, i32 0, i32 4
  store ptr @sigabrt, ptr %13, align 8, !tbaa !59
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 136
  store i32 %spec.select.i.i111, ptr %i.ee, align 8, !tbaa !71
  %i.ef = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %13, ptr noundef nonnull %14) #16
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.z, label %install_sighandler_core.exit115.thread

install_sighandler_core.exit115.thread:           ; preds = %bb.y
  %.0.i.i112 = load ptr, ptr %14, align 8, !tbaa !59 ; 3 uses
  %i.eh = icmp ne ptr %.0.i.i112, inttoptr (i64 -1 to ptr)
  call void @llvm.assume(i1 %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.ei = icmp eq ptr %.0.i.i112, inttoptr (i64 1 to ptr)
  %i.ej = select i1 %i.ei, ptr null, ptr %.0.i.i112
  store ptr %i.ej, ptr @default_sigabrt_handler, align 8, !tbaa !99
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @perror(ptr noundef nonnull @Init_signal.failed.17) #27
  br label %bb.aa

bb.aa:                                            ; preds = %install_sighandler_core.exit115.thread, %install_sighandler_core.exit90.thread, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.el = call i32 @sigemptyset(ptr noundef nonnull %i.ek) #16 ; 0 uses
  %i.em = icmp ult ptr @sig_do_nothing, inttoptr (i64 2 to ptr)
  %spec.select.i.i117 = select i1 %i.em, i32 0, i32 4 ; 2 uses
  store ptr @sig_do_nothing, ptr %11, align 8, !tbaa !59
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i32 %spec.select.i.i117, ptr %i.en, align 8, !tbaa !71
  %i.eo = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %11, ptr noundef nonnull %12) #16
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.0.i.i118 = load ptr, ptr %12, align 8, !tbaa !59 ; 4 uses
  %i.eq = icmp ne ptr %.0.i.i118, inttoptr (i64 -1 to ptr)
  call void @llvm.assume(i1 %i.eq)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %.not14.i119 = icmp eq ptr %.0.i.i118, null
  br i1 %.not14.i119, label %install_sighandler_core.exit125.thread, label %ruby_signal.exit18.i122

ruby_signal.exit18.i122:                          ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.es = call i32 @sigemptyset(ptr noundef nonnull %i.er) #16 ; 0 uses
  %i.et = icmp ult ptr %.0.i.i118, inttoptr (i64 2 to ptr)
  %spec.select.i15.i120 = select i1 %i.et, i32 0, i32 4
  store ptr %.0.i.i118, ptr %9, align 8, !tbaa !59
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i32 %spec.select.i15.i120, ptr %i.eu, align 8, !tbaa !71
  %i.ev = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %9, ptr noundef nonnull %10) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %install_sighandler_core.exit125.thread

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @perror(ptr noundef nonnull @Init_signal.failed.18) #27
  br label %install_sighandler_core.exit125.thread

install_sighandler_core.exit125.thread:           ; preds = %ruby_signal.exit18.i122, %bb.ab, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ex = call i32 @sigemptyset(ptr noundef nonnull %i.ew) #16 ; 0 uses
  store ptr @sig_do_nothing, ptr %7, align 8, !tbaa !59
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 136
  store i32 %spec.select.i.i117, ptr %i.ey, align 8, !tbaa !71
  %i.ez = call i32 @sigaction(i32 noundef 31, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %install_sighandler_core.exit125.thread
  %.0.i.i128 = load ptr, ptr %8, align 8, !tbaa !59 ; 4 uses
  %i.fb = icmp ne ptr %.0.i.i128, inttoptr (i64 -1 to ptr)
  call void @llvm.assume(i1 %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %.not14.i129 = icmp eq ptr %.0.i.i128, null
  br i1 %.not14.i129, label %install_sighandler_core.exit135.thread, label %ruby_signal.exit18.i132

ruby_signal.exit18.i132:                          ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fd = call i32 @sigemptyset(ptr noundef nonnull %i.fc) #16 ; 0 uses
  %i.fe = icmp ult ptr %.0.i.i128, inttoptr (i64 2 to ptr)
  %spec.select.i15.i130 = select i1 %i.fe, i32 0, i32 4
  store ptr %.0.i.i128, ptr %5, align 8, !tbaa !59
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i32 %spec.select.i15.i130, ptr %i.ff, align 8, !tbaa !71
  %i.fg = call i32 @sigaction(i32 noundef 31, ptr noundef nonnull %5, ptr noundef nonnull %6) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %install_sighandler_core.exit135.thread

bb.ae:                                            ; preds = %install_sighandler_core.exit125.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @perror(ptr noundef nonnull @Init_signal.failed.19) #27
  br label %install_sighandler_core.exit135.thread

install_sighandler_core.exit135.thread:           ; preds = %ruby_signal.exit18.i132, %bb.ad, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fi = call i32 @sigemptyset(ptr noundef nonnull %i.fh) #16 ; 0 uses
  store ptr @sighandler, ptr %3, align 8, !tbaa !59
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i32 %spec.select.i.i, ptr %i.fj, align 8, !tbaa !71
  %i.fk = call i32 @sigaction(i32 noundef 17, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %i.fl = icmp slt i32 %i.fk, 0
  br i1 %i.fl, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %install_sighandler_core.exit135.thread
  %.0.i.i138 = load ptr, ptr %4, align 8, !tbaa !59 ; 4 uses
  %i.fm = icmp ne ptr %.0.i.i138, inttoptr (i64 -1 to ptr)
  call void @llvm.assume(i1 %i.fm)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.not14.i139 = icmp eq ptr %.0.i.i138, null
  br i1 %.not14.i139, label %install_sighandler_core.exit145.thread, label %ruby_signal.exit18.i142

ruby_signal.exit18.i142:                          ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fo = call i32 @sigemptyset(ptr noundef nonnull %i.fn) #16 ; 0 uses
  %i.fp = icmp ult ptr %.0.i.i138, inttoptr (i64 2 to ptr)
  %spec.select.i15.i140 = select i1 %i.fp, i32 0, i32 4
  store ptr %.0.i.i138, ptr %1, align 8, !tbaa !59
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 %spec.select.i15.i140, ptr %i.fq, align 8, !tbaa !71
  %i.fr = call i32 @sigaction(i32 noundef 17, ptr noundef nonnull %1, ptr noundef nonnull %2) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %install_sighandler_core.exit145.thread

bb.ag:                                            ; preds = %install_sighandler_core.exit135.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @perror(ptr noundef nonnull @Init_signal.failed.20) #27
  br label %install_sighandler_core.exit145.thread

install_sighandler_core.exit145.thread:           ; preds = %ruby_signal.exit18.i142, %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  %i.fs = call i32 @sigemptyset(ptr noundef nonnull %0) #16 ; 0 uses
  %i.ft = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %0, ptr noundef null) #16 ; 0 uses
end_hunk_0
