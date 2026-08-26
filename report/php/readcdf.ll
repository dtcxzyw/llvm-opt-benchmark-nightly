Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/readcdf?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@file_trycdf:bb.a
bb.aa:                                            ; preds = %.thread49, %.thread46, %bb.z
  %i.bu = load i32, ptr %i.j, align 4, !tbaa !28  ; 2 uses
  %i.bv = and i32 %i.bu, 1040
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bx = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #6
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !44
  %.not39 = icmp eq i8 %i.ca, 0
  br i1 %.not39, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.bz) #6
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %bb.ah, label %bb.ag

bb.ae:                                            ; preds = %bb.aa
  %i.cd = and i32 %i.bu, 16
  %.not38 = icmp eq i32 %i.cd, 0
  br i1 %.not38, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #6
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ac, %bb.ad
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.o, %bb.m, %bb.b, %bb.a, %bb.ag
  %.024 = phi i32 [ -1, %bb.m ], [ 0, %bb.a ], [ -1, %bb.o ], [ %.4, %bb.z ], [ -1, %bb.ab ], [ 1, %bb.ag ], [ -1, %bb.ad ], [ 0, %bb.b ], [ -1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.024
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @cdf_read_header(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_sat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_ssat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_dir(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_short_stream(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_user_stream(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @file_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @cdf_zero_stream(ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_summary_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 2) i32 @cdf_check_summary_info(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr nofree noundef readonly captures(address_is_null) %8, ptr nofree noundef nonnull writeonly captures(none) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [256 x i8], align 16              ; 3 uses
  %10 = alloca %struct.timespec, align 8          ; 7 uses
  %i.c = alloca [64 x i8], align 16               ; 13 uses
  %i.d = alloca [1024 x i8], align 16             ; 8 uses
  %i.e = alloca [64 x i8], align 16               ; 6 uses
  %11 = alloca %struct.cdf_summary_info_header_t, align 4 ; 10 uses
  %i.f = alloca ptr, align 8                      ; 9 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca [32 x i8], align 16               ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.i = call i32 @cdf_unpack_summary_info(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %11, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #6
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %cdf_file_summary_info.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 15 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %i.m = and i32 %i.l, 1040
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %cdf_clsid_to_mime.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #6
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %cdf_file_summary_info.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i16, ptr %11, align 4, !tbaa !45
  %i.r = icmp eq i16 %i.q, -2
  %i.s = select i1 %i.r, ptr @.str.19, ptr @.str.20
  %i.t = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.s) #6
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %cdf_file_summary_info.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 6
  %i.w = load i16, ptr %i.v, align 2, !tbaa !48   ; 2 uses
  switch i16 %i.w, label %bb.h [
    i16 2, label %bb.f
    i16 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.y = load i16, ptr %i.x, align 4, !tbaa !49
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = and i32 %i.z, 255
  %i.ab = lshr i32 %i.z, 8
  %i.ac = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, i32 noundef %i.aa, i32 noundef %i.ab) #6
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %cdf_file_summary_info.exit.thread, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !49
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = and i32 %i.ag, 255
  %i.aj = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, i32 noundef %i.ah, i32 noundef %i.ai) #6
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %cdf_file_summary_info.exit.thread, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.al = zext i16 %i.w to i32
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.an = load i16, ptr %i.am, align 4, !tbaa !49
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = and i32 %i.ao, 255
  %i.aq = lshr i32 %i.ao, 8
  %i.ar = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, i32 noundef %i.al, i32 noundef %i.ap, i32 noundef %i.aq) #6
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %cdf_file_summary_info.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.not.i = icmp eq ptr %8, null
  br i1 %.not.i, label %cdf_clsid_to_mime.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.au = load i64, ptr %i.at, align 8, !tbaa !50
  %i.av = icmp eq i64 %i.au, 790660
  br i1 %i.av, label %bb.k, label %cdf_clsid_to_mime.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !50
  %i.ay = icmp eq i64 %i.ax, 5044031582654955712
  br i1 %i.ay, label %cdf_clsid_to_mime.exit.i, label %cdf_clsid_to_mime.exit.thread.i

cdf_clsid_to_mime.exit.i:                         ; preds = %bb.k
  %i.az = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.24) #6
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %cdf_file_summary_info.exit.thread, label %cdf_clsid_to_mime.exit.thread.i

cdf_clsid_to_mime.exit.thread.i:                  ; preds = %cdf_clsid_to_mime.exit.i, %bb.k, %bb.j, %bb.i, %bb.b
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !50  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.bd = load i32, ptr %i.k, align 4, !tbaa !28  ; 2 uses
  %i.be = and i32 %i.bd, 1040
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = icmp ne ptr %8, null
  %or.cond.i.i = and i1 %i.bg, %i.bf
  br i1 %or.cond.i.i, label %bb.l, label %cdf_clsid_to_mime.exit.i.i

bb.l:                                             ; preds = %cdf_clsid_to_mime.exit.thread.i
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !50
  %i.bj = icmp eq i64 %i.bi, 790660
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !50
  %i.bm = icmp eq i64 %i.bl, 5044031582654955712
  br i1 %i.bm, label %cdf_clsid_to_mime.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %cdf_clsid_to_mime.exit.i.i, !llvm.loop !51

cdf_clsid_to_mime.exit.i.i:                       ; preds = %bb.n, %bb.m, %cdf_clsid_to_mime.exit.thread.i
  %.091.i.i = phi ptr [ null, %cdf_clsid_to_mime.exit.thread.i ], [ null, %bb.n ], [ @.str.30, %bb.m ] ; 2 uses
  %.not133.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not133.i.i, label %._crit_edge.i.i, label %.lr.ph131.i.i

.lr.ph131.i.i:                                    ; preds = %cdf_clsid_to_mime.exit.i.i, %bb.ar
  %.192130.i.i = phi ptr [ %.4.i.i, %bb.ar ], [ %.091.i.i, %cdf_clsid_to_mime.exit.i.i ] ; 19 uses
  %.094129.i.i = phi i64 [ %i.fb, %bb.ar ], [ 0, %cdf_clsid_to_mime.exit.i.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.094129.i.i ; 11 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !53
  %i.bp = call i32 @cdf_print_property_name(ptr noundef nonnull %i.c, i64 noundef 64, i32 noundef %i.bo) #6 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !55 ; 2 uses
  switch i32 %i.br, label %cdf_file_summary_info.exit.thread50 [
    i32 1, label %bb.ar
    i32 2, label %bb.o
    i32 3, label %bb.q
    i32 19, label %bb.s
    i32 4, label %bb.u
    i32 5, label %bb.w
    i32 30, label %bb.y
    i32 31, label %bb.y
    i32 64, label %bb.ai
    i32 71, label %bb.ar
  ]

bb.o:                                             ; preds = %.lr.ph131.i.i
  %i.bs = load i32, ptr %i.k, align 4, !tbaa !28
  %i.bt = and i32 %i.bs, 1040
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.p, label %bb.ar

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bw = load i16, ptr %i.bv, align 8, !tbaa !44
  %i.bx = sext i16 %i.bw to i32
  %i.by = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.c, i32 noundef %i.bx) #6
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %cdf_file_summary_info.exit.thread50, label %bb.ar

bb.q:                                             ; preds = %.lr.ph131.i.i
  %i.ca = load i32, ptr %i.k, align 4, !tbaa !28
  %i.cb = and i32 %i.ca, 1040
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.r, label %bb.ar

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !44
  %i.cf = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.c, i32 noundef %i.ce) #6
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %cdf_file_summary_info.exit.thread50, label %bb.ar

bb.s:                                             ; preds = %.lr.ph131.i.i
  %i.ch = load i32, ptr %i.k, align 4, !tbaa !28
  %i.ci = and i32 %i.ch, 1040
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.t, label %bb.ar

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !44
  %i.cm = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.c, i32 noundef %i.cl) #6
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %cdf_file_summary_info.exit.thread50, label %bb.ar

bb.u:                                             ; preds = %.lr.ph131.i.i
  %i.co = load i32, ptr %i.k, align 4, !tbaa !28
  %i.cp = and i32 %i.co, 1040
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.v, label %bb.ar

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !44
  %i.ct = fpext float %i.cs to double
  %i.cu = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.c, double noundef %i.ct) #6
  %i.cv = icmp eq i32 %i.cu, -1
  br i1 %i.cv, label %cdf_file_summary_info.exit.thread50, label %bb.ar

