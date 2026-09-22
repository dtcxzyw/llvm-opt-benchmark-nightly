Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/fitsdec?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
@.str.4 = private unnamed_addr constant [12 x i8] c"blank_value\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"value that is used to replace BLANK pixels in data array\00", align 1
@fits_options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 6.553500e+04, i32 18, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@__const.fits_decode_frame.map = private unnamed_addr constant [4 x i32] [i32 2, i32 0, i32 1, i32 3], align 16
@.str.7 = private unnamed_addr constant [25 x i8] c"unsupported BITPIX = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"invalid BITPIX, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"File contains RGB image but NAXIS = %d and NAXIS3 = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"unsupported number of dimensions, NAXIS = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"BLANK keyword found but BITPIX = %d\0A. Ignoring BLANK\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"unsupported size of FITS image\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"data min/max (%g %g) is invalid\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"data min/max indicates a blank image\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @fits_decode_frame(ptr noundef %0, ptr noundef initializes((312, 320)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.FITSHeader, align 8         ; 43 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8, !tbaa !81
  %i.k = call i32 @avpriv_fits_header_init(ptr noundef nonnull %4, i32 noundef 2) #7 ; 0 uses
  %i.l = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.m = icmp slt i32 %i.g, 80
  br i1 %i.m, label %fits_read_header.exit.thread, label %.lr.ph602

bb.b:                                             ; preds = %.lr.ph602
  %i.n = add nuw nsw i32 %.082.i600, 1
  %i.o = ptrtoint ptr %i.s to i64
  %i.p = sub i64 %i.l, %i.o
  %i.q = icmp slt i64 %i.p, 80
  br i1 %i.q, label %fits_read_header.exit.thread, label %.lr.ph602, !llvm.loop !19

.lr.ph602:                                        ; preds = %bb.a, %bb.b
  %.082.i600 = phi i32 [ %i.n, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %.083.i599 = phi ptr [ %i.s, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.r = call i32 @avpriv_fits_header_parse_line(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %.083.i599, ptr noundef nonnull %i.a) #7 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.083.i599, i64 80 ; 4 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !llvm.loop !19

bb.c:                                             ; preds = %.lr.ph602
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %fits_read_header.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw i32 %.082.i600, 36
  %i.v = urem i32 %i.u, 36
  %i.w = sub nuw nsw i32 35, %i.v
  %i.x = mul nuw nsw i32 %i.w, 80
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = sub i64 %i.l, %i.y
  %i.aa = zext nneg i32 %i.x to i64               ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.aa
  br i1 %i.ab, label %fits_read_header.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aa ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4040 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !82
  %.not94.i = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !83 ; 4 uses
  br i1 %.not94.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not95.i = icmp eq i32 %i.ag, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %.off.i = add i32 %i.ai, -3
  %switch.i = icmp ult i32 %.off.i, 2
  %or.cond.i = select i1 %.not95.i, i1 %switch.i, i1 false
  br i1 %or.cond.i, label %bb.i, label %._crit_edge119.i

._crit_edge119.i:                                 ; preds = %bb.f
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %i.ag, i32 noundef %i.ai) #7
  br label %fits_read_header.exit.thread

bb.g:                                             ; preds = %bb.e
  %.not99.i = icmp eq i32 %i.ag, 2
  br i1 %.not99.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %i.ag) #7
  br label %fits_read_header.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi i32 [ 3, %bb.f ], [ 2, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 10 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !14
  %.not100.i = icmp eq i32 %i.al, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !15 ; 3 uses
  br i1 %.not100.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %.pre, label %.thread.i [
    i32 -32, label %bb.k
    i32 -64, label %bb.k
  ]

.thread.i:                                        ; preds = %bb.i, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = call i32 @llvm.abs.i32(i32 %.pre, i1 true)
  %i.ao = lshr i32 %i.an, 3
  %i.ap = zext nneg i32 %i.ao to i64
  br label %.lr.ph.i

bb.k:                                             ; preds = %bb.j, %bb.j
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.11, i32 noundef %.pre) #7
  store i32 0, ptr %i.ak, align 8, !tbaa !14
  %.pre121.i = load i32, ptr %i.af, align 4, !tbaa !83 ; 2 uses
  %i.aq = load i32, ptr %.phi.trans.insert, align 8, !tbaa !15
  %i.ar = call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.as = lshr i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = icmp sgt i32 %.pre121.i, 0
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k, %.thread.i
  %i.av = phi i64 [ %i.ap, %.thread.i ], [ %i.at, %bb.k ]
  %i.aw = phi ptr [ %i.am, %.thread.i ], [ %.phi.trans.insert, %bb.k ]
  %i.ax = phi i32 [ %i.aj, %.thread.i ], [ %.pre121.i, %bb.k ]
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 32
  %wide.trip.count.i = zext nneg i32 %i.ax to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %.0114.i = phi i64 [ %i.av, %.lr.ph.i ], [ %i.bd, %bb.o ] ; 3 uses
  %i.az = icmp eq i64 %.0114.i, 0
  br i1 %i.az, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !13
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %mul.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.0114.i, i64 %i.bc)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.12) #7
  br label %fits_read_header.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.bd = mul i64 %.0114.i, %i.bc                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.l, !llvm.loop !20

._crit_edge.i:                                    ; preds = %bb.o, %bb.k
  %i.be = phi ptr [ %.phi.trans.insert, %bb.k ], [ %i.aw, %bb.o ]
  %.0.lcssa.i = phi i64 [ %i.at, %bb.k ], [ %i.bd, %bb.o ]
  %i.bf = ptrtoint ptr %i.ac to i64
  %i.bg = sub i64 %i.l, %i.bf
  %i.bh = icmp ult i64 %i.bg, %.0.lcssa.i
  br i1 %i.bh, label %fits_read_header.exit.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.bi = load i32, ptr %i.ad, align 8, !tbaa !82 ; 2 uses
  %.not101.i = icmp eq i32 %i.bi, 0
  br i1 %.not101.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4064
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !84
  %.not102.i = icmp eq i32 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4080
  %i.bm = load i32, ptr %i.bl, align 8
  %.not103.i = icmp eq i32 %i.bm, 0
  %or.cond261 = select i1 %.not102.i, i1 true, i1 %.not103.i
  br i1 %or.cond261, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bn = call fastcc i32 @fill_data_min_max(ptr noundef nonnull %i.ac, ptr noundef nonnull %4) ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.s, label %._crit_edge122.i

._crit_edge122.i:                                 ; preds = %bb.r
  %.pre123.i = load i32, ptr %i.ad, align 8, !tbaa !82
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bp = load i32, ptr %i.be, align 8, !tbaa !15
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.bp) #7
  br label %fits_read_header.exit.thread

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 4072 ; 2 uses
  %5 = load double, ptr %i.bq, align 8, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4048
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 4088 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !17
  %i.bu = load <2 x double>, ptr %i.br, align 8, !tbaa !85 ; 2 uses
  %6 = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = insertelement <2 x double> %6, double %5, i64 1
  %i.bw = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fsub nsz <2 x double> %i.bv, %i.bw
  %i.by = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fdiv nsz <2 x double> %i.bx, %i.by      ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 1
  store double %i.ca, ptr %i.bq, align 8, !tbaa !16
  %i.cb = extractelement <2 x double> %i.bz, i64 0
  store double %i.cb, ptr %i.bs, align 8, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge122.i
  %i.cc = phi i32 [ %.pre123.i, %._crit_edge122.i ], [ %i.bi, %bb.t ]
  %.not104.i = icmp eq i32 %i.cc, 0
  br i1 %.not104.i, label %bb.v, label %.thread531

.thread531:                                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 4072
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !16 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 4088 ; 3 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !17 ; 3 uses
  %i.ch = fcmp nsz ult double %i.ce, %i.cg
  br i1 %i.ch, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.ci = fcmp nsz ogt double %i.ce, %i.cg
  br i1 %i.ci, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13, double noundef %i.ce, double noundef %i.cg) #7
  br label %fits_read_header.exit.thread

fits_read_header.exit.thread:                     ; preds = %bb.b, %bb.a, %bb.h, %bb.c, %._crit_edge119.i, %bb.n, %bb.d, %._crit_edge.i, %bb.x, %bb.s
  %.084.i.ph = phi i32 [ -1094995529, %bb.h ], [ %i.bn, %bb.s ], [ -1094995529, %bb.x ], [ -1094995529, %._crit_edge.i ], [ -1094995529, %bb.d ], [ -1094995529, %bb.n ], [ -1094995529, %._crit_edge119.i ], [ %i.r, %bb.c ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bq

bb.y:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.14) #7
  %i.cj = load double, ptr %i.cf, align 8, !tbaa !17
  %i.ck = fadd nsz double %i.cj, 1.000000e+00
  store double %i.ck, ptr %i.cf, align 8, !tbaa !17
  %.pre479 = load i32, ptr %i.ad, align 8, !tbaa !82
  %i.cl = icmp eq i32 %.pre479, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.cl, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %.thread531, %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !15 ; 2 uses
  switch i32 %i.cn, label %bb.ag [
    i32 8, label %bb.aa
    i32 16, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !13
  %i.cq = icmp eq i32 %i.cp, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br i1 %i.cq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 71, ptr %i.cr, align 8, !tbaa !86
  br label %bb.ak

bb.ac:                                            ; preds = %bb.aa
  store i32 111, ptr %i.cr, align 8, !tbaa !86
  br label %bb.ak

bb.ad:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !13
  %i.cu = icmp eq i32 %i.ct, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br i1 %i.cu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 77, ptr %i.cv, align 8, !tbaa !86
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  store i32 113, ptr %i.cv, align 8, !tbaa !86
  br label %bb.ak

bb.ag:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.cn) #7
  br label %bb.bq

bb.ah:                                            ; preds = %.thread, %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !15
  %i.cy = icmp eq i32 %i.cx, 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br i1 %i.cy, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 8, ptr %i.cz, align 8, !tbaa !86
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  store i32 30, ptr %i.cz, align 8, !tbaa !86
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ac, %bb.ab, %bb.ae, %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.db = load i32, ptr %i.da, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !13
  %i.de = call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.db, i32 noundef %i.dd) #7 ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.bq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dg = call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %bb.bq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.di = load i32, ptr %i.ad, align 8, !tbaa !82
  %.not202 = icmp eq i32 %i.di, 0
  br i1 %.not202, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !15
  switch i32 %i.dk, label %.loopexit [
    i32 8, label %.preheader273
    i32 16, label %.preheader276
  ]

.preheader276:                                    ; preds = %bb.an
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !13 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.preheader275.lr.ph, label %.loopexit

.preheader275.lr.ph:                              ; preds = %.preheader276
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !87 ; 4 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 4048 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 4056 ; 2 uses
  br i1 %i.dq, label %.preheader275.lr.ph.split, label %.loopexit

.preheader275.lr.ph.split:                        ; preds = %.preheader275.lr.ph
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !88 ; 7 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.preheader275.us.preheader, label %.loopexit

.preheader275.us.preheader:                       ; preds = %.preheader275.lr.ph.split
  %i.dz = zext nneg i32 %i.dp to i64              ; 2 uses
  %wide.trip.count434 = zext nneg i32 %i.dm to i64
  %wide.trip.count = zext nneg i32 %i.dp to i64   ; 2 uses
  %wide.trip.count429 = zext nneg i32 %i.dp to i64
  %i.ea = add nsw i64 %wide.trip.count, -1
  %i.eb = zext nneg i32 %i.dx to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.dx, 8
  %n.vec = and i64 %i.eb, 2147483640              ; 4 uses
  %i.ec = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.ed = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.eb
  br label %.preheader275.us

.preheader275.us:                                 ; preds = %.preheader275.us.preheader, %._crit_edge287.split.us.us
  %indvars.iv431 = phi i64 [ 0, %.preheader275.us.preheader ], [ %indvars.iv.next432, %._crit_edge287.split.us.us ] ; 2 uses
  %.3250296.us = phi ptr [ %i.ac, %.preheader275.us.preheader ], [ %.us-phi.us, %._crit_edge287.split.us.us ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @__const.fits_decode_frame.map, i64 %indvars.iv431
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !13
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !89 ; 3 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.eg
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !13
  %i.el = load i32, ptr %i.ak, align 8
  %.not218.us = icmp eq i32 %i.el, 0
  %i.em = sext i32 %i.ek to i64                   ; 4 uses
  br i1 %.not218.us, label %.lr.ph.us.us.us.preheader, label %.lr.ph.us.us299

.lr.ph.us.us.us.preheader:                        ; preds = %.preheader275.us
  %i.en = ptrtoaddr ptr %i.ei to i64
  %i.eo = mul nsw i64 %i.ea, %i.em
  %i.ep = add i64 %i.eo, %i.en
  br label %.lr.ph.us.us.us

.lr.ph.us.us299:                                  ; preds = %.preheader275.us, %._crit_edge.split.us293.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split.us293.us ], [ 0, %.preheader275.us ] ; 2 uses
  %.4251284.us.us301 = phi ptr [ %i.fh, %._crit_edge.split.us293.us ], [ %.3250296.us, %.preheader275.us ]
  %i.eq = xor i64 %indvars.iv, -1
  %i.er = add nsw i64 %i.dz, %i.eq
  %i.es = mul nsw i64 %i.er, %i.em
  %i.et = getelementptr inbounds i8, ptr %i.ei, i64 %i.es
  %i.eu = load i64, ptr %i.ds, align 8
  %i.ev = load double, ptr %i.du, align 8
  %i.ew = load double, ptr %i.dv, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %.lr.ph.us.us299
  %.0164283.us290.us = phi ptr [ %i.et, %.lr.ph.us.us299 ], [ %i.fg, %bb.ar ] ; 2 uses
  %.1172282.us291.us = phi i32 [ 0, %.lr.ph.us.us299 ], [ %i.fi, %bb.ar ]
  %.5252281.us292.us = phi ptr [ %.4251284.us.us301, %.lr.ph.us.us299 ], [ %i.fh, %bb.ar ] ; 2 uses
  %i.ex = load i16, ptr %.5252281.us292.us, align 1, !tbaa !18
  %i.ey = call i16 @llvm.bswap.i16(i16 %i.ex)     ; 2 uses
  %i.ez = zext i16 %i.ey to i64
  %.not219.us.us = icmp eq i64 %i.eu, %i.ez
  br i1 %.not219.us.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fa = uitofp i16 %i.ey to double
  %i.fb = call nsz double @llvm.fmuladd.f64(double %i.fa, double %i.ev, double %i.ew)
  %i.fc = fptoui double %i.fb to i64
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fd = load i32, ptr %i.dt, align 8, !tbaa !91
  %i.fe = zext i32 %i.fd to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1.us.us = phi i64 [ %i.fc, %bb.ap ], [ %i.fe, %bb.aq ]
  %i.ff = trunc i64 %.1.us.us to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %.0164283.us290.us, i64 2
  store i16 %i.ff, ptr %.0164283.us290.us, align 2, !tbaa !93
  %i.fh = getelementptr inbounds nuw i8, ptr %.5252281.us292.us, i64 2 ; 3 uses
  %i.fi = add nuw nsw i32 %.1172282.us291.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.fi, %i.dx
  br i1 %exitcond.not, label %._crit_edge.split.us293.us, label %bb.ao, !llvm.loop !21

._crit_edge.split.us293.us:                       ; preds = %bb.ar
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond424.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond424.not, label %._crit_edge287.split.us.us, label %.lr.ph.us.us299, !llvm.loop !22

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.split.us.us.us.us
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %._crit_edge.split.us.us.us.us ], [ 0, %.lr.ph.us.us.us.preheader ] ; 3 uses
  %.4251284.us.us.us = phi ptr [ %.lcssa594, %._crit_edge.split.us.us.us.us ], [ %.3250296.us, %.lr.ph.us.us.us.preheader ] ; 5 uses
  %i.fj = xor i64 %indvars.iv426, -1
  %i.fk = add nsw i64 %i.dz, %i.fj
