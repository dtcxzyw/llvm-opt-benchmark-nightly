Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hlsenc?download=true
inline.NumInlined: 50
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hls_write_trailer:bb.a
  %i.dm = call i32 @ff_rename(ptr noundef %i.dl, ptr noundef nonnull %i.di, ptr noundef %0) #15 ; 0 uses
  %i.dn = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dj
  store i8 0, ptr %i.do, align 1, !tbaa !56
  call void @av_freep(ptr noundef nonnull %i.a) #15
  br label %hls_rename_temp_file.exit

hls_rename_temp_file.exit:                        ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @av_freep(ptr noundef nonnull %i.b) #15
  %i.dp = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.dq = call noalias ptr @av_strdup(ptr noundef %i.dp) #15 ; 2 uses
  store ptr %i.dq, ptr %i.b, align 8, !tbaa !62
  %.not132 = icmp eq ptr %i.dq, null
  br i1 %.not132, label %.loopexit149, label %.critedge136

.critedge136:                                     ; preds = %flush_dynbuf.exit.thread, %bb.ad, %bb.ac, %hls_rename_temp_file.exit, %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !75
  %i.dt = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.du = load double, ptr %i.dt, align 8, !tbaa !76
  %i.dv = fadd nsz double %i.ds, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.r, i64 144 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !79
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 152 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !80
  %i.ea = call fastcc i32 @hls_append_segment(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.r, double noundef %i.dv, i64 noundef %i.dx, i64 noundef %i.dz) ; 0 uses
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.ec = load i32, ptr %i.n, align 8, !tbaa !71
  %i.ed = and i32 %i.ec, 1536
  %.not.i144 = icmp eq i32 %i.ed, 0
  br i1 %.not.i144, label %sls_flag_file_rename.exit, label %bb.ah

bb.ah:                                            ; preds = %.critedge136
  %i.ee = getelementptr inbounds nuw i8, ptr %i.r, i64 280
  %char0.i = load i8, ptr %i.ee, align 8
  %.not5.i = icmp eq i8 %char0.i, 0
  br i1 %.not5.i, label %sls_flag_file_rename.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ef = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !87
  %i.ei = call i32 @ff_rename(ptr noundef %i.eb, ptr noundef %i.eh, ptr noundef nonnull %i.g) #15 ; 0 uses
  br label %sls_flag_file_rename.exit

sls_flag_file_rename.exit:                        ; preds = %.critedge136, %bb.ah, %bb.ai
  %.not133 = icmp eq ptr %i.v, null
  br i1 %.not133, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %sls_flag_file_rename.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !78
  %.not134 = icmp eq ptr %i.ek, null
  br i1 %.not134, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.el = call i32 @av_write_trailer(ptr noundef nonnull %i.v) #15 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.em = load ptr, ptr %i.u, align 8, !tbaa !53
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !78
  %i.ep = call i64 @avio_seek(ptr noundef %i.eo, i64 noundef 0, i32 noundef 1) #15
  %i.eq = load i64, ptr %i.dw, align 8, !tbaa !79
  %i.er = sub nsw i64 %i.ep, %i.eq
  store i64 %i.er, ptr %i.dy, align 8, !tbaa !80
  %i.es = call i32 @ff_format_io_close(ptr noundef %0, ptr noundef nonnull %i.ej) #15 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %sls_flag_file_rename.exit
  %i.et = call fastcc i32 @hls_window(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.r)
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %bb.an, label %.critedge138

bb.an:                                            ; preds = %bb.am
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.143) #15
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ew = call i32 @ff_format_io_close(ptr noundef %0, ptr noundef nonnull %i.ev) #15 ; 0 uses
  %i.ex = call fastcc i32 @hls_window(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.r) ; 0 uses
  br label %.critedge138

.critedge138:                                     ; preds = %bb.an, %bb.am
  %i.ey = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.ey) #15
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !62
  call void @av_free(ptr noundef %i.ez) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fa = load i32, ptr %i.h, align 8, !tbaa !29
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ult i64 %indvars.iv.next, %i.fb
  br i1 %i.fc, label %bb.b, label %.loopexit, !llvm.loop !159