bb.w:                                             ; preds = %.lr.ph131.i.i
  %i.cw = load i32, ptr %i.k, align 4, !tbaa !28
  %i.cx = and i32 %i.cw, 1040
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.da = load double, ptr %i.cz, align 8, !tbaa !44
  %i.db = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.c, double noundef %i.da) #6
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %cdf_file_summary_info.exit.thread50, label %bb.ar

bb.y:                                             ; preds = %.lr.ph131.i.i, %.lr.ph131.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !44 ; 3 uses
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %.lr.ph.preheader.i.i, label %bb.ar

.lr.ph.preheader.i.i:                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.dg = icmp eq i32 %i.br, 31
  %spec.select.i.i = select i1 %i.dg, i64 2, i64 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !44 ; 2 uses
  %i.dj = zext nneg i32 %i.de to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.lr.ph.preheader.i.i
  %.in = phi i32 [ %i.de, %.lr.ph.preheader.i.i ], [ %i.dl, %bb.ac ]
  %.090122.i.i78 = phi ptr [ %i.di, %.lr.ph.preheader.i.i ], [ %i.dw, %bb.ac ] ; 2 uses
  %.085124.i.i77 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.ac ] ; 4 uses
  %i.dl = add nsw i32 %.in, -1                    ; 2 uses
  %i.dm = load i8, ptr %.090122.i.i78, align 1, !tbaa !44 ; 3 uses
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %.critedge.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = tail call ptr @__ctype_b_loc() #7
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !56
  %i.dq = zext i8 %i.dm to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !58
  %i.dt = and i16 %i.ds, 16384
  %.not109.i.i = icmp eq i16 %i.dt, 0
  br i1 %.not109.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = add nuw nsw i64 %.085124.i.i77, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 %.085124.i.i77
  store i8 %i.dm, ptr %i.dv, align 1, !tbaa !44
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.i.i = phi i64 [ %i.du, %bb.ab ], [ %.085124.i.i77, %bb.aa ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.090122.i.i78, i64 %spec.select.i.i ; 2 uses
  %i.dx = icmp uge ptr %i.dw, %i.dk
  %i.dy = icmp ugt i64 %.1.i.i, 1023
  %or.cond5.i.i.not81 = select i1 %i.dx, i1 true, i1 %i.dy
  %.not108.i.i = icmp eq i32 %i.dl, 0
  %or.cond = select i1 %or.cond5.i.i.not81, i1 true, i1 %.not108.i.i
  br i1 %or.cond, label %.critedge.i.i, label %bb.z, !llvm.loop !59

.critedge.i.i:                                    ; preds = %bb.ac, %bb.z
  %.085.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.ac ], [ %.085124.i.i77, %bb.z ] ; 2 uses
  %i.dz = icmp eq i64 %.085.lcssa.ph.i.i, 1024
  %spec.select111.i.i = select i1 %i.dz, i64 1023, i64 %.085.lcssa.ph.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 %spec.select111.i.i
  store i8 0, ptr %i.ea, align 1, !tbaa !44
  %i.eb = load i32, ptr %i.k, align 4, !tbaa !28
  %i.ec = and i32 %i.eb, 1040
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.critedge.i.i
  %i.ee = load i8, ptr %i.d, align 16, !tbaa !44
  %.not110.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not110.i.i, label %.thread.i.i, label %bb.ah

