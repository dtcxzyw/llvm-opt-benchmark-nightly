Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qht-bench?download=true
inline.NumInlined: 57
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.26 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@rz_threads = internal unnamed_addr global ptr null, align 8
@rz_info = internal unnamed_addr global ptr null, align 8
@.str.27 = private unnamed_addr constant [3 x i8] c"rz\00", align 1
@n_ready_threads = internal global i64 0, align 8
@test_start = internal unnamed_addr global i8 0, align 1
@test_stop = internal unnamed_addr global i8 0, align 1
@rcu_gp_ctr = external local_unnamed_addr global i64, align 8
@.str.28 = private unnamed_addr constant [25 x i8] c"p_rcu_reader->depth != 0\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/rcu.h\00", align 1
@__PRETTY_FUNCTION__.rcu_read_unlock = private unnamed_addr constant [27 x i8] c"void rcu_read_unlock(void)\00", align 1
@rcu_gp_event = external global %struct.QemuEvent, align 4
@.str.30 = private unnamed_addr constant [10 x i8] c"Results:\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c" Resizes:           %zu (%.2f%% of %zu)\0A\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c" Read:              %.2f M (%.2f%% of %.2fM)\0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c" Inserted:          %.2f M (%.2f%% of %.2fM)\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c" Removed:           %.2f M (%.2f%% of %.2fM)\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c" Throughput:        %.2f MT/s\0A\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c" Throughput/thread: %.2f MT/s/thread\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #15 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %parse_args.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.r
  %i.c = phi i32 [ %i.bz, %bb.r ], [ %i.a, %bb.a ]
  switch i32 %i.c, label %bb.r [
    i32 100, label %bb.b
    i32 68, label %bb.c
    i32 103, label %bb.d
    i32 104, label %bb.e
    i32 107, label %bb.f
    i32 75, label %bb.g
    i32 108, label %bb.h
    i32 110, label %bb.i
    i32 78, label %bb.j
    i32 111, label %bb.k
    i32 112, label %bb.l
    i32 114, label %bb.m
    i32 82, label %bb.n
    i32 115, label %bb.o
    i32 83, label %bb.p
    i32 117, label %bb.q
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = load ptr, ptr @optarg, align 8
  %i.e = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #15, !inline_history !8
  %i.f = trunc i64 %i.e to i32
  store i32 %i.f, ptr @duration, align 4
  br label %bb.r

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr @optarg, align 8
  %i.h = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.g, ptr noundef null, i32 noundef 10) #15, !inline_history !9
  store i64 %i.h, ptr @resize_delay, align 8
  br label %bb.r

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = load ptr, ptr @optarg, align 8
  %i.j = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 10) #15, !inline_history !9 ; 2 uses
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 false) ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = lshr exact i64 -9223372036854775808, %i.n
  %.not6.i.i = icmp eq i64 %i.j, 0
  %i.p = zext i1 %.not6.i.i to i64
  %.0.i.i = select i1 %.not.i.i, i64 %i.p, i64 %i.o
  store i64 %.0.i.i, ptr @init_range, align 8
  %i.q = load ptr, ptr @optarg, align 8
  %i.r = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.q, ptr noundef null, i32 noundef 10) #15, !inline_history !9 ; 2 uses
  %i.s = add i64 %i.r, -1
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false) ; 2 uses
  %.not.i5.i = icmp eq i64 %i.t, 0
  %i.u = add nuw nsw i64 %i.t, 4294967295
  %i.v = and i64 %i.u, 4294967295
  %i.w = lshr exact i64 -9223372036854775808, %i.v
  %.not6.i6.i = icmp eq i64 %i.r, 0
  %i.x = zext i1 %.not6.i6.i to i64
  %.0.i7.i = select i1 %.not.i5.i, i64 %i.x, i64 %i.w
  store i64 %.0.i7.i, ptr @lookup_range, align 8
  %i.y = load ptr, ptr @optarg, align 8
  %i.z = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.y, ptr noundef null, i32 noundef 10) #15, !inline_history !9 ; 2 uses
  %i.aa = add i64 %i.z, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 false) ; 2 uses
  %.not.i8.i = icmp eq i64 %i.ab, 0
  %i.ac = add nuw nsw i64 %i.ab, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = lshr exact i64 -9223372036854775808, %i.ad
  %.not6.i9.i = icmp eq i64 %i.z, 0
  %i.af = zext i1 %.not6.i9.i to i64
  %.0.i10.i = select i1 %.not.i8.i, i64 %i.af, i64 %i.ae
  store i64 %.0.i10.i, ptr @update_range, align 8
  %i.ag = load ptr, ptr @optarg, align 8          ; 2 uses
  %i.ah = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ag, ptr noundef null, i32 noundef 10) #15, !inline_history !9
  store i64 %i.ah, ptr @qht_n_elems, align 8
  %i.ai = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ag, ptr noundef null, i32 noundef 10) #15, !inline_history !9
  store i64 %i.ai, ptr @init_size, align 8
  br label %bb.r