.loopexit149:                                     ; preds = %hls_rename_temp_file.exit, %bb.b, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge138, %bb.a, %.loopexit149
  %.2 = phi i32 [ -12, %.loopexit149 ], [ 0, %bb.a ], [ 0, %.critedge138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @hls_init(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [4096 x i8], align 16             ; 16 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  %1 = alloca %struct.tm, align 8                 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 15 uses
  %i.f = alloca [21 x i8], align 16               ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.tm, align 8                 ; 4 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 8 uses
  %i.k = alloca ptr, align 8                      ; 7 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 23 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 8 uses
  %i.p = alloca ptr, align 8                      ; 8 uses
  %i.q = alloca ptr, align 8                      ; 6 uses
  %i.r = alloca ptr, align 8                      ; 15 uses
  %i.s = alloca [21 x i8], align 16               ; 5 uses
  %i.t = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.tm, align 8                 ; 3 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca [15 x i8], align 1                ; 5 uses
  %4 = alloca %struct.tm, align 8                 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25   ; 31 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 11 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !71
  %i.aa = and i32 %i.z, 1
  %.not = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not, ptr @.str.205, ptr @.str.204
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.ae = tail call i32 @ff_is_http_proto(ptr noundef %i.ad) #15
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #16
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = add i32 %i.ai, 1
  %i.ak = tail call i64 @av_gettime() #15
  %i.al = sitofp nsz i64 %i.ak to double
  %i.am = fdiv nsz double %i.al, 1.000000e+06
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !100
  %.not271 = icmp eq i32 %i.ao, 0
  br i1 %.not271, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.w, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #15
  %i.ap = tail call i64 @time(ptr noundef null) #15
  store i64 %i.ap, ptr %i.t, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.aq = call ptr @localtime_r(ptr noundef nonnull %i.t, ptr noundef nonnull %3) #15
  %i.ar = call i64 @strftime(ptr noundef nonnull %i.s, i64 noundef 21, ptr noundef nonnull @.str.138, ptr noundef %i.aq) #15
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %get_default_pattern_localtime_fmt.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = load i16, ptr %i.s, align 16
  %i.at = xor i16 %i.as, 29477
  %i.au = getelementptr i8, ptr %i.s, i64 2
  %i.av = load i8, ptr %i.au, align 2
  %i.aw = zext i8 %i.av to i16
  %i.ax = or i16 %i.at, %i.aw
  %i.ay = icmp ne i16 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %bcmp.fr.i = freeze i32 %i.az
  %.not8.i = icmp eq i32 %bcmp.fr.i, 0            ; 2 uses
  %spec.select.i = select i1 %.not8.i, ptr @.str.218, ptr @.str.217
  %spec.select9.i = select i1 %.not8.i, ptr @.str.220, ptr @.str.219
  br label %get_default_pattern_localtime_fmt.exit

get_default_pattern_localtime_fmt.exit:           ; preds = %bb.b, %bb.c
  %i.ba = phi ptr [ %spec.select.i, %bb.c ], [ @.str.218, %bb.b ]
  %i.bb = phi ptr [ %spec.select9.i, %bb.c ], [ @.str.220, %bb.b ]
  %.in.in.i = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %.in.i = load i32, ptr %.in.in.i, align 8, !tbaa !81
  %i.bc = icmp eq i32 %.in.i, 1
  %.0.i = select i1 %i.bc, ptr %i.ba, ptr %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !81
  %i.bf = icmp eq i32 %i.be, 1
  %i.bg = select i1 %i.bf, ptr @.str.206, ptr @.str.207
  %i.bh = load i32, ptr %i.y, align 8, !tbaa !71
  %5 = shl i32 %i.bh, 1
  %6 = and i32 %5, 2
  %spec.select.idx = zext nneg i32 %6 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.bg, i64 %spec.select.idx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %get_default_pattern_localtime_fmt.exit
  %.0229 = phi ptr [ %.0.i, %get_default_pattern_localtime_fmt.exit ], [ %spec.select, %bb.d ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 8616
  store i32 0, ptr %i.bi, align 8, !tbaa !102
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 8620
  store i32 0, ptr %i.bj, align 4, !tbaa !103
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !25  ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8544 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !180 ; 2 uses
  %.not.i310 = icmp eq ptr %i.bm, null
  br i1 %.not.i310, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #15
  store ptr null, ptr %i.p, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #15
  store ptr null, ptr %i.q, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #15
  %i.bn = call noalias ptr @av_strdup(ptr noundef nonnull %i.bm) #15 ; 3 uses
  store ptr %i.bn, ptr %i.o, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %parse_cc_stream_mapstring.exit.thread.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.f
  %i.bo = call ptr @av_strtok(ptr noundef nonnull %i.bn, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.p) #15
  %.not43.peel.i.i = icmp eq ptr %i.bo, null
  br i1 %.not43.peel.i.i, label %.loopexit70.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.preheader.i.i, %.preheader.i.i
  %.035.i.i = phi i32 [ %i.bq, %.preheader.i.i ], [ 1, %.preheader.preheader.i.i ] ; 2 uses
  %i.bp = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.p) #15
  %.not43.i.i = icmp eq ptr %i.bp, null
  %i.bq = add nuw nsw i32 %.035.i.i, 1
  br i1 %.not43.i.i, label %.loopexit70.i.i, label %.preheader.i.i, !llvm.loop !160

.loopexit70.i.i:                                  ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %.035.lcssa.i.i = phi i32 [ 0, %.preheader.preheader.i.i ], [ %.035.i.i, %.preheader.i.i ] ; 2 uses
  call void @av_freep(ptr noundef nonnull %i.o) #15
  %i.br = zext nneg i32 %.035.lcssa.i.i to i64
  %i.bs = mul nuw nsw i64 %i.br, 24
  %i.bt = call noalias ptr @av_mallocz(i64 noundef %i.bs) #15 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8504 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !104
  %.not44.i.i = icmp eq ptr %i.bt, null
  br i1 %.not44.i.i, label %parse_cc_stream_mapstring.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %.loopexit70.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 8512 ; 2 uses
  store i32 %.035.lcssa.i.i, ptr %i.bv, align 8, !tbaa !105
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !180 ; 2 uses
  store ptr %i.bw, ptr %i.o, align 8, !tbaa !62
  %i.bx = call ptr @av_strtok(ptr noundef %i.bw, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.p) #15 ; 2 uses
  %.not4559.i.i = icmp eq ptr %i.bx, null
  br i1 %.not4559.i.i, label %parse_cc_stream_mapstring.exit.i, label %.lr.ph62.i.i

.lr.ph62.i.i:                                     ; preds = %bb.g, %bb.z
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.z ], [ 0, %bb.g ] ; 3 uses
  %i.by = phi ptr [ %i.dn, %bb.z ], [ %i.bx, %bb.g ]
  store ptr null, ptr %i.o, align 8, !tbaa !62
  %i.bz = load i32, ptr %i.bv, align 8, !tbaa !105
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp samesign ult i64 %indvars.iv.i.i, %i.ca
  br i1 %i.cb, label %bb.h, label %parse_cc_stream_mapstring.exit.thread.i

bb.h:                                             ; preds = %.lr.ph62.i.i
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !104
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %indvars.iv.i.i ; 5 uses
  %i.ce = call ptr @av_strtok(ptr noundef nonnull %i.by, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.q) #15 ; 2 uses
  %.not4658.i.i = icmp eq ptr %i.ce, null
  br i1 %.not4658.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.p, %.lr.ph.i.i
  %i.ch = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %i.co, %bb.p ] ; 4 uses
  %i.ci = call i32 @av_strstart(ptr noundef nonnull %i.ch, ptr noundef nonnull @.str.222, ptr noundef nonnull %i.r) #15
  %.not51.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not51.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr %i.r, align 8, !tbaa !62
  store ptr %i.cj, ptr %i.cd, align 8, !tbaa !107
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.ck = call i32 @av_strstart(ptr noundef nonnull %i.ch, ptr noundef nonnull @.str.223, ptr noundef nonnull %i.r) #15
  %.not52.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not52.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %i.r, align 8, !tbaa !62
  store ptr %i.cl, ptr %i.cf, align 8, !tbaa !108
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.cm = call i32 @av_strstart(ptr noundef nonnull %i.ch, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.r) #15
  %.not53.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not53.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = load ptr, ptr %i.r, align 8, !tbaa !62
  store ptr %i.cn, ptr %i.cg, align 8, !tbaa !109
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.225, ptr noundef nonnull %i.ch) #15
  br label %parse_cc_stream_mapstring.exit.thread.i