bb.ae:                                            ; preds = %.critedge.i.i
  %i.ef = icmp eq ptr %.192130.i.i, null
  br i1 %i.ef, label %bb.af, label %.thread.i.i

bb.af:                                            ; preds = %bb.ae
  %i.eg = load i32, ptr %i.bn, align 8, !tbaa !53
  %i.eh = icmp eq i32 %i.eg, 18
  br i1 %i.eh, label %bb.ag, label %.thread.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ei = call fastcc ptr @cdf_app_to_mime(ptr noundef %i.d, ptr noundef nonnull @app2mime)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.3.ph.i.i = phi ptr [ %.192130.i.i, %bb.ae ], [ null, %bb.af ], [ %i.ei, %bb.ag ], [ %.192130.i.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.ar

bb.ah:                                            ; preds = %bb.ad
  %i.ej = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %.not119.i.i = icmp eq i32 %i.ej, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br i1 %.not119.i.i, label %cdf_file_summary_info.exit.thread50, label %bb.ar

bb.ai:                                            ; preds = %.lr.ph131.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !44 ; 4 uses
  %.not105.i.i = icmp eq i64 %i.el, 0
  br i1 %.not105.i.i, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.em = icmp slt i64 %i.el, 1000000000000000
  br i1 %i.em, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.en = call i32 @cdf_print_elapsed_time(ptr noundef nonnull %i.e, i64 noundef 64, i64 noundef %i.el) #6 ; 0 uses
  %i.eo = load i32, ptr %i.k, align 4, !tbaa !28
  %i.ep = and i32 %i.eo, 1040
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.al, label %.critedge113.i.i

bb.al:                                            ; preds = %bb.ak
  %i.er = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #6
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %.critedge115.i.i, label %.critedge113.i.i

bb.am:                                            ; preds = %bb.aj
  %i.et = call i32 @cdf_timestamp_to_timespec(ptr noundef nonnull %10, i64 noundef %i.el) #6 ; 0 uses
  %i.eu = call ptr @cdf_ctime(ptr noundef nonnull %10, ptr noundef nonnull %i.e) #6 ; 3 uses
  %.not106.i.i = icmp eq ptr %i.eu, null
  br i1 %.not106.i.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ev = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.eu, i32 noundef 10) #8 ; 2 uses
  %.not107.i.i = icmp eq ptr %i.ev, null
  br i1 %.not107.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 0, ptr %i.ev, align 1, !tbaa !44
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.ew = load i32, ptr %i.k, align 4, !tbaa !28
  %i.ex = and i32 %i.ew, 1040
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.aq, label %.critedge113.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ez = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.c, ptr noundef %i.eu) #6
  %i.fa = icmp eq i32 %i.ez, -1
  br i1 %i.fa, label %.critedge115.i.i, label %.critedge113.i.i

