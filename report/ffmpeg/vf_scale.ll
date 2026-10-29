Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_scale?download=true
inline.NumInlined: 13
inline.NumDeleted: 5
begin_hunk_0_@scale_frame:bb.a
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.iq = phi ptr [ %.pre162, %bb.az ], [ %i.ik, %bb.ay ]
  store ptr %i.iq, ptr %2, align 8, !tbaa !72
  br label %bb.bc

bb.bb:                                            ; preds = %.thread157, %bb.s
  %.1 = phi i32 [ %.0112.ph, %.thread157 ], [ -12, %bb.s ]
  call void @av_frame_free(ptr noundef nonnull %i.b) #12
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.av
  %.0113 = phi i32 [ %.1, %bb.bb ], [ 0, %bb.av ], [ %i.ij, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0113
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q_rnd(i64 noundef, i64, i64, i32 noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @av_expr_count_vars(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare i32 @av_opt_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @scale_parse_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [41 x i32], align 16              ; 18 uses
  %i.b = alloca [41 x i32], align 16              ; 20 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !52
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @av_strdup(ptr noundef nonnull %1) #12 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !52
  %.not38 = icmp eq ptr %i.f, null
  br i1 %.not38, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @av_opt_set(ptr noundef %i.e, ptr noundef %3, ptr noundef %4, i32 noundef 0) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !135    ; 3 uses
  %.not39 = icmp eq ptr %i.h, null                ; 3 uses
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %2, align 8, !tbaa !135
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = tail call i32 @av_expr_parse(ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %0) #12 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.18, ptr noundef %3, ptr noundef %4) #12
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !19   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(164) %i.a, i8 0, i64 164, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(164) %i.b, i8 0, i64 164, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %.not197.i = icmp eq ptr %i.o, null
  br i1 %.not197.i, label %check_exprs.exit.thread, label %.thread.thread.i

.thread.i:                                        ; preds = %bb.h
  %i.p = call i32 @av_expr_count_vars(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, i32 noundef 41) #12, !inline_history !134 ; 0 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !50 ; 2 uses
  %.not199.i = icmp eq ptr %.pre.i, null
  br i1 %.not199.i, label %bb.j, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.i, %bb.i
  %i.q = phi ptr [ %.pre.i, %.thread.i ], [ %i.o, %bb.i ]
  %i.r = call i32 @av_expr_count_vars(ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, i32 noundef 41) #12, !inline_history !134 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.thread.thread.i, %.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load i32, ptr %i.s, align 16, !tbaa !44
  %i.u = icmp ne i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp ne i32 %i.w, 0
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.x
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.60, ptr noundef %i.z) #12, !inline_history !134
  br label %check_exprs.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !44
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp ne i32 %i.ae, 0
  %or.cond5.i = select i1 %i.ac, i1 true, i1 %i.af
  br i1 %or.cond5.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.61, ptr noundef %i.ah) #12, !inline_history !134
  br label %check_exprs.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !44
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp ne i32 %i.am, 0
  %or.cond8.i = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond8.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ap = load i32, ptr %i.ao, align 16, !tbaa !44
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp ne i32 %i.as, 0
  %or.cond11.i = select i1 %i.aq, i1 true, i1 %i.at
  br i1 %or.cond11.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.62, ptr noundef %i.av, ptr noundef %i.ax) #12, !inline_history !134
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.bb = load <4 x i32>, ptr %i.az, align 4
  %i.bc = load <8 x i32>, ptr %i.ay, align 4
  %i.bd = load <4 x i32>, ptr %i.ba, align 4
  %i.be = shufflevector <4 x i32> %i.bd, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bf = shufflevector <8 x i32> %i.be, <8 x i32> %i.bc, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.bg = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bh = shufflevector <16 x i32> %i.bf, <16 x i32> %i.bg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %.fr = freeze <16 x i32> %i.bh
  %i.bi = icmp ne <16 x i32> %.fr, zeroinitializer ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.bl = load <4 x i32>, ptr %i.bj, align 4
  %i.bm = load <4 x i32>, ptr %i.bk, align 4
  %i.bn = shufflevector <4 x i32> %i.bl, <4 x i32> %i.bm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.fr56 = freeze <8 x i32> %i.bn
  %i.bo = icmp ne <8 x i32> %.fr56, zeroinitializer
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = shufflevector <16 x i1> %i.bi, <16 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op53 = or <8 x i1> %i.bv, %i.bo
  %i.bw = shufflevector <8 x i1> %rdx.op53, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bx = shufflevector <16 x i1> %i.bw, <16 x i1> %i.bi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.by = bitcast <16 x i1> %i.bx to i16
  %i.bz = icmp ne i16 %i.by, 0
  %op.rdx54 = select i1 %i.bz, i1 true, i1 %i.br
  %5 = freeze i1 %op.rdx54
  %op.rdx55 = select i1 %5, i1 true, i1 %i.bu
  br i1 %op.rdx55, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store i32 1, ptr %i.ca, align 8, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !31
  %i.cd = icmp eq ptr %i.cc, @ff_vf_scale2ref
  br i1 %i.cd, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ch = load <4 x i32>, ptr %i.cf, align 8
  %i.ci = load <8 x i32>, ptr %i.ce, align 8
  %i.cj = load <4 x i32>, ptr %i.cg, align 8
  %i.ck = shufflevector <4 x i32> %i.cj, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cl = shufflevector <8 x i32> %i.ck, <8 x i32> %i.ci, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.cm = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <16 x i32> %i.cl, <16 x i32> %i.cm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %.fr57 = freeze <16 x i32> %i.cn
  %i.co = icmp ne <16 x i32> %.fr57, zeroinitializer ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.cr = load <2 x i32>, ptr %i.cp, align 8
  %i.cs = load <2 x i32>, ptr %i.cq, align 8
  %i.ct = shufflevector <2 x i32> %i.cr, <2 x i32> %i.cs, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %.fr58 = freeze <4 x i32> %i.ct
  %i.cu = icmp ne <4 x i32> %.fr58, zeroinitializer
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.cw = load i32, ptr %i.cv, align 16
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cz = load i32, ptr %i.cy, align 16
  %i.da = icmp ne i32 %i.cz, 0
  %i.db = shufflevector <16 x i1> %i.co, <16 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.db, %i.cu
  %i.dc = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dd = shufflevector <16 x i1> %i.dc, <16 x i1> %i.co, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.de = bitcast <16 x i1> %i.dd to i16
  %i.df = icmp ne i16 %i.de, 0
  %op.rdx51 = select i1 %i.df, i1 true, i1 %i.cx
  %6 = freeze i1 %op.rdx51
  %op.rdx52 = select i1 %6, i1 true, i1 %i.da
  br i1 %op.rdx52, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.63) #12, !inline_history !134
  br label %check_exprs.exit.thread

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 604
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !84
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.dn = load <2 x i32>, ptr %i.dj, align 4
  %i.do = load <2 x i32>, ptr %i.dk, align 4
  %i.dp = load <2 x i32>, ptr %i.dl, align 8
  %i.dq = load <2 x i32>, ptr %i.dm, align 8
  %i.dr = shufflevector <2 x i32> %i.dn, <2 x i32> %i.do, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <2 x i32> %i.dp, <2 x i32> %i.dq, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 2, i32 1, i32 3>
  %i.dt = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ds, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %.fr59 = freeze <8 x i32> %i.dt
  %i.du = icmp ne <8 x i32> %.fr59, zeroinitializer
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.dw = load i32, ptr %i.dv, align 16
  %.fr61 = freeze i32 %i.dw
  %i.dx = icmp ne i32 %.fr61, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.dz = load i32, ptr %i.dy, align 16
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = bitcast <8 x i1> %i.du to i8
  %i.ec = icmp ne i8 %i.eb, 0
  %op.rdx = or i1 %i.ec, %i.dx
  %op.rdx50 = select i1 %op.rdx, i1 true, i1 %i.ea
  br i1 %op.rdx50, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.64) #12, !inline_history !134
  br label %check_exprs.exit.thread

