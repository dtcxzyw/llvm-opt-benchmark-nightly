Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffmpeg_mux_init?download=true
inline.NumInlined: 61
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@new_stream_video:bb.a
bb.bd:                                            ; preds = %bb.bd, %.lr.ph36.new
  %indvars.iv44 = phi i64 [ 0, %.lr.ph36.new ], [ %indvars.iv.next45.3, %bb.bd ] ; 5 uses
  %.018833 = phi i32 [ -1, %.lr.ph36.new ], [ %i.im, %bb.bd ]
  %niter = phi i64 [ 0, %.lr.ph36.new ], [ %niter.next.3, %bb.bd ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv44
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !459
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !144
  %i.hu = add nsw i32 %i.ht, %.018833
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv44
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !459
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !144
  %i.ia = add nsw i32 %i.hz, %i.hu
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv44
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !459
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !144
  %i.ig = add nsw i32 %i.if, %i.ia
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv44
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !459
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !144
  %i.im = add nsw i32 %i.il, %i.ig                ; 3 uses
  %indvars.iv.next45.3 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge37.loopexit.unr-lcssa, label %bb.bd, !llvm.loop !441

bb.be:                                            ; preds = %._crit_edge37
  %i.in = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ho, ptr noundef nonnull dereferenceable(9) @.str.105) #17
  %.not247 = icmp eq i32 %i.in, 0
  br i1 %.not247, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be, %._crit_edge37
  %i.io = call i32 @av_opt_is_set_to_default_by_name(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.106, i32 noundef 1) #16
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %bb.bg, label %.thread16

bb.bg:                                            ; preds = %bb.bf
  %i.iq = call i32 @av_opt_set(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.106, ptr noundef nonnull %i.r, i32 noundef 1) #16 ; 0 uses
  br label %.thread16

bb.bh:                                            ; preds = %bb.be
  %i.ir = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ho, ptr noundef nonnull dereferenceable(8) @.str.107) #17
  %.not248 = icmp eq i32 %i.ir, 0
  br i1 %.not248, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.is = call i32 @av_opt_is_set_to_default_by_name(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.108, i32 noundef 1) #16
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %bb.bj, label %.thread16

bb.bj:                                            ; preds = %bb.bi
  %i.iu = call i32 @av_opt_set(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.r, i32 noundef 1) #16 ; 0 uses
  br label %.thread16

bb.bk:                                            ; preds = %bb.bh
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !185 ; 2 uses
  %i.ix = and i32 %i.iw, 1024
  %.not249 = icmp eq i32 %i.ix, 0
  br i1 %.not249, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iy = call ptr @read_file_to_string(ptr noundef nonnull %i.r) #16 ; 2 uses
  %.not250.not = icmp eq ptr %i.iy, null
  br i1 %.not250.not, label %.thread13, label %bb.bm

.thread13:                                        ; preds = %bb.bl
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %1, i32 noundef 8, ptr noundef nonnull @.str.109, ptr noundef nonnull %i.r) #16
  br label %bb.br

bb.bm:                                            ; preds = %bb.bl
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ax, i64 504
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !460
  %.pre47 = load i32, ptr %i.iv, align 8, !tbaa !185
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %i.ja = phi i32 [ %.pre47, %bb.bm ], [ %i.iw, %bb.bk ]
  %i.jb = and i32 %i.ja, 512
  %.not251 = icmp eq i32 %i.jb, 0
  br i1 %.not251, label %.thread16, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jc = call noalias noundef ptr @fopen64(ptr noundef nonnull readonly %i.r, ptr noundef nonnull @.str.110) ; 2 uses
  %.not252 = icmp eq ptr %i.jc, null
  br i1 %.not252, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jd = tail call ptr @__errno_location() #19   ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !10
  %i.jf = call ptr @strerror(i32 noundef %i.je) #16
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %1, i32 noundef 8, ptr noundef nonnull @.str.111, ptr noundef nonnull %i.r, ptr noundef %i.jf) #16
  %i.jg = load i32, ptr %i.jd, align 4, !tbaa !10
  %i.jh = sub nsw i32 0, %i.jg
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.jc, ptr %i.ji, align 8, !tbaa !461
  br label %.thread16

.thread16:                                        ; preds = %bb.bj, %bb.bi, %bb.bq, %bb.bn, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  br label %bb.bs