bb.e:                                             ; preds = %.lr.ph.i
  %.val.i = load ptr, ptr %1, align 8
  tail call fastcc void @usage_complete(ptr %.val.i)
  unreachable

bb.f:                                             ; preds = %.lr.ph.i
  %i.aj = load ptr, ptr @optarg, align 8
  %i.ak = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.aj, ptr noundef null, i32 noundef 10) #15, !inline_history !9
  store i64 %i.ak, ptr @init_size, align 8
  br label %bb.r

bb.g:                                             ; preds = %.lr.ph.i
  %i.al = load ptr, ptr @optarg, align 8
  %i.am = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.al, ptr noundef null, i32 noundef 10) #15, !inline_history !9 ; 2 uses
  %i.an = add i64 %i.am, -1
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 false) ; 2 uses
  %.not.i11.i = icmp eq i64 %i.ao, 0
  %i.ap = add nuw nsw i64 %i.ao, 4294967295
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = lshr exact i64 -9223372036854775808, %i.aq
  %.not6.i12.i = icmp eq i64 %i.am, 0
  %i.as = zext i1 %.not6.i12.i to i64
  %.0.i13.i = select i1 %.not.i11.i, i64 %i.as, i64 %i.ar
  store i64 %.0.i13.i, ptr @init_range, align 8
  br label %bb.r

bb.h:                                             ; preds = %.lr.ph.i
  %i.at = load ptr, ptr @optarg, align 8
  %i.au = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.at, ptr noundef null, i32 noundef 10) #15, !inline_history !9 ; 2 uses
  %i.av = add i64 %i.au, -1
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false) ; 2 uses
  %.not.i14.i = icmp eq i64 %i.aw, 0
  %i.ax = add nuw nsw i64 %i.aw, 4294967295
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = lshr exact i64 -9223372036854775808, %i.ay
  %.not6.i15.i = icmp eq i64 %i.au, 0
  %i.ba = zext i1 %.not6.i15.i to i64
  %.0.i16.i = select i1 %.not.i14.i, i64 %i.ba, i64 %i.az
  store i64 %.0.i16.i, ptr @lookup_range, align 8
  br label %bb.r

bb.i:                                             ; preds = %.lr.ph.i
  %i.bb = load ptr, ptr @optarg, align 8
  %i.bc = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bb, ptr noundef null, i32 noundef 10) #15, !inline_history !8
  %i.bd = trunc i64 %i.bc to i32
  store i32 %i.bd, ptr @n_rw_threads, align 4
  br label %bb.r

bb.j:                                             ; preds = %.lr.ph.i
  %i.be = load ptr, ptr @optarg, align 8
  %i.bf = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.be, ptr noundef null, i32 noundef 10) #15, !inline_history !8
  %i.bg = trunc i64 %i.bf to i32
  store i32 %i.bg, ptr @n_rz_threads, align 4
  br label %bb.r

bb.k:                                             ; preds = %.lr.ph.i
  %i.bh = load ptr, ptr @optarg, align 8
  %i.bi = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bh, ptr noundef null, i32 noundef 10) #15, !inline_history !9
  store i64 %i.bi, ptr @populate_offset, align 8
  br label %bb.r