.critedge113.i.i:                                 ; preds = %bb.aq, %bb.ap, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge113.i.i, %bb.ai, %bb.ah, %.thread.i.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %.lr.ph131.i.i, %.lr.ph131.i.i
  %.4.i.i = phi ptr [ %.192130.i.i, %bb.p ], [ %.192130.i.i, %bb.o ], [ %.192130.i.i, %bb.r ], [ %.192130.i.i, %bb.q ], [ %.192130.i.i, %bb.t ], [ %.192130.i.i, %bb.s ], [ %.192130.i.i, %bb.v ], [ %.192130.i.i, %bb.u ], [ %.192130.i.i, %bb.x ], [ %.192130.i.i, %bb.w ], [ %.192130.i.i, %bb.ah ], [ %.192130.i.i, %bb.y ], [ %.192130.i.i, %.critedge113.i.i ], [ %.192130.i.i, %bb.ai ], [ %.192130.i.i, %.lr.ph131.i.i ], [ %.192130.i.i, %.lr.ph131.i.i ], [ %.3.ph.i.i, %.thread.i.i ] ; 2 uses
  %i.fb = add nuw i64 %.094129.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fb, %i.bc
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph131.i.i, !llvm.loop !60

._crit_edge.loopexit.i.i:                         ; preds = %bb.ar
  %.pre.i.i = load i32, ptr %i.k, align 4, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %cdf_clsid_to_mime.exit.i.i
  %i.fc = phi i32 [ %i.bd, %cdf_clsid_to_mime.exit.i.i ], [ %.pre.i.i, %._crit_edge.loopexit.i.i ]
  %.192.lcssa.i.i = phi ptr [ %.091.i.i, %cdf_clsid_to_mime.exit.i.i ], [ %.4.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.fd = and i32 %i.fc, 16
  %.not.i22.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i22.i, label %.thread, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i.i
  %i.fe = icmp eq ptr %.192.lcssa.i.i, null
  br i1 %i.fe, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ff = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %.192.lcssa.i.i) #6
  %i.fg = icmp eq i32 %i.ff, -1
  br i1 %i.fg, label %cdf_file_summary_info.exit.thread50, label %.thread

.thread:                                          ; preds = %._crit_edge.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %i.fh = load ptr, ptr %i.f, align 8, !tbaa !41
  call void @_efree(ptr noundef %i.fh) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  br label %cdf_file_catalog_info.exit

.critedge115.i.i:                                 ; preds = %bb.aq, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %cdf_file_summary_info.exit.thread50

cdf_file_summary_info.exit.thread50:              ; preds = %bb.ah, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %.lr.ph131.i.i, %.critedge115.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %i.fi = load ptr, ptr %i.f, align 8, !tbaa !41
  call void @_efree(ptr noundef %i.fi) #6
  br label %cdf_file_summary_info.exit.thread