bb.br:                                            ; preds = %.thread13, %bb.bp
  %.7 = phi i32 [ -5, %.thread13 ], [ %i.jh, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  br label %.thread22

bb.bs:                                            ; preds = %.thread16, %bb.ba
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 604
  call void @opt_match_per_stream_int(ptr noundef nonnull %1, ptr noundef nonnull %i.jj, ptr noundef %.96.val, ptr noundef %i.t, ptr noundef nonnull %i.jk) #16
  store i32 -1, ptr %3, align 4, !tbaa !10
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 896
  call void @opt_match_per_stream_str(ptr noundef nonnull %1, ptr noundef nonnull %i.jl, ptr noundef %.96.val, ptr noundef %i.t, ptr noundef nonnull %i.h) #16
  %i.jm = load ptr, ptr %i.h, align 8, !tbaa !101 ; 2 uses
  %.not253 = icmp eq ptr %i.jm, null
  br i1 %.not253, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !189
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !456
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !182
  %i.jt = call i32 @parse_and_set_vsync(ptr noundef nonnull %i.jm, ptr noundef nonnull %3, i32 noundef %i.jq, i32 noundef %i.js) #16 ; 2 uses
  %i.ju = icmp slt i32 %i.jt, 0
  br i1 %i.ju, label %.thread22, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 588
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !462
  %.not254 = icmp eq i32 %i.jw, 0                 ; 2 uses
  br i1 %.not254, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !463
  %.not255 = icmp eq i32 %i.jy, 0
  br i1 %.not255, label %.thread19, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.jz = load i32, ptr %3, align 4, !tbaa !10
  switch i32 %i.jz, label %bb.bx [
    i32 -1, label %bb.by
    i32 1, label %.thread90
    i32 3, label %.thread90
  ]

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %1, i32 noundef 8, ptr noundef nonnull @.str.112) #16
  br label %.thread22

.thread19:                                        ; preds = %bb.bv
  %.pr = load i32, ptr %3, align 4, !tbaa !10
  %i.ka = icmp eq i32 %.pr, -1
  br i1 %i.ka, label %.thread20.thread, label %.thread90

bb.by:                                            ; preds = %bb.bw
  br i1 %.not254, label %.thread20, label %bb.ca

.thread20:                                        ; preds = %bb.by
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 596
  %.pre48 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !463
  %i.kb = icmp eq i32 %.pre48, 0
  br i1 %i.kb, label %.thread20.thread, label %bb.ca

.thread20.thread:                                 ; preds = %.thread19, %.thread20
  %i.kc = getelementptr inbounds nuw i8, ptr %.96.val, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !53 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !56
  %i.kf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ke, ptr noundef nonnull dereferenceable(4) @.str.113) #17
  %.not258 = icmp eq i32 %i.kf, 0
  br i1 %.not258, label %.thread90.sink.split, label %bb.bz

bb.bz:                                            ; preds = %.thread20.thread
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 44
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !127 ; 2 uses
  %i.ki = and i32 %i.kh, 1024
  %.not259 = icmp eq i32 %i.ki, 0
  %i.kj = lshr i32 %i.kh, 6
  %i.kk = and i32 %i.kj, 2
  %i.kl = xor i32 %i.kk, 2
  %i.km = select i1 %.not259, i32 1, i32 %i.kl
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %.thread20, %bb.bz
  %.sink96 = phi i32 [ %i.km, %bb.bz ], [ 1, %.thread20 ], [ 1, %bb.by ] ; 3 uses
  store i32 %.sink96, ptr %3, align 4, !tbaa !10
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !146 ; 2 uses
  %.not261 = icmp ne ptr %i.ko, null
  %i.kp = icmp eq i32 %.sink96, 1
  %or.cond97 = select i1 %.not261, i1 %i.kp, i1 false
  br i1 %or.cond97, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !184 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 72
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !174
  %i.ku = icmp eq i32 %i.kt, 1
  br i1 %i.ku, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !464
  %i.kx = icmp eq i64 %i.kw, 0
  br i1 %i.kx, label %.thread90.sink.split, label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.ca
  %i.ky = phi i32 [ 1, %bb.cb ], [ 1, %bb.cc ], [ %.sink96, %bb.ca ]
  %i.kz = icmp eq i32 %i.ky, 1
  %i.la = load i32, ptr @copy_ts, align 4
  %i.lb = icmp ne i32 %i.la, 0
  %or.cond13 = select i1 %i.kz, i1 %i.lb, i1 false
  br i1 %or.cond13, label %.thread90.sink.split, label %.thread90