bb.l:                                             ; preds = %.lr.ph.i
  store i1 true, ptr @precompute_hash, align 1
  store ptr @hval, ptr @hfunc, align 8
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i
  %i.bj = load ptr, ptr @optarg, align 8
  %i.bk = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bj, ptr noundef null, i32 noundef 10) #15, !inline_history !9 ; 2 uses
  %i.bl = add i64 %i.bk, -1
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false) ; 2 uses
  %.not.i17.i = icmp eq i64 %i.bm, 0
  %i.bn = add nuw nsw i64 %i.bm, 4294967295
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = lshr exact i64 -9223372036854775808, %i.bo
  %.not6.i18.i = icmp eq i64 %i.bk, 0
  %i.bq = zext i1 %.not6.i18.i to i64
  %.0.i19.i = select i1 %.not.i17.i, i64 %i.bq, i64 %i.bp
  store i64 %.0.i19.i, ptr @update_range, align 8
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph.i
  store i1 true, ptr @qht_mode, align 4
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph.i
  %i.br = load ptr, ptr @optarg, align 8
  %i.bs = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.br, ptr noundef null, i32 noundef 10) #15, !inline_history !9
  store i64 %i.bs, ptr @qht_n_elems, align 8
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph.i
  %i.bt = load ptr, ptr @optarg, align 8
  %i.bu = tail call double @strtod(ptr noundef nonnull captures(none) %i.bt, ptr noundef null) #15, !inline_history !10
  %i.bv = fdiv double %i.bu, 1.000000e+02         ; 2 uses
  %2 = fcmp ogt double %i.bv, 1.000000e+00
  %spec.store.select.i = select i1 %2, double 1.000000e+00, double %i.bv
  store double %spec.store.select.i, ptr @resize_rate, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i
  %i.bw = load ptr, ptr @optarg, align 8
  %i.bx = tail call double @strtod(ptr noundef nonnull captures(none) %i.bw, ptr noundef null) #15, !inline_history !10
  %i.by = fdiv double %i.bx, 1.000000e+02         ; 2 uses
  %3 = fcmp ogt double %i.by, 1.000000e+00
  %spec.store.select1.i = select i1 %3, double 1.000000e+00, double %i.by
  store double %spec.store.select1.i, ptr @update_rate, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %i.bz = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #15 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %parse_args.exit, label %.lr.ph.i

parse_args.exit:                                  ; preds = %bb.r, %bb.a
  %i.cb = load i64, ptr @init_range, align 8
  %i.cc = load i64, ptr @update_range, align 8
  %i.cd = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 %i.cc) ; 11 uses
  %i.ce = tail call i64 @time(ptr noundef null) #15
  %i.cf = shl i64 %i.cd, 3
  %i.cg = tail call noalias ptr @g_malloc(i64 noundef %i.cf) #16 ; 4 uses
  store ptr %i.cg, ptr @keys, align 8
  %.not45.i = icmp eq i64 %i.cd, 0                ; 2 uses
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %parse_args.exit
  %i.ch = load i64, ptr @populate_offset, align 8 ; 3 uses
  %.b.i = load i1, ptr @precompute_hash, align 1
  br i1 %.b.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i1
  %min.iters.check = icmp ult i64 %i.cd, 4
  br i1 %min.iters.check, label %.lr.ph.split.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.preheader
  %n.vec = and i64 %i.cd, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ci = add <2 x i64> %vec.ind, %broadcast.splat
  %.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.cj = and <2 x i64> %i.ci, splat (i64 4294967295)
  %i.ck = and <2 x i64> %.reass, splat (i64 4294967295)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <2 x i64> %i.cj, ptr %i.cl, align 8
  store <2 x i64> %i.ck, ptr %i.cm, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.split.i.preheader105