bb.p:                                             ; preds = %bb.n, %bb.l, %bb.j
  %i.co = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.q) #15 ; 2 uses
  %.not46.i.i = icmp eq ptr %i.co, null
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %bb.i, !llvm.loop !161

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.h
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !107
  %.not47.i.i = icmp eq ptr %i.cp, null
  br i1 %.not47.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 5 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !108 ; 2 uses
  %.not48.i.i = icmp eq ptr %i.cr, null
  br i1 %.not48.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.226) #15
  br label %parse_cc_stream_mapstring.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.cs = call i32 @av_strstart(ptr noundef nonnull %i.cr, ptr noundef nonnull @.str.227, ptr noundef nonnull %i.r) #15
  %.not49.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not49.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.cu = call i64 @strtol(ptr noundef nonnull captures(none) %i.ct, ptr noundef null, i32 noundef 10) #15, !inline_history !162
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = add i32 %i.cv, -5
  %or.cond.i.i = icmp ult i32 %i.cw, -4
  br i1 %or.cond.i.i, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cx = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.cy = call i64 @strtol(ptr noundef nonnull captures(none) %i.cx, ptr noundef null, i32 noundef 10) #15, !inline_history !162
  %i.cz = trunc i64 %i.cy to i32
  %i.da = load ptr, ptr %i.cq, align 8, !tbaa !108
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.228, i32 noundef %i.cz, ptr noundef %i.da) #15
  br label %parse_cc_stream_mapstring.exit.thread.i