cdf_file_summary_info.exit.thread:                ; preds = %bb.f, %bb.c, %bb.g, %bb.h, %bb.d, %cdf_clsid_to_mime.exit.i, %bb.a, %cdf_file_summary_info.exit.thread50
  %.1.i48 = phi i32 [ -2, %cdf_file_summary_info.exit.thread50 ], [ -2, %bb.f ], [ -1, %bb.c ], [ -2, %bb.g ], [ -2, %bb.h ], [ -2, %bb.d ], [ -2, %cdf_clsid_to_mime.exit.i ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  store ptr @.str.14, ptr %9, align 8, !tbaa !20
  br label %cdf_file_catalog_info.exit

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %i.fj = load ptr, ptr %i.f, align 8, !tbaa !41
  call void @_efree(ptr noundef %i.fj) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.fn = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.fq = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.fr = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.fs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  %i.fw = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.h, i64 13
  %i.fy = getelementptr inbounds nuw i8, ptr %i.h, i64 14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.ga = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 19
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.gf = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 23
  %i.gi = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.h, i64 25
  %i.gk = getelementptr inbounds nuw i8, ptr %i.h, i64 26
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 27
  %i.gm = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.gn = getelementptr inbounds nuw i8, ptr %i.h, i64 29
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 30
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 31
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.aw
  %.03862 = phi i64 [ 0, %bb.au ], [ %i.lv, %bb.aw ] ; 3 uses
  %i.gq = load i64, ptr %i.fk, align 8, !tbaa !61
  %.not63 = icmp ult i64 %.03862, %i.gq
  br i1 %.not63, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av
  %i.gr = load ptr, ptr %6, align 8, !tbaa !42
  %i.gs = getelementptr inbounds nuw [136 x i8], ptr %i.gr, i64 %.03862 ; 32 uses
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !58
  %i.gu = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.gt) #6
  %i.gv = trunc i16 %i.gu to i8
  store i8 %i.gv, ptr %i.h, align 16, !tbaa !44
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !58
  %i.gy = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.gx) #6
  %i.gz = trunc i16 %i.gy to i8
  store i8 %i.gz, ptr %i.fl, align 1, !tbaa !44
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !58
  %i.hc = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.hb) #6
  %i.hd = trunc i16 %i.hc to i8
  store i8 %i.hd, ptr %i.fm, align 2, !tbaa !44
  %i.he = getelementptr inbounds nuw i8, ptr %i.gs, i64 6
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !58
  %i.hg = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.hf) #6
  %i.hh = trunc i16 %i.hg to i8
  store i8 %i.hh, ptr %i.fn, align 1, !tbaa !44
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !58
  %i.hk = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.hj) #6
  %i.hl = trunc i16 %i.hk to i8
  store i8 %i.hl, ptr %i.fo, align 4, !tbaa !44
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gs, i64 10
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !58
  %i.ho = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.hn) #6
  %i.hp = trunc i16 %i.ho to i8
  store i8 %i.hp, ptr %i.fp, align 1, !tbaa !44
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !58
  %i.hs = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.hr) #6
  %i.ht = trunc i16 %i.hs to i8
  store i8 %i.ht, ptr %i.fq, align 2, !tbaa !44
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gs, i64 14
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !58
  %i.hw = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.hv) #6
  %i.hx = trunc i16 %i.hw to i8
  store i8 %i.hx, ptr %i.fr, align 1, !tbaa !44
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !58
  %i.ia = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.hz) #6
  %i.ib = trunc i16 %i.ia to i8
  store i8 %i.ib, ptr %i.fs, align 8, !tbaa !44
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gs, i64 18
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !58
  %i.ie = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.id) #6
  %i.if = trunc i16 %i.ie to i8
  store i8 %i.if, ptr %i.ft, align 1, !tbaa !44
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gs, i64 20
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !58
  %i.ii = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.ih) #6
  %i.ij = trunc i16 %i.ii to i8
  store i8 %i.ij, ptr %i.fu, align 2, !tbaa !44
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gs, i64 22
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !58
  %i.im = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.il) #6
  %i.in = trunc i16 %i.im to i8
  store i8 %i.in, ptr %i.fv, align 1, !tbaa !44
  %i.io = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !58
  %i.iq = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.ip) #6
  %i.ir = trunc i16 %i.iq to i8
  store i8 %i.ir, ptr %i.fw, align 4, !tbaa !44
  %i.is = getelementptr inbounds nuw i8, ptr %i.gs, i64 26
  %i.it = load i16, ptr %i.is, align 2, !tbaa !58
  %i.iu = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.it) #6
  %i.iv = trunc i16 %i.iu to i8
  store i8 %i.iv, ptr %i.fx, align 1, !tbaa !44
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !58
  %i.iy = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.ix) #6
  %i.iz = trunc i16 %i.iy to i8
  store i8 %i.iz, ptr %i.fy, align 2, !tbaa !44
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gs, i64 30
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !58
  %i.jc = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.jb) #6
  %i.jd = trunc i16 %i.jc to i8
  store i8 %i.jd, ptr %i.fz, align 1, !tbaa !44
  %i.je = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !58
  %i.jg = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.jf) #6
  %i.jh = trunc i16 %i.jg to i8
  store i8 %i.jh, ptr %i.ga, align 16, !tbaa !44
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gs, i64 34
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !58
  %i.jk = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.jj) #6
  %i.jl = trunc i16 %i.jk to i8
  store i8 %i.jl, ptr %i.gb, align 1, !tbaa !44
  %i.jm = getelementptr inbounds nuw i8, ptr %i.gs, i64 36
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !58
  %i.jo = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.jn) #6
  %i.jp = trunc i16 %i.jo to i8
  store i8 %i.jp, ptr %i.gc, align 2, !tbaa !44
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gs, i64 38
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !58
  %i.js = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.jr) #6
  %i.jt = trunc i16 %i.js to i8
  store i8 %i.jt, ptr %i.gd, align 1, !tbaa !44
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !58
  %i.jw = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.jv) #6
  %i.jx = trunc i16 %i.jw to i8
  store i8 %i.jx, ptr %i.ge, align 4, !tbaa !44
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gs, i64 42
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !58
  %i.ka = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.jz) #6
  %i.kb = trunc i16 %i.ka to i8
  store i8 %i.kb, ptr %i.gf, align 1, !tbaa !44
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gs, i64 44
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !58
  %i.ke = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.kd) #6
  %i.kf = trunc i16 %i.ke to i8
  store i8 %i.kf, ptr %i.gg, align 2, !tbaa !44
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gs, i64 46
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !58
  %i.ki = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.kh) #6
  %i.kj = trunc i16 %i.ki to i8
  store i8 %i.kj, ptr %i.gh, align 1, !tbaa !44
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !58
  %i.km = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.kl) #6
  %i.kn = trunc i16 %i.km to i8
  store i8 %i.kn, ptr %i.gi, align 8, !tbaa !44
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gs, i64 50
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !58
  %i.kq = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.kp) #6
  %i.kr = trunc i16 %i.kq to i8
  store i8 %i.kr, ptr %i.gj, align 1, !tbaa !44
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gs, i64 52
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !58
  %i.ku = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.kt) #6
  %i.kv = trunc i16 %i.ku to i8
  store i8 %i.kv, ptr %i.gk, align 2, !tbaa !44
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gs, i64 54
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !58
  %i.ky = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.kx) #6
  %i.kz = trunc i16 %i.ky to i8
  store i8 %i.kz, ptr %i.gl, align 1, !tbaa !44
  %i.la = getelementptr inbounds nuw i8, ptr %i.gs, i64 56
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !58
  %i.lc = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.lb) #6
  %i.ld = trunc i16 %i.lc to i8
  store i8 %i.ld, ptr %i.gm, align 4, !tbaa !44
  %i.le = getelementptr inbounds nuw i8, ptr %i.gs, i64 58
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !58
  %i.lg = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.lf) #6
  %i.lh = trunc i16 %i.lg to i8
  store i8 %i.lh, ptr %i.gn, align 1, !tbaa !44
  %i.li = getelementptr inbounds nuw i8, ptr %i.gs, i64 60
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !58
  %i.lk = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.lj) #6
  %i.ll = trunc i16 %i.lk to i8
  store i8 %i.ll, ptr %i.go, align 2, !tbaa !44
  %i.lm = getelementptr inbounds nuw i8, ptr %i.gs, i64 62
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !58
  %i.lo = call zeroext i16 @cdf_tole2(i16 noundef zeroext %i.ln) #6
  %i.lp = trunc i16 %i.lo to i8
  store i8 %i.lp, ptr %i.gp, align 1, !tbaa !44
  %i.lq = load i32, ptr %i.k, align 4, !tbaa !28
  %i.lr = and i32 %i.lq, 1040
  %i.ls = icmp eq i32 %i.lr, 0
  %i.lt = select i1 %i.ls, ptr @name2desc, ptr @name2mime
  %i.lu = call fastcc ptr @cdf_app_to_mime(ptr noundef %i.h, ptr noundef nonnull %i.lt) ; 3 uses
  %i.lv = add nuw i64 %.03862, 1
  %i.lw = icmp eq ptr %i.lu, null
  br i1 %i.lw, label %bb.av, label %.critedge.thread, !llvm.loop !62