.thread22:                                        ; preds = %bb.n, %pix_fmt_parse.exit, %bb.ae, %bb.ai, %bb.al, %.thread10, %bb.az, %bb.bt, %bb.bx, %bb.br, %bb.am, %bb.aj, %parse_matrix_coeffs.exit.thread, %pix_fmt_parse.exit.thread
  %.9.ph = phi i32 [ -22, %pix_fmt_parse.exit.thread ], [ -22, %parse_matrix_coeffs.exit.thread ], [ %i.fc, %bb.aj ], [ %i.fj, %bb.am ], [ %.7, %bb.br ], [ -22, %bb.bx ], [ %i.jt, %bb.bt ], [ -12, %bb.az ], [ %.3194.ph, %.thread10 ], [ -12, %bb.al ], [ -12, %bb.ai ], [ -12, %bb.ae ], [ -22, %pix_fmt_parse.exit ], [ -22, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  br label %bb.ce

.thread90.sink.split:                             ; preds = %bb.cd, %bb.cc, %.thread20.thread
  %.sink98 = phi i32 [ 3, %bb.cc ], [ 2, %.thread20.thread ], [ 3, %bb.cd ]
  store i32 %.sink98, ptr %3, align 4, !tbaa !10
  br label %.thread90

.thread90:                                        ; preds = %.thread90.sink.split, %bb.bw, %bb.bw, %.thread19, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  br label %bb.ce

bb.ce:                                            ; preds = %bb.k, %.thread90, %.thread22, %bb.j, %bb.h, %bb.f, %bb.c
  %.10 = phi i32 [ -22, %bb.c ], [ -22, %bb.f ], [ -22, %bb.h ], [ -22, %bb.j ], [ %.9.ph, %.thread22 ], [ 0, %.thread90 ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  ret i32 %.10
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -22, 1) i32 @new_stream_audio(ptr %.96.val, ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @opt_match_per_stream_int(ptr noundef nonnull %1, ptr noundef nonnull %i.j, ptr noundef %.96.val, ptr noundef %i.e, ptr noundef nonnull %i.a) #16
  %i.k = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %.not38 = icmp eq i32 %i.k, 0
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  store i32 0, ptr %i.l, align 8, !tbaa !465
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 356
  store i32 %i.k, ptr %i.m, align 4, !tbaa !466
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @opt_match_per_stream_str(ptr noundef nonnull %1, ptr noundef nonnull %i.n, ptr noundef %.96.val, ptr noundef %i.e, ptr noundef nonnull %i.b) #16
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %.not39 = icmp eq ptr %i.o, null
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  %i.q = call i32 @av_channel_layout_from_string(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o) #16
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 800
  call void @opt_match_per_stream_str(ptr noundef nonnull %1, ptr noundef nonnull %i.s, ptr noundef %.96.val, ptr noundef %i.e, ptr noundef nonnull %i.c) #16
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %.not40 = icmp eq ptr %i.t, null
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 @av_get_sample_fmt(ptr noundef nonnull %i.t) #16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 348
  store i32 %i.u, ptr %i.v, align 4, !tbaa !467
  %i.w = icmp eq i32 %i.u, -1
  br i1 %i.w, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  call void @opt_match_per_stream_int(ptr noundef nonnull %1, ptr noundef nonnull %i.x, ptr noundef %.96.val, ptr noundef %i.e, ptr noundef nonnull %i.y) #16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 608
  call void @opt_match_per_stream_str(ptr noundef nonnull %1, ptr noundef nonnull %i.z, ptr noundef %.96.val, ptr noundef %i.e, ptr noundef nonnull %i.aa) #16
  br label %.sink.split

.critedge:                                        ; preds = %bb.g, %bb.e
  %.sink4 = phi ptr [ %i.b, %bb.e ], [ %i.c, %bb.g ]
  %.str.122.sink = phi ptr [ @.str.121, %bb.e ], [ @.str.122, %bb.g ]
  %i.ab = load ptr, ptr %.sink4, align 8, !tbaa !101
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %1, i32 noundef 8, ptr noundef nonnull %.str.122.sink, ptr noundef %i.ab) #16
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.h
  %.1.ph = phi i32 [ 0, %bb.h ], [ -22, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @new_stream_subtitle(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !192
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !176
  %i.n = tail call ptr @avcodec_descriptor_get(i32 noundef %i.m) #16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !193
  %i.q = tail call ptr @avcodec_descriptor_get(i32 noundef %i.p) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !101
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  call void @opt_match_per_stream_str(ptr noundef nonnull %2, ptr noundef nonnull %i.r, ptr noundef %i.t, ptr noundef %i.e, ptr noundef nonnull %i.a) #16
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %.not35 = icmp eq ptr %i.u, null
  br i1 %.not35, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %i.x = call i32 @av_parse_video_size(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.u) #16 ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !101
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %2, i32 noundef 8, ptr noundef nonnull @.str.98, ptr noundef %i.z) #16
  br label %.sink.split

.critedge:                                        ; preds = %bb.c, %bb.b
  %.not36 = icmp eq ptr %i.n, null
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !178
  %i.ac = and i32 %i.ab, 196608
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.028 = phi i32 [ %i.ac, %bb.e ], [ 0, %.critedge ] ; 2 uses
  %.not37 = icmp eq ptr %i.q, null
  br i1 %.not37, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !178
  %i.af = and i32 %i.ae, 196608                   ; 2 uses
  %i.ag = icmp eq i32 %.028, 0
  %i.ah = icmp eq i32 %i.af, 0
  %or.cond.not50 = select i1 %i.ag, i1 true, i1 %i.ah
  %.not38 = icmp eq i32 %.028, %i.af
  %or.cond39 = select i1 %or.cond.not50, i1 true, i1 %.not38
  br i1 %or.cond39, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.123) #16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.d, %bb.f, %bb.g
  %.3.ph = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ -22, %bb.h ], [ %i.x, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ %.3.ph, %.sink.split ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @ost_bind_filter(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef range(i32 0, 2) %8, ptr noundef %9, ptr nofree noundef nonnull writeonly captures(none) %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
end_hunk_0