.lr.ph.split.i.preheader105:                      ; preds = %.lr.ph.split.i.preheader, %middle.block
  %.02940.i.ph = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i1, %.lr.ph.split.us.i
  %.02940.us.i = phi i64 [ %i.dw, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i1 ] ; 3 uses
  %i.co = add i64 %.02940.us.i, %i.ch             ; 2 uses
  %i.cp = trunc i64 %i.co to i32
  %i.cq = lshr i64 %i.co, 32
  %i.cr = trunc nuw i64 %i.cq to i32
  %i.cs = mul i32 %i.cp, -2048144777
  %i.ct = add i32 %i.cs, 606290985                ; 2 uses
  %i.cu = tail call noundef i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 13)
  %i.cv = mul i32 %i.cu, -1640531535              ; 2 uses
  %i.cw = mul i32 %i.cr, -2048144777
  %i.cx = add i32 %i.cw, -2048144776              ; 2 uses
  %i.cy = tail call noundef i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 13)
  %i.cz = mul i32 %i.cy, -1640531535              ; 2 uses
  %i.da = tail call noundef i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 1)
  %i.db = tail call noundef i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 7)
  %i.dc = add i32 %i.da, -207112720
  %i.dd = add i32 %i.dc, %i.db                    ; 2 uses
  %i.de = tail call noundef i32 @llvm.fshl.i32(i32 %i.dd, i32 %i.dd, i32 17)
  %i.df = mul i32 %i.de, 668265263                ; 2 uses
  %i.dg = tail call noundef i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 17)
  %i.dh = mul i32 %i.dg, 668265263                ; 2 uses
  %i.di = tail call noundef i32 @llvm.fshl.i32(i32 %i.dh, i32 %i.dh, i32 17)
  %i.dj = mul i32 %i.di, 668265263                ; 2 uses
  %i.dk = tail call noundef i32 @llvm.fshl.i32(i32 %i.dj, i32 %i.dj, i32 17)
  %i.dl = mul i32 %i.dk, 668265263                ; 2 uses
  %i.dm = lshr i32 %i.dl, 15
  %i.dn = xor i32 %i.dm, %i.dl
  %i.do = mul i32 %i.dn, -2048144777              ; 2 uses
  %i.dp = lshr i32 %i.do, 13
  %i.dq = xor i32 %i.dp, %i.do
  %i.dr = mul i32 %i.dq, -1028477379              ; 2 uses
  %i.ds = lshr i32 %i.dr, 16
  %i.dt = xor i32 %i.ds, %i.dr
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.02940.us.i
  store i64 %i.du, ptr %i.dv, align 8
  %i.dw = add nuw i64 %.02940.us.i, 1             ; 2 uses
  %exitcond48.not.i = icmp eq i64 %i.dw, %i.cd
  br i1 %exitcond48.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !15

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader105, %.lr.ph.split.i
  %.02940.i = phi i64 [ %i.ea, %.lr.ph.split.i ], [ %.02940.i.ph, %.lr.ph.split.i.preheader105 ] ; 3 uses
  %i.dx = add i64 %.02940.i, %i.ch
  %i.dy = and i64 %i.dx, 4294967295
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.02940.i
  store i64 %i.dy, ptr %i.dz, align 8
  %i.ea = add nuw i64 %.02940.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ea, %i.cd
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i, %middle.block, %parse_args.exit
  %i.eb = load i64, ptr @lookup_range, align 8    ; 2 uses
  %.not.i = icmp ugt i64 %i.eb, %i.cd
  br i1 %.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i
  %i.ec = uitofp i64 %i.eb to x86_fp80
  %i.ed = uitofp nneg i64 %i.cd to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 331, ptr noundef nonnull @__func__.htable_init, ptr noundef nonnull @.str.4, x86_fp80 noundef %i.ec, ptr noundef nonnull @.str.5, x86_fp80 noundef %i.ed, i8 noundef signext 105) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i
  %i.ee = load double, ptr @update_rate, align 8  ; 2 uses
  %i.ef = fcmp oeq double %i.ee, 1.000000e+00
  %i.eg = fmul double %i.ee, f0x43F0000000000000
  %i.eh = fptoui double %i.eg to i64
  %storemerge.i.i = select i1 %i.ef, i64 -1, i64 %i.eh
  store i64 %storemerge.i.i, ptr @update_threshold, align 8
  %i.ei = load double, ptr @resize_rate, align 8  ; 3 uses
  %i.ej = fcmp oeq double %i.ei, 1.000000e+00
  %i.ek = fmul double %i.ei, f0x43F0000000000000
  %i.el = fptoui double %i.ek to i64
  %storemerge.i39.i = select i1 %i.ej, i64 -1, i64 %i.el
  store i64 %storemerge.i39.i, ptr @resize_threshold, align 8
  %i.em = fcmp une double %i.ei, 0.000000e+00
  br i1 %i.em, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.en = lshr i64 %i.cd, 1
  store i64 %i.en, ptr @resize_min, align 8
  store i64 %i.cd, ptr @resize_max, align 8
  br i1 %.not45.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__.htable_init) #17
  unreachable