.critedge:                                        ; preds = %bb.av
  %i.lx = load i32, ptr %i.k, align 4, !tbaa !28  ; 2 uses
  %i.ly = and i32 %i.lx, 1040
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %bb.bb, label %bb.ay

.critedge.thread:                                 ; preds = %bb.aw
  %i.ma = load i32, ptr %i.k, align 4, !tbaa !28  ; 2 uses
  %i.mb = and i32 %i.ma, 1040
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.critedge.thread
  %i.md = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.lu) #6
  %i.me = icmp eq i32 %i.md, -1
  br i1 %i.me, label %cdf_file_catalog_info.exit, label %bb.ba

bb.ay:                                            ; preds = %.critedge.thread, %.critedge
  %spec.store.select = phi ptr [ %i.lu, %.critedge.thread ], [ @.str.16, %.critedge ]
  %i.mf = phi i32 [ %i.ma, %.critedge.thread ], [ %i.lx, %.critedge ]
  %i.mg = and i32 %i.mf, 16
  %.not = icmp eq i32 %i.mg, 0
  br i1 %.not, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mh = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %spec.store.select) #6
  %i.mi = icmp eq i32 %i.mh, -1
  br i1 %i.mi, label %cdf_file_catalog_info.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  br label %cdf_file_catalog_info.exit

bb.bb:                                            ; preds = %bb.ay, %.critedge
  %i.mj = call i32 @cdf_read_user_stream(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @.str.54, ptr noundef nonnull %7) #6
  %i.mk = icmp eq i32 %i.mj, -1
  br i1 %i.mk, label %cdf_file_catalog_info.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.ml = load i32, ptr %i.k, align 4, !tbaa !28  ; 2 uses
  %i.mm = and i32 %i.ml, 1040
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.mo = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.55) #6
  %i.mp = icmp eq i32 %i.mo, -1
  br i1 %i.mp, label %cdf_file_catalog.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mq = call i32 @cdf_unpack_catalog(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %i.a) #6
  %i.mr = icmp eq i32 %i.mq, -1
  br i1 %i.mr, label %cdf_file_catalog.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ms = load ptr, ptr %i.a, align 8, !tbaa !41  ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !63
  %i.mv = icmp ugt i64 %i.mu, 1
  br i1 %i.mv, label %.lr.ph.i.i46, label %._crit_edge.i.i45

bb.bg:                                            ; preds = %.lr.ph.i.i46
  %i.mw = add nuw i64 %.016.i.i, 1                ; 2 uses
  %i.mx = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !63
  %i.mz = icmp ult i64 %i.mw, %i.my
  br i1 %i.mz, label %.lr.ph.i.i46, label %._crit_edge.i.i45, !llvm.loop !65

.lr.ph.i.i46:                                     ; preds = %bb.bf, %bb.bg
  %.016.i.i = phi i64 [ %i.mw, %bb.bg ], [ 1, %bb.bf ] ; 3 uses
  %i.na = getelementptr inbounds nuw [528 x i8], ptr %i.mt, i64 %.016.i.i ; 2 uses
  %i.nb = load i16, ptr %i.na, align 8, !tbaa !66
  %i.nc = zext i16 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.ne = call ptr @cdf_u16tos8(ptr noundef nonnull %i.b, i64 noundef %i.nc, ptr noundef nonnull %i.nd) #6
  %i.nf = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !63
  %i.nh = add i64 %i.ng, -1
  %i.ni = icmp eq i64 %.016.i.i, %i.nh
  %i.nj = select i1 %i.ni, ptr @.str.57, ptr @.str.58
  %i.nk = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.56, ptr noundef %i.ne, ptr noundef nonnull %i.nj) #6
  %i.nl = icmp eq i32 %i.nk, -1
  br i1 %i.nl, label %bb.bh, label %bb.bg