bb.v:                                             ; preds = %bb.s
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !108
  %i.dc = call i32 @av_strstart(ptr noundef %i.db, ptr noundef nonnull @.str.229, ptr noundef nonnull %i.r) #15
  %.not50.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not50.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.de = call i64 @strtol(ptr noundef nonnull captures(none) %i.dd, ptr noundef null, i32 noundef 10) #15, !inline_history !162
  %i.df = trunc i64 %i.de to i32
  %i.dg = add i32 %i.df, -64
  %or.cond54.i.i = icmp ult i32 %i.dg, -63
  br i1 %or.cond54.i.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.di = call i64 @strtol(ptr noundef nonnull captures(none) %i.dh, ptr noundef null, i32 noundef 10) #15, !inline_history !162
  %i.dj = trunc i64 %i.di to i32
  %i.dk = load ptr, ptr %i.cq, align 8, !tbaa !108
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.230, i32 noundef %i.dj, ptr noundef %i.dk) #15
  br label %parse_cc_stream_mapstring.exit.thread.i

bb.y:                                             ; preds = %bb.v
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !108
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.231, ptr noundef %i.dl) #15
  br label %parse_cc_stream_mapstring.exit.thread.i

bb.z:                                             ; preds = %bb.w, %bb.t
  %i.dm = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.dn = call ptr @av_strtok(ptr noundef %i.dm, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.p) #15 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.dn, null
  br i1 %.not45.i.i, label %parse_cc_stream_mapstring.exit.i, label %.lr.ph62.i.i, !llvm.loop !163

parse_cc_stream_mapstring.exit.thread.i:          ; preds = %.lr.ph62.i.i, %bb.y, %bb.x, %bb.u, %bb.r, %bb.o, %.loopexit70.i.i, %bb.f
  %.036.i.ph.i = phi i32 [ -22, %bb.o ], [ -12, %bb.f ], [ -12, %.loopexit70.i.i ], [ -22, %bb.r ], [ -22, %bb.y ], [ -22, %bb.x ], [ -22, %bb.u ], [ -22, %.lr.ph62.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  br label %update_variant_stream_info.exit.thread

parse_cc_stream_mapstring.exit.i:                 ; preds = %bb.z, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
end_hunk_0