bb.w:                                             ; preds = %bb.t
  store i32 0, ptr @n_rz_threads, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.eo = load i64, ptr @qht_n_elems, align 8
  %.b36.i = load i1, ptr @qht_mode, align 4
  %i.ep = zext i1 %.b36.i to i32
  tail call void @qht_init(ptr noundef nonnull @ht, ptr noundef nonnull @is_equal, i64 noundef %i.eo, i32 noundef %i.ep) #15
  %i.eq = load i64, ptr @init_size, align 8
  %i.er = load i64, ptr @init_range, align 8
  %.not38.i = icmp ugt i64 %i.eq, %i.er
  br i1 %.not38.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__.htable_init) #17
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.es = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.10) #15 ; 0 uses
  %i.et = load i32, ptr @duration, align 4
  %i.eu = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.et) #15 ; 0 uses
  %i.ev = load i32, ptr @n_rw_threads, align 4
  %i.ew = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %i.ev) #15 ; 0 uses
  %i.ex = load i64, ptr @init_size, align 8
  %i.ey = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.13, i64 noundef %i.ex) #15 ; 0 uses
  %i.ez = load i64, ptr @qht_n_elems, align 8
  %i.fa = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, i64 noundef %i.ez) #15 ; 0 uses
  %.b.i.i = load i1, ptr @qht_mode, align 4
  %i.fb = select i1 %.b.i.i, ptr @.str.16, ptr @.str.17
  %i.fc = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.fb) #15 ; 0 uses
  %i.fd = load double, ptr @resize_rate, align 8  ; 2 uses
  %i.fe = fcmp une double %i.fd, 0.000000e+00
  br i1 %i.fe, label %bb.aa, label %pr_params.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ff = fmul double %i.fd, 1.000000e+02
  %i.fg = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.18, double noundef %i.ff) #15 ; 0 uses
  %i.fh = load i64, ptr @resize_min, align 8
  %i.fi = load i64, ptr @resize_max, align 8
  %i.fj = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.19, i64 noundef %i.fh, i64 noundef %i.fi) #15 ; 0 uses
  %i.fk = load i32, ptr @n_rz_threads, align 4
  %i.fl = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef %i.fk) #15 ; 0 uses
  br label %pr_params.exit.i

pr_params.exit.i:                                 ; preds = %bb.aa, %bb.z
  %i.fm = load double, ptr @update_rate, align 8
  %i.fn = fmul double %i.fm, 1.000000e+02
  %i.fo = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.21, double noundef %i.fn) #15 ; 0 uses
  %i.fp = load i64, ptr @populate_offset, align 8
  %i.fq = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.22, i64 noundef %i.fp) #15 ; 0 uses
  %i.fr = load i64, ptr @init_range, align 8
  %i.fs = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.23, i64 noundef %i.fr) #15 ; 0 uses
  %i.ft = load i64, ptr @lookup_range, align 8
  %i.fu = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.24, i64 noundef %i.ft) #15 ; 0 uses
  %i.fv = load i64, ptr @update_range, align 8
  %i.fw = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.25, i64 noundef %i.fv) #15 ; 0 uses
end_hunk_0