bb.bh:                                            ; preds = %.lr.ph.i.i46
  %i.nm = load ptr, ptr %i.a, align 8, !tbaa !41
  call void @_efree(ptr noundef %i.nm) #6
  br label %cdf_file_catalog.exit.i

._crit_edge.i.i45:                                ; preds = %bb.bg, %bb.bf
  %.lcssa.i.i = phi ptr [ %i.ms, %bb.bf ], [ %i.mx, %bb.bg ]
  call void @_efree(ptr noundef nonnull %.lcssa.i.i) #6
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bc
  %i.nn = and i32 %i.ml, 16
  %.not.i.i = icmp eq i32 %i.nn, 0
  br i1 %.not.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.no = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.59) #6
  %i.np = icmp eq i32 %i.no, -1
  br i1 %i.np, label %cdf_file_catalog.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %._crit_edge.i.i45
  br label %cdf_file_catalog.exit.i

cdf_file_catalog.exit.i:                          ; preds = %bb.bk, %bb.bj, %bb.bh, %bb.be, %bb.bd
  %.014.i.i = phi i32 [ -1, %bb.be ], [ -1, %bb.bd ], [ -1, %bb.bh ], [ 1, %bb.bk ], [ -1, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %cdf_file_catalog_info.exit

cdf_file_catalog_info.exit:                       ; preds = %cdf_file_catalog.exit.i, %bb.bb, %bb.ba, %.thread, %bb.az, %bb.ax, %cdf_file_summary_info.exit.thread
  %.041 = phi i32 [ %.1.i48, %cdf_file_summary_info.exit.thread ], [ -1, %bb.ax ], [ 1, %.thread ], [ -1, %bb.az ], [ 1, %bb.ba ], [ -1, %bb.bb ], [ %.014.i.i, %cdf_file_catalog.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  ret i32 %.041
}

declare i32 @cdf_read_doc_summary_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @cdf_file_dir_info(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
.lr.ph:
  %i.a = tail call i32 @cdf_find_stream(ptr noundef nonnull %1, ptr noundef nonnull @.str.63, i32 noundef 2) #6
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.c = tail call i32 @cdf_find_stream(ptr noundef nonnull %1, ptr noundef nonnull @.str.64, i32 noundef 2) #6
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph.1

.loopexit:                                        ; preds = %.lr.ph.5, %bb.g, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %bb.f, %.lr.ph.1, %.lr.ph, %bb.a
  %.lcssa = phi ptr [ getelementptr inbounds nuw (i8, ptr @sectioninfo, i64 240), %.lr.ph.3 ], [ getelementptr inbounds nuw (i8, ptr @sectioninfo, i64 320), %.lr.ph.4 ], [ @sectioninfo, %.lr.ph ], [ getelementptr inbounds nuw (i8, ptr @sectioninfo, i64 80), %.lr.ph.1 ], [ getelementptr inbounds nuw (i8, ptr @sectioninfo, i64 160), %.lr.ph.2 ], [ @sectioninfo, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @sectioninfo, i64 160), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @sectioninfo, i64 400), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @sectioninfo, i64 400), %.lr.ph.5 ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28   ; 2 uses
  %i.g = and i32 %i.f, 1040
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.i = load ptr, ptr %.lcssa, align 8, !tbaa !68
  %i.j = tail call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.60, ptr noundef %i.i) #6
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %.thread25, label %bb.e

bb.c:                                             ; preds = %.loopexit
  %i.l = and i32 %i.f, 16
  %.not24 = icmp eq i32 %i.l, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = tail call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, ptr noundef %i.n) #6
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %.thread25, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  br label %.thread25

.lr.ph.1:                                         ; preds = %bb.a
  %i.q = tail call i32 @cdf_find_stream(ptr noundef nonnull %1, ptr noundef nonnull @.str.67, i32 noundef 2) #6
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.s = tail call i32 @cdf_find_stream(ptr noundef nonnull %1, ptr noundef nonnull @.str.45, i32 noundef 2) #6
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.2
  %i.u = tail call i32 @cdf_find_stream(ptr noundef nonnull %1, ptr noundef nonnull @.str.47, i32 noundef 2) #6
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.f
  %i.w = tail call i32 @cdf_find_stream(ptr noundef nonnull %1, ptr noundef nonnull @.str.48, i32 noundef 2) #6
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.y = tail call i32 @cdf_find_stream(ptr noundef nonnull %1, ptr noundef nonnull @.str.50, i32 noundef 2) #6
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.aa = tail call i32 @cdf_find_stream(ptr noundef nonnull %1, ptr noundef nonnull @.str.70, i32 noundef 2) #6
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.5
  %i.ac = tail call i32 @cdf_find_stream(ptr noundef nonnull %1, ptr noundef nonnull @.str.71, i32 noundef 1) #6
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit, label %.thread25

.thread25:                                        ; preds = %bb.g, %bb.e, %bb.b, %bb.d
  %.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 1, %bb.e ], [ -1, %bb.g ]
  ret i32 %.2
}