end_hunk_0
begin_hunk_1_@fits_decode_frame:bb.a
  %i.fy = fptoui <8 x double> %i.fx to <8 x i64>
  %i.fz = trunc <8 x i64> %i.fy to <8 x i16>
  store <8 x i16> %i.fz, ptr %next.gep, align 2, !tbaa !93
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us.us.us, %middle.block
  %.0164283.us.us.us.us.ph = phi ptr [ %i.fm, %vector.memcheck ], [ %i.fm, %.lr.ph.us.us.us ], [ %i.fs, %middle.block ] ; 3 uses
  %.1172282.us.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.us.us ], [ %i.ed, %middle.block ] ; 4 uses
  %.5252281.us.us.us.us.ph = phi ptr [ %.4251284.us.us.us, %vector.memcheck ], [ %.4251284.us.us.us, %.lr.ph.us.us.us ], [ %i.ft, %middle.block ] ; 3 uses
  %i.gb = sub i32 %i.dx, %.1172282.us.us.us.us.ph
  %.neg = add i32 %.1172282.us.us.us.us.ph, 1
  %xtraiter = and i32 %i.gb, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gc = load i16, ptr %.5252281.us.us.us.us.ph, align 1, !tbaa !18
  %i.gd = call i16 @llvm.bswap.i16(i16 %i.gc)
  %i.ge = uitofp i16 %i.gd to double
  %i.gf = call nsz double @llvm.fmuladd.f64(double %i.ge, double %i.fn, double %i.fo)
  %i.gg = fptoui double %i.gf to i64
  %i.gh = trunc i64 %i.gg to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %.0164283.us.us.us.us.ph, i64 2
  store i16 %i.gh, ptr %.0164283.us.us.us.us.ph, align 2, !tbaa !93
  %i.gj = getelementptr inbounds nuw i8, ptr %.5252281.us.us.us.us.ph, i64 2 ; 2 uses
  %i.gk = add nuw nsw i32 %.1172282.us.us.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa711.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.gj, %scalar.ph.prol ]
  %.0164283.us.us.us.us.unr = phi ptr [ %.0164283.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.gi, %scalar.ph.prol ]
  %.1172282.us.us.us.us.unr = phi i32 [ %.1172282.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.gk, %scalar.ph.prol ]
  %.5252281.us.us.us.us.unr = phi ptr [ %.5252281.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.gj, %scalar.ph.prol ]
  %i.gl = icmp eq i32 %i.dx, %.neg
  br i1 %i.gl, label %._crit_edge.split.us.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0164283.us.us.us.us = phi ptr [ %i.ha, %scalar.ph ], [ %.0164283.us.us.us.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.1172282.us.us.us.us = phi i32 [ %i.hc, %scalar.ph ], [ %.1172282.us.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %.5252281.us.us.us.us = phi ptr [ %i.hb, %scalar.ph ], [ %.5252281.us.us.us.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.gm = load i16, ptr %.5252281.us.us.us.us, align 1, !tbaa !18
  %i.gn = call i16 @llvm.bswap.i16(i16 %i.gm)
  %i.go = uitofp i16 %i.gn to double
  %i.gp = call nsz double @llvm.fmuladd.f64(double %i.go, double %i.fn, double %i.fo)
  %i.gq = fptoui double %i.gp to i64
  %i.gr = trunc i64 %i.gq to i16
  %i.gs = getelementptr inbounds nuw i8, ptr %.0164283.us.us.us.us, i64 2
  store i16 %i.gr, ptr %.0164283.us.us.us.us, align 2, !tbaa !93
  %i.gt = getelementptr inbounds nuw i8, ptr %.5252281.us.us.us.us, i64 2
  %i.gu = load i16, ptr %i.gt, align 1, !tbaa !18
  %i.gv = call i16 @llvm.bswap.i16(i16 %i.gu)
  %i.gw = uitofp i16 %i.gv to double
  %i.gx = call nsz double @llvm.fmuladd.f64(double %i.gw, double %i.fn, double %i.fo)
  %i.gy = fptoui double %i.gx to i64
  %i.gz = trunc i64 %i.gy to i16
  %i.ha = getelementptr inbounds nuw i8, ptr %.0164283.us.us.us.us, i64 4
  store i16 %i.gz, ptr %i.gs, align 2, !tbaa !93
  %i.hb = getelementptr inbounds nuw i8, ptr %.5252281.us.us.us.us, i64 4 ; 2 uses
  %i.hc = add nuw nsw i32 %.1172282.us.us.us.us, 2 ; 2 uses
  %exitcond425.not.1 = icmp eq i32 %i.hc, %i.dx
  br i1 %exitcond425.not.1, label %._crit_edge.split.us.us.us.us, label %scalar.ph, !llvm.loop !24

._crit_edge.split.us.us.us.us:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa594 = phi ptr [ %i.ft, %middle.block ], [ %.lcssa711.unr, %scalar.ph.prol.loopexit ], [ %i.hb, %scalar.ph ] ; 2 uses
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %wide.trip.count429
  br i1 %exitcond430.not, label %._crit_edge287.split.us.us, label %.lr.ph.us.us.us, !llvm.loop !22

._crit_edge287.split.us.us:                       ; preds = %._crit_edge.split.us293.us, %._crit_edge.split.us.us.us.us
  %.us-phi.us = phi ptr [ %.lcssa594, %._crit_edge.split.us.us.us.us ], [ %i.fh, %._crit_edge.split.us293.us ]
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 2 uses
  %exitcond435.not = icmp eq i64 %indvars.iv.next432, %wide.trip.count434
  br i1 %exitcond435.not, label %.loopexit, label %.preheader275.us, !llvm.loop !25

.preheader273:                                    ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !13 ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.preheader272.lr.ph, label %.loopexit

.preheader272.lr.ph:                              ; preds = %.preheader273
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 4048
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 4056
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hn = load i32, ptr %i.hg, align 4, !tbaa !87 ; 3 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.preheader272, label %.loopexit

.preheader272:                                    ; preds = %.preheader272.lr.ph, %._crit_edge312
  %i.hp = phi i32 [ %i.jg, %._crit_edge312 ], [ %i.he, %.preheader272.lr.ph ] ; 2 uses
  %i.hq = phi i32 [ %i.jh, %._crit_edge312 ], [ %i.hn, %.preheader272.lr.ph ] ; 3 uses
  %i.hr = phi i32 [ %i.ji, %._crit_edge312 ], [ %i.hn, %.preheader272.lr.ph ] ; 4 uses
  %indvars.iv436 = phi i64 [ %indvars.iv.next437, %._crit_edge312 ], [ 0, %.preheader272.lr.ph ] ; 2 uses
  %.0247314 = phi ptr [ %.1248.lcssa, %._crit_edge312 ], [ %i.ac, %.preheader272.lr.ph ] ; 3 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %.lr.ph311, label %._crit_edge312

.lr.ph311:                                        ; preds = %.preheader272
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr @__const.fits_decode_frame.map, i64 %indvars.iv436
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !13
  %i.hv = sext i32 %i.hu to i64                   ; 2 uses
  %i.hw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hv
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hv
  %i.hy = load i32, ptr %i.hi, align 8, !tbaa !88 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %.lr.ph311.split, label %._crit_edge312

.lr.ph311.split:                                  ; preds = %.lr.ph311, %._crit_edge
  %i.ia = phi i32 [ %i.jc, %._crit_edge ], [ %i.hq, %.lr.ph311 ]
  %i.ib = phi i32 [ %i.jd, %._crit_edge ], [ %i.hy, %.lr.ph311 ] ; 2 uses
  %i.ic = phi i32 [ %i.jc, %._crit_edge ], [ %i.hr, %.lr.ph311 ]
  %.0179310 = phi i32 [ %i.je, %._crit_edge ], [ 0, %.lr.ph311 ] ; 2 uses
  %.1248309 = phi ptr [ %.2249.lcssa, %._crit_edge ], [ %.0247314, %.lr.ph311 ] ; 2 uses
  %i.id = icmp sgt i32 %i.ib, 0
  br i1 %i.id, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph311.split
  %i.ie = load ptr, ptr %i.hw, align 8, !tbaa !89
  %i.if = load i32, ptr %i.hx, align 4, !tbaa !13
  %i.ig = xor i32 %.0179310, -1
  %i.ih = add i32 %i.ic, %i.ig
  %i.ii = mul nsw i32 %i.if, %i.ih
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds i8, ptr %i.ie, i64 %i.ij
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.au
  %.0166308 = phi ptr [ %i.ix, %bb.au ], [ %i.ik, %.lr.ph.preheader ] ; 2 uses
  %.0171307 = phi i32 [ %i.iz, %bb.au ], [ 0, %.lr.ph.preheader ]
  %.2249306 = phi ptr [ %i.iy, %bb.au ], [ %.1248309, %.lr.ph.preheader ] ; 2 uses
  %i.il = load i8, ptr %.2249306, align 1, !tbaa !18 ; 2 uses
  %i.im = load i32, ptr %i.ak, align 8, !tbaa !14
  %.not220 = icmp ne i32 %i.im, 0
  %i.in = zext i8 %i.il to i64
  %i.io = load i64, ptr %i.hj, align 8
  %.not221 = icmp eq i64 %i.io, %i.in
  %or.cond = select i1 %.not220, i1 %.not221, i1 false
  br i1 %or.cond, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph
  %i.ip = uitofp i8 %i.il to double
  %i.iq = load double, ptr %i.hk, align 8, !tbaa !96
  %i.ir = load double, ptr %i.hl, align 8, !tbaa !97
  %i.is = call nsz double @llvm.fmuladd.f64(double %i.ip, double %i.iq, double %i.ir)
  %i.it = fptoui double %i.is to i64
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph
  %i.iu = load i32, ptr %i.hm, align 8, !tbaa !91
  %i.iv = zext i32 %i.iu to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0163 = phi i64 [ %i.it, %bb.as ], [ %i.iv, %bb.at ]
  %i.iw = trunc i64 %.0163 to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %.0166308, i64 1
  store i8 %i.iw, ptr %.0166308, align 1, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.2249306, i64 1 ; 2 uses
  %i.iz = add nuw nsw i32 %.0171307, 1            ; 2 uses
  %i.ja = load i32, ptr %i.hi, align 8, !tbaa !88 ; 2 uses
  %i.jb = icmp slt i32 %i.iz, %i.ja
  br i1 %i.jb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %bb.au
  %.pre480 = load i32, ptr %i.hg, align 4, !tbaa !87
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph311.split
  %i.jc = phi i32 [ %i.ia, %.lr.ph311.split ], [ %.pre480, %._crit_edge.loopexit ] ; 5 uses
  %i.jd = phi i32 [ %i.ib, %.lr.ph311.split ], [ %i.ja, %._crit_edge.loopexit ]
  %.2249.lcssa = phi ptr [ %.1248309, %.lr.ph311.split ], [ %i.iy, %._crit_edge.loopexit ] ; 2 uses
  %i.je = add nuw nsw i32 %.0179310, 1            ; 2 uses
  %i.jf = icmp slt i32 %i.je, %i.jc
  br i1 %i.jf, label %.lr.ph311.split, label %._crit_edge312.loopexit, !llvm.loop !27

._crit_edge312.loopexit:                          ; preds = %._crit_edge
  %.pre481 = load i32, ptr %i.hd, align 8, !tbaa !13
  br label %._crit_edge312

._crit_edge312:                                   ; preds = %.lr.ph311, %._crit_edge312.loopexit, %.preheader272
  %i.jg = phi i32 [ %i.hp, %.preheader272 ], [ %.pre481, %._crit_edge312.loopexit ], [ %i.hp, %.lr.ph311 ] ; 2 uses
  %i.jh = phi i32 [ %i.hq, %.preheader272 ], [ %i.jc, %._crit_edge312.loopexit ], [ %i.hq, %.lr.ph311 ]
  %i.ji = phi i32 [ %i.hr, %.preheader272 ], [ %i.jc, %._crit_edge312.loopexit ], [ %i.hr, %.lr.ph311 ]
  %.1248.lcssa = phi ptr [ %.0247314, %.preheader272 ], [ %.2249.lcssa, %._crit_edge312.loopexit ], [ %.0247314, %.lr.ph311 ]
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 1 ; 2 uses
  %i.jj = sext i32 %i.jg to i64
  %i.jk = icmp slt i64 %indvars.iv.next437, %i.jj
  br i1 %i.jk, label %.preheader272, label %.loopexit, !llvm.loop !28

bb.av:                                            ; preds = %bb.am
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 4088
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !17
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 4072 ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !16 ; 24 uses
  %i.jp = fsub nsz double %i.jm, %i.jo            ; 2 uses
  %or.cond225 = call i1 @llvm.is.fpclass.f64(double %i.jp, /* (nan inf zero nsub nnorm) */ i32 639)
  %i.jq = fdiv nsz double 1.000000e+00, %i.jp
  %i.jr = select i1 %or.cond225, double 1.000000e+00, double %i.jq ; 24 uses
  %i.js = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !15 ; 2 uses
  %i.ju = add i32 %i.jt, 64                       ; 2 uses
  %i.jv = call i32 @llvm.fshl.i32(i32 %i.ju, i32 %i.ju, i32 29)
  switch i32 %i.jv, label %.critedge [
    i32 0, label %.preheader
    i32 4, label %.preheader262
    i32 9, label %.preheader264
    i32 10, label %.preheader266
    i32 12, label %.preheader268
    i32 16, label %.preheader270
  ]

.preheader270:                                    ; preds = %bb.av
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !87 ; 3 uses
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %.lr.ph326, label %.loopexit

.lr.ph326:                                        ; preds = %.preheader270
  %i.jz = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !88 ; 6 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br i1 %i.kc, label %.lr.ph326.split, label %.loopexit

.lr.ph326.split:                                  ; preds = %.lr.ph326
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !13
  %i.kh = load i32, ptr %i.ak, align 8
  %.fr = freeze i32 %i.kh
  %.not203.not = icmp eq i32 %.fr, 0
  %i.ki = zext nneg i32 %i.jx to i64              ; 2 uses
  %i.kj = sext i32 %i.kg to i64                   ; 2 uses
  %wide.trip.count449 = zext nneg i32 %i.jx to i64 ; 2 uses
  br i1 %.not203.not, label %.lr.ph320.preheader, label %.lr.ph320.us

.lr.ph320.preheader:                              ; preds = %.lr.ph326.split
  %xtraiter718 = and i32 %i.kb, 1
  %i.kk = icmp eq i32 %i.kb, 1
  %unroll_iter = and i32 %i.kb, 2147483646
  %lcmp.mod719.not = icmp eq i32 %xtraiter718, 0
  %lcmp.mod721 = trunc i32 %i.kb to i1
  br label %.lr.ph320

.lr.ph320.us:                                     ; preds = %.lr.ph326.split, %._crit_edge321.split.us332
  %indvars.iv440 = phi i64 [ %indvars.iv.next441, %._crit_edge321.split.us332 ], [ 0, %.lr.ph326.split ] ; 2 uses
  %.16324.us = phi ptr [ %i.la, %._crit_edge321.split.us332 ], [ %i.ac, %.lr.ph326.split ]
  %i.kl = xor i64 %indvars.iv440, -1
  %i.km = add nsw i64 %i.ki, %i.kl
  %i.kn = mul nsw i64 %i.km, %i.kj
  %i.ko = getelementptr inbounds i8, ptr %i.jz, i64 %i.kn
  br label %bb.aw

bb.aw:                                            ; preds = %bb.az, %.lr.ph320.us
  %.9318.us328 = phi ptr [ %i.ko, %.lr.ph320.us ], [ %.10.us331, %bb.az ] ; 2 uses
  %.7178317.us329 = phi i32 [ 0, %.lr.ph320.us ], [ %i.lb, %bb.az ]
  %.17316.us330 = phi ptr [ %.16324.us, %.lr.ph320.us ], [ %i.la, %bb.az ] ; 2 uses
  %i.kp = load i64, ptr %.17316.us330, align 1, !tbaa !18
  %i.kq = call noundef i64 @llvm.bswap.i64(i64 %i.kp) ; 2 uses
  %i.kr = load i64, ptr %i.kd, align 8
  %.not204.us = icmp eq i64 %i.kq, %i.kr
  br i1 %.not204.us, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ks = sitofp nsz i64 %i.kq to double
  %i.kt = fsub nsz double %i.ks, %i.jo
  %i.ku = fmul nsz double %i.kt, 6.553500e+04
  %i.kv = fmul nsz double %i.jr, %i.ku
  %i.kw = call i64 @llvm.lrint.i64.f64(double %i.kv)
  %i.kx = trunc i64 %i.kw to i16
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ky = load i32, ptr %i.ke, align 8, !tbaa !91
  %i.kz = trunc i32 %i.ky to i16
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %storemerge.us = phi i16 [ %i.kz, %bb.ay ], [ %i.kx, %bb.ax ]
  %.10.us331 = getelementptr inbounds nuw i8, ptr %.9318.us328, i64 2
  store i16 %storemerge.us, ptr %.9318.us328, align 2, !tbaa !93
  %i.la = getelementptr inbounds nuw i8, ptr %.17316.us330, i64 8 ; 2 uses
  %i.lb = add nuw nsw i32 %.7178317.us329, 1      ; 2 uses
  %exitcond439.not = icmp eq i32 %i.lb, %i.kb
  br i1 %exitcond439.not, label %._crit_edge321.split.us332, label %bb.aw, !llvm.loop !29

._crit_edge321.split.us332:                       ; preds = %bb.az
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %exitcond444.not = icmp eq i64 %indvars.iv.next441, %wide.trip.count449
  br i1 %exitcond444.not, label %.loopexit, label %.lr.ph320.us, !llvm.loop !30

.preheader268:                                    ; preds = %bb.av
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !87 ; 3 uses
  %i.le = icmp sgt i32 %i.ld, 0
  br i1 %i.le, label %.lr.ph346, label %.loopexit

.lr.ph346:                                        ; preds = %.preheader268
  %i.lf = load ptr, ptr %1, align 8, !tbaa !89    ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !88 ; 8 uses
  %i.li = icmp sgt i32 %i.lh, 0
  %i.lj = load i32, ptr %i.ak, align 8
  %.not205 = icmp eq i32 %i.lj, 0
  %i.lk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br i1 %i.li, label %.lr.ph340.preheader, label %.loopexit

.lr.ph340.preheader:                              ; preds = %.lr.ph346
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !13 ; 2 uses
  %i.lo = zext nneg i32 %i.ld to i64
  %i.lp = sext i32 %i.ln to i64                   ; 2 uses
  %wide.trip.count456 = zext nneg i32 %i.ld to i64 ; 2 uses
  %i.lq = add nsw i64 %wide.trip.count456, -1
  %i.lr = mul nsw i64 %i.lq, %i.lp
  %scevgep = getelementptr i8, ptr %i.lf, i64 %i.lr
  %i.ls = add nsw i32 %i.lh, -1
  %i.lt = zext i32 %i.ls to i64                   ; 2 uses
  %i.lu = shl nuw nsw i64 %i.lt, 1
  %i.lv = getelementptr i8, ptr %i.lf, i64 %i.lu
  %scevgep610 = getelementptr i8, ptr %i.lv, i64 2
  %i.lw = shl nuw nsw i64 %i.lt, 2
  %i.lx = zext nneg i32 %i.lh to i64              ; 2 uses
  %min.iters.check613 = icmp ult i32 %i.lh, 4
  %stride.check = icmp sgt i32 %i.ln, 0
  %n.vec615 = and i64 %i.lx, 2147483644           ; 5 uses
  %i.ly = shl nuw nsw i64 %n.vec615, 1
  %i.lz = trunc nuw nsw i64 %n.vec615 to i32
  %i.ma = shl nuw nsw i64 %n.vec615, 2
  %broadcast.splatinsert616 = insertelement <4 x double> poison, double %i.jo, i64 0
  %broadcast.splat617 = shufflevector <4 x double> %broadcast.splatinsert616, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert618 = insertelement <4 x double> poison, double %i.jr, i64 0
  %broadcast.splat619 = shufflevector <4 x double> %broadcast.splatinsert618, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n627 = icmp eq i64 %n.vec615, %i.lx
  br label %.lr.ph340

.preheader266:                                    ; preds = %bb.av
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !87 ; 3 uses
  %i.md = icmp sgt i32 %i.mc, 0
  br i1 %i.md, label %.lr.ph357, label %.loopexit

.lr.ph357:                                        ; preds = %.preheader266
  %i.me = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !88 ; 7 uses
  %i.mh = icmp sgt i32 %i.mg, 0
  %i.mi = load i32, ptr %i.ak, align 8
  %.not208 = icmp eq i32 %i.mi, 0
  %i.mj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.mk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br i1 %i.mh, label %.lr.ph351.preheader, label %.loopexit

.lr.ph351.preheader:                              ; preds = %.lr.ph357
  %i.ml = ptrtoaddr ptr %i.me to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !13
  %i.mo = zext nneg i32 %i.mc to i64
  %i.mp = sext i32 %i.mn to i64                   ; 3 uses
  %wide.trip.count463 = zext nneg i32 %i.mc to i64 ; 2 uses
  %i.mq = add nsw i64 %wide.trip.count463, -1
  %i.mr = mul nsw i64 %i.mq, %i.mp
  %i.ms = add i64 %i.mr, %i.ml
  %i.mt = zext nneg i32 %i.mg to i64              ; 2 uses
  %min.iters.check635 = icmp ult i32 %i.mg, 8
  %n.vec637 = and i64 %i.mt, 2147483640           ; 4 uses
  %i.mu = shl nuw nsw i64 %n.vec637, 1            ; 2 uses
  %i.mv = trunc nuw nsw i64 %n.vec637 to i32
  %broadcast.splatinsert638 = insertelement <8 x double> poison, double %i.jo, i64 0
  %broadcast.splat639 = shufflevector <8 x double> %broadcast.splatinsert638, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert640 = insertelement <8 x double> poison, double %i.jr, i64 0
  %broadcast.splat641 = shufflevector <8 x double> %broadcast.splatinsert640, <8 x double> poison, <8 x i32> zeroinitializer
  %cmp.n649 = icmp eq i64 %n.vec637, %i.mt
  br label %.lr.ph351

.preheader264:                                    ; preds = %bb.av
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !87 ; 2 uses
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %.lr.ph367, label %.loopexit

.lr.ph367:                                        ; preds = %.preheader264
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre482 = load i32, ptr %i.na, align 8, !tbaa !88
  br label %bb.bg

.preheader262:                                    ; preds = %bb.av
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !87 ; 3 uses
end_hunk_1
begin_hunk_2_@fits_decode_frame:bb.a
  %i.qj = trunc i64 %i.qi to i16
  store i16 %i.qj, ptr %.1165381.us.epil.init, align 2, !tbaa !93
  %i.qk = getelementptr inbounds nuw i8, ptr %.7254379.us.epil.init, i64 8
  br label %._crit_edge384

._crit_edge384:                                   ; preds = %bb.bc, %.lr.ph383.split.us.epil.preheader, %._crit_edge384.loopexit.unr-lcssa
  %.us-phi386 = phi ptr [ %i.qk, %.lr.ph383.split.us.epil.preheader ], [ %i.po, %._crit_edge384.loopexit.unr-lcssa ], [ %i.qa, %bb.bc ]
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %exitcond478.not = icmp eq i64 %indvars.iv.next475, %wide.trip.count477
  br i1 %exitcond478.not, label %.loopexit, label %.lr.ph383, !llvm.loop !32

.lr.ph372:                                        ; preds = %.lr.ph372.preheader, %._crit_edge373
  %indvars.iv467 = phi i64 [ 0, %.lr.ph372.preheader ], [ %indvars.iv.next468, %._crit_edge373 ] ; 2 uses
  %.8255376 = phi ptr [ %i.ac, %.lr.ph372.preheader ], [ %.us-phi375, %._crit_edge373 ] ; 7 uses
  %i.ql = xor i64 %indvars.iv467, -1
  %i.qm = add nsw i64 %i.np, %i.ql
  %i.qn = mul nsw i64 %i.qm, %i.nq
  %i.qo = getelementptr inbounds i8, ptr %i.ng, i64 %i.qn ; 5 uses
  %i.qp = load i64, ptr %i.nl, align 8
  %i.qq = sitofp nsz i64 %i.qp to float
  br i1 %.not214, label %.lr.ph372.split.us.preheader, label %.lr.ph372.split

.lr.ph372.split.us.preheader:                     ; preds = %.lr.ph372
  br i1 %min.iters.check662, label %.lr.ph372.split.us.preheader682, label %vector.memcheck653

vector.memcheck653:                               ; preds = %.lr.ph372.split.us.preheader
  %i.qr = getelementptr i8, ptr %.8255376, i64 %i.nx
  %scevgep656 = getelementptr i8, ptr %i.qr, i64 4
  %bound0657 = icmp ult ptr %scevgep654, %scevgep656
  %bound1658 = icmp ult ptr %.8255376, %scevgep655
  %found.conflict659 = and i1 %bound0657, %bound1658
  %i.qs = or i1 %found.conflict659, %stride.check660
  br i1 %i.qs, label %.lr.ph372.split.us.preheader682, label %vector.ph663

vector.ph663:                                     ; preds = %vector.memcheck653
  %i.qt = getelementptr i8, ptr %i.qo, i64 %i.nz
  %i.qu = getelementptr i8, ptr %.8255376, i64 %i.ob ; 2 uses
  br label %vector.body669

vector.body669:                                   ; preds = %vector.body669, %vector.ph663
  %index670 = phi i64 [ 0, %vector.ph663 ], [ %index.next674, %vector.body669 ] ; 3 uses
  %i.qv = shl i64 %index670, 1
  %next.gep671 = getelementptr i8, ptr %i.qo, i64 %i.qv
  %i.qw = shl i64 %index670, 2
  %next.gep672 = getelementptr i8, ptr %.8255376, i64 %i.qw
  %wide.load673 = load <4 x i32>, ptr %next.gep672, align 1, !tbaa !18, !alias.scope !99
  %i.qx = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load673)
  %i.qy = bitcast <4 x i32> %i.qx to <4 x float>
  %i.qz = fpext nsz <4 x float> %i.qy to <4 x double>
  %i.ra = fsub nsz <4 x double> %i.qz, %broadcast.splat666
  %i.rb = fmul nsz <4 x double> %i.ra, splat (double 6.553500e+04)
  %i.rc = fmul nsz <4 x double> %broadcast.splat668, %i.rb
  %i.rd = call <4 x i64> @llvm.lrint.v4i64.v4f64(<4 x double> %i.rc)
  %i.re = trunc <4 x i64> %i.rd to <4 x i16>
  store <4 x i16> %i.re, ptr %next.gep671, align 2, !tbaa !93, !alias.scope !100, !noalias !99
  %index.next674 = add nuw i64 %index670, 4       ; 2 uses
  %i.rf = icmp eq i64 %index.next674, %n.vec664
  br i1 %i.rf, label %middle.block675, label %vector.body669, !llvm.loop !36

middle.block675:                                  ; preds = %vector.body669
  br i1 %cmp.n676, label %._crit_edge373, label %.lr.ph372.split.us.preheader682

.lr.ph372.split.us.preheader682:                  ; preds = %vector.memcheck653, %.lr.ph372.split.us.preheader, %middle.block675
  %.3370.us.ph = phi ptr [ %i.qo, %vector.memcheck653 ], [ %i.qo, %.lr.ph372.split.us.preheader ], [ %i.qt, %middle.block675 ] ; 3 uses
  %.3174369.us.ph = phi i32 [ 0, %vector.memcheck653 ], [ 0, %.lr.ph372.split.us.preheader ], [ %i.oa, %middle.block675 ] ; 4 uses
  %.9256368.us.ph = phi ptr [ %.8255376, %vector.memcheck653 ], [ %.8255376, %.lr.ph372.split.us.preheader ], [ %i.qu, %middle.block675 ] ; 3 uses
  %i.rg = sub i32 %i.ni, %.3174369.us.ph
  %.neg736 = add i32 %.3174369.us.ph, 1
  %xtraiter726 = and i32 %i.rg, 1
  %lcmp.mod727.not = icmp eq i32 %xtraiter726, 0
  br i1 %lcmp.mod727.not, label %.lr.ph372.split.us.prol.loopexit, label %.lr.ph372.split.us.prol

.lr.ph372.split.us.prol:                          ; preds = %.lr.ph372.split.us.preheader682
  %i.rh = load i32, ptr %.9256368.us.ph, align 1, !tbaa !18
  %i.ri = call i32 @llvm.bswap.i32(i32 %i.rh)
  %i.rj = bitcast i32 %i.ri to float
  %i.rk = fpext nsz float %i.rj to double
  %i.rl = fsub nsz double %i.rk, %i.jo
  %i.rm = fmul nsz double %i.rl, 6.553500e+04
  %i.rn = fmul nsz double %i.jr, %i.rm
  %i.ro = call i64 @llvm.lrint.i64.f64(double %i.rn)
  %i.rp = trunc i64 %i.ro to i16
  %.4.us.prol = getelementptr inbounds nuw i8, ptr %.3370.us.ph, i64 2
  store i16 %i.rp, ptr %.3370.us.ph, align 2, !tbaa !93
  %i.rq = getelementptr inbounds nuw i8, ptr %.9256368.us.ph, i64 4 ; 2 uses
  %i.rr = add nuw nsw i32 %.3174369.us.ph, 1
  br label %.lr.ph372.split.us.prol.loopexit

.lr.ph372.split.us.prol.loopexit:                 ; preds = %.lr.ph372.split.us.prol, %.lr.ph372.split.us.preheader682
  %.lcssa686.unr = phi ptr [ poison, %.lr.ph372.split.us.preheader682 ], [ %i.rq, %.lr.ph372.split.us.prol ]
  %.3370.us.unr = phi ptr [ %.3370.us.ph, %.lr.ph372.split.us.preheader682 ], [ %.4.us.prol, %.lr.ph372.split.us.prol ]
  %.3174369.us.unr = phi i32 [ %.3174369.us.ph, %.lr.ph372.split.us.preheader682 ], [ %i.rr, %.lr.ph372.split.us.prol ]
  %.9256368.us.unr = phi ptr [ %.9256368.us.ph, %.lr.ph372.split.us.preheader682 ], [ %i.rq, %.lr.ph372.split.us.prol ]
  %i.rs = icmp eq i32 %i.ni, %.neg736
  br i1 %i.rs, label %._crit_edge373, label %.lr.ph372.split.us

.lr.ph372.split.us:                               ; preds = %.lr.ph372.split.us.prol.loopexit, %.lr.ph372.split.us
  %.3370.us = phi ptr [ %.4.us.1, %.lr.ph372.split.us ], [ %.3370.us.unr, %.lr.ph372.split.us.prol.loopexit ] ; 3 uses
  %.3174369.us = phi i32 [ %i.sn, %.lr.ph372.split.us ], [ %.3174369.us.unr, %.lr.ph372.split.us.prol.loopexit ]
  %.9256368.us = phi ptr [ %i.sm, %.lr.ph372.split.us ], [ %.9256368.us.unr, %.lr.ph372.split.us.prol.loopexit ] ; 3 uses
  %i.rt = load i32, ptr %.9256368.us, align 1, !tbaa !18
  %i.ru = call i32 @llvm.bswap.i32(i32 %i.rt)
  %i.rv = bitcast i32 %i.ru to float
  %i.rw = fpext nsz float %i.rv to double
  %i.rx = fsub nsz double %i.rw, %i.jo
  %i.ry = fmul nsz double %i.rx, 6.553500e+04
  %i.rz = fmul nsz double %i.jr, %i.ry
  %i.sa = call i64 @llvm.lrint.i64.f64(double %i.rz)
  %i.sb = trunc i64 %i.sa to i16
  %.4.us = getelementptr inbounds nuw i8, ptr %.3370.us, i64 2
  store i16 %i.sb, ptr %.3370.us, align 2, !tbaa !93
  %i.sc = getelementptr inbounds nuw i8, ptr %.9256368.us, i64 4
  %i.sd = load i32, ptr %i.sc, align 1, !tbaa !18
  %i.se = call i32 @llvm.bswap.i32(i32 %i.sd)
  %i.sf = bitcast i32 %i.se to float
  %i.sg = fpext nsz float %i.sf to double
  %i.sh = fsub nsz double %i.sg, %i.jo
  %i.si = fmul nsz double %i.sh, 6.553500e+04
  %i.sj = fmul nsz double %i.jr, %i.si
  %i.sk = call i64 @llvm.lrint.i64.f64(double %i.sj)
  %i.sl = trunc i64 %i.sk to i16
  %.4.us.1 = getelementptr inbounds nuw i8, ptr %.3370.us, i64 4
  store i16 %i.sl, ptr %.4.us, align 2, !tbaa !93
  %i.sm = getelementptr inbounds nuw i8, ptr %.9256368.us, i64 8 ; 2 uses
  %i.sn = add nuw nsw i32 %.3174369.us, 2         ; 2 uses
  %exitcond466.not.1 = icmp eq i32 %i.sn, %i.ni
  br i1 %exitcond466.not.1, label %._crit_edge373, label %.lr.ph372.split.us, !llvm.loop !37

.lr.ph372.split:                                  ; preds = %.lr.ph372, %bb.bf
  %.3370 = phi ptr [ %.4, %bb.bf ], [ %i.qo, %.lr.ph372 ] ; 2 uses
  %.3174369 = phi i32 [ %i.tb, %bb.bf ], [ 0, %.lr.ph372 ]
  %.9256368 = phi ptr [ %i.ta, %bb.bf ], [ %.8255376, %.lr.ph372 ] ; 2 uses
  %i.so = load i32, ptr %.9256368, align 1, !tbaa !18
  %i.sp = call i32 @llvm.bswap.i32(i32 %i.so)
  %i.sq = bitcast i32 %i.sp to float              ; 2 uses
  %i.sr = fcmp nsz une float %i.sq, %i.qq
  br i1 %i.sr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph372.split
  %i.ss = fpext nsz float %i.sq to double
  %i.st = fsub nsz double %i.ss, %i.jo
  %i.su = fmul nsz double %i.st, 6.553500e+04
  %i.sv = fmul nsz double %i.jr, %i.su
  %i.sw = call i64 @llvm.lrint.i64.f64(double %i.sv)
  %i.sx = trunc i64 %i.sw to i16
  br label %bb.bf

bb.be:                                            ; preds = %.lr.ph372.split
  %i.sy = load i32, ptr %i.nm, align 8, !tbaa !91
  %i.sz = trunc i32 %i.sy to i16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %storemerge215 = phi i16 [ %i.sz, %bb.be ], [ %i.sx, %bb.bd ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3370, i64 2
  store i16 %storemerge215, ptr %.3370, align 2, !tbaa !93
  %i.ta = getelementptr inbounds nuw i8, ptr %.9256368, i64 4 ; 2 uses
  %i.tb = add nuw nsw i32 %.3174369, 1            ; 2 uses
  %exitcond465.not = icmp eq i32 %i.tb, %i.ni
  br i1 %exitcond465.not, label %._crit_edge373, label %.lr.ph372.split, !llvm.loop !38

._crit_edge373:                                   ; preds = %bb.bf, %.lr.ph372.split.us.prol.loopexit, %.lr.ph372.split.us, %middle.block675
  %.us-phi375 = phi ptr [ %i.sm, %.lr.ph372.split.us ], [ %i.qu, %middle.block675 ], [ %.lcssa686.unr, %.lr.ph372.split.us.prol.loopexit ], [ %i.ta, %bb.bf ]
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %exitcond471.not = icmp eq i64 %indvars.iv.next468, %wide.trip.count470
  br i1 %exitcond471.not, label %.loopexit, label %.lr.ph372, !llvm.loop !39

bb.bg:                                            ; preds = %.lr.ph367, %._crit_edge363
  %i.tc = phi i32 [ %i.mx, %.lr.ph367 ], [ %i.ud, %._crit_edge363 ] ; 2 uses
  %i.td = phi i32 [ %.pre482, %.lr.ph367 ], [ %i.ue, %._crit_edge363 ] ; 2 uses
  %.4183366 = phi i32 [ 0, %.lr.ph367 ], [ %i.uf, %._crit_edge363 ] ; 2 uses
  %.10257365 = phi ptr [ %i.ac, %.lr.ph367 ], [ %.11.lcssa, %._crit_edge363 ] ; 2 uses
  %i.te = icmp sgt i32 %i.td, 0
  br i1 %i.te, label %.lr.ph362.preheader, label %._crit_edge363

.lr.ph362.preheader:                              ; preds = %bb.bg
  %i.tf = load ptr, ptr %1, align 8, !tbaa !89
  %i.tg = load i32, ptr %i.mz, align 8, !tbaa !13
  %i.th = xor i32 %.4183366, -1
  %i.ti = add i32 %i.tc, %i.th
  %i.tj = mul nsw i32 %i.tg, %i.ti
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds i8, ptr %i.tf, i64 %i.tk
  br label %.lr.ph362

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %bb.bj
  %.1167360 = phi ptr [ %.2168, %bb.bj ], [ %i.tl, %.lr.ph362.preheader ] ; 2 uses
  %.4175359 = phi i32 [ %i.ua, %bb.bj ], [ 0, %.lr.ph362.preheader ]
  %.11358 = phi ptr [ %i.tz, %bb.bj ], [ %.10257365, %.lr.ph362.preheader ] ; 2 uses
  %i.tm = load i8, ptr %.11358, align 1, !tbaa !18 ; 2 uses
  %i.tn = load i32, ptr %i.ak, align 8, !tbaa !14
  %.not211 = icmp ne i32 %i.tn, 0
  %i.to = zext i8 %i.tm to i64
  %i.tp = load i64, ptr %i.nb, align 8
  %.not212 = icmp eq i64 %i.tp, %i.to
  %or.cond228 = select i1 %.not211, i1 %.not212, i1 false
  br i1 %or.cond228, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph362
  %i.tq = uitofp i8 %i.tm to double
  %i.tr = load double, ptr %i.jn, align 8, !tbaa !16
  %i.ts = fsub nsz double %i.tq, %i.tr
  %i.tt = fmul nsz double %i.ts, 2.550000e+02
  %i.tu = fmul nsz double %i.jr, %i.tt
  %i.tv = call i64 @llvm.lrint.i64.f64(double %i.tu)
  %i.tw = trunc i64 %i.tv to i8
  br label %bb.bj

bb.bi:                                            ; preds = %.lr.ph362
  %i.tx = load i32, ptr %i.nc, align 8, !tbaa !91
  %i.ty = trunc i32 %i.tx to i8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %storemerge213 = phi i8 [ %i.ty, %bb.bi ], [ %i.tw, %bb.bh ]
  %.2168 = getelementptr inbounds nuw i8, ptr %.1167360, i64 1
  store i8 %storemerge213, ptr %.1167360, align 1, !tbaa !18
  %i.tz = getelementptr inbounds nuw i8, ptr %.11358, i64 1 ; 2 uses
  %i.ua = add nuw nsw i32 %.4175359, 1            ; 2 uses
  %i.ub = load i32, ptr %i.na, align 8, !tbaa !88 ; 2 uses
  %i.uc = icmp slt i32 %i.ua, %i.ub
  br i1 %i.uc, label %.lr.ph362, label %._crit_edge363.loopexit, !llvm.loop !40

._crit_edge363.loopexit:                          ; preds = %bb.bj
  %.pre483 = load i32, ptr %i.mw, align 4, !tbaa !87
  br label %._crit_edge363

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit, %bb.bg
  %i.ud = phi i32 [ %i.tc, %bb.bg ], [ %.pre483, %._crit_edge363.loopexit ] ; 2 uses
  %i.ue = phi i32 [ %i.td, %bb.bg ], [ %i.ub, %._crit_edge363.loopexit ]
  %.11.lcssa = phi ptr [ %.10257365, %bb.bg ], [ %i.tz, %._crit_edge363.loopexit ]
  %i.uf = add nuw nsw i32 %.4183366, 1            ; 2 uses
  %i.ug = icmp slt i32 %i.uf, %i.ud
  br i1 %i.ug, label %bb.bg, label %.loopexit, !llvm.loop !41

.lr.ph351:                                        ; preds = %.lr.ph351.preheader, %._crit_edge352
  %indvars.iv460 = phi i64 [ 0, %.lr.ph351.preheader ], [ %indvars.iv.next461, %._crit_edge352 ] ; 3 uses
  %.12355 = phi ptr [ %i.ac, %.lr.ph351.preheader ], [ %.us-phi354, %._crit_edge352 ] ; 6 uses
  %i.uh = mul i64 %indvars.iv460, %i.mp
  %.12355632 = ptrtoaddr ptr %.12355 to i64
  %i.ui = xor i64 %indvars.iv460, -1
  %i.uj = add nsw i64 %i.mo, %i.ui
  %i.uk = mul nsw i64 %i.uj, %i.mp
  %i.ul = getelementptr inbounds i8, ptr %i.me, i64 %i.uk ; 5 uses
  %i.um = load i64, ptr %i.mj, align 8
  br i1 %.not208, label %.lr.ph351.split.us.preheader, label %.lr.ph351.split

.lr.ph351.split.us.preheader:                     ; preds = %.lr.ph351
  br i1 %min.iters.check635, label %.lr.ph351.split.us.preheader690, label %vector.memcheck631

vector.memcheck631:                               ; preds = %.lr.ph351.split.us.preheader
  %i.un = add i64 %i.uh, %.12355632
  %i.uo = sub i64 %i.un, %i.ms
  %diff.check633 = icmp ugt i64 %i.uo, -16
  br i1 %diff.check633, label %.lr.ph351.split.us.preheader690, label %vector.ph636

vector.ph636:                                     ; preds = %vector.memcheck631
  %i.up = getelementptr i8, ptr %i.ul, i64 %i.mu
  %i.uq = getelementptr i8, ptr %.12355, i64 %i.mu ; 2 uses
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph636
  %index643 = phi i64 [ 0, %vector.ph636 ], [ %index.next647, %vector.body642 ] ; 2 uses
  %i.ur = shl i64 %index643, 1                    ; 2 uses
  %next.gep644 = getelementptr i8, ptr %i.ul, i64 %i.ur
  %next.gep645 = getelementptr i8, ptr %.12355, i64 %i.ur
  %wide.load646 = load <8 x i16>, ptr %next.gep645, align 1, !tbaa !18
  %i.us = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load646)
  %i.ut = sitofp <8 x i16> %i.us to <8 x double>
  %i.uu = fsub nsz <8 x double> %i.ut, %broadcast.splat639
  %i.uv = fmul nsz <8 x double> %i.uu, splat (double 6.553500e+04)
  %i.uw = fmul nsz <8 x double> %broadcast.splat641, %i.uv
  %i.ux = call <8 x i64> @llvm.lrint.v8i64.v8f64(<8 x double> %i.uw)
  %i.uy = trunc <8 x i64> %i.ux to <8 x i16>
  store <8 x i16> %i.uy, ptr %next.gep644, align 2, !tbaa !93
  %index.next647 = add nuw i64 %index643, 8       ; 2 uses
  %i.uz = icmp eq i64 %index.next647, %n.vec637
  br i1 %i.uz, label %middle.block648, label %vector.body642, !llvm.loop !42

middle.block648:                                  ; preds = %vector.body642
  br i1 %cmp.n649, label %._crit_edge352, label %.lr.ph351.split.us.preheader690

.lr.ph351.split.us.preheader690:                  ; preds = %vector.memcheck631, %.lr.ph351.split.us.preheader, %middle.block648
  %.5349.us.ph = phi ptr [ %i.ul, %vector.memcheck631 ], [ %i.ul, %.lr.ph351.split.us.preheader ], [ %i.up, %middle.block648 ] ; 3 uses
  %.5176348.us.ph = phi i32 [ 0, %vector.memcheck631 ], [ 0, %.lr.ph351.split.us.preheader ], [ %i.mv, %middle.block648 ] ; 4 uses
  %.13347.us.ph = phi ptr [ %.12355, %vector.memcheck631 ], [ %.12355, %.lr.ph351.split.us.preheader ], [ %i.uq, %middle.block648 ] ; 3 uses
  %i.va = sub i32 %i.mg, %.5176348.us.ph
  %.neg735 = add i32 %.5176348.us.ph, 1
  %xtraiter724 = and i32 %i.va, 1
  %lcmp.mod725.not = icmp eq i32 %xtraiter724, 0
  br i1 %lcmp.mod725.not, label %.lr.ph351.split.us.prol.loopexit, label %.lr.ph351.split.us.prol

.lr.ph351.split.us.prol:                          ; preds = %.lr.ph351.split.us.preheader690
  %i.vb = load i16, ptr %.13347.us.ph, align 1, !tbaa !18
  %i.vc = call i16 @llvm.bswap.i16(i16 %i.vb)
  %i.vd = sitofp i16 %i.vc to double
  %i.ve = fsub nsz double %i.vd, %i.jo
  %i.vf = fmul nsz double %i.ve, 6.553500e+04
  %i.vg = fmul nsz double %i.jr, %i.vf
  %i.vh = call i64 @llvm.lrint.i64.f64(double %i.vg)
  %i.vi = trunc i64 %i.vh to i16
  %.6.us.prol = getelementptr inbounds nuw i8, ptr %.5349.us.ph, i64 2
  store i16 %i.vi, ptr %.5349.us.ph, align 2, !tbaa !93
  %i.vj = getelementptr inbounds nuw i8, ptr %.13347.us.ph, i64 2 ; 2 uses
  %i.vk = add nuw nsw i32 %.5176348.us.ph, 1
  br label %.lr.ph351.split.us.prol.loopexit

.lr.ph351.split.us.prol.loopexit:                 ; preds = %.lr.ph351.split.us.prol, %.lr.ph351.split.us.preheader690
  %.lcssa694.unr = phi ptr [ poison, %.lr.ph351.split.us.preheader690 ], [ %i.vj, %.lr.ph351.split.us.prol ]
  %.5349.us.unr = phi ptr [ %.5349.us.ph, %.lr.ph351.split.us.preheader690 ], [ %.6.us.prol, %.lr.ph351.split.us.prol ]
  %.5176348.us.unr = phi i32 [ %.5176348.us.ph, %.lr.ph351.split.us.preheader690 ], [ %i.vk, %.lr.ph351.split.us.prol ]
  %.13347.us.unr = phi ptr [ %.13347.us.ph, %.lr.ph351.split.us.preheader690 ], [ %i.vj, %.lr.ph351.split.us.prol ]
  %i.vl = icmp eq i32 %i.mg, %.neg735
  br i1 %i.vl, label %._crit_edge352, label %.lr.ph351.split.us

.lr.ph351.split.us:                               ; preds = %.lr.ph351.split.us.prol.loopexit, %.lr.ph351.split.us
  %.5349.us = phi ptr [ %.6.us.1, %.lr.ph351.split.us ], [ %.5349.us.unr, %.lr.ph351.split.us.prol.loopexit ] ; 3 uses
  %.5176348.us = phi i32 [ %i.we, %.lr.ph351.split.us ], [ %.5176348.us.unr, %.lr.ph351.split.us.prol.loopexit ]
  %.13347.us = phi ptr [ %i.wd, %.lr.ph351.split.us ], [ %.13347.us.unr, %.lr.ph351.split.us.prol.loopexit ] ; 3 uses
  %i.vm = load i16, ptr %.13347.us, align 1, !tbaa !18
  %i.vn = call i16 @llvm.bswap.i16(i16 %i.vm)
  %i.vo = sitofp i16 %i.vn to double
  %i.vp = fsub nsz double %i.vo, %i.jo
  %i.vq = fmul nsz double %i.vp, 6.553500e+04
  %i.vr = fmul nsz double %i.jr, %i.vq
  %i.vs = call i64 @llvm.lrint.i64.f64(double %i.vr)
  %i.vt = trunc i64 %i.vs to i16
  %.6.us = getelementptr inbounds nuw i8, ptr %.5349.us, i64 2
  store i16 %i.vt, ptr %.5349.us, align 2, !tbaa !93
  %i.vu = getelementptr inbounds nuw i8, ptr %.13347.us, i64 2
  %i.vv = load i16, ptr %i.vu, align 1, !tbaa !18
  %i.vw = call i16 @llvm.bswap.i16(i16 %i.vv)
  %i.vx = sitofp i16 %i.vw to double
  %i.vy = fsub nsz double %i.vx, %i.jo
  %i.vz = fmul nsz double %i.vy, 6.553500e+04
  %i.wa = fmul nsz double %i.jr, %i.vz
  %i.wb = call i64 @llvm.lrint.i64.f64(double %i.wa)
  %i.wc = trunc i64 %i.wb to i16
  %.6.us.1 = getelementptr inbounds nuw i8, ptr %.5349.us, i64 4
  store i16 %i.wc, ptr %.6.us, align 2, !tbaa !93
  %i.wd = getelementptr inbounds nuw i8, ptr %.13347.us, i64 4 ; 2 uses
  %i.we = add nuw nsw i32 %.5176348.us, 2         ; 2 uses
  %exitcond459.not.1 = icmp eq i32 %i.we, %i.mg
  br i1 %exitcond459.not.1, label %._crit_edge352, label %.lr.ph351.split.us, !llvm.loop !43

.lr.ph351.split:                                  ; preds = %.lr.ph351, %bb.bm
  %.5349 = phi ptr [ %.6, %bb.bm ], [ %i.ul, %.lr.ph351 ] ; 2 uses
  %.5176348 = phi i32 [ %i.wr, %bb.bm ], [ 0, %.lr.ph351 ]
  %.13347 = phi ptr [ %i.wq, %bb.bm ], [ %.12355, %.lr.ph351 ] ; 2 uses
  %i.wf = load i16, ptr %.13347, align 1, !tbaa !18
  %i.wg = call i16 @llvm.bswap.i16(i16 %i.wf)     ; 2 uses
  %i.wh = sext i16 %i.wg to i64
  %.not209 = icmp eq i64 %i.um, %i.wh
  br i1 %.not209, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph351.split
  %i.wi = sitofp i16 %i.wg to double
  %i.wj = fsub nsz double %i.wi, %i.jo
  %i.wk = fmul nsz double %i.wj, 6.553500e+04
  %i.wl = fmul nsz double %i.jr, %i.wk
  %i.wm = call i64 @llvm.lrint.i64.f64(double %i.wl)
  %i.wn = trunc i64 %i.wm to i16
  br label %bb.bm

bb.bl:                                            ; preds = %.lr.ph351.split
  %i.wo = load i32, ptr %i.mk, align 8, !tbaa !91
  %i.wp = trunc i32 %i.wo to i16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %storemerge210 = phi i16 [ %i.wp, %bb.bl ], [ %i.wn, %bb.bk ]
  %.6 = getelementptr inbounds nuw i8, ptr %.5349, i64 2
  store i16 %storemerge210, ptr %.5349, align 2, !tbaa !93
  %i.wq = getelementptr inbounds nuw i8, ptr %.13347, i64 2 ; 2 uses
  %i.wr = add nuw nsw i32 %.5176348, 1            ; 2 uses
  %exitcond458.not = icmp eq i32 %i.wr, %i.mg
  br i1 %exitcond458.not, label %._crit_edge352, label %.lr.ph351.split, !llvm.loop !44

._crit_edge352:                                   ; preds = %bb.bm, %.lr.ph351.split.us.prol.loopexit, %.lr.ph351.split.us, %middle.block648
  %.us-phi354 = phi ptr [ %i.wd, %.lr.ph351.split.us ], [ %i.uq, %middle.block648 ], [ %.lcssa694.unr, %.lr.ph351.split.us.prol.loopexit ], [ %i.wq, %bb.bm ]
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 2 uses
  %exitcond464.not = icmp eq i64 %indvars.iv.next461, %wide.trip.count463
  br i1 %exitcond464.not, label %.loopexit, label %.lr.ph351, !llvm.loop !45

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %._crit_edge341
  %indvars.iv453 = phi i64 [ 0, %.lr.ph340.preheader ], [ %indvars.iv.next454, %._crit_edge341 ] ; 2 uses
  %.14344 = phi ptr [ %i.ac, %.lr.ph340.preheader ], [ %.us-phi343, %._crit_edge341 ] ; 7 uses
  %i.ws = xor i64 %indvars.iv453, -1
  %i.wt = add nsw i64 %i.lo, %i.ws
  %i.wu = mul nsw i64 %i.wt, %i.lp
  %i.wv = getelementptr inbounds i8, ptr %i.lf, i64 %i.wu ; 5 uses
  %i.ww = load i64, ptr %i.lk, align 8
  br i1 %.not205, label %.lr.ph340.split.us.preheader, label %.lr.ph340.split

.lr.ph340.split.us.preheader:                     ; preds = %.lr.ph340
  br i1 %min.iters.check613, label %.lr.ph340.split.us.preheader695, label %vector.memcheck609

vector.memcheck609:                               ; preds = %.lr.ph340.split.us.preheader
  %i.wx = getelementptr i8, ptr %.14344, i64 %i.lw
  %scevgep611 = getelementptr i8, ptr %i.wx, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep611
end_hunk_2
begin_hunk_3_@fits_decode_frame:bb.a
  %i.xq = fmul nsz double %i.xp, 6.553500e+04
  %i.xr = fmul nsz double %i.jr, %i.xq
  %i.xs = call i64 @llvm.lrint.i64.f64(double %i.xr)
  %i.xt = trunc i64 %i.xs to i16
  %.8.us.prol = getelementptr inbounds nuw i8, ptr %.7338.us.ph, i64 2
  store i16 %i.xt, ptr %.7338.us.ph, align 2, !tbaa !93
  %i.xu = getelementptr inbounds nuw i8, ptr %.15336.us.ph, i64 4 ; 2 uses
  %i.xv = add nuw nsw i32 %.6177337.us.ph, 1
  br label %.lr.ph340.split.us.prol.loopexit

.lr.ph340.split.us.prol.loopexit:                 ; preds = %.lr.ph340.split.us.prol, %.lr.ph340.split.us.preheader695
  %.lcssa699.unr = phi ptr [ poison, %.lr.ph340.split.us.preheader695 ], [ %i.xu, %.lr.ph340.split.us.prol ]
  %.7338.us.unr = phi ptr [ %.7338.us.ph, %.lr.ph340.split.us.preheader695 ], [ %.8.us.prol, %.lr.ph340.split.us.prol ]
  %.6177337.us.unr = phi i32 [ %.6177337.us.ph, %.lr.ph340.split.us.preheader695 ], [ %i.xv, %.lr.ph340.split.us.prol ]
  %.15336.us.unr = phi ptr [ %.15336.us.ph, %.lr.ph340.split.us.preheader695 ], [ %i.xu, %.lr.ph340.split.us.prol ]
  %i.xw = icmp eq i32 %i.lh, %.neg734
  br i1 %i.xw, label %._crit_edge341, label %.lr.ph340.split.us

.lr.ph340.split.us:                               ; preds = %.lr.ph340.split.us.prol.loopexit, %.lr.ph340.split.us
  %.7338.us = phi ptr [ %.8.us.1, %.lr.ph340.split.us ], [ %.7338.us.unr, %.lr.ph340.split.us.prol.loopexit ] ; 3 uses
  %.6177337.us = phi i32 [ %i.yp, %.lr.ph340.split.us ], [ %.6177337.us.unr, %.lr.ph340.split.us.prol.loopexit ]
  %.15336.us = phi ptr [ %i.yo, %.lr.ph340.split.us ], [ %.15336.us.unr, %.lr.ph340.split.us.prol.loopexit ] ; 3 uses
  %i.xx = load i32, ptr %.15336.us, align 1, !tbaa !18
  %i.xy = call i32 @llvm.bswap.i32(i32 %i.xx)
  %i.xz = sitofp nsz i32 %i.xy to double
  %i.ya = fsub nsz double %i.xz, %i.jo
  %i.yb = fmul nsz double %i.ya, 6.553500e+04
  %i.yc = fmul nsz double %i.jr, %i.yb
  %i.yd = call i64 @llvm.lrint.i64.f64(double %i.yc)
  %i.ye = trunc i64 %i.yd to i16
  %.8.us = getelementptr inbounds nuw i8, ptr %.7338.us, i64 2
  store i16 %i.ye, ptr %.7338.us, align 2, !tbaa !93
  %i.yf = getelementptr inbounds nuw i8, ptr %.15336.us, i64 4
  %i.yg = load i32, ptr %i.yf, align 1, !tbaa !18
  %i.yh = call i32 @llvm.bswap.i32(i32 %i.yg)
  %i.yi = sitofp nsz i32 %i.yh to double
  %i.yj = fsub nsz double %i.yi, %i.jo
  %i.yk = fmul nsz double %i.yj, 6.553500e+04
  %i.yl = fmul nsz double %i.jr, %i.yk
  %i.ym = call i64 @llvm.lrint.i64.f64(double %i.yl)
  %i.yn = trunc i64 %i.ym to i16
  %.8.us.1 = getelementptr inbounds nuw i8, ptr %.7338.us, i64 4
  store i16 %i.yn, ptr %.8.us, align 2, !tbaa !93
  %i.yo = getelementptr inbounds nuw i8, ptr %.15336.us, i64 8 ; 2 uses
  %i.yp = add nuw nsw i32 %.6177337.us, 2         ; 2 uses
  %exitcond452.not.1 = icmp eq i32 %i.yp, %i.lh
  br i1 %exitcond452.not.1, label %._crit_edge341, label %.lr.ph340.split.us, !llvm.loop !50

.lr.ph340.split:                                  ; preds = %.lr.ph340, %bb.bp
  %.7338 = phi ptr [ %.8, %bb.bp ], [ %i.wv, %.lr.ph340 ] ; 2 uses
  %.6177337 = phi i32 [ %i.zc, %bb.bp ], [ 0, %.lr.ph340 ]
  %.15336 = phi ptr [ %i.zb, %bb.bp ], [ %.14344, %.lr.ph340 ] ; 2 uses
  %i.yq = load i32, ptr %.15336, align 1, !tbaa !18
  %i.yr = call i32 @llvm.bswap.i32(i32 %i.yq)     ; 2 uses
  %i.ys = sext i32 %i.yr to i64
  %.not206 = icmp eq i64 %i.ww, %i.ys
  br i1 %.not206, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph340.split
  %i.yt = sitofp nsz i32 %i.yr to double
  %i.yu = fsub nsz double %i.yt, %i.jo
  %i.yv = fmul nsz double %i.yu, 6.553500e+04
  %i.yw = fmul nsz double %i.jr, %i.yv
  %i.yx = call i64 @llvm.lrint.i64.f64(double %i.yw)
  %i.yy = trunc i64 %i.yx to i16
  br label %bb.bp

bb.bo:                                            ; preds = %.lr.ph340.split
  %i.yz = load i32, ptr %i.ll, align 8, !tbaa !91
  %i.za = trunc i32 %i.yz to i16
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %storemerge207 = phi i16 [ %i.za, %bb.bo ], [ %i.yy, %bb.bn ]
  %.8 = getelementptr inbounds nuw i8, ptr %.7338, i64 2
  store i16 %storemerge207, ptr %.7338, align 2, !tbaa !93
  %i.zb = getelementptr inbounds nuw i8, ptr %.15336, i64 4 ; 2 uses
  %i.zc = add nuw nsw i32 %.6177337, 1            ; 2 uses
  %exitcond451.not = icmp eq i32 %i.zc, %i.lh
  br i1 %exitcond451.not, label %._crit_edge341, label %.lr.ph340.split, !llvm.loop !51

._crit_edge341:                                   ; preds = %bb.bp, %.lr.ph340.split.us.prol.loopexit, %.lr.ph340.split.us, %middle.block626
  %.us-phi343 = phi ptr [ %i.yo, %.lr.ph340.split.us ], [ %i.xa, %middle.block626 ], [ %.lcssa699.unr, %.lr.ph340.split.us.prol.loopexit ], [ %i.zb, %bb.bp ]
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next454, %wide.trip.count456
  br i1 %exitcond457.not, label %.loopexit, label %.lr.ph340, !llvm.loop !52

.lr.ph320:                                        ; preds = %.lr.ph320.preheader, %._crit_edge321.split.us
  %indvars.iv446 = phi i64 [ %indvars.iv.next447, %._crit_edge321.split.us ], [ 0, %.lr.ph320.preheader ] ; 2 uses
  %.16324 = phi ptr [ %.lcssa701, %._crit_edge321.split.us ], [ %i.ac, %.lr.ph320.preheader ] ; 2 uses
  %i.zd = xor i64 %indvars.iv446, -1
  %i.ze = add nsw i64 %i.ki, %i.zd
  %i.zf = mul nsw i64 %i.ze, %i.kj
  %i.zg = getelementptr inbounds i8, ptr %i.jz, i64 %i.zf ; 2 uses
  br i1 %i.kk, label %.epil.preheader, label %.lr.ph320.new

.lr.ph320.new:                                    ; preds = %.lr.ph320, %.lr.ph320.new
  %.9318.us = phi ptr [ %.10.us.1, %.lr.ph320.new ], [ %i.zg, %.lr.ph320 ] ; 3 uses
  %.17316.us = phi ptr [ %i.zy, %.lr.ph320.new ], [ %.16324, %.lr.ph320 ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph320.new ], [ 0, %.lr.ph320 ]
  %i.zh = load i64, ptr %.17316.us, align 1, !tbaa !18
  %i.zi = call noundef i64 @llvm.bswap.i64(i64 %i.zh)
  %i.zj = sitofp nsz i64 %i.zi to double
  %i.zk = fsub nsz double %i.zj, %i.jo
  %i.zl = fmul nsz double %i.zk, 6.553500e+04
  %i.zm = fmul nsz double %i.jr, %i.zl
  %i.zn = call i64 @llvm.lrint.i64.f64(double %i.zm)
  %i.zo = trunc i64 %i.zn to i16
  %.10.us = getelementptr inbounds nuw i8, ptr %.9318.us, i64 2
  store i16 %i.zo, ptr %.9318.us, align 2, !tbaa !93
  %i.zp = getelementptr inbounds nuw i8, ptr %.17316.us, i64 8
  %i.zq = load i64, ptr %i.zp, align 1, !tbaa !18
  %i.zr = call noundef i64 @llvm.bswap.i64(i64 %i.zq)
  %i.zs = sitofp nsz i64 %i.zr to double
  %i.zt = fsub nsz double %i.zs, %i.jo
  %i.zu = fmul nsz double %i.zt, 6.553500e+04
  %i.zv = fmul nsz double %i.jr, %i.zu
  %i.zw = call i64 @llvm.lrint.i64.f64(double %i.zv)
  %i.zx = trunc i64 %i.zw to i16
  %.10.us.1 = getelementptr inbounds nuw i8, ptr %.9318.us, i64 4 ; 2 uses
  store i16 %i.zx, ptr %.10.us, align 2, !tbaa !93
  %i.zy = getelementptr inbounds nuw i8, ptr %.17316.us, i64 16 ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge321.split.us.unr-lcssa, label %.lr.ph320.new, !llvm.loop !29

._crit_edge321.split.us.unr-lcssa:                ; preds = %.lr.ph320.new
  br i1 %lcmp.mod719.not, label %._crit_edge321.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge321.split.us.unr-lcssa, %.lr.ph320
  %.9318.us.epil.init = phi ptr [ %i.zg, %.lr.ph320 ], [ %.10.us.1, %._crit_edge321.split.us.unr-lcssa ]
  %.17316.us.epil.init = phi ptr [ %.16324, %.lr.ph320 ], [ %i.zy, %._crit_edge321.split.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod721)
  %i.zz = load i64, ptr %.17316.us.epil.init, align 1, !tbaa !18
  %i.aaa = call noundef i64 @llvm.bswap.i64(i64 %i.zz)
  %i.aab = sitofp nsz i64 %i.aaa to double
  %i.aac = fsub nsz double %i.aab, %i.jo
  %i.aad = fmul nsz double %i.aac, 6.553500e+04
  %i.aae = fmul nsz double %i.jr, %i.aad
  %i.aaf = call i64 @llvm.lrint.i64.f64(double %i.aae)
  %i.aag = trunc i64 %i.aaf to i16
  store i16 %i.aag, ptr %.9318.us.epil.init, align 2, !tbaa !93
  %i.aah = getelementptr inbounds nuw i8, ptr %.17316.us.epil.init, i64 8
  br label %._crit_edge321.split.us

._crit_edge321.split.us:                          ; preds = %._crit_edge321.split.us.unr-lcssa, %.epil.preheader
  %.lcssa701 = phi ptr [ %i.zy, %._crit_edge321.split.us.unr-lcssa ], [ %i.aah, %.epil.preheader ]
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next447, %wide.trip.count449
  br i1 %exitcond450.not, label %.loopexit, label %.lr.ph320, !llvm.loop !30

.critedge:                                        ; preds = %bb.av
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.jt) #7
  br label %bb.bq

.loopexit:                                        ; preds = %._crit_edge287.split.us.us, %._crit_edge312, %._crit_edge321.split.us332, %._crit_edge321.split.us, %._crit_edge341, %._crit_edge352, %._crit_edge363, %._crit_edge373, %._crit_edge384, %.preheader272.lr.ph, %.preheader275.lr.ph.split, %.preheader276, %.preheader275.lr.ph, %.preheader273, %.preheader270, %.lr.ph326, %.preheader268, %.lr.ph346, %.preheader266, %.lr.ph357, %.preheader264, %.preheader262, %.lr.ph378, %.preheader, %.lr.ph389, %bb.an
  store i32 1, ptr %2, align 4, !tbaa !13
  %i.aai = load i32, ptr %i.f, align 8, !tbaa !74
  br label %bb.bq

bb.bq:                                            ; preds = %fits_read_header.exit.thread, %.critedge, %bb.al, %bb.ak, %.loopexit, %bb.ag
  %.1188 = phi i32 [ -1094995529, %bb.ag ], [ %.084.i.ph, %fits_read_header.exit.thread ], [ %i.de, %bb.ak ], [ %i.aai, %.loopexit ], [ -1094995529, %.critedge ], [ %i.dg, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.1188
}

declare ptr @av_default_item_name(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @avpriv_fits_header_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @avpriv_fits_header_parse_line(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @fill_data_min_max(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) initializes((4072, 4080), (4088, 4096)) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4072 ; 27 uses
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4088 ; 27 uses
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15
  %i.e = add i32 %i.d, 64                         ; 2 uses
  %i.f = tail call i32 @llvm.fshl.i32(i32 %i.e, i32 %i.e, i32 29)
  switch i32 %i.f, label %.loopexit [
    i32 0, label %.preheader1
    i32 4, label %.preheader3
    i32 9, label %.preheader6
    i32 10, label %.preheader9
    i32 12, label %.preheader12
    i32 16, label %.preheader15
  ]

.preheader15:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.preheader14.lr.ph, label %.loopexit

.preheader14.lr.ph:                               ; preds = %.preheader15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !13   ; 6 uses
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %i.l, label %.preheader14.lr.ph.split, label %.loopexit

.preheader14.lr.ph.split:                         ; preds = %.preheader14.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !14
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.preheader14.us.preheader, label %.preheader14.lr.ph.split.split

.preheader14.us.preheader:                        ; preds = %.preheader14.lr.ph.split
  %xtraiter = and i32 %i.k, 1
  %i.p = icmp eq i32 %i.k, 1
  %unroll_iter = and i32 %i.k, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod380 = trunc i32 %i.k to i1
  br label %.preheader14.us

.preheader14.us:                                  ; preds = %.preheader14.us.preheader, %._crit_edge.split.us.us
  %i.q = phi double [ %.lcssa366, %._crit_edge.split.us.us ], [ f0x7FEFFFFFFFFFFFFF, %.preheader14.us.preheader ] ; 4 uses
  %i.r = phi double [ %.lcssa364, %._crit_edge.split.us.us ], [ f0xFFEFFFFFFFFFFFFF, %.preheader14.us.preheader ] ; 4 uses
  %.512221.us = phi i32 [ %i.ay, %._crit_edge.split.us.us ], [ 0, %.preheader14.us.preheader ]
  %.1020.us = phi ptr [ %.lcssa365, %._crit_edge.split.us.us ], [ %0, %.preheader14.us.preheader ] ; 2 uses
  br i1 %i.p, label %.epil.preheader, label %.preheader14.us.new

.preheader14.us.new:                              ; preds = %.preheader14.us, %bb.i
  %i.s = phi double [ %i.an, %bb.i ], [ %i.q, %.preheader14.us ]
  %i.t = phi double [ %i.ak, %bb.i ], [ %i.r, %.preheader14.us ]
  %i.u = phi double [ %i.ao, %bb.i ], [ %i.q, %.preheader14.us ] ; 2 uses
  %i.v = phi double [ %i.al, %bb.i ], [ %i.r, %.preheader14.us ] ; 2 uses
  %.1117.us.us = phi ptr [ %i.ap, %bb.i ], [ %.1020.us, %.preheader14.us ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %bb.i ], [ 0, %.preheader14.us ]
  %i.w = load i64, ptr %.1117.us.us, align 1, !tbaa !18
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = sitofp nsz i64 %i.x to double            ; 8 uses
  %i.z = fcmp nsz olt double %i.v, %i.y
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader14.us.new
  store double %i.y, ptr %i.b, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader14.us.new
  %i.aa = phi double [ %i.y, %bb.b ], [ %i.t, %.preheader14.us.new ]
  %i.ab = phi double [ %i.y, %bb.b ], [ %i.v, %.preheader14.us.new ] ; 2 uses
  %i.ac = fcmp nsz ogt double %i.u, %i.y
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %i.y, ptr %i.a, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = phi double [ %i.y, %bb.d ], [ %i.s, %bb.c ]
  %i.ae = phi double [ %i.y, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1117.us.us, i64 8
  %i.ag = load i64, ptr %i.af, align 1, !tbaa !18
  %i.ah = tail call noundef i64 @llvm.bswap.i64(i64 %i.ag)
  %i.ai = sitofp nsz i64 %i.ah to double          ; 8 uses
  %i.aj = fcmp nsz olt double %i.ab, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %i.ai, ptr %i.b, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = phi double [ %i.ai, %bb.f ], [ %i.aa, %bb.e ] ; 3 uses
  %i.al = phi double [ %i.ai, %bb.f ], [ %i.ab, %bb.e ] ; 2 uses
  %i.am = fcmp nsz ogt double %i.ae, %i.ai
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.ai, ptr %i.a, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = phi double [ %i.ai, %bb.h ], [ %i.ad, %bb.g ] ; 3 uses
  %i.ao = phi double [ %i.ai, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1117.us.us, i64 16 ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.us.unr-lcssa, label %.preheader14.us.new, !llvm.loop !103

._crit_edge.split.us.us.unr-lcssa:                ; preds = %bb.i
  br i1 %lcmp.mod.not, label %._crit_edge.split.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.us.unr-lcssa, %.preheader14.us
  %.epil.init = phi double [ %i.q, %.preheader14.us ], [ %i.an, %._crit_edge.split.us.us.unr-lcssa ]
  %.epil.init372 = phi double [ %i.r, %.preheader14.us ], [ %i.ak, %._crit_edge.split.us.us.unr-lcssa ]
  %.epil.init374 = phi double [ %i.q, %.preheader14.us ], [ %i.ao, %._crit_edge.split.us.us.unr-lcssa ]
  %.epil.init376 = phi double [ %i.r, %.preheader14.us ], [ %i.al, %._crit_edge.split.us.us.unr-lcssa ]
  %.1117.us.us.epil.init = phi ptr [ %.1020.us, %.preheader14.us ], [ %i.ap, %._crit_edge.split.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod380)
  %i.aq = load i64, ptr %.1117.us.us.epil.init, align 1, !tbaa !18
  %i.ar = tail call noundef i64 @llvm.bswap.i64(i64 %i.aq)
  %i.as = sitofp nsz i64 %i.ar to double          ; 6 uses
  %i.at = fcmp nsz olt double %.epil.init376, %i.as
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.epil.preheader
  store double %i.as, ptr %i.b, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.epil.preheader
  %i.au = phi double [ %i.as, %bb.j ], [ %.epil.init372, %.epil.preheader ]
  %i.av = fcmp nsz ogt double %.epil.init374, %i.as
  br i1 %i.av, label %bb.l, label %._crit_edge.split.us.us.epilog-lcssa

bb.l:                                             ; preds = %bb.k
  store double %i.as, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.split.us.us.epilog-lcssa

._crit_edge.split.us.us.epilog-lcssa:             ; preds = %bb.l, %bb.k
  %i.aw = phi double [ %i.as, %bb.l ], [ %.epil.init, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.1117.us.us.epil.init, i64 8
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.unr-lcssa, %._crit_edge.split.us.us.epilog-lcssa
  %.lcssa366 = phi double [ %i.an, %._crit_edge.split.us.us.unr-lcssa ], [ %i.aw, %._crit_edge.split.us.us.epilog-lcssa ]
  %.lcssa365 = phi ptr [ %i.ap, %._crit_edge.split.us.us.unr-lcssa ], [ %i.ax, %._crit_edge.split.us.us.epilog-lcssa ]
  %.lcssa364 = phi double [ %i.ak, %._crit_edge.split.us.us.unr-lcssa ], [ %i.au, %._crit_edge.split.us.us.epilog-lcssa ]
  %i.ay = add nuw nsw i32 %.512221.us, 1          ; 2 uses
  %exitcond129.not = icmp eq i32 %i.ay, %i.h
  br i1 %exitcond129.not, label %.loopexit, label %.preheader14.us, !llvm.loop !104

.preheader14.lr.ph.split.split:                   ; preds = %.preheader14.lr.ph.split
  %i.az = load i64, ptr %i.m, align 8, !tbaa !115
  br label %.preheader14

.preheader12:                                     ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !13 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader11.lr.ph, label %.loopexit

.preheader11.lr.ph:                               ; preds = %.preheader12
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !13 ; 6 uses
  %i.bf = icmp sgt i32 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %i.bf, label %.preheader11.lr.ph.split, label %.loopexit

.preheader11.lr.ph.split:                         ; preds = %.preheader11.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !14
  %.not139 = icmp eq i32 %i.bi, 0
  br i1 %.not139, label %.preheader11.us.preheader, label %.preheader11.lr.ph.split.split

.preheader11.us.preheader:                        ; preds = %.preheader11.lr.ph.split
  %xtraiter382 = and i32 %i.be, 1
  %i.bj = icmp eq i32 %i.be, 1
  %unroll_iter396 = and i32 %i.be, 2147483646
  %lcmp.mod391.not = icmp eq i32 %xtraiter382, 0
  %lcmp.mod395 = trunc i32 %i.be to i1
  br label %.preheader11.us

.preheader11.us:                                  ; preds = %.preheader11.us.preheader, %._crit_edge.split30.us.us
  %i.bk = phi double [ %.lcssa358, %._crit_edge.split30.us.us ], [ f0x7FEFFFFFFFFFFFFF, %.preheader11.us.preheader ] ; 4 uses
  %i.bl = phi double [ %.lcssa356, %._crit_edge.split30.us.us ], [ f0xFFEFFFFFFFFFFFFF, %.preheader11.us.preheader ] ; 4 uses
  %.412134.us = phi i32 [ %i.cs, %._crit_edge.split30.us.us ], [ 0, %.preheader11.us.preheader ]
  %.833.us = phi ptr [ %.lcssa357, %._crit_edge.split30.us.us ], [ %0, %.preheader11.us.preheader ] ; 2 uses
  br i1 %i.bj, label %.epil.preheader381, label %.preheader11.us.new

.preheader11.us.new:                              ; preds = %.preheader11.us, %bb.t
  %i.bm = phi double [ %i.ch, %bb.t ], [ %i.bk, %.preheader11.us ]
  %i.bn = phi double [ %i.ce, %bb.t ], [ %i.bl, %.preheader11.us ]
  %i.bo = phi double [ %i.ci, %bb.t ], [ %i.bk, %.preheader11.us ] ; 2 uses
  %i.bp = phi double [ %i.cf, %bb.t ], [ %i.bl, %.preheader11.us ] ; 2 uses
  %.926.us.us = phi ptr [ %i.cj, %bb.t ], [ %.833.us, %.preheader11.us ] ; 3 uses
  %niter397 = phi i32 [ %niter397.next.1, %bb.t ], [ 0, %.preheader11.us ]
  %i.bq = load i32, ptr %.926.us.us, align 1, !tbaa !18
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bs = sitofp nsz i32 %i.br to double          ; 8 uses
  %i.bt = fcmp nsz olt double %i.bp, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader11.us.new
  store double %i.bs, ptr %i.b, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader11.us.new
  %i.bu = phi double [ %i.bs, %bb.m ], [ %i.bn, %.preheader11.us.new ]
  %i.bv = phi double [ %i.bs, %bb.m ], [ %i.bp, %.preheader11.us.new ] ; 2 uses
  %i.bw = fcmp nsz ogt double %i.bo, %i.bs
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store double %i.bs, ptr %i.a, align 8, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bx = phi double [ %i.bs, %bb.o ], [ %i.bm, %bb.n ]
  %i.by = phi double [ %i.bs, %bb.o ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.926.us.us, i64 4
  %i.ca = load i32, ptr %i.bz, align 1, !tbaa !18
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  %i.cc = sitofp nsz i32 %i.cb to double          ; 8 uses
  %i.cd = fcmp nsz olt double %i.bv, %i.cc
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.cc, ptr %i.b, align 8, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ce = phi double [ %i.cc, %bb.q ], [ %i.bu, %bb.p ] ; 3 uses
  %i.cf = phi double [ %i.cc, %bb.q ], [ %i.bv, %bb.p ] ; 2 uses
  %i.cg = fcmp nsz ogt double %i.by, %i.cc
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.cc, ptr %i.a, align 8, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ch = phi double [ %i.cc, %bb.s ], [ %i.bx, %bb.r ] ; 3 uses
  %i.ci = phi double [ %i.cc, %bb.s ], [ %i.by, %bb.r ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.926.us.us, i64 8 ; 3 uses
  %niter397.next.1 = add nuw nsw i32 %niter397, 2 ; 2 uses
  %niter397.ncmp.1 = icmp eq i32 %niter397.next.1, %unroll_iter396
  br i1 %niter397.ncmp.1, label %._crit_edge.split30.us.us.unr-lcssa, label %.preheader11.us.new, !llvm.loop !105

._crit_edge.split30.us.us.unr-lcssa:              ; preds = %bb.t
  br i1 %lcmp.mod391.not, label %._crit_edge.split30.us.us, label %.epil.preheader381

.epil.preheader381:                               ; preds = %._crit_edge.split30.us.us.unr-lcssa, %.preheader11.us
  %.epil.init384 = phi double [ %i.bk, %.preheader11.us ], [ %i.ch, %._crit_edge.split30.us.us.unr-lcssa ]
  %.epil.init386 = phi double [ %i.bl, %.preheader11.us ], [ %i.ce, %._crit_edge.split30.us.us.unr-lcssa ]
  %.epil.init388 = phi double [ %i.bk, %.preheader11.us ], [ %i.ci, %._crit_edge.split30.us.us.unr-lcssa ]
  %.epil.init390 = phi double [ %i.bl, %.preheader11.us ], [ %i.cf, %._crit_edge.split30.us.us.unr-lcssa ]
  %.926.us.us.epil.init = phi ptr [ %.833.us, %.preheader11.us ], [ %i.cj, %._crit_edge.split30.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod395)
  %i.ck = load i32, ptr %.926.us.us.epil.init, align 1, !tbaa !18
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cm = sitofp nsz i32 %i.cl to double          ; 6 uses
  %i.cn = fcmp nsz olt double %.epil.init390, %i.cm
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.epil.preheader381
  store double %i.cm, ptr %i.b, align 8, !tbaa !17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.epil.preheader381
  %i.co = phi double [ %i.cm, %bb.u ], [ %.epil.init386, %.epil.preheader381 ]
  %i.cp = fcmp nsz ogt double %.epil.init388, %i.cm
  br i1 %i.cp, label %bb.w, label %._crit_edge.split30.us.us.epilog-lcssa

bb.w:                                             ; preds = %bb.v
  store double %i.cm, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.split30.us.us.epilog-lcssa

._crit_edge.split30.us.us.epilog-lcssa:           ; preds = %bb.w, %bb.v
  %i.cq = phi double [ %i.cm, %bb.w ], [ %.epil.init384, %bb.v ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.926.us.us.epil.init, i64 4
  br label %._crit_edge.split30.us.us

._crit_edge.split30.us.us:                        ; preds = %._crit_edge.split30.us.us.unr-lcssa, %._crit_edge.split30.us.us.epilog-lcssa
  %.lcssa358 = phi double [ %i.ch, %._crit_edge.split30.us.us.unr-lcssa ], [ %i.cq, %._crit_edge.split30.us.us.epilog-lcssa ]
  %.lcssa357 = phi ptr [ %i.cj, %._crit_edge.split30.us.us.unr-lcssa ], [ %i.cr, %._crit_edge.split30.us.us.epilog-lcssa ]
  %.lcssa356 = phi double [ %i.ce, %._crit_edge.split30.us.us.unr-lcssa ], [ %i.co, %._crit_edge.split30.us.us.epilog-lcssa ]
  %i.cs = add nuw nsw i32 %.412134.us, 1          ; 2 uses
  %exitcond133.not = icmp eq i32 %i.cs, %i.bb
  br i1 %exitcond133.not, label %.loopexit, label %.preheader11.us, !llvm.loop !106

.preheader11.lr.ph.split.split:                   ; preds = %.preheader11.lr.ph.split
  %i.ct = load i64, ptr %i.bg, align 8, !tbaa !115
  br label %.preheader11

.preheader9:                                      ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !13 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.preheader8.lr.ph, label %.loopexit

.preheader8.lr.ph:                                ; preds = %.preheader9
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !13 ; 6 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %i.cz, label %.preheader8.lr.ph.split, label %.loopexit

.preheader8.lr.ph.split:                          ; preds = %.preheader8.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !14
  %.not141 = icmp eq i32 %i.dc, 0
  br i1 %.not141, label %.preheader8.us.preheader, label %.preheader8.lr.ph.split.split

.preheader8.us.preheader:                         ; preds = %.preheader8.lr.ph.split
  %xtraiter399 = and i32 %i.cy, 1
  %i.dd = icmp eq i32 %i.cy, 1
  %unroll_iter413 = and i32 %i.cy, 2147483646
  %lcmp.mod408.not = icmp eq i32 %xtraiter399, 0
  %lcmp.mod412 = trunc i32 %i.cy to i1
  br label %.preheader8.us

.preheader8.us:                                   ; preds = %.preheader8.us.preheader, %._crit_edge.split45.us.us
  %i.de = phi double [ %.lcssa350, %._crit_edge.split45.us.us ], [ f0x7FEFFFFFFFFFFFFF, %.preheader8.us.preheader ] ; 4 uses
  %i.df = phi double [ %.lcssa348, %._crit_edge.split45.us.us ], [ f0xFFEFFFFFFFFFFFFF, %.preheader8.us.preheader ] ; 4 uses
  %.312049.us = phi i32 [ %i.em, %._crit_edge.split45.us.us ], [ 0, %.preheader8.us.preheader ]
  %.648.us = phi ptr [ %.lcssa349, %._crit_edge.split45.us.us ], [ %0, %.preheader8.us.preheader ] ; 2 uses
  br i1 %i.dd, label %.epil.preheader398, label %.preheader8.us.new

.preheader8.us.new:                               ; preds = %.preheader8.us, %bb.ae
  %i.dg = phi double [ %i.eb, %bb.ae ], [ %i.de, %.preheader8.us ]
  %i.dh = phi double [ %i.dy, %bb.ae ], [ %i.df, %.preheader8.us ]
  %i.di = phi double [ %i.ec, %bb.ae ], [ %i.de, %.preheader8.us ] ; 2 uses
  %i.dj = phi double [ %i.dz, %bb.ae ], [ %i.df, %.preheader8.us ] ; 2 uses
  %.741.us.us = phi ptr [ %i.ed, %bb.ae ], [ %.648.us, %.preheader8.us ] ; 3 uses
  %niter414 = phi i32 [ %niter414.next.1, %bb.ae ], [ 0, %.preheader8.us ]
  %i.dk = load i16, ptr %.741.us.us, align 1, !tbaa !18
  %i.dl = tail call i16 @llvm.bswap.i16(i16 %i.dk)
  %i.dm = sitofp i16 %i.dl to double              ; 8 uses
  %i.dn = fcmp nsz olt double %i.dj, %i.dm
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.preheader8.us.new
  store double %i.dm, ptr %i.b, align 8, !tbaa !17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.preheader8.us.new
  %i.do = phi double [ %i.dm, %bb.x ], [ %i.dh, %.preheader8.us.new ]
  %i.dp = phi double [ %i.dm, %bb.x ], [ %i.dj, %.preheader8.us.new ] ; 2 uses
  %i.dq = fcmp nsz ogt double %i.di, %i.dm
  br i1 %i.dq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store double %i.dm, ptr %i.a, align 8, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dr = phi double [ %i.dm, %bb.z ], [ %i.dg, %bb.y ]
  %i.ds = phi double [ %i.dm, %bb.z ], [ %i.di, %bb.y ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.741.us.us, i64 2
  %i.du = load i16, ptr %i.dt, align 1, !tbaa !18
  %i.dv = tail call i16 @llvm.bswap.i16(i16 %i.du)
  %i.dw = sitofp i16 %i.dv to double              ; 8 uses
  %i.dx = fcmp nsz olt double %i.dp, %i.dw
  br i1 %i.dx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store double %i.dw, ptr %i.b, align 8, !tbaa !17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dy = phi double [ %i.dw, %bb.ab ], [ %i.do, %bb.aa ] ; 3 uses
  %i.dz = phi double [ %i.dw, %bb.ab ], [ %i.dp, %bb.aa ] ; 2 uses
  %i.ea = fcmp nsz ogt double %i.ds, %i.dw
  br i1 %i.ea, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store double %i.dw, ptr %i.a, align 8, !tbaa !16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.eb = phi double [ %i.dw, %bb.ad ], [ %i.dr, %bb.ac ] ; 3 uses
  %i.ec = phi double [ %i.dw, %bb.ad ], [ %i.ds, %bb.ac ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.741.us.us, i64 4 ; 3 uses
  %niter414.next.1 = add nuw nsw i32 %niter414, 2 ; 2 uses
  %niter414.ncmp.1 = icmp eq i32 %niter414.next.1, %unroll_iter413
  br i1 %niter414.ncmp.1, label %._crit_edge.split45.us.us.unr-lcssa, label %.preheader8.us.new, !llvm.loop !107

._crit_edge.split45.us.us.unr-lcssa:              ; preds = %bb.ae
  br i1 %lcmp.mod408.not, label %._crit_edge.split45.us.us, label %.epil.preheader398

.epil.preheader398:                               ; preds = %._crit_edge.split45.us.us.unr-lcssa, %.preheader8.us
  %.epil.init401 = phi double [ %i.de, %.preheader8.us ], [ %i.eb, %._crit_edge.split45.us.us.unr-lcssa ]
  %.epil.init403 = phi double [ %i.df, %.preheader8.us ], [ %i.dy, %._crit_edge.split45.us.us.unr-lcssa ]
  %.epil.init405 = phi double [ %i.de, %.preheader8.us ], [ %i.ec, %._crit_edge.split45.us.us.unr-lcssa ]
  %.epil.init407 = phi double [ %i.df, %.preheader8.us ], [ %i.dz, %._crit_edge.split45.us.us.unr-lcssa ]
  %.741.us.us.epil.init = phi ptr [ %.648.us, %.preheader8.us ], [ %i.ed, %._crit_edge.split45.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod412)
  %i.ee = load i16, ptr %.741.us.us.epil.init, align 1, !tbaa !18
  %i.ef = tail call i16 @llvm.bswap.i16(i16 %i.ee)
  %i.eg = sitofp i16 %i.ef to double              ; 6 uses
  %i.eh = fcmp nsz olt double %.epil.init407, %i.eg
  br i1 %i.eh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.epil.preheader398
  store double %i.eg, ptr %i.b, align 8, !tbaa !17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.epil.preheader398
  %i.ei = phi double [ %i.eg, %bb.af ], [ %.epil.init403, %.epil.preheader398 ]
  %i.ej = fcmp nsz ogt double %.epil.init405, %i.eg
  br i1 %i.ej, label %bb.ah, label %._crit_edge.split45.us.us.epilog-lcssa

bb.ah:                                            ; preds = %bb.ag
  store double %i.eg, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.split45.us.us.epilog-lcssa

._crit_edge.split45.us.us.epilog-lcssa:           ; preds = %bb.ah, %bb.ag
  %i.ek = phi double [ %i.eg, %bb.ah ], [ %.epil.init401, %bb.ag ]
  %i.el = getelementptr inbounds nuw i8, ptr %.741.us.us.epil.init, i64 2
  br label %._crit_edge.split45.us.us

._crit_edge.split45.us.us:                        ; preds = %._crit_edge.split45.us.us.unr-lcssa, %._crit_edge.split45.us.us.epilog-lcssa
  %.lcssa350 = phi double [ %i.eb, %._crit_edge.split45.us.us.unr-lcssa ], [ %i.ek, %._crit_edge.split45.us.us.epilog-lcssa ]
  %.lcssa349 = phi ptr [ %i.ed, %._crit_edge.split45.us.us.unr-lcssa ], [ %i.el, %._crit_edge.split45.us.us.epilog-lcssa ]
  %.lcssa348 = phi double [ %i.dy, %._crit_edge.split45.us.us.unr-lcssa ], [ %i.ei, %._crit_edge.split45.us.us.epilog-lcssa ]
  %i.em = add nuw nsw i32 %.312049.us, 1          ; 2 uses
  %exitcond137.not = icmp eq i32 %i.em, %i.cv
  br i1 %exitcond137.not, label %.loopexit, label %.preheader8.us, !llvm.loop !108

.preheader8.lr.ph.split.split:                    ; preds = %.preheader8.lr.ph.split
  %i.en = load i64, ptr %i.da, align 8, !tbaa !115
  br label %.preheader8

.preheader6:                                      ; preds = %bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !13 ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.preheader5.lr.ph, label %.loopexit

.preheader5.lr.ph:                                ; preds = %.preheader6
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.es = load i32, ptr %i.er, align 8, !tbaa !13 ; 9 uses
  %i.et = icmp sgt i32 %i.es, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %i.et, label %.preheader5.lr.ph.split, label %.loopexit

.preheader5.lr.ph.split:                          ; preds = %.preheader5.lr.ph
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !14
  %.not143 = icmp eq i32 %i.ew, 0
  br i1 %.not143, label %.preheader5.us.preheader, label %.preheader5.lr.ph.split.split

.preheader5.us.preheader:                         ; preds = %.preheader5.lr.ph.split
  %xtraiter429 = and i32 %i.es, 1
  %i.ex = icmp eq i32 %i.es, 1
  %unroll_iter443 = and i32 %i.es, 2147483646
  %lcmp.mod438.not = icmp eq i32 %xtraiter429, 0
  %lcmp.mod442 = trunc i32 %i.es to i1
  br label %.preheader5.us

.preheader5.us:                                   ; preds = %.preheader5.us.preheader, %._crit_edge.split60.us.us
  %i.ey = phi double [ %.lcssa342, %._crit_edge.split60.us.us ], [ f0x7FEFFFFFFFFFFFFF, %.preheader5.us.preheader ] ; 4 uses
  %i.ez = phi double [ %.lcssa340, %._crit_edge.split60.us.us ], [ f0xFFEFFFFFFFFFFFFF, %.preheader5.us.preheader ] ; 4 uses
  %.211964.us = phi i32 [ %i.gd, %._crit_edge.split60.us.us ], [ 0, %.preheader5.us.preheader ]
  %.412863.us = phi ptr [ %.lcssa341, %._crit_edge.split60.us.us ], [ %0, %.preheader5.us.preheader ] ; 2 uses
  br i1 %i.ex, label %.epil.preheader428, label %.preheader5.us.new

.preheader5.us.new:                               ; preds = %.preheader5.us, %bb.ap
  %i.fa = phi double [ %i.ft, %bb.ap ], [ %i.ey, %.preheader5.us ]
  %i.fb = phi double [ %i.fq, %bb.ap ], [ %i.ez, %.preheader5.us ]
  %i.fc = phi double [ %i.fu, %bb.ap ], [ %i.ey, %.preheader5.us ] ; 2 uses
  %i.fd = phi double [ %i.fr, %bb.ap ], [ %i.ez, %.preheader5.us ] ; 2 uses
  %.512956.us.us = phi ptr [ %i.fv, %bb.ap ], [ %.412863.us, %.preheader5.us ] ; 3 uses
  %niter444 = phi i32 [ %niter444.next.1, %bb.ap ], [ 0, %.preheader5.us ]
  %i.fe = load i8, ptr %.512956.us.us, align 1, !tbaa !18
  %i.ff = uitofp i8 %i.fe to double               ; 8 uses
  %i.fg = fcmp nsz olt double %i.fd, %i.ff
  br i1 %i.fg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.preheader5.us.new
  store double %i.ff, ptr %i.b, align 8, !tbaa !17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.preheader5.us.new
  %i.fh = phi double [ %i.ff, %bb.ai ], [ %i.fb, %.preheader5.us.new ]
  %i.fi = phi double [ %i.ff, %bb.ai ], [ %i.fd, %.preheader5.us.new ] ; 2 uses
  %i.fj = fcmp nsz ogt double %i.fc, %i.ff
  br i1 %i.fj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store double %i.ff, ptr %i.a, align 8, !tbaa !16
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fk = phi double [ %i.ff, %bb.ak ], [ %i.fa, %bb.aj ]
  %i.fl = phi double [ %i.ff, %bb.ak ], [ %i.fc, %bb.aj ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.512956.us.us, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !18
  %i.fo = uitofp i8 %i.fn to double               ; 8 uses
  %i.fp = fcmp nsz olt double %i.fi, %i.fo
  br i1 %i.fp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store double %i.fo, ptr %i.b, align 8, !tbaa !17
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fq = phi double [ %i.fo, %bb.am ], [ %i.fh, %bb.al ] ; 3 uses
  %i.fr = phi double [ %i.fo, %bb.am ], [ %i.fi, %bb.al ] ; 2 uses
  %i.fs = fcmp nsz ogt double %i.fl, %i.fo
  br i1 %i.fs, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store double %i.fo, ptr %i.a, align 8, !tbaa !16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ft = phi double [ %i.fo, %bb.ao ], [ %i.fk, %bb.an ] ; 3 uses
  %i.fu = phi double [ %i.fo, %bb.ao ], [ %i.fl, %bb.an ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.512956.us.us, i64 2 ; 3 uses
  %niter444.next.1 = add nuw nsw i32 %niter444, 2 ; 2 uses
  %niter444.ncmp.1 = icmp eq i32 %niter444.next.1, %unroll_iter443
  br i1 %niter444.ncmp.1, label %._crit_edge.split60.us.us.unr-lcssa, label %.preheader5.us.new, !llvm.loop !109

._crit_edge.split60.us.us.unr-lcssa:              ; preds = %bb.ap
  br i1 %lcmp.mod438.not, label %._crit_edge.split60.us.us, label %.epil.preheader428

.epil.preheader428:                               ; preds = %._crit_edge.split60.us.us.unr-lcssa, %.preheader5.us
  %.epil.init431 = phi double [ %i.ey, %.preheader5.us ], [ %i.ft, %._crit_edge.split60.us.us.unr-lcssa ]
  %.epil.init433 = phi double [ %i.ez, %.preheader5.us ], [ %i.fq, %._crit_edge.split60.us.us.unr-lcssa ]
  %.epil.init435 = phi double [ %i.ey, %.preheader5.us ], [ %i.fu, %._crit_edge.split60.us.us.unr-lcssa ]
  %.epil.init437 = phi double [ %i.ez, %.preheader5.us ], [ %i.fr, %._crit_edge.split60.us.us.unr-lcssa ]
  %.512956.us.us.epil.init = phi ptr [ %.412863.us, %.preheader5.us ], [ %i.fv, %._crit_edge.split60.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod442)
  %i.fw = load i8, ptr %.512956.us.us.epil.init, align 1, !tbaa !18
  %i.fx = uitofp i8 %i.fw to double               ; 6 uses
  %i.fy = fcmp nsz olt double %.epil.init437, %i.fx
  br i1 %i.fy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.epil.preheader428
  store double %i.fx, ptr %i.b, align 8, !tbaa !17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.epil.preheader428
  %i.fz = phi double [ %i.fx, %bb.aq ], [ %.epil.init433, %.epil.preheader428 ]
  %i.ga = fcmp nsz ogt double %.epil.init435, %i.fx
  br i1 %i.ga, label %bb.as, label %._crit_edge.split60.us.us.epilog-lcssa

bb.as:                                            ; preds = %bb.ar
  store double %i.fx, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.split60.us.us.epilog-lcssa

._crit_edge.split60.us.us.epilog-lcssa:           ; preds = %bb.as, %bb.ar
  %i.gb = phi double [ %i.fx, %bb.as ], [ %.epil.init431, %bb.ar ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.512956.us.us.epil.init, i64 1
  br label %._crit_edge.split60.us.us

._crit_edge.split60.us.us:                        ; preds = %._crit_edge.split60.us.us.unr-lcssa, %._crit_edge.split60.us.us.epilog-lcssa
  %.lcssa342 = phi double [ %i.ft, %._crit_edge.split60.us.us.unr-lcssa ], [ %i.gb, %._crit_edge.split60.us.us.epilog-lcssa ]
  %.lcssa341 = phi ptr [ %i.fv, %._crit_edge.split60.us.us.unr-lcssa ], [ %i.gc, %._crit_edge.split60.us.us.epilog-lcssa ]
  %.lcssa340 = phi double [ %i.fq, %._crit_edge.split60.us.us.unr-lcssa ], [ %i.fz, %._crit_edge.split60.us.us.epilog-lcssa ]
  %i.gd = add nuw nsw i32 %.211964.us, 1          ; 2 uses
  %exitcond141.not = icmp eq i32 %i.gd, %i.ep
  br i1 %exitcond141.not, label %.loopexit, label %.preheader5.us, !llvm.loop !110

.preheader5.lr.ph.split.split:                    ; preds = %.preheader5.lr.ph.split
  %i.ge = load i64, ptr %i.eu, align 8, !tbaa !115 ; 3 uses
  %xtraiter416 = and i32 %i.es, 1
  %i.gf = icmp eq i32 %i.es, 1
  %unroll_iter426 = and i32 %i.es, 2147483646
  %lcmp.mod421.not = icmp eq i32 %xtraiter416, 0
  %lcmp.mod425 = trunc i32 %i.es to i1
  br label %.preheader5

.preheader3:                                      ; preds = %bb.a
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !13 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.preheader2.lr.ph, label %.loopexit

.preheader2.lr.ph:                                ; preds = %.preheader3
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !13 ; 6 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %i.gl, label %.preheader2.lr.ph.split, label %.loopexit

.preheader2.lr.ph.split:                          ; preds = %.preheader2.lr.ph
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !14
  %.not145 = icmp eq i32 %i.go, 0
  br i1 %.not145, label %.preheader2.us.preheader, label %.preheader2.lr.ph.split.split

.preheader2.us.preheader:                         ; preds = %.preheader2.lr.ph.split
  %xtraiter446 = and i32 %i.gk, 1
  %i.gp = icmp eq i32 %i.gk, 1
  %unroll_iter460 = and i32 %i.gk, 2147483646
  %lcmp.mod455.not = icmp eq i32 %xtraiter446, 0
  %lcmp.mod459 = trunc i32 %i.gk to i1
  br label %.preheader2.us

.preheader2.us:                                   ; preds = %.preheader2.us.preheader, %._crit_edge.split75.us.us
  %i.gq = phi double [ %.lcssa334, %._crit_edge.split75.us.us ], [ f0x7FEFFFFFFFFFFFFF, %.preheader2.us.preheader ] ; 4 uses
  %i.gr = phi double [ %.lcssa332, %._crit_edge.split75.us.us ], [ f0xFFEFFFFFFFFFFFFF, %.preheader2.us.preheader ] ; 4 uses
  %.111879.us = phi i32 [ %i.ib, %._crit_edge.split75.us.us ], [ 0, %.preheader2.us.preheader ]
  %.212678.us = phi ptr [ %.lcssa333, %._crit_edge.split75.us.us ], [ %0, %.preheader2.us.preheader ] ; 2 uses
  br i1 %i.gp, label %.epil.preheader445, label %.preheader2.us.new

.preheader2.us.new:                               ; preds = %.preheader2.us, %bb.ba
  %i.gs = phi double [ %i.hp, %bb.ba ], [ %i.gq, %.preheader2.us ]
  %i.gt = phi double [ %i.hm, %bb.ba ], [ %i.gr, %.preheader2.us ]
  %i.gu = phi double [ %i.hq, %bb.ba ], [ %i.gq, %.preheader2.us ] ; 2 uses
  %i.gv = phi double [ %i.hn, %bb.ba ], [ %i.gr, %.preheader2.us ] ; 2 uses
  %.312771.us.us = phi ptr [ %i.hr, %bb.ba ], [ %.212678.us, %.preheader2.us ] ; 3 uses
  %niter461 = phi i32 [ %niter461.next.1, %bb.ba ], [ 0, %.preheader2.us ]
  %i.gw = load i32, ptr %.312771.us.us, align 1, !tbaa !18
  %i.gx = tail call i32 @llvm.bswap.i32(i32 %i.gw)
  %i.gy = bitcast i32 %i.gx to float
  %i.gz = fpext nsz float %i.gy to double         ; 8 uses
  %i.ha = fcmp nsz olt double %i.gv, %i.gz
  br i1 %i.ha, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.preheader2.us.new
  store double %i.gz, ptr %i.b, align 8, !tbaa !17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.preheader2.us.new
  %i.hb = phi double [ %i.gz, %bb.at ], [ %i.gt, %.preheader2.us.new ]
  %i.hc = phi double [ %i.gz, %bb.at ], [ %i.gv, %.preheader2.us.new ] ; 2 uses
  %i.hd = fcmp nsz ogt double %i.gu, %i.gz
  br i1 %i.hd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store double %i.gz, ptr %i.a, align 8, !tbaa !16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.he = phi double [ %i.gz, %bb.av ], [ %i.gs, %bb.au ]
  %i.hf = phi double [ %i.gz, %bb.av ], [ %i.gu, %bb.au ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.312771.us.us, i64 4
  %i.hh = load i32, ptr %i.hg, align 1, !tbaa !18
  %i.hi = tail call i32 @llvm.bswap.i32(i32 %i.hh)
  %i.hj = bitcast i32 %i.hi to float
  %i.hk = fpext nsz float %i.hj to double         ; 8 uses
  %i.hl = fcmp nsz olt double %i.hc, %i.hk
  br i1 %i.hl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store double %i.hk, ptr %i.b, align 8, !tbaa !17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hm = phi double [ %i.hk, %bb.ax ], [ %i.hb, %bb.aw ] ; 3 uses
  %i.hn = phi double [ %i.hk, %bb.ax ], [ %i.hc, %bb.aw ] ; 2 uses
  %i.ho = fcmp nsz ogt double %i.hf, %i.hk
  br i1 %i.ho, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store double %i.hk, ptr %i.a, align 8, !tbaa !16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hp = phi double [ %i.hk, %bb.az ], [ %i.he, %bb.ay ] ; 3 uses
  %i.hq = phi double [ %i.hk, %bb.az ], [ %i.hf, %bb.ay ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.312771.us.us, i64 8 ; 3 uses
  %niter461.next.1 = add nuw nsw i32 %niter461, 2 ; 2 uses
  %niter461.ncmp.1 = icmp eq i32 %niter461.next.1, %unroll_iter460
  br i1 %niter461.ncmp.1, label %._crit_edge.split75.us.us.unr-lcssa, label %.preheader2.us.new, !llvm.loop !111

._crit_edge.split75.us.us.unr-lcssa:              ; preds = %bb.ba
  br i1 %lcmp.mod455.not, label %._crit_edge.split75.us.us, label %.epil.preheader445

.epil.preheader445:                               ; preds = %._crit_edge.split75.us.us.unr-lcssa, %.preheader2.us
  %.epil.init448 = phi double [ %i.gq, %.preheader2.us ], [ %i.hp, %._crit_edge.split75.us.us.unr-lcssa ]
  %.epil.init450 = phi double [ %i.gr, %.preheader2.us ], [ %i.hm, %._crit_edge.split75.us.us.unr-lcssa ]
  %.epil.init452 = phi double [ %i.gq, %.preheader2.us ], [ %i.hq, %._crit_edge.split75.us.us.unr-lcssa ]
  %.epil.init454 = phi double [ %i.gr, %.preheader2.us ], [ %i.hn, %._crit_edge.split75.us.us.unr-lcssa ]
  %.312771.us.us.epil.init = phi ptr [ %.212678.us, %.preheader2.us ], [ %i.hr, %._crit_edge.split75.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod459)
  %i.hs = load i32, ptr %.312771.us.us.epil.init, align 1, !tbaa !18
  %i.ht = tail call i32 @llvm.bswap.i32(i32 %i.hs)
  %i.hu = bitcast i32 %i.ht to float
  %i.hv = fpext nsz float %i.hu to double         ; 6 uses
  %i.hw = fcmp nsz olt double %.epil.init454, %i.hv
  br i1 %i.hw, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.epil.preheader445
  store double %i.hv, ptr %i.b, align 8, !tbaa !17
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.epil.preheader445
  %i.hx = phi double [ %i.hv, %bb.bb ], [ %.epil.init450, %.epil.preheader445 ]
  %i.hy = fcmp nsz ogt double %.epil.init452, %i.hv
  br i1 %i.hy, label %bb.bd, label %._crit_edge.split75.us.us.epilog-lcssa

bb.bd:                                            ; preds = %bb.bc
  store double %i.hv, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.split75.us.us.epilog-lcssa

._crit_edge.split75.us.us.epilog-lcssa:           ; preds = %bb.bd, %bb.bc
  %i.hz = phi double [ %i.hv, %bb.bd ], [ %.epil.init448, %bb.bc ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.312771.us.us.epil.init, i64 4
  br label %._crit_edge.split75.us.us

._crit_edge.split75.us.us:                        ; preds = %._crit_edge.split75.us.us.unr-lcssa, %._crit_edge.split75.us.us.epilog-lcssa
  %.lcssa334 = phi double [ %i.hp, %._crit_edge.split75.us.us.unr-lcssa ], [ %i.hz, %._crit_edge.split75.us.us.epilog-lcssa ]
  %.lcssa333 = phi ptr [ %i.hr, %._crit_edge.split75.us.us.unr-lcssa ], [ %i.ia, %._crit_edge.split75.us.us.epilog-lcssa ]
  %.lcssa332 = phi double [ %i.hm, %._crit_edge.split75.us.us.unr-lcssa ], [ %i.hx, %._crit_edge.split75.us.us.epilog-lcssa ]
  %i.ib = add nuw nsw i32 %.111879.us, 1          ; 2 uses
  %exitcond145.not = icmp eq i32 %i.ib, %i.gh
  br i1 %exitcond145.not, label %.loopexit, label %.preheader2.us, !llvm.loop !112

.preheader2.lr.ph.split.split:                    ; preds = %.preheader2.lr.ph.split
  %i.ic = load i64, ptr %i.gm, align 8, !tbaa !115
  %i.id = sitofp nsz i64 %i.ic to float
  br label %.preheader2

.preheader1:                                      ; preds = %bb.a
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !13 ; 3 uses
  %i.ig = icmp sgt i32 %i.if, 0
  br i1 %i.ig, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader1
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !13 ; 6 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %i.ij, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.im = load i32, ptr %i.il, align 8, !tbaa !14
  %.not146 = icmp eq i32 %i.im, 0
  br i1 %.not146, label %.preheader.us.preheader, label %.preheader.lr.ph.split.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %xtraiter463 = and i32 %i.ii, 1
  %i.in = icmp eq i32 %i.ii, 1
  %unroll_iter473 = and i32 %i.ii, 2147483646
  %lcmp.mod468.not = icmp eq i32 %xtraiter463, 0
  %lcmp.mod472 = trunc i32 %i.ii to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split90.us.us
  %i.io = phi double [ %.lcssa326, %._crit_edge.split90.us.us ], [ f0x7FEFFFFFFFFFFFFF, %.preheader.us.preheader ] ; 2 uses
  %i.ip = phi double [ %.lcssa, %._crit_edge.split90.us.us ], [ f0xFFEFFFFFFFFFFFFF, %.preheader.us.preheader ] ; 2 uses
  %.011792.us = phi i32 [ %i.jq, %._crit_edge.split90.us.us ], [ 0, %.preheader.us.preheader ]
  %.012491.us = phi ptr [ %.lcssa325, %._crit_edge.split90.us.us ], [ %0, %.preheader.us.preheader ] ; 2 uses
  br i1 %i.in, label %.epil.preheader462, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.bl
  %i.iq = phi double [ %i.jg, %bb.bl ], [ %i.io, %.preheader.us ] ; 2 uses
  %i.ir = phi double [ %i.je, %bb.bl ], [ %i.ip, %.preheader.us ] ; 2 uses
  %.112586.us.us = phi ptr [ %i.jh, %bb.bl ], [ %.012491.us, %.preheader.us ] ; 3 uses
  %niter474 = phi i32 [ %niter474.next.1, %bb.bl ], [ 0, %.preheader.us ]
  %i.is = load i64, ptr %.112586.us.us, align 1, !tbaa !18
  %i.it = tail call noundef i64 @llvm.bswap.i64(i64 %i.is) ; 3 uses
  %i.iu = bitcast i64 %i.it to double             ; 4 uses
  %i.iv = fcmp nsz olt double %i.ir, %i.iu
  br i1 %i.iv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.preheader.us.new
  store i64 %i.it, ptr %i.b, align 8, !tbaa !17
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.preheader.us.new
  %i.iw = phi double [ %i.iu, %bb.be ], [ %i.ir, %.preheader.us.new ] ; 2 uses
  %i.ix = fcmp nsz ogt double %i.iq, %i.iu
  br i1 %i.ix, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i64 %i.it, ptr %i.a, align 8, !tbaa !16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.iy = phi double [ %i.iu, %bb.bg ], [ %i.iq, %bb.bf ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.112586.us.us, i64 8
  %i.ja = load i64, ptr %i.iz, align 1, !tbaa !18
  %i.jb = tail call noundef i64 @llvm.bswap.i64(i64 %i.ja) ; 3 uses
  %i.jc = bitcast i64 %i.jb to double             ; 4 uses
  %i.jd = fcmp nsz olt double %i.iw, %i.jc
  br i1 %i.jd, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i64 %i.jb, ptr %i.b, align 8, !tbaa !17
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.je = phi double [ %i.jc, %bb.bi ], [ %i.iw, %bb.bh ] ; 3 uses
  %i.jf = fcmp nsz ogt double %i.iy, %i.jc
  br i1 %i.jf, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i64 %i.jb, ptr %i.a, align 8, !tbaa !16
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.jg = phi double [ %i.jc, %bb.bk ], [ %i.iy, %bb.bj ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.112586.us.us, i64 16 ; 3 uses
  %niter474.next.1 = add nuw nsw i32 %niter474, 2 ; 2 uses
  %niter474.ncmp.1 = icmp eq i32 %niter474.next.1, %unroll_iter473
  br i1 %niter474.ncmp.1, label %._crit_edge.split90.us.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !113

._crit_edge.split90.us.us.unr-lcssa:              ; preds = %bb.bl
  br i1 %lcmp.mod468.not, label %._crit_edge.split90.us.us, label %.epil.preheader462

.epil.preheader462:                               ; preds = %._crit_edge.split90.us.us.unr-lcssa, %.preheader.us
  %.epil.init465 = phi double [ %i.io, %.preheader.us ], [ %i.jg, %._crit_edge.split90.us.us.unr-lcssa ] ; 2 uses
  %.epil.init467 = phi double [ %i.ip, %.preheader.us ], [ %i.je, %._crit_edge.split90.us.us.unr-lcssa ] ; 2 uses
  %.112586.us.us.epil.init = phi ptr [ %.012491.us, %.preheader.us ], [ %i.jh, %._crit_edge.split90.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod472)
  %i.ji = load i64, ptr %.112586.us.us.epil.init, align 1, !tbaa !18
  %i.jj = tail call noundef i64 @llvm.bswap.i64(i64 %i.ji) ; 3 uses
  %i.jk = bitcast i64 %i.jj to double             ; 4 uses
  %i.jl = fcmp nsz olt double %.epil.init467, %i.jk
  br i1 %i.jl, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.epil.preheader462
  store i64 %i.jj, ptr %i.b, align 8, !tbaa !17
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.epil.preheader462
  %i.jm = phi double [ %i.jk, %bb.bm ], [ %.epil.init467, %.epil.preheader462 ]
  %i.jn = fcmp nsz ogt double %.epil.init465, %i.jk
  br i1 %i.jn, label %bb.bo, label %._crit_edge.split90.us.us.epilog-lcssa

bb.bo:                                            ; preds = %bb.bn
  store i64 %i.jj, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.split90.us.us.epilog-lcssa

._crit_edge.split90.us.us.epilog-lcssa:           ; preds = %bb.bo, %bb.bn
  %i.jo = phi double [ %i.jk, %bb.bo ], [ %.epil.init465, %bb.bn ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.112586.us.us.epil.init, i64 8
  br label %._crit_edge.split90.us.us

._crit_edge.split90.us.us:                        ; preds = %._crit_edge.split90.us.us.unr-lcssa, %._crit_edge.split90.us.us.epilog-lcssa
  %.lcssa326 = phi double [ %i.jg, %._crit_edge.split90.us.us.unr-lcssa ], [ %i.jo, %._crit_edge.split90.us.us.epilog-lcssa ]
  %.lcssa325 = phi ptr [ %i.jh, %._crit_edge.split90.us.us.unr-lcssa ], [ %i.jp, %._crit_edge.split90.us.us.epilog-lcssa ]
  %.lcssa = phi double [ %i.je, %._crit_edge.split90.us.us.unr-lcssa ], [ %i.jm, %._crit_edge.split90.us.us.epilog-lcssa ]
  %i.jq = add nuw nsw i32 %.011792.us, 1          ; 2 uses
  %exitcond149.not = icmp eq i32 %i.jq, %i.if
  br i1 %exitcond149.not, label %.loopexit, label %.preheader.us, !llvm.loop !114

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.jr = load i64, ptr %i.ik, align 8, !tbaa !115
  %i.js = sitofp nsz i64 %i.jr to double
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge.split90
  %i.jt = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader.lr.ph.split.split ], [ %i.ke, %._crit_edge.split90 ]
  %i.ju = phi double [ f0xFFEFFFFFFFFFFFFF, %.preheader.lr.ph.split.split ], [ %i.kf, %._crit_edge.split90 ]
  %.011792 = phi i32 [ 0, %.preheader.lr.ph.split.split ], [ %i.ki, %._crit_edge.split90 ]
  %.012491 = phi ptr [ %0, %.preheader.lr.ph.split.split ], [ %i.kg, %._crit_edge.split90 ]
  br label %bb.bp

bb.bp:                                            ; preds = %.preheader, %bb.bu
  %i.jv = phi double [ %i.jt, %.preheader ], [ %i.ke, %bb.bu ] ; 3 uses
  %i.jw = phi double [ %i.ju, %.preheader ], [ %i.kf, %bb.bu ] ; 3 uses
  %.087 = phi i32 [ 0, %.preheader ], [ %i.kh, %bb.bu ]
  %.112586 = phi ptr [ %.012491, %.preheader ], [ %i.kg, %bb.bu ] ; 2 uses
  %i.jx = load i64, ptr %.112586, align 1, !tbaa !18
  %i.jy = tail call noundef i64 @llvm.bswap.i64(i64 %i.jx) ; 3 uses
  %i.jz = bitcast i64 %i.jy to double             ; 5 uses
  %i.ka = fcmp nsz une double %i.jz, %i.js
  br i1 %i.ka, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.kb = fcmp nsz olt double %i.jw, %i.jz
  br i1 %i.kb, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i64 %i.jy, ptr %i.b, align 8, !tbaa !17
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.kc = phi double [ %i.jz, %bb.br ], [ %i.jw, %bb.bq ] ; 2 uses
  %i.kd = fcmp nsz ogt double %i.jv, %i.jz
  br i1 %i.kd, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i64 %i.jy, ptr %i.a, align 8, !tbaa !16
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.bp
  %i.ke = phi double [ %i.jv, %bb.bs ], [ %i.jz, %bb.bt ], [ %i.jv, %bb.bp ] ; 2 uses
  %i.kf = phi double [ %i.kc, %bb.bs ], [ %i.kc, %bb.bt ], [ %i.jw, %bb.bp ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.112586, i64 8 ; 2 uses
  %i.kh = add nuw nsw i32 %.087, 1                ; 2 uses
  %exitcond146.not = icmp eq i32 %i.kh, %i.ii
  br i1 %exitcond146.not, label %._crit_edge.split90, label %bb.bp, !llvm.loop !113

._crit_edge.split90:                              ; preds = %bb.bu
  %i.ki = add nuw nsw i32 %.011792, 1             ; 2 uses
  %exitcond147.not = icmp eq i32 %i.ki, %i.if
  br i1 %exitcond147.not, label %.loopexit, label %.preheader, !llvm.loop !114

.preheader2:                                      ; preds = %.preheader2.lr.ph.split.split, %._crit_edge.split75
  %i.kj = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader2.lr.ph.split.split ], [ %i.kv, %._crit_edge.split75 ]
  %i.kk = phi double [ f0xFFEFFFFFFFFFFFFF, %.preheader2.lr.ph.split.split ], [ %i.kw, %._crit_edge.split75 ]
  %.111879 = phi i32 [ 0, %.preheader2.lr.ph.split.split ], [ %i.kz, %._crit_edge.split75 ]
  %.212678 = phi ptr [ %0, %.preheader2.lr.ph.split.split ], [ %i.kx, %._crit_edge.split75 ]
  br label %bb.bv

bb.bv:                                            ; preds = %.preheader2, %bb.ca
  %i.kl = phi double [ %i.kj, %.preheader2 ], [ %i.kv, %bb.ca ] ; 3 uses
  %i.km = phi double [ %i.kk, %.preheader2 ], [ %i.kw, %bb.ca ] ; 3 uses
  %.172 = phi i32 [ 0, %.preheader2 ], [ %i.ky, %bb.ca ]
  %.312771 = phi ptr [ %.212678, %.preheader2 ], [ %i.kx, %bb.ca ] ; 2 uses
  %i.kn = load i32, ptr %.312771, align 1, !tbaa !18
  %i.ko = tail call i32 @llvm.bswap.i32(i32 %i.kn)
  %i.kp = bitcast i32 %i.ko to float              ; 2 uses
  %i.kq = fcmp nsz une float %i.kp, %i.id
  br i1 %i.kq, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.kr = fpext nsz float %i.kp to double         ; 6 uses
  %i.ks = fcmp nsz olt double %i.km, %i.kr
  br i1 %i.ks, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store double %i.kr, ptr %i.b, align 8, !tbaa !17
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.kt = phi double [ %i.kr, %bb.bx ], [ %i.km, %bb.bw ] ; 2 uses
  %i.ku = fcmp nsz ogt double %i.kl, %i.kr
  br i1 %i.ku, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store double %i.kr, ptr %i.a, align 8, !tbaa !16
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz, %bb.bv
  %i.kv = phi double [ %i.kl, %bb.by ], [ %i.kr, %bb.bz ], [ %i.kl, %bb.bv ] ; 2 uses
  %i.kw = phi double [ %i.kt, %bb.by ], [ %i.kt, %bb.bz ], [ %i.km, %bb.bv ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.312771, i64 4 ; 2 uses
  %i.ky = add nuw nsw i32 %.172, 1                ; 2 uses
  %exitcond142.not = icmp eq i32 %i.ky, %i.gk
  br i1 %exitcond142.not, label %._crit_edge.split75, label %bb.bv, !llvm.loop !111

._crit_edge.split75:                              ; preds = %bb.ca
  %i.kz = add nuw nsw i32 %.111879, 1             ; 2 uses
  %exitcond143.not = icmp eq i32 %i.kz, %i.gh
  br i1 %exitcond143.not, label %.loopexit, label %.preheader2, !llvm.loop !112

.preheader5:                                      ; preds = %.preheader5.lr.ph.split.split, %._crit_edge.split60
  %i.la = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader5.lr.ph.split.split ], [ %.lcssa346, %._crit_edge.split60 ] ; 2 uses
  %i.lb = phi double [ f0xFFEFFFFFFFFFFFFF, %.preheader5.lr.ph.split.split ], [ %.lcssa345, %._crit_edge.split60 ] ; 2 uses
  %.211964 = phi i32 [ 0, %.preheader5.lr.ph.split.split ], [ %i.mf, %._crit_edge.split60 ]
  %.412863 = phi ptr [ %0, %.preheader5.lr.ph.split.split ], [ %.lcssa344, %._crit_edge.split60 ] ; 2 uses
  br i1 %i.gf, label %.epil.preheader415, label %.preheader5.new

.preheader5.new:                                  ; preds = %.preheader5, %bb.ck
  %i.lc = phi double [ %i.lt, %bb.ck ], [ %i.la, %.preheader5 ] ; 3 uses
  %i.ld = phi double [ %i.lu, %bb.ck ], [ %i.lb, %.preheader5 ] ; 3 uses
  %.512956 = phi ptr [ %i.lv, %bb.ck ], [ %.412863, %.preheader5 ] ; 3 uses
  %niter427 = phi i32 [ %niter427.next.1, %bb.ck ], [ 0, %.preheader5 ]
  %i.le = load i8, ptr %.512956, align 1, !tbaa !18 ; 2 uses
  %i.lf = zext i8 %i.le to i64
  %.not144 = icmp eq i64 %i.ge, %i.lf
  br i1 %.not144, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %.preheader5.new
  %i.lg = uitofp i8 %i.le to double               ; 6 uses
  %i.lh = fcmp nsz olt double %i.ld, %i.lg
  br i1 %i.lh, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store double %i.lg, ptr %i.b, align 8, !tbaa !17
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.li = phi double [ %i.lg, %bb.cc ], [ %i.ld, %bb.cb ] ; 2 uses
  %i.lj = fcmp nsz ogt double %i.lc, %i.lg
  br i1 %i.lj, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store double %i.lg, ptr %i.a, align 8, !tbaa !16
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce, %.preheader5.new
  %i.lk = phi double [ %i.lc, %bb.cd ], [ %i.lg, %bb.ce ], [ %i.lc, %.preheader5.new ] ; 3 uses
  %i.ll = phi double [ %i.li, %bb.cd ], [ %i.li, %bb.ce ], [ %i.ld, %.preheader5.new ] ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.512956, i64 1
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !18  ; 2 uses
  %i.lo = zext i8 %i.ln to i64
  %.not144.1 = icmp eq i64 %i.ge, %i.lo
  br i1 %.not144.1, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lp = uitofp i8 %i.ln to double               ; 6 uses
  %i.lq = fcmp nsz olt double %i.ll, %i.lp
  br i1 %i.lq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store double %i.lp, ptr %i.b, align 8, !tbaa !17
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.lr = phi double [ %i.lp, %bb.ch ], [ %i.ll, %bb.cg ] ; 2 uses
  %i.ls = fcmp nsz ogt double %i.lk, %i.lp
  br i1 %i.ls, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store double %i.lp, ptr %i.a, align 8, !tbaa !16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.cf
  %i.lt = phi double [ %i.lk, %bb.ci ], [ %i.lp, %bb.cj ], [ %i.lk, %bb.cf ] ; 3 uses
  %i.lu = phi double [ %i.lr, %bb.ci ], [ %i.lr, %bb.cj ], [ %i.ll, %bb.cf ] ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.512956, i64 2 ; 3 uses
  %niter427.next.1 = add nuw nsw i32 %niter427, 2 ; 2 uses
  %niter427.ncmp.1 = icmp eq i32 %niter427.next.1, %unroll_iter426
  br i1 %niter427.ncmp.1, label %._crit_edge.split60.unr-lcssa, label %.preheader5.new, !llvm.loop !109

._crit_edge.split60.unr-lcssa:                    ; preds = %bb.ck
  br i1 %lcmp.mod421.not, label %._crit_edge.split60, label %.epil.preheader415

.epil.preheader415:                               ; preds = %._crit_edge.split60.unr-lcssa, %.preheader5
  %.epil.init418 = phi double [ %i.la, %.preheader5 ], [ %i.lt, %._crit_edge.split60.unr-lcssa ] ; 3 uses
  %.epil.init420 = phi double [ %i.lb, %.preheader5 ], [ %i.lu, %._crit_edge.split60.unr-lcssa ] ; 3 uses
  %.512956.epil.init = phi ptr [ %.412863, %.preheader5 ], [ %i.lv, %._crit_edge.split60.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod425)
  %i.lw = load i8, ptr %.512956.epil.init, align 1, !tbaa !18 ; 2 uses
  %i.lx = zext i8 %i.lw to i64
  %.not144.epil = icmp eq i64 %i.ge, %i.lx
  br i1 %.not144.epil, label %._crit_edge.split60.epilog-lcssa, label %bb.cl

bb.cl:                                            ; preds = %.epil.preheader415
  %i.ly = uitofp i8 %i.lw to double               ; 6 uses
  %i.lz = fcmp nsz olt double %.epil.init420, %i.ly
  br i1 %i.lz, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store double %i.ly, ptr %i.b, align 8, !tbaa !17
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ma = phi double [ %i.ly, %bb.cm ], [ %.epil.init420, %bb.cl ] ; 2 uses
  %i.mb = fcmp nsz ogt double %.epil.init418, %i.ly
  br i1 %i.mb, label %bb.co, label %._crit_edge.split60.epilog-lcssa

bb.co:                                            ; preds = %bb.cn
  store double %i.ly, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.split60.epilog-lcssa

._crit_edge.split60.epilog-lcssa:                 ; preds = %bb.co, %bb.cn, %.epil.preheader415
  %i.mc = phi double [ %.epil.init418, %bb.cn ], [ %i.ly, %bb.co ], [ %.epil.init418, %.epil.preheader415 ]
  %i.md = phi double [ %i.ma, %bb.cn ], [ %i.ma, %bb.co ], [ %.epil.init420, %.epil.preheader415 ]
  %i.me = getelementptr inbounds nuw i8, ptr %.512956.epil.init, i64 1
  br label %._crit_edge.split60

._crit_edge.split60:                              ; preds = %._crit_edge.split60.unr-lcssa, %._crit_edge.split60.epilog-lcssa
  %.lcssa346 = phi double [ %i.lt, %._crit_edge.split60.unr-lcssa ], [ %i.mc, %._crit_edge.split60.epilog-lcssa ]
  %.lcssa345 = phi double [ %i.lu, %._crit_edge.split60.unr-lcssa ], [ %i.md, %._crit_edge.split60.epilog-lcssa ]
  %.lcssa344 = phi ptr [ %i.lv, %._crit_edge.split60.unr-lcssa ], [ %i.me, %._crit_edge.split60.epilog-lcssa ]
  %i.mf = add nuw nsw i32 %.211964, 1             ; 2 uses
  %exitcond139.not = icmp eq i32 %i.mf, %i.ep
  br i1 %exitcond139.not, label %.loopexit, label %.preheader5, !llvm.loop !110

.preheader8:                                      ; preds = %.preheader8.lr.ph.split.split, %._crit_edge.split45
  %i.mg = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader8.lr.ph.split.split ], [ %i.mr, %._crit_edge.split45 ]
  %i.mh = phi double [ f0xFFEFFFFFFFFFFFFF, %.preheader8.lr.ph.split.split ], [ %i.ms, %._crit_edge.split45 ]
  %.312049 = phi i32 [ 0, %.preheader8.lr.ph.split.split ], [ %i.mv, %._crit_edge.split45 ]
  %.648 = phi ptr [ %0, %.preheader8.lr.ph.split.split ], [ %i.mt, %._crit_edge.split45 ]
  br label %bb.cp

bb.cp:                                            ; preds = %.preheader8, %bb.cu
  %i.mi = phi double [ %i.mg, %.preheader8 ], [ %i.mr, %bb.cu ] ; 3 uses
  %i.mj = phi double [ %i.mh, %.preheader8 ], [ %i.ms, %bb.cu ] ; 3 uses
  %.342 = phi i32 [ 0, %.preheader8 ], [ %i.mu, %bb.cu ]
  %.741 = phi ptr [ %.648, %.preheader8 ], [ %i.mt, %bb.cu ] ; 2 uses
  %i.mk = load i16, ptr %.741, align 1, !tbaa !18
  %i.ml = tail call i16 @llvm.bswap.i16(i16 %i.mk) ; 2 uses
  %i.mm = sext i16 %i.ml to i64
  %.not142 = icmp eq i64 %i.en, %i.mm
  br i1 %.not142, label %bb.cu, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mn = sitofp i16 %i.ml to double              ; 6 uses
  %i.mo = fcmp nsz olt double %i.mj, %i.mn
  br i1 %i.mo, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store double %i.mn, ptr %i.b, align 8, !tbaa !17
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.mp = phi double [ %i.mn, %bb.cr ], [ %i.mj, %bb.cq ] ; 2 uses
  %i.mq = fcmp nsz ogt double %i.mi, %i.mn
  br i1 %i.mq, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store double %i.mn, ptr %i.a, align 8, !tbaa !16
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct, %bb.cp
  %i.mr = phi double [ %i.mi, %bb.cs ], [ %i.mn, %bb.ct ], [ %i.mi, %bb.cp ] ; 2 uses
  %i.ms = phi double [ %i.mp, %bb.cs ], [ %i.mp, %bb.ct ], [ %i.mj, %bb.cp ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.741, i64 2 ; 2 uses
  %i.mu = add nuw nsw i32 %.342, 1                ; 2 uses
  %exitcond134.not = icmp eq i32 %i.mu, %i.cy
  br i1 %exitcond134.not, label %._crit_edge.split45, label %bb.cp, !llvm.loop !107

._crit_edge.split45:                              ; preds = %bb.cu
  %i.mv = add nuw nsw i32 %.312049, 1             ; 2 uses
  %exitcond135.not = icmp eq i32 %i.mv, %i.cv
  br i1 %exitcond135.not, label %.loopexit, label %.preheader8, !llvm.loop !108

.preheader11:                                     ; preds = %.preheader11.lr.ph.split.split, %._crit_edge.split30
  %i.mw = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader11.lr.ph.split.split ], [ %i.nh, %._crit_edge.split30 ]
  %i.mx = phi double [ f0xFFEFFFFFFFFFFFFF, %.preheader11.lr.ph.split.split ], [ %i.ni, %._crit_edge.split30 ]
  %.412134 = phi i32 [ 0, %.preheader11.lr.ph.split.split ], [ %i.nl, %._crit_edge.split30 ]
  %.833 = phi ptr [ %0, %.preheader11.lr.ph.split.split ], [ %i.nj, %._crit_edge.split30 ]
  br label %bb.cv

bb.cv:                                            ; preds = %.preheader11, %bb.da
  %i.my = phi double [ %i.mw, %.preheader11 ], [ %i.nh, %bb.da ] ; 3 uses
  %i.mz = phi double [ %i.mx, %.preheader11 ], [ %i.ni, %bb.da ] ; 3 uses
  %.427 = phi i32 [ 0, %.preheader11 ], [ %i.nk, %bb.da ]
  %.926 = phi ptr [ %.833, %.preheader11 ], [ %i.nj, %bb.da ] ; 2 uses
  %i.na = load i32, ptr %.926, align 1, !tbaa !18
  %i.nb = tail call i32 @llvm.bswap.i32(i32 %i.na) ; 2 uses
  %i.nc = sext i32 %i.nb to i64
  %.not140 = icmp eq i64 %i.ct, %i.nc
  br i1 %.not140, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nd = sitofp nsz i32 %i.nb to double          ; 6 uses
  %i.ne = fcmp nsz olt double %i.mz, %i.nd
  br i1 %i.ne, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store double %i.nd, ptr %i.b, align 8, !tbaa !17
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.nf = phi double [ %i.nd, %bb.cx ], [ %i.mz, %bb.cw ] ; 2 uses
  %i.ng = fcmp nsz ogt double %i.my, %i.nd
  br i1 %i.ng, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store double %i.nd, ptr %i.a, align 8, !tbaa !16
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz, %bb.cv
  %i.nh = phi double [ %i.my, %bb.cy ], [ %i.nd, %bb.cz ], [ %i.my, %bb.cv ] ; 2 uses
  %i.ni = phi double [ %i.nf, %bb.cy ], [ %i.nf, %bb.cz ], [ %i.mz, %bb.cv ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.926, i64 4 ; 2 uses
  %i.nk = add nuw nsw i32 %.427, 1                ; 2 uses
  %exitcond130.not = icmp eq i32 %i.nk, %i.be
  br i1 %exitcond130.not, label %._crit_edge.split30, label %bb.cv, !llvm.loop !105

._crit_edge.split30:                              ; preds = %bb.da
  %i.nl = add nuw nsw i32 %.412134, 1             ; 2 uses
  %exitcond131.not = icmp eq i32 %i.nl, %i.bb
  br i1 %exitcond131.not, label %.loopexit, label %.preheader11, !llvm.loop !106

.preheader14:                                     ; preds = %.preheader14.lr.ph.split.split, %._crit_edge.split
  %i.nm = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader14.lr.ph.split.split ], [ %i.nw, %._crit_edge.split ]
  %i.nn = phi double [ f0xFFEFFFFFFFFFFFFF, %.preheader14.lr.ph.split.split ], [ %i.nx, %._crit_edge.split ]
  %.512221 = phi i32 [ 0, %.preheader14.lr.ph.split.split ], [ %i.oa, %._crit_edge.split ]
  %.1020 = phi ptr [ %0, %.preheader14.lr.ph.split.split ], [ %i.ny, %._crit_edge.split ]
  br label %bb.db

bb.db:                                            ; preds = %.preheader14, %bb.dg
  %i.no = phi double [ %i.nm, %.preheader14 ], [ %i.nw, %bb.dg ] ; 3 uses
  %i.np = phi double [ %i.nn, %.preheader14 ], [ %i.nx, %bb.dg ] ; 3 uses
  %.518 = phi i32 [ 0, %.preheader14 ], [ %i.nz, %bb.dg ]
  %.1117 = phi ptr [ %.1020, %.preheader14 ], [ %i.ny, %bb.dg ] ; 2 uses
  %i.nq = load i64, ptr %.1117, align 1, !tbaa !18
  %i.nr = tail call noundef i64 @llvm.bswap.i64(i64 %i.nq) ; 2 uses
  %.not138 = icmp eq i64 %i.nr, %i.az
  br i1 %.not138, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ns = sitofp nsz i64 %i.nr to double          ; 6 uses
  %i.nt = fcmp nsz olt double %i.np, %i.ns
  br i1 %i.nt, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store double %i.ns, ptr %i.b, align 8, !tbaa !17
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.nu = phi double [ %i.ns, %bb.dd ], [ %i.np, %bb.dc ] ; 2 uses
  %i.nv = fcmp nsz ogt double %i.no, %i.ns
  br i1 %i.nv, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store double %i.ns, ptr %i.a, align 8, !tbaa !16
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.df, %bb.db
  %i.nw = phi double [ %i.no, %bb.de ], [ %i.ns, %bb.df ], [ %i.no, %bb.db ] ; 2 uses
  %i.nx = phi double [ %i.nu, %bb.de ], [ %i.nu, %bb.df ], [ %i.np, %bb.db ] ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.1117, i64 8 ; 2 uses
  %i.nz = add nuw nsw i32 %.518, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.nz, %i.k
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.db, !llvm.loop !103

._crit_edge.split:                                ; preds = %bb.dg
  %i.oa = add nuw nsw i32 %.512221, 1             ; 2 uses
  %exitcond127.not = icmp eq i32 %i.oa, %i.h
  br i1 %exitcond127.not, label %.loopexit, label %.preheader14, !llvm.loop !104

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %._crit_edge.split30, %._crit_edge.split30.us.us, %._crit_edge.split45, %._crit_edge.split45.us.us, %._crit_edge.split60, %._crit_edge.split60.us.us, %._crit_edge.split75, %._crit_edge.split75.us.us, %._crit_edge.split90, %._crit_edge.split90.us.us, %.preheader15, %.preheader14.lr.ph, %.preheader12, %.preheader11.lr.ph, %.preheader9, %.preheader8.lr.ph, %.preheader6, %.preheader5.lr.ph, %.preheader3, %.preheader2.lr.ph, %.preheader1, %.preheader.lr.ph, %bb.a
  %.0123 = phi i32 [ -1094995529, %bb.a ], [ 0, %.preheader9 ], [ 0, %.preheader6 ], [ 0, %.preheader3 ], [ 0, %.preheader1 ], [ 0, %.preheader12 ], [ 0, %.preheader.lr.ph ], [ 0, %._crit_edge.split60.us.us ], [ 0, %.preheader15 ], [ 0, %.preheader2.lr.ph ], [ 0, %._crit_edge.split45.us.us ], [ 0, %._crit_edge.split60 ], [ 0, %.preheader5.lr.ph ], [ 0, %._crit_edge.split30.us.us ], [ 0, %._crit_edge.split45 ], [ 0, %.preheader8.lr.ph ], [ 0, %._crit_edge.split.us.us ], [ 0, %._crit_edge.split30 ], [ 0, %.preheader11.lr.ph ], [ 0, %._crit_edge.split90 ], [ 0, %._crit_edge.split90.us.us ], [ 0, %.preheader14.lr.ph ], [ 0, %._crit_edge.split75 ], [ 0, %._crit_edge.split75.us.us ], [ 0, %._crit_edge.split ]
  ret i32 %.0123
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.lrint.v4i64.v4f64(<4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.lrint.v8i64.v8f64(<8 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"double", !5, i64 0}
!12 = !{!"FITSHeader", !6, i64 0, !6, i64 4, !6, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !5, i64 32, !6, i64 4028, !6, i64 4032, !6, i64 4036, !6, i64 4040, !6, i64 4044, !11, i64 4048, !11, i64 4056, !6, i64 4064, !11, i64 4072, !6, i64 4080, !11, i64 4088}
!13 = !{!6, !6, i64 0}
!14 = !{!12, !6, i64 24}
!15 = !{!12, !6, i64 8}
!16 = !{!12, !11, i64 4072}
!17 = !{!12, !11, i64 4088}
!18 = !{!5, !5, i64 0}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10, !94, !95}
!24 = distinct !{!24, !10, !94}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !98}
!28 = distinct !{!28, !10, !98}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !10, !94, !95}
!37 = distinct !{!37, !10, !94}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10, !94, !95}
!43 = distinct !{!43, !10, !94}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !"LVerDomain"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !10, !94, !95}
!50 = distinct !{!50, !10, !94}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = !{!"any pointer", !5, i64 0}
!54 = !{!"p1 _ZTS11AVBufferRef", !53, i64 0}
!55 = !{!"p1 omnipotent char", !53, i64 0}
!56 = !{!"p1 _ZTS16AVPacketSideData", !53, i64 0}
!57 = !{!"AVRational", !6, i64 0, !6, i64 4}
!58 = !{!"AVPacket", !54, i64 0, !9, i64 8, !9, i64 16, !55, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !56, i64 48, !6, i64 56, !9, i64 64, !9, i64 72, !53, i64 80, !54, i64 88, !57, i64 96}
!59 = !{!58, !55, i64 24}
!60 = !{!"p1 _ZTS7AVClass", !53, i64 0}
!61 = !{!"p1 _ZTS7AVCodec", !53, i64 0}
!62 = !{!"p1 _ZTS15AVCodecInternal", !53, i64 0}
!63 = !{!"float", !5, i64 0}
!64 = !{!"p1 short", !53, i64 0}
!65 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !53, i64 16}
!66 = !{!"p1 _ZTS10RcOverride", !53, i64 0}
!67 = !{!"p1 _ZTS9AVHWAccel", !53, i64 0}
!68 = !{!"p1 _ZTS17AVCodecDescriptor", !53, i64 0}
!69 = !{!"p1 int", !53, i64 0}
!70 = !{!"any p2 pointer", !53, i64 0}
!71 = !{!"p2 _ZTS15AVFrameSideData", !70, i64 0}
!72 = !{!"AVCodecContext", !60, i64 0, !6, i64 8, !6, i64 12, !61, i64 16, !6, i64 24, !6, i64 28, !53, i64 32, !62, i64 40, !53, i64 48, !9, i64 56, !6, i64 64, !6, i64 68, !55, i64 72, !6, i64 80, !57, i64 84, !57, i64 92, !57, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !57, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !53, i64 184, !53, i64 192, !6, i64 200, !63, i64 204, !63, i64 208, !63, i64 212, !63, i64 216, !63, i64 220, !63, i64 224, !63, i64 228, !63, i64 232, !63, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !64, i64 288, !64, i64 296, !64, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !65, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !53, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !63, i64 428, !63, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !66, i64 456, !9, i64 464, !9, i64 472, !63, i64 480, !63, i64 484, !6, i64 488, !6, i64 492, !55, i64 496, !55, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !67, i64 536, !53, i64 544, !54, i64 552, !54, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !53, i64 672, !53, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !68, i64 728, !55, i64 736, !6, i64 744, !6, i64 748, !55, i64 752, !55, i64 760, !55, i64 768, !56, i64 776, !6, i64 784, !6, i64 788, !9, i64 792, !6, i64 800, !6, i64 804, !9, i64 808, !53, i64 816, !9, i64 824, !69, i64 832, !6, i64 840, !71, i64 848, !6, i64 856, !6, i64 860}
!73 = !{!72, !53, i64 32}
!74 = !{!58, !6, i64 32}
!75 = !{!"p2 omnipotent char", !70, i64 0}
!76 = !{!"p2 _ZTS11AVBufferRef", !70, i64 0}
!77 = !{!"p1 _ZTS12AVDictionary", !53, i64 0}
!78 = !{!"AVFrame", !5, i64 0, !5, i64 64, !75, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !57, i64 124, !9, i64 136, !9, i64 144, !57, i64 152, !6, i64 160, !53, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !76, i64 248, !6, i64 256, !71, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !9, i64 304, !77, i64 312, !6, i64 320, !54, i64 328, !54, i64 336, !9, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !53, i64 376, !65, i64 384, !9, i64 408, !6, i64 416}
!79 = !{!78, !77, i64 312}
!80 = !{!"p2 _ZTS12AVDictionary", !70, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!12, !6, i64 4040}
!83 = !{!12, !6, i64 28}
!84 = !{!12, !6, i64 4064}
!85 = !{!11, !11, i64 0}
!86 = !{!72, !6, i64 136}
!87 = !{!72, !6, i64 116}
!88 = !{!72, !6, i64 112}
!89 = !{!55, !55, i64 0}
!90 = !{!"FITSContext", !60, i64 0, !6, i64 8}
!91 = !{!90, !6, i64 8}
!92 = !{!"short", !5, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"llvm.loop.isvectorized", i32 1}
!95 = !{!"llvm.loop.unroll.runtime.disable"}
!96 = !{!12, !11, i64 4048}
!97 = !{!12, !11, i64 4056}
!98 = !{!"llvm.loop.unswitch.partial.disable"}
!99 = !{!34}
!100 = !{!35}
!101 = !{!47}
!102 = !{!48}
!103 = distinct !{!103, !10}
!104 = distinct !{!104, !10}
!105 = distinct !{!105, !10}
!106 = distinct !{!106, !10}
!107 = distinct !{!107, !10}
!108 = distinct !{!108, !10}
!109 = distinct !{!109, !10}
!110 = distinct !{!110, !10}
!111 = distinct !{!111, !10}
!112 = distinct !{!112, !10}
!113 = distinct !{!113, !10}
!114 = distinct !{!114, !10}
!115 = !{!12, !9, i64 16}
end_hunk_3