check_exprs.exit.thread:                          ; preds = %bb.k, %bb.m, %bb.x, %bb.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ab

bb.y:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not39, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !62
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !61
  %i.eg = call i32 @config_props(ptr noundef %i.ef) ; 2 uses
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @av_expr_free(ptr noundef %i.h) #12
  call void @av_freep(ptr noundef nonnull %i.c) #12
  br label %bb.af

bb.ab:                                            ; preds = %check_exprs.exit.thread, %bb.z, %bb.g
  %.030 = phi i32 [ %i.i, %bb.g ], [ -22, %check_exprs.exit.thread ], [ %i.eg, %bb.z ] ; 2 uses
  %i.ei = load ptr, ptr %2, align 8, !tbaa !135
  call void @av_expr_free(ptr noundef %i.ei) #12
  store ptr null, ptr %2, align 8, !tbaa !135
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !52  ; 3 uses
  %.not41 = icmp eq ptr %i.ej, null
  br i1 %.not41, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ek = call i32 @av_opt_set(ptr noundef %i.e, ptr noundef %3, ptr noundef nonnull %i.ej, i32 noundef 0) #12 ; 0 uses
  call void @av_free(ptr noundef nonnull %i.ej) #12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %.not39, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.h, ptr %2, align 8, !tbaa !135
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.b, %bb.aa
  %.031 = phi i32 [ -12, %bb.b ], [ 0, %bb.aa ], [ %.030, %bb.ae ], [ %.030, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret i32 %.031
}

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @sws_is_noop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @avpriv_set_systematic_pal2(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @sws_scale_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #3

declare i32 @av_expr_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @av_expr_free(ptr noundef) local_unnamed_addr #3

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal ptr @child_next(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1) #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = icmp eq ptr %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  %.0 = select i1 %.not, ptr %i.b, ptr %spec.select
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @child_class_iterate(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89
  %i.b = ptrtoint ptr %i.a to i64
  switch i64 %i.b, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !tbaa !89
  %i.c = tail call ptr @sws_get_class() #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr inttoptr (i64 2 to ptr), ptr %0, align 8, !tbaa !89
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ @ff_framesync_class, %bb.c ], [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @sws_get_class() local_unnamed_addr #3

declare ptr @sws_alloc_context() local_unnamed_addr #3

declare void @ff_framesync_preinit(ptr noundef) local_unnamed_addr #3

declare i32 @av_parse_video_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @sws_test_primaries(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_color_primaries_name(i32 noundef) local_unnamed_addr #3

declare i32 @sws_test_transfer(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_color_transfer_name(i32 noundef) local_unnamed_addr #3

declare i32 @sws_test_colorspace(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #9

declare i32 @ff_append_inpad(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sws_free_context(ptr noundef) local_unnamed_addr #3

declare ptr @av_pix_fmt_desc_next(ptr noundef) local_unnamed_addr #3

declare i32 @av_pix_fmt_desc_get_id(ptr noundef) local_unnamed_addr #3

declare i32 @sws_test_format(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_add_format(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_all_color_spaces() local_unnamed_addr #3

declare ptr @ff_all_color_ranges() local_unnamed_addr #3

declare ptr @ff_make_formats_list_singleton(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare i32 @ff_framesync_activate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.h = call fastcc i32 @scale_frame(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @ff_filter_frame(ptr noundef %i.g, ptr noundef nonnull %i.i) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.h, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame_ref(ptr nofree noundef captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 7 uses
end_hunk_0