declare void @_efree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare zeroext i16 @cdf_tole2(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cdf_app_to_mime(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8
  %i.b = tail call ptr @zend_str_tolower_dup(ptr noundef nonnull %0, i64 noundef %i.a) #6 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !71     ; 2 uses
  %.not25 = icmp eq ptr %i.c, null
  br i1 %.not25, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = add i64 %.01826, 1                       ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.01826 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #8
  %i.i = tail call ptr @zend_str_tolower_dup(ptr noundef nonnull %i.g, i64 noundef %i.h) #6 ; 2 uses
  %i.j = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.i) #8
  %.not20 = icmp eq ptr %i.j, null
  tail call void @_efree(ptr noundef nonnull %i.i) #6
  br i1 %.not20, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.01826
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.2 = phi ptr [ %i.m, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  tail call void @_efree(ptr noundef %i.b) #6
  ret ptr %.2
}

declare i32 @cdf_unpack_summary_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @cdf_print_property_name(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

declare i32 @cdf_print_elapsed_time(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @cdf_timestamp_to_timespec(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @cdf_ctime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @zend_str_tolower_dup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @cdf_unpack_catalog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cdf_u16tos8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cdf_find_stream(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !9, i64 0}
!13 = !{!"buffer", !9, i64 0, !14, i64 8, !17, i64 152, !15, i64 160, !15, i64 168, !17, i64 176, !15, i64 184}
!14 = !{!"stat", !15, i64 0, !15, i64 8, !15, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !16, i64 72, !16, i64 88, !16, i64 104, !10, i64 120}
!15 = !{!"long", !10, i64 0}
!16 = !{!"timespec", !15, i64 0, !15, i64 8}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!13, !17, i64 152}
!19 = !{!13, !15, i64 160}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 omnipotent char", !17, i64 0}
!22 = !{!23, !17, i64 0}
!23 = !{!"", !17, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!24 = !{!25, !9, i64 0}
!25 = !{!"", !9, i64 0, !21, i64 8, !15, i64 16}
!26 = !{!25, !21, i64 8}
!27 = !{!25, !15, i64 16}
!28 = !{!29, !9, i64 68}
!29 = !{!"magic_set", !10, i64 0, !30, i64 16, !32, i64 32, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !21, i64 80, !15, i64 88, !9, i64 96, !33, i64 100, !34, i64 104, !10, i64 136, !33, i64 264, !33, i64 266, !33, i64 268, !33, i64 270, !33, i64 272, !33, i64 274, !33, i64 276, !15, i64 280, !15, i64 288, !15, i64 296}
!30 = !{!"cont", !15, i64 0, !31, i64 8}
!31 = !{!"p1 _ZTS10level_info", !17, i64 0}
!32 = !{!"out", !21, i64 0, !15, i64 8, !21, i64 16}
!33 = !{!"short", !10, i64 0}
!34 = !{!"", !21, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!35 = !{!36, !37, i64 0}
!36 = !{!"", !37, i64 0, !15, i64 8}
!37 = !{!"p1 int", !17, i64 0}
!38 = !{!23, !15, i64 8}
!39 = !{!23, !15, i64 24}
!40 = !{!9, !9, i64 0}
!41 = !{!17, !17, i64 0}
!42 = !{!43, !17, i64 0}
!43 = !{!"", !17, i64 0, !15, i64 8}
!44 = !{!10, !10, i64 0}
!45 = !{!46, !33, i64 0}
!46 = !{!"", !33, i64 0, !33, i64 2, !33, i64 4, !33, i64 6, !47, i64 8, !9, i64 24}
!47 = !{!"", !9, i64 0, !10, i64 4, !10, i64 8, !10, i64 10}
!48 = !{!46, !33, i64 6}
!49 = !{!46, !33, i64 4}
!50 = !{!15, !15, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!54, !9, i64 0}
!54 = !{!"", !9, i64 0, !9, i64 4, !10, i64 8}
!55 = !{!54, !9, i64 4}
!56 = !{!57, !57, i64 0}
!57 = !{!"p1 short", !17, i64 0}
!58 = !{!33, !33, i64 0}
!59 = distinct !{!59, !52}
!60 = distinct !{!60, !52}
!61 = !{!43, !15, i64 8}
!62 = distinct !{!62, !52}
!63 = !{!64, !15, i64 0}
!64 = !{!"", !15, i64 0, !10, i64 8}
!65 = distinct !{!65, !52}
!66 = !{!67, !33, i64 0}
!67 = !{!"", !33, i64 0, !9, i64 4, !15, i64 8, !10, i64 16}
!68 = !{!69, !21, i64 0}
!69 = !{!"sinfo", !21, i64 0, !21, i64 8, !10, i64 16, !10, i64 56}
!70 = !{!69, !21, i64 8}
!71 = !{!72, !21, i64 0}
!72 = !{!"nv", !21, i64 0, !21, i64 8}
!73 = distinct !{!73, !52}
!74 = !{!72, !21, i64 8}
end_hunk_0
