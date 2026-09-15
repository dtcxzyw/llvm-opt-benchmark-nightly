Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/encode?download=true
inline.NumInlined: 81
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@flac__encode_file:bb.a
  %i.pn = and i64 %i.pm, 1
  %i.po = add nuw nsw i64 %i.pn, %i.pm
  br label %bb.dc

fread.inline.exit.i.i366.i:                       ; preds = %bb.cz
  %i.pp = call i64 @fread(ptr noundef nonnull %i.q, i64 noundef 1, i64 noundef 8, ptr noundef nonnull %i.pg)
  %i.pq = icmp ult i64 %i.pp, 8
  br i1 %i.pq, label %read_uint64.exit369.thread.i, label %read_uint64.exit369.i

read_uint64.exit369.thread.i:                     ; preds = %fread.inline.exit.i.i366.i
  %i.pr = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.pr, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.ph) #18
  br label %.critedge309.i

read_uint64.exit369.i:                            ; preds = %fread.inline.exit.i.i366.i
  %i.ps = load i64, ptr %i.q, align 8, !tbaa !34
  %i.pt = add i64 %i.ps, 7                        ; 2 uses
  %i.pu = and i64 %i.pt, -8                       ; 3 uses
  store i64 %i.pu, ptr %i.q, align 8, !tbaa !34
  %i.pv = icmp ult i64 %i.pt, 24
  br i1 %i.pv, label %bb.da, label %bb.db

bb.da:                                            ; preds = %read_uint64.exit369.i
  %i.pw = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.px = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.py = trunc nuw nsw i64 %i.pu to i32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.pw, i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef %i.px, i32 noundef %i.py) #18
  br label %.critedge309.i

bb.db:                                            ; preds = %read_uint64.exit369.i
  %i.pz = add i64 %i.pu, -24
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %read_uint32.exit364.i
  %storemerge299.i = phi i64 [ %i.pz, %bb.db ], [ %i.po, %read_uint32.exit364.i ] ; 5 uses
  store i64 %storemerge299.i, ptr %i.q, align 8, !tbaa !34
  %.not301.i = icmp eq i64 %storemerge299.i, 0
  br i1 %.not301.i, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.qa = load ptr, ptr %i.az, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.qb = icmp slt i64 %storemerge299.i, 0
  br i1 %i.qb, label %.loopexit.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qc = call i32 @fileno(ptr noundef %i.qa) #18
  %i.qd = call i32 @fstat64(i32 noundef %i.qc, ptr noundef nonnull %12) #18
  %i.qe = icmp eq i32 %i.qd, 0
  br i1 %i.qe, label %bb.df, label %.preheader3861

bb.df:                                            ; preds = %bb.de
  %i.qf = load i32, ptr %i.ej, align 8, !tbaa !48
  %i.qg = and i32 %i.qf, 61440
  %i.qh = icmp eq i32 %i.qg, 32768
  br i1 %i.qh, label %bb.dg, label %.preheader3861

bb.dg:                                            ; preds = %bb.df
  %i.qi = call i32 @fseeko64(ptr noundef %i.qa, i64 noundef %storemerge299.i, i32 noundef 1)
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %fskip_ahead.exit374.i, label %.preheader3861

.preheader3861:                                   ; preds = %bb.dg, %bb.df, %bb.de
  br label %bb.dh

bb.dh:                                            ; preds = %.preheader3861, %fread.inline.exit.i372.i
  %.013.i370.i = phi i64 [ %i.qn, %fread.inline.exit.i372.i ], [ %storemerge299.i, %.preheader3861 ] ; 3 uses
  %.not.i371.i = icmp eq i64 %.013.i370.i, 0
  br i1 %.not.i371.i, label %fskip_ahead.exit374.i, label %fread.inline.exit.i372.i

fread.inline.exit.i372.i:                         ; preds = %bb.dh
  %i.qk = call i64 @llvm.umin.i64(i64 %.013.i370.i, i64 8192) ; 3 uses
  %i.ql = call i64 @fread(ptr noundef nonnull @fskip_ahead.dump, i64 noundef 1, i64 noundef %i.qk, ptr noundef nonnull %i.qa)
  %i.qm = icmp slt i64 %i.ql, %i.qk
  %i.qn = sub nuw nsw i64 %.013.i370.i, %i.qk
  br i1 %i.qm, label %.loopexit.i, label %bb.dh, !llvm.loop !0

fskip_ahead.exit374.i:                            ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.di

.loopexit.i:                                      ; preds = %bb.dd, %fread.inline.exit.i372.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.qo = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.qp = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.qo, i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef %i.qp) #18
  br label %.critedge309.i

bb.di:                                            ; preds = %fskip_ahead.exit374.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  br label %bb.dk

.critedge309.i:                                   ; preds = %bb.cy, %.loopexit.i, %bb.da, %read_uint64.exit369.thread.i, %read_uint32.exit364.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  br label %.thread416.i

.thread416.i:                                     ; preds = %.critedge309.i, %.thread395.i, %.thread.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %bb.dl

bb.dj:                                            ; preds = %bb.cu, %bb.cr, %bb.cm, %bb.ci, %read_uint64.exit.thread.i, %read_uint32.exit353.thread.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di, %.loopexit584, %.loopexit
  %.3212.jt0.i = phi i32 [ 0, %.loopexit ], [ 1, %.loopexit584 ], [ %.0209.i1379, %bb.di ] ; 2 uses
  %.3204.jt0.i = phi i32 [ 1, %.loopexit ], [ %.0201.i1380, %.loopexit584 ], [ %.0201.i1380, %bb.di ]
  %.3199.jt0.i = phi i32 [ %.0196.i1381, %.loopexit ], [ %i.iy, %.loopexit584 ], [ %.0196.i1381, %bb.di ]
  %.3194.jt0.i = phi i32 [ %.0191.i1382, %.loopexit ], [ %i.is, %.loopexit584 ], [ %.0191.i1382, %bb.di ]
  %.3189.jt0.i = phi i32 [ %.0186.i1383, %.loopexit ], [ %i.jr, %.loopexit584 ], [ %.0186.i1383, %bb.di ]
  %.4185.jt0.i = phi i32 [ %.0181.i1384, %.loopexit ], [ %.1182.i, %.loopexit584 ], [ %.0181.i1384, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  %i.qq = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.qr = call i32 @feof(ptr noundef %i.qq) #18
  %or.cond305.i = icmp eq i32 %i.qr, 0
  br i1 %or.cond305.i, label %fread.inline.exit.i310.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.dk
  %i.qs = icmp eq i32 %.3212.jt0.i, 0
  br i1 %i.qs, label %.critedge.i.thread, label %.thread1165.i

.critedge.thread.i:                               ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  %.not3031159.i = icmp eq i32 %.0209.i1379, 0
  br i1 %.not3031159.i, label %.critedge.i.thread, label %.thread1165.i

.critedge.i.thread:                               ; preds = %.preheader.i, %.critedge.thread.i, %.critedge.i
  %i.qt = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.qu = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.qt, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef %i.qu) #18
  br label %bb.dl

.thread1165.i:                                    ; preds = %.critedge.thread.i, %.critedge.i
  %i.qv = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.qw = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.qv, i32 noundef 1, ptr noundef nonnull @.str.56, ptr noundef %i.qw) #18
  br label %bb.dl

get_sample_info_wave.exit:                        ; preds = %bb.cs, %bb.ct
  %i.qx = phi i64 [ %i.nr, %bb.ct ], [ %i.ny, %bb.cs ]
  store i64 %i.qx, ptr %i.dw, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  store i32 %.0196.i1381, ptr %i.ao, align 8, !tbaa !41
  %i.qy = getelementptr inbounds nuw i8, ptr %14, i64 124
  store i32 %.0191.i1382, ptr %i.qy, align 4, !tbaa !42
  %i.qz = getelementptr inbounds nuw i8, ptr %14, i64 128
  store i32 %.0186.i1383, ptr %i.qz, align 8, !tbaa !43
  %i.ra = getelementptr inbounds nuw i8, ptr %14, i64 132
  store i32 %.0181.i1384, ptr %i.ra, align 4, !tbaa !44
  %i.rb = load i32, ptr %i.g, align 4, !tbaa !14
  %i.rc = getelementptr inbounds nuw i8, ptr %14, i64 148
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.hm

bb.dl:                                            ; preds = %.thread1165.i, %.critedge.i.thread, %.thread416.i, %fread.inline.exit.i._crit_edge.i, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %i.rd = load i64, ptr %i.ak, align 8, !tbaa !40
  %.not.i371 = icmp eq i64 %i.rd, 0
  br i1 %.not.i371, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.re = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.re, i32 noundef 2, ptr noundef nonnull @.str.90) #18
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.rf = load ptr, ptr %i.ay, align 8, !tbaa !33
  %i.rg = call i32 @FLAC__stream_encoder_get_state(ptr noundef %i.rf) #18
  %i.rh = icmp eq i32 %i.rg, 4
  br i1 %i.rh, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  call fastcc void @print_verify_error(ptr noundef nonnull %14)
  call fastcc void @EncoderSession_destroy(ptr noundef nonnull %14)
  br label %EncoderSession_finish_error.exit373

bb.dp:                                            ; preds = %bb.dn
  %i.ri = load i32, ptr %i.af, align 4, !tbaa !23
  %.not8.i372 = icmp eq i32 %i.ri, 0
  call fastcc void @EncoderSession_destroy(ptr noundef nonnull %14)
  br i1 %.not8.i372, label %EncoderSession_finish_error.exit373, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.rj = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.rk = call i32 @unlink(ptr noundef %i.rj) #18 ; 0 uses
  br label %EncoderSession_finish_error.exit373

bb.dr:                                            ; preds = %bb.ab, %bb.ab
  %.sroa.3497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 1132
  %.sroa.3497.0.copyload = load i32, ptr %.sroa.3497.0..sroa_idx, align 4
  %.sroa.4499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 1148
  %.sroa.4499.0.copyload = load i32, ptr %.sroa.4499.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5501.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 0, ptr %i.rl, align 4, !tbaa !86
  %i.rm = getelementptr inbounds nuw i8, ptr %14, i64 144 ; 2 uses
  store i32 1, ptr %i.rm, align 8, !tbaa !87
  %i.rn = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.ro = call i32 @feof(ptr noundef %i.rn) #18
  %.not585.i = icmp eq i32 %i.ro, 0
  br i1 %.not585.i, label %fread.inline.exit.i.lr.ph.i, label %.critedge.thread.i374

fread.inline.exit.i.lr.ph.i:                      ; preds = %bb.dr
  %i.rp = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.rq = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.rs = getelementptr inbounds nuw i8, ptr %14, i64 160
  %i.rt = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 4 uses
  %.not209.i = icmp eq ptr %.sroa.5501.0.copyload, null
  %.not202.i = icmp eq i32 %.sroa.4499.0.copyload, 0
  %i.ru = icmp ne i32 %.sroa.4499.0.copyload, 0   ; 2 uses
  %.fr.i = freeze i32 %.sroa.3497.0.copyload
  %i.rv = icmp ne i32 %.fr.i, 0                   ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.rx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ry = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.rz = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.sa = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.sb = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.sc = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.sd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.sf = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %fread.inline.exit.i.i376

fread.inline.exit.i.i376:                         ; preds = %bb.fp, %fread.inline.exit.i.lr.ph.i
  %.0134592.i = phi i64 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3137.i, %bb.fp ] ; 3 uses
  %.0139591.i = phi i32 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3142.i, %bb.fp ] ; 3 uses
  %.0144590.i = phi i32 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3147.i, %bb.fp ] ; 3 uses
  %.0149589.i = phi i32 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3152.i, %bb.fp ] ; 3 uses
  %.0154588.i = phi i32 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3157.i, %bb.fp ] ; 3 uses
  %.0164586.i = phi i32 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3167.i, %bb.fp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.b, i8 0, i64 5, i1 false)
  %i.sg = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.sh = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.si = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.sg)
  %i.sj = add i64 %i.si, -1
  %i.sk = icmp ult i64 %i.sj, 3
  br i1 %i.sk, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %fread.inline.exit.i.i376
  %i.sl = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.sl, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.sh) #18
  %i.sm = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.sn = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.sm, i32 noundef 1, ptr noundef nonnull @.str.21, ptr noundef %i.sn) #18
  br label %.thread304.i

bb.dt:                                            ; preds = %fread.inline.exit.i.i376
  %i.so = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.sp = call i32 @feof(ptr noundef %i.so) #18
  %.not185.i = icmp eq i32 %i.sp, 0
  br i1 %.not185.i, label %bb.du, label %.thread313.i

.thread313.i:                                     ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.critedge.i377

bb.du:                                            ; preds = %bb.dt
  %i.sq = load i32, ptr %i.b, align 1
  %i.sr = icmp ne i32 %i.sq, 1296912195
  %i.ss = zext i1 %i.sr to i32
  %.not186.i = icmp eq i32 %i.ss, 0
  br i1 %.not186.i, label %bb.dv, label %bb.eq

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.st = load i32, ptr %i.ap, align 8, !tbaa !28
  %i.su = icmp eq i32 %i.st, 5                    ; 5 uses
  %.neg599.i = select i1 %i.su, i32 -22, i32 -18
  %i.sv = select i1 %i.su, i32 22, i32 18         ; 2 uses
  %.not187.i = icmp eq i32 %.0164586.i, 0
  %i.sw = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  br i1 %.not187.i, label %fread.inline.exit.i.i.i383, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sx = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.sx, i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef %i.sw) #18
  br label %.thread.i382

fread.inline.exit.i.i.i383:                       ; preds = %bb.dv
  %i.sy = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.sz = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.sy)
  %i.ta = icmp ult i64 %i.sz, 4
  br i1 %i.ta, label %read_uint32.exit.thread.i387, label %bb.dx

read_uint32.exit.thread.i387:                     ; preds = %fread.inline.exit.i.i.i383
  %i.tb = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.tb, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.sw) #18
  br label %.thread.i382

bb.dx:                                            ; preds = %fread.inline.exit.i.i.i383
  %i.tc = load <4 x i8>, ptr %i.d, align 4, !tbaa !29
  %i.td = shufflevector <4 x i8> %i.tc, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.td, ptr %i.d, align 4, !tbaa !29
  %.cast3853 = bitcast <4 x i8> %i.td to i32      ; 5 uses
  %i.te = icmp ugt i32 %i.sv, %.cast3853
  br i1 %i.te, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.tf = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.tg = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.th = select i1 %i.su, ptr @.str.61, ptr @.str.62
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.tf, i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef %i.tg, ptr noundef nonnull %i.th, i32 noundef %.cast3853) #18
  br label %.thread.i382

bb.dz:                                            ; preds = %bb.dx
  %.not189.i = icmp eq i32 %i.sv, %.cast3853
  %or.cond215.i = or i1 %i.su, %.not189.i
  br i1 %or.cond215.i, label %fread.inline.exit.i.i222.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ti = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.tj = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ti, i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef %i.tj, ptr noundef nonnull @.str.62, i32 noundef %.cast3853, i32 noundef 18) #18
  %i.tk = load i32, ptr %i.v, align 8, !tbaa !39
  %.not190.i = icmp eq i32 %i.tk, 0
  br i1 %.not190.i, label %.fread.inline.exit.i.i222_crit_edge.i, label %.thread.i382

.fread.inline.exit.i.i222_crit_edge.i:            ; preds = %bb.ea
  %.pre.i384 = load i32, ptr %i.d, align 4, !tbaa !14
  br label %fread.inline.exit.i.i222.i

fread.inline.exit.i.i222.i:                       ; preds = %.fread.inline.exit.i.i222_crit_edge.i, %bb.dz
  %i.tl = phi i32 [ %.pre.i384, %.fread.inline.exit.i.i222_crit_edge.i ], [ %.cast3853, %bb.dz ] ; 2 uses
  %i.tm = add i32 %i.tl, %.neg599.i
  %i.tn = and i32 %i.tl, 1
  %i.to = add i32 %i.tm, %i.tn
  %i.tp = zext i32 %i.to to i64                   ; 2 uses
  %i.tq = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.tr = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.ts = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.tq)
  %i.tt = icmp ult i64 %i.ts, 2
  br i1 %i.tt, label %read_uint16.exit.thread.i386, label %bb.eb

read_uint16.exit.thread.i386:                     ; preds = %fread.inline.exit.i.i222.i
  %i.tu = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.tu, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.tr) #18
  br label %.thread.i382

bb.eb:                                            ; preds = %fread.inline.exit.i.i222.i
  %i.tv = load i8, ptr %i.rt, align 1, !tbaa !29
  %i.tw = load i8, ptr %i.c, align 2, !tbaa !29
  store i8 %i.tw, ptr %i.rt, align 1, !tbaa !29
  store i8 %i.tv, ptr %i.c, align 2, !tbaa !29
  %i.tx = load i16, ptr %i.c, align 2, !tbaa !88  ; 3 uses
  %i.ty = zext i16 %i.tx to i32                   ; 4 uses
  %i.tz = icmp ult i16 %i.tx, 3
  %or.cond.i385 = or i1 %i.rv, %i.tz
  %i.ua = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  br i1 %or.cond.i385, label %fread.inline.exit.i.i228.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ub = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ub, i32 noundef 1, ptr noundef nonnull @.str.64, ptr noundef %i.ua, i32 noundef %i.ty) #18
  br label %.thread.i382

fread.inline.exit.i.i228.i:                       ; preds = %bb.eb
  %i.uc = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.ud = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.uc)
  %i.ue = icmp ult i64 %i.ud, 4
  br i1 %i.ue, label %read_uint32.exit233.thread.i, label %fread.inline.exit.i.i474

read_uint32.exit233.thread.i:                     ; preds = %fread.inline.exit.i.i228.i
  %i.uf = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.uf, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.ua) #18
  br label %.thread.i382

fread.inline.exit.i.i474:                         ; preds = %fread.inline.exit.i.i228.i
  %i.ug = load <4 x i8>, ptr %i.d, align 4, !tbaa !29
  %i.uh = shufflevector <4 x i8> %i.ug, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.uh, ptr %i.d, align 4, !tbaa !29
  %.cast3854 = bitcast <4 x i8> %i.uh to i32
  %i.ui = zext i32 %.cast3854 to i64
  %i.uj = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.uk = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.ul = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.uj)
  %i.um = icmp ult i64 %i.ul, 2
  br i1 %i.um, label %read_uint16.exit479.thread, label %bb.ed

read_uint16.exit479.thread:                       ; preds = %fread.inline.exit.i.i474
  %i.un = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.un, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.uk) #18
  br label %.thread.i382

bb.ed:                                            ; preds = %fread.inline.exit.i.i474
  %i.uo = load i8, ptr %i.rt, align 1, !tbaa !29
  %i.up = load i8, ptr %i.c, align 2, !tbaa !29
  store i8 %i.up, ptr %i.rt, align 1, !tbaa !29
  store i8 %i.uo, ptr %i.c, align 2, !tbaa !29
  %i.uq = load i16, ptr %i.c, align 2, !tbaa !88
  %i.ur = zext i16 %i.uq to i32                   ; 2 uses
  %i.us = and i32 %i.ur, 7                        ; 2 uses
  %.not194.i = icmp eq i32 %i.us, 0
  %i.ut = sub nuw nsw i32 8, %i.us
  %i.uu = select i1 %.not194.i, i32 0, i32 %i.ut  ; 2 uses
  %i.uv = add nuw nsw i32 %i.uu, %i.ur            ; 2 uses
  %i.uw = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.ux = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.uy = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 10, ptr noundef nonnull %i.uw)
  %i.uz = icmp ult i64 %i.uy, 10
  br i1 %i.uz, label %read_sane_extended.exit.thread, label %read_bytes.exit.i471

read_bytes.exit.i471:                             ; preds = %bb.ed
  %i.va = load i8, ptr %i.a, align 1, !tbaa !29   ; 2 uses
  %i.vb = zext i8 %i.va to i16
  %i.vc = shl nuw i16 %i.vb, 8
  %i.vd = load i8, ptr %i.rw, align 1, !tbaa !29
  %i.ve = zext i8 %i.vd to i16
  %i.vf = or disjoint i16 %i.vc, %i.ve            ; 2 uses
  %i.vg = icmp slt i8 %i.va, 0
  %i.vh = add i16 %i.vf, -16446
  %i.vi = icmp ult i16 %i.vh, -63
  %or.cond5.i = select i1 %i.vg, i1 true, i1 %i.vi
  br i1 %or.cond5.i, label %read_sane_extended.exit.thread, label %bb.ee

read_sane_extended.exit.thread:                   ; preds = %read_bytes.exit.i471, %bb.ed
  %.str.75.sink = phi ptr [ @.str.57, %bb.ed ], [ @.str.75, %read_bytes.exit.i471 ]
  %i.vj = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.vj, i32 noundef 1, ptr noundef nonnull %.str.75.sink, ptr noundef %i.ux) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread.i382

bb.ee:                                            ; preds = %read_bytes.exit.i471
  %i.vk = sub nuw nsw i16 16446, %i.vf
  %i.vl = load i8, ptr %i.rx, align 1, !tbaa !29
  %i.vm = zext i8 %i.vl to i64
  %i.vn = shl nuw i64 %i.vm, 56
  %i.vo = load i8, ptr %i.ry, align 1, !tbaa !29
  %i.vp = zext i8 %i.vo to i64
  %i.vq = shl nuw nsw i64 %i.vp, 48
  %i.vr = or disjoint i64 %i.vq, %i.vn
  %i.vs = load i8, ptr %i.rz, align 1, !tbaa !29
  %i.vt = zext i8 %i.vs to i64
  %i.vu = shl nuw nsw i64 %i.vt, 40
  %i.vv = or disjoint i64 %i.vr, %i.vu
  %i.vw = load i8, ptr %i.sa, align 1, !tbaa !29
  %i.vx = zext i8 %i.vw to i64
  %i.vy = shl nuw nsw i64 %i.vx, 32
  %i.vz = or disjoint i64 %i.vv, %i.vy
  %i.wa = load i8, ptr %i.sb, align 1, !tbaa !29
  %i.wb = zext i8 %i.wa to i64
  %i.wc = shl nuw nsw i64 %i.wb, 24
  %i.wd = or disjoint i64 %i.vz, %i.wc
  %i.we = load i8, ptr %i.sc, align 1, !tbaa !29
  %i.wf = zext i8 %i.we to i64
  %i.wg = shl nuw nsw i64 %i.wf, 16
  %i.wh = or disjoint i64 %i.wd, %i.wg
  %i.wi = load i8, ptr %i.sd, align 1, !tbaa !29
  %i.wj = zext i8 %i.wi to i64
  %i.wk = shl nuw nsw i64 %i.wj, 8
  %i.wl = or i64 %i.wh, %i.wk
  %i.wm = load i8, ptr %i.se, align 1, !tbaa !29
  %i.wn = zext i8 %i.wm to i64
  %i.wo = or i64 %i.wl, %i.wn                     ; 2 uses
  %i.wp = zext nneg i16 %i.vk to i64              ; 2 uses
  %i.wq = lshr i64 %i.wo, %i.wp
  %i.wr = add nsw i64 %i.wp, -1
  %i.ws = lshr i64 %i.wo, %i.wr
  %i.wt = and i64 %i.ws, 1
  %i.wu = add nuw i64 %i.wt, %i.wq
  %i.wv = trunc i64 %i.wu to i32                  ; 2 uses
  store i32 %i.wv, ptr %i.d, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.su, label %bb.ef, label %bb.ej

bb.ef:                                            ; preds = %bb.ee
  %i.ww = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.wx = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.wy = call fastcc i32 @read_uint32(ptr noundef %i.ww, i32 noundef 1, ptr noundef %i.d, ptr noundef %i.wx)
  %.not196.i = icmp eq i32 %i.wy, 0
  br i1 %.not196.i, label %.thread.i382, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.wz = load i32, ptr %i.d, align 4, !tbaa !14  ; 5 uses
  switch i32 %i.wz, label %bb.ei [
    i32 1936684916, label %bb.eh
    i32 1313820229, label %bb.ej
  ]

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.rm, align 8, !tbaa !87
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.xa = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.xb = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.xc = ashr i32 %i.wz, 24
  %i.xd = lshr i32 %i.wz, 16
  %i.xe = and i32 %i.xd, 8
  %i.xf = lshr i32 %i.wz, 8
  %i.xg = and i32 %i.xf, 8
  %i.xh = and i32 %i.wz, 8
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.xa, i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef %i.xb, i32 noundef %i.xc, i32 noundef %i.xe, i32 noundef %i.xg, i32 noundef %i.xh) #18
  br label %.thread.i382

bb.ej:                                            ; preds = %bb.eh, %bb.eg, %bb.ee
  br i1 %i.rv, label %bb.el, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.ej
  switch i16 %i.tx, label %bb.ek [
    i16 5, label %bb.el
    i16 3, label %bb.el
    i16 2, label %bb.el
    i16 1, label %bb.el
  ]

bb.ek:                                            ; preds = %switch.early.test.i
  %i.xi = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.xj = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.xi, i32 noundef 1, ptr noundef nonnull @.str.64, ptr noundef %i.xj, i32 noundef %i.ty) #18
  br label %.thread.i382

bb.el:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.ej
  %i.xk = lshr i32 %i.uv, 3
  %i.xl = mul nuw nsw i32 %i.xk, %i.ty
  store i32 %i.xl, ptr %i.rq, align 8, !tbaa !85
  %i.xm = load ptr, ptr %i.az, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.xn = call i32 @fileno(ptr noundef %i.xm) #18
  %i.xo = call i32 @fstat64(i32 noundef %i.xn, ptr noundef nonnull %7) #18
  %i.xp = icmp eq i32 %i.xo, 0
  br i1 %i.xp, label %bb.em, label %.preheader4389

bb.em:                                            ; preds = %bb.el
  %i.xq = load i32, ptr %i.sf, align 8, !tbaa !48
  %i.xr = and i32 %i.xq, 61440
  %i.xs = icmp eq i32 %i.xr, 32768
  br i1 %i.xs, label %bb.en, label %.preheader4389

bb.en:                                            ; preds = %bb.em
  %i.xt = call i32 @fseeko64(ptr noundef %i.xm, i64 noundef %i.tp, i32 noundef 1)
  %i.xu = icmp eq i32 %i.xt, 0
  br i1 %i.xu, label %.loopexit586, label %.preheader4389

.preheader4389:                                   ; preds = %bb.en, %bb.em, %bb.el
  br label %bb.eo

bb.eo:                                            ; preds = %.preheader4389, %fread.inline.exit.i466
  %.013.i464 = phi i64 [ %i.xy, %fread.inline.exit.i466 ], [ %i.tp, %.preheader4389 ] ; 3 uses
  %.not.i465 = icmp eq i64 %.013.i464, 0
  br i1 %.not.i465, label %.loopexit586, label %fread.inline.exit.i466

fread.inline.exit.i466:                           ; preds = %bb.eo
  %i.xv = call i64 @llvm.umin.i64(i64 %.013.i464, i64 8192) ; 3 uses
  %i.xw = call i64 @fread(ptr noundef nonnull @fskip_ahead.dump, i64 noundef 1, i64 noundef %i.xv, ptr noundef nonnull %i.xm)
  %i.xx = icmp slt i64 %i.xw, %i.xv
  %i.xy = sub nuw nsw i64 %.013.i464, %i.xv
  br i1 %i.xx, label %bb.ep, label %bb.eo, !llvm.loop !0

bb.ep:                                            ; preds = %fread.inline.exit.i466
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.xz = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.ya = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.xz, i32 noundef 1, ptr noundef nonnull @.str.66, ptr noundef %i.ya) #18
  br label %.thread.i382

.thread.i382:                                     ; preds = %bb.ef, %bb.ea, %read_sane_extended.exit.thread, %read_uint16.exit479.thread, %bb.ep, %bb.ek, %bb.ei, %read_uint32.exit233.thread.i, %bb.ec, %read_uint16.exit.thread.i386, %bb.dy, %read_uint32.exit.thread.i387, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.thread304.i

.loopexit586:                                     ; preds = %bb.eo, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.fp

bb.eq:                                            ; preds = %bb.du
  %i.yb = load i32, ptr %i.b, align 1
  %i.yc = icmp ne i32 %i.yb, 1145983827
  %i.yd = zext i1 %i.yc to i32
  %.not199.i = icmp eq i32 %i.yd, 0
  br i1 %.not199.i, label %bb.er, label %bb.fi

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %.not200.i = icmp eq i32 %.0164586.i, 0
  %i.ye = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  br i1 %.not200.i, label %bb.es, label %fread.inline.exit.i.i235.i

bb.es:                                            ; preds = %bb.er
  %i.yf = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.yf, i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef %i.ye) #18
  br label %.thread296.i

fread.inline.exit.i.i235.i:                       ; preds = %bb.er
  %i.yg = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.yh = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.yg)
  %i.yi = icmp ult i64 %i.yh, 4
  br i1 %i.yi, label %read_uint32.exit240.thread.i, label %bb.et

read_uint32.exit240.thread.i:                     ; preds = %fread.inline.exit.i.i235.i
  %i.yj = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.yj, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.ye) #18
  br label %.thread296.i

bb.et:                                            ; preds = %fread.inline.exit.i.i235.i
  %i.yk = load <4 x i8>, ptr %i.e, align 4, !tbaa !29
  %i.yl = shufflevector <4 x i8> %i.yk, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.yl, ptr %i.e, align 4, !tbaa !29
  %.cast3850 = bitcast <4 x i8> %i.yl to i32      ; 3 uses
  %i.ym = zext i32 %.cast3850 to i64
  br i1 %.not202.i, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.not203.i = icmp eq i32 %.cast3850, 0
  br i1 %.not203.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.yn = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.yo = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.yn, i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef %i.yo, ptr noundef nonnull %i.b) #18
  %i.yp = load i32, ptr %i.v, align 8, !tbaa !39
  %.not204.i = icmp eq i32 %i.yp, 0
  br i1 %.not204.i, label %bb.ew, label %.thread296.i

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.yq = load i32, ptr %i.rq, align 8, !tbaa !85
  %i.yr = zext i32 %i.yq to i64
  %i.ys = sub nsw i64 0, %i.yr
  br label %fread.inline.exit.i.i242.i

bb.ex:                                            ; preds = %bb.et
  %i.yt = icmp ult i32 %.cast3850, 9
  br i1 %i.yt, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.yu = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.yv = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.yu, i32 noundef 1, ptr noundef nonnull @.str.70, ptr noundef %i.yv) #18
  br label %.thread296.i

bb.ez:                                            ; preds = %bb.ex
  %i.yw = add nsw i64 %i.ym, -8
  br label %fread.inline.exit.i.i242.i

fread.inline.exit.i.i242.i:                       ; preds = %bb.ez, %bb.ew
  %.0.i380 = phi i64 [ %i.ys, %bb.ew ], [ %i.yw, %bb.ez ]
  %i.yx = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.yy = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.yz = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.yx)
  %i.za = icmp ult i64 %i.yz, 4
  br i1 %i.za, label %read_uint32.exit247.thread.i, label %fread.inline.exit.i.i249.i

read_uint32.exit247.thread.i:                     ; preds = %fread.inline.exit.i.i242.i
  %i.zb = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.zb, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.yy) #18
  br label %.thread296.i

fread.inline.exit.i.i249.i:                       ; preds = %fread.inline.exit.i.i242.i
  %i.zc = load <4 x i8>, ptr %i.e, align 4, !tbaa !29
  %i.zd = shufflevector <4 x i8> %i.zc, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.zd, ptr %i.e, align 4, !tbaa !29
  %.cast3851 = bitcast <4 x i8> %i.zd to i32
  %i.ze = zext i32 %.cast3851 to i64              ; 3 uses
  %i.zf = sub nsw i64 %.0.i380, %i.ze             ; 4 uses
  %i.zg = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.zh = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.zi = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.zg)
  %i.zj = icmp ult i64 %i.zi, 4
  br i1 %i.zj, label %read_uint32.exit254.thread.i, label %bb.fa

read_uint32.exit254.thread.i:                     ; preds = %fread.inline.exit.i.i249.i
  %i.zk = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.zk, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.zh) #18
  br label %.thread296.i

bb.fa:                                            ; preds = %fread.inline.exit.i.i249.i
  %i.zl = load <4 x i8>, ptr %i.e, align 4, !tbaa !29
  %i.zm = shufflevector <4 x i8> %i.zl, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.zm, ptr %i.e, align 4, !tbaa !29
  %.cast3852 = bitcast <4 x i8> %i.zm to i32      ; 3 uses
  %i.zn = icmp eq i32 %.cast3852, 0
  %or.cond18.i = or i1 %i.ru, %i.zn
  br i1 %or.cond18.i, label %bb.fb, label %.thread289.i

.thread289.i:                                     ; preds = %bb.fa
  %i.zo = zext i32 %.cast3852 to i64              ; 2 uses
  %i.zp = urem i64 %i.zf, %i.zo
  %.neg.i = sub nsw i64 %i.zf, %i.zo
  %i.zq = add nsw i64 %.neg.i, %i.zp
  br label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %15 = icmp ne i32 %.cast3852, 0
  %or.cond22.i = and i1 %i.ru, %15
  br i1 %or.cond22.i, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.zr = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.zs = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.zr, i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef %i.zs, ptr noundef nonnull %i.b) #18
  %i.zt = load i32, ptr %i.v, align 8, !tbaa !39
  %.not207.i = icmp eq i32 %i.zt, 0
  br i1 %.not207.i, label %bb.fd, label %.thread296.i

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %.thread289.i
  %.1292.i = phi i64 [ %i.zq, %.thread289.i ], [ %i.zf, %bb.fc ], [ %i.zf, %bb.fb ]
  %i.zu = load ptr, ptr %i.az, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.zv = call i32 @fileno(ptr noundef %i.zu) #18
  %i.zw = call i32 @fstat64(i32 noundef %i.zv, ptr noundef nonnull %11) #18
  %i.zx = icmp eq i32 %i.zw, 0
  br i1 %i.zx, label %bb.fe, label %.preheader4390

bb.fe:                                            ; preds = %bb.fd
  %i.zy = load i32, ptr %i.rr, align 8, !tbaa !48
  %i.zz = and i32 %i.zy, 61440
  %i.aaa = icmp eq i32 %i.zz, 32768
  br i1 %i.aaa, label %bb.ff, label %.preheader4390

bb.ff:                                            ; preds = %bb.fe
  %i.aab = call i32 @fseeko64(ptr noundef %i.zu, i64 noundef %i.ze, i32 noundef 1)
  %i.aac = icmp eq i32 %i.aab, 0
  br i1 %i.aac, label %.loopexit.i381, label %.preheader4390

.preheader4390:                                   ; preds = %bb.ff, %bb.fe, %bb.fd
  br label %bb.fg

bb.fg:                                            ; preds = %.preheader4390, %fread.inline.exit.i255.i
  %.013.i.i = phi i64 [ %i.aag, %fread.inline.exit.i255.i ], [ %i.ze, %.preheader4390 ] ; 3 uses
  %.not.i.i = icmp eq i64 %.013.i.i, 0
  br i1 %.not.i.i, label %.loopexit.i381, label %fread.inline.exit.i255.i

fread.inline.exit.i255.i:                         ; preds = %bb.fg
  %i.aad = call i64 @llvm.umin.i64(i64 %.013.i.i, i64 8192) ; 3 uses
  %i.aae = call i64 @fread(ptr noundef nonnull @fskip_ahead.dump, i64 noundef 1, i64 noundef %i.aad, ptr noundef nonnull %i.zu)
  %i.aaf = icmp slt i64 %i.aae, %i.aad
  %i.aag = sub nuw nsw i64 %.013.i.i, %i.aad
  br i1 %i.aaf, label %bb.fh, label %bb.fg, !llvm.loop !0

bb.fh:                                            ; preds = %fread.inline.exit.i255.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.aah = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.aai = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.aah, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef %i.aai) #18
  br label %.thread296.i

.thread296.i:                                     ; preds = %bb.fc, %bb.ev, %bb.fh, %read_uint32.exit254.thread.i, %read_uint32.exit247.thread.i, %bb.ey, %read_uint32.exit240.thread.i, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %.thread304.i

.loopexit.i381:                                   ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  store i64 %.1292.i, ptr %i.rs, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.fp

bb.fi:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  br i1 %.not209.i, label %bb.fj, label %fread.inline.exit.i.i257.i

bb.fj:                                            ; preds = %bb.fi
  %i.aaj = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.aak = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.aaj, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef %i.aak, ptr noundef nonnull %i.b) #18
  %i.aal = load i32, ptr %i.v, align 8, !tbaa !39
  %.not210.i = icmp eq i32 %i.aal, 0
  br i1 %.not210.i, label %fread.inline.exit.i.i257.i, label %.critedge217.i

fread.inline.exit.i.i257.i:                       ; preds = %bb.fj, %bb.fi
  %i.aam = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.aan = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.aao = call i64 @fread(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.aam)
  %i.aap = icmp ult i64 %i.aao, 4
  br i1 %i.aap, label %read_uint32.exit262.thread.i, label %bb.fk

read_uint32.exit262.thread.i:                     ; preds = %fread.inline.exit.i.i257.i
  %i.aaq = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.aaq, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.aan) #18
  br label %.critedge217.i

bb.fk:                                            ; preds = %fread.inline.exit.i.i257.i
  %i.aar = load <4 x i8>, ptr %i.f, align 4, !tbaa !29
  %i.aas = shufflevector <4 x i8> %i.aar, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.aas, ptr %i.f, align 4, !tbaa !29
  %.cast = bitcast <4 x i8> %i.aas to i32         ; 2 uses
  %i.aat = and i32 %.cast, 1
  %i.aau = add i32 %i.aat, %.cast
  %i.aav = zext i32 %i.aau to i64                 ; 2 uses
  %i.aaw = load ptr, ptr %i.az, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.aax = call i32 @fileno(ptr noundef %i.aaw) #18
  %i.aay = call i32 @fstat64(i32 noundef %i.aax, ptr noundef nonnull %10) #18
  %i.aaz = icmp eq i32 %i.aay, 0
  br i1 %i.aaz, label %bb.fl, label %.preheader4391

bb.fl:                                            ; preds = %bb.fk
  %i.aba = load i32, ptr %i.rp, align 8, !tbaa !48
  %i.abb = and i32 %i.aba, 61440
  %i.abc = icmp eq i32 %i.abb, 32768
  br i1 %i.abc, label %bb.fm, label %.preheader4391

bb.fm:                                            ; preds = %bb.fl
  %i.abd = call i32 @fseeko64(ptr noundef %i.aaw, i64 noundef %i.aav, i32 noundef 1)
  %i.abe = icmp eq i32 %i.abd, 0
  br i1 %i.abe, label %.critedge219.i, label %.preheader4391

.preheader4391:                                   ; preds = %bb.fm, %bb.fl, %bb.fk
  br label %bb.fn

bb.fn:                                            ; preds = %.preheader4391, %fread.inline.exit.i265.i
  %.013.i263.i = phi i64 [ %i.abi, %fread.inline.exit.i265.i ], [ %i.aav, %.preheader4391 ] ; 3 uses
  %.not.i264.i = icmp eq i64 %.013.i263.i, 0
  br i1 %.not.i264.i, label %.critedge219.i, label %fread.inline.exit.i265.i

fread.inline.exit.i265.i:                         ; preds = %bb.fn
  %i.abf = call i64 @llvm.umin.i64(i64 %.013.i263.i, i64 8192) ; 3 uses
  %i.abg = call i64 @fread(ptr noundef nonnull @fskip_ahead.dump, i64 noundef 1, i64 noundef %i.abf, ptr noundef nonnull %i.aaw)
  %i.abh = icmp slt i64 %i.abg, %i.abf
  %i.abi = sub nuw nsw i64 %.013.i263.i, %i.abf
  br i1 %i.abh, label %bb.fo, label %bb.fn, !llvm.loop !0

bb.fo:                                            ; preds = %fread.inline.exit.i265.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.abj = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.abk = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.abj, i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef %i.abk) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %.thread304.i

.critedge219.i:                                   ; preds = %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.fp

.critedge217.i:                                   ; preds = %bb.fj, %read_uint32.exit262.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %.thread304.i

.thread304.i:                                     ; preds = %.critedge217.i, %bb.fo, %.thread296.i, %.thread.i382, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.fs

bb.fp:                                            ; preds = %.critedge219.i, %.loopexit.i381, %.loopexit586
  %.3167.i = phi i32 [ 1, %.loopexit586 ], [ 1, %.loopexit.i381 ], [ %.0164586.i, %.critedge219.i ] ; 2 uses
  %.not183.i = phi i1 [ true, %.loopexit586 ], [ false, %.loopexit.i381 ], [ true, %.critedge219.i ] ; 2 uses
  %.3157.i = phi i32 [ %i.wv, %.loopexit586 ], [ %.0154588.i, %.loopexit.i381 ], [ %.0154588.i, %.critedge219.i ] ; 2 uses
  %.3152.i = phi i32 [ %i.ty, %.loopexit586 ], [ %.0149589.i, %.loopexit.i381 ], [ %.0149589.i, %.critedge219.i ] ; 2 uses
  %.3147.i = phi i32 [ %i.uv, %.loopexit586 ], [ %.0144590.i, %.loopexit.i381 ], [ %.0144590.i, %.critedge219.i ] ; 2 uses
  %.3142.i = phi i32 [ %i.uu, %.loopexit586 ], [ %.0139591.i, %.loopexit.i381 ], [ %.0139591.i, %.critedge219.i ] ; 2 uses
  %.3137.i = phi i64 [ %i.ui, %.loopexit586 ], [ %.0134592.i, %.loopexit.i381 ], [ %.0134592.i, %.critedge219.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.abl = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.abm = call i32 @feof(ptr noundef %i.abl) #18
  %.not.i379 = icmp eq i32 %i.abm, 0
  %or.cond214.i = and i1 %.not183.i, %.not.i379
  br i1 %or.cond214.i, label %fread.inline.exit.i.i376, label %.critedge.i377

.critedge.i377:                                   ; preds = %bb.fp, %.thread313.i
  %.0164498.i = phi i32 [ %.0164586.i, %.thread313.i ], [ %.3167.i, %bb.fp ]
  %.0159475.i = phi i1 [ true, %.thread313.i ], [ %.not183.i, %bb.fp ]
  %.0154452.i = phi i32 [ %.0154588.i, %.thread313.i ], [ %.3157.i, %bb.fp ] ; 2 uses
  %.0149429.i = phi i32 [ %.0149589.i, %.thread313.i ], [ %.3152.i, %bb.fp ] ; 2 uses
  %.0144406.i = phi i32 [ %.0144590.i, %.thread313.i ], [ %.3147.i, %bb.fp ]
  %.0139383.i = phi i32 [ %.0139591.i, %.thread313.i ], [ %.3142.i, %bb.fp ]
  %.0134360.i = phi i64 [ %.0134592.i, %.thread313.i ], [ %.3137.i, %bb.fp ]
  %.not213.i = icmp eq i32 %.0164498.i, 0
  br i1 %.not213.i, label %.critedge.thread.i374, label %bb.fq

.critedge.thread.i374:                            ; preds = %.critedge.i377, %bb.dr
  %i.abn = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.abo = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.abn, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef %i.abo) #18
  br label %bb.fs

bb.fq:                                            ; preds = %.critedge.i377
  %i.abp = icmp ne i64 %.0134360.i, 0
  %or.cond20.i = select i1 %.0159475.i, i1 %i.abp, i1 false
  br i1 %or.cond20.i, label %bb.fr, label %get_sample_info_aiff.exit

bb.fr:                                            ; preds = %bb.fq
  %i.abq = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.abr = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.abq, i32 noundef 1, ptr noundef nonnull @.str.74, ptr noundef %i.abr) #18
  br label %bb.fs

get_sample_info_aiff.exit:                        ; preds = %bb.fq
  store i32 %.0154452.i, ptr %i.ao, align 8, !tbaa !41
  %i.abs = getelementptr inbounds nuw i8, ptr %14, i64 124
  store i32 %.0149429.i, ptr %i.abs, align 4, !tbaa !42
  %i.abt = getelementptr inbounds nuw i8, ptr %14, i64 128
  store i32 %.0144406.i, ptr %i.abt, align 8, !tbaa !43
  %i.abu = getelementptr inbounds nuw i8, ptr %14, i64 132
  store i32 %.0139383.i, ptr %i.abu, align 4, !tbaa !44
  %i.abv = getelementptr inbounds nuw i8, ptr %14, i64 148
end_hunk_0
begin_hunk_1_@EncoderSession_init_encoder:bb.a
bb.hi:                                            ; preds = %bb.hg
  %i.abk = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.abl = call i32 @FLAC__stream_encoder_set_do_md5(ptr noundef %i.abk, i32 noundef 0) #18 ; 0 uses
  br label %bb.hm

bb.hj:                                            ; preds = %bb.hf
  %i.abm = load i32, ptr %i.cg, align 8, !tbaa !22
  %.not490 = icmp eq i32 %i.abm, 0
  br i1 %.not490, label %bb.hm, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.abn = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.abo = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.abn, i32 noundef 1, ptr noundef nonnull @.str.136, ptr noundef %i.abo) #18
  %i.abp = load i32, ptr %i.av, align 8, !tbaa !39
  %.not491 = icmp eq i32 %i.abp, 0
  br i1 %.not491, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.hm:                                            ; preds = %bb.hj, %bb.hk, %bb.hi
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.abr = load i32, ptr %i.abq, align 8, !tbaa !144 ; 2 uses
  %.not492 = icmp eq i32 %i.abr, 1
  br i1 %.not492, label %bb.hs, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.abs = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.abt = call i32 @FLAC__stream_encoder_set_num_threads(ptr noundef %i.abs, i32 noundef %i.abr) #18
  switch i32 %i.abt, label %bb.hs [
    i32 1, label %bb.ho
    i32 3, label %bb.hq
  ]

bb.ho:                                            ; preds = %bb.hn
  %i.abu = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.abv = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.abu, i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef %i.abv) #18
  %i.abw = load i32, ptr %i.av, align 8, !tbaa !39
  %.not493 = icmp eq i32 %i.abw, 0
  br i1 %.not493, label %bb.hs, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.hq:                                            ; preds = %bb.hn
  %i.abx = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.aby = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.abx, i32 noundef 1, ptr noundef nonnull @.str.138, ptr noundef %i.aby) #18
  %i.abz = load i32, ptr %i.av, align 8, !tbaa !39
  %.not494 = icmp eq i32 %i.abz, 0
  br i1 %.not494, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.hs:                                            ; preds = %bb.ho, %bb.hn, %bb.hq, %bb.hm
  %i.aca = load i32, ptr %0, align 8, !tbaa !113
  %.not495 = icmp eq i32 %i.aca, 0
  %i.acb = load ptr, ptr %i.wz, align 8, !tbaa !33 ; 2 uses
  br i1 %.not495, label %bb.hw, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !145
  %i.ace = call i32 @FLAC__stream_encoder_set_ogg_serial_number(ptr noundef %i.acb, i64 noundef %i.acd) #18 ; 0 uses
  %i.acf = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.acg = load i32, ptr %i.cg, align 8, !tbaa !22
  %.not497 = icmp eq i32 %i.acg, 0
  br i1 %.not497, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !26
  br label %bb.hv

bb.hv:                                            ; preds = %bb.ht, %bb.hu
  %i.acj = phi ptr [ %i.aci, %bb.hu ], [ null, %bb.ht ]
  %i.ack = call i32 @FLAC__stream_encoder_init_ogg_file(ptr noundef %i.acf, ptr noundef %i.acj, ptr noundef nonnull @encoder_progress_callback, ptr noundef nonnull %0) #18
  br label %bb.hz

bb.hw:                                            ; preds = %bb.hs
  %i.acl = load i32, ptr %i.cg, align 8, !tbaa !22
  %.not496 = icmp eq i32 %i.acl, 0
  br i1 %.not496, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !26
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hw, %bb.hx
  %i.aco = phi ptr [ %i.acn, %bb.hx ], [ null, %bb.hw ]
  %i.acp = call i32 @FLAC__stream_encoder_init_file(ptr noundef %i.acb, ptr noundef %i.aco, ptr noundef nonnull @encoder_progress_callback, ptr noundef nonnull %0) #18
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hv
  %.0393 = phi i32 [ %i.ack, %bb.hv ], [ %i.acp, %bb.hy ] ; 2 uses
  %.not498 = icmp eq i32 %.0393, 0
  br i1 %.not498, label %bb.id, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call fastcc void @print_error_with_init_status(ptr noundef %0, i32 noundef %.0393)
  %i.acq = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.acr = call i32 @FLAC__stream_encoder_get_state(ptr noundef %i.acq) #18
  %.not499 = icmp eq i32 %i.acr, 6
  br i1 %.not499, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.acs, align 4, !tbaa !23
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.id:                                            ; preds = %bb.hz
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.act, align 4, !tbaa !23
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

.critedge503:                                     ; preds = %bb.gm, %bb.gl, %bb.de, %bb.dd, %bb.cs, %bb.cr, %bb.cg, %bb.cf, %bb.bl, %bb.bk, %bb.ay, %bb.az, %bb.ap, %bb.ao, %bb.ff, %bb.fi, %bb.er, %bb.ey, %bb.eu, %bb.ew, %bb.fo, %bb.en, %bb.fc, %.thread617, %.thread616, %parse_cuesheet.exit.thread, %bb.hp, %bb.hr, %bb.dp, %bb.ds, %.critedge501, %.critedge512, %bb.id, %bb.ic, %bb.hl, %bb.hh, %bb.gt, %bb.h, %bb.e, %bb.c
  %.23 = phi i32 [ 0, %bb.c ], [ 0, %bb.gt ], [ 0, %bb.hl ], [ 0, %bb.ic ], [ 1, %bb.id ], [ 0, %bb.dp ], [ 0, %bb.hh ], [ 0, %bb.de ], [ 0, %.critedge512 ], [ 0, %.thread617 ], [ 0, %bb.ay ], [ 0, %parse_cuesheet.exit.thread ], [ 0, %bb.hp ], [ 0, %bb.bl ], [ 0, %bb.er ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %.critedge501 ], [ 0, %bb.fi ], [ 0, %bb.ff ], [ 0, %bb.ds ], [ 0, %bb.hr ], [ 0, %bb.ap ], [ 0, %.thread616 ], [ 0, %bb.cs ], [ 0, %bb.cg ], [ 0, %bb.fc ], [ 0, %bb.en ], [ 0, %bb.fo ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.ey ], [ 0, %bb.ao ], [ 0, %bb.az ], [ 0, %bb.bk ], [ 0, %bb.cf ], [ 0, %bb.cr ], [ 0, %bb.dd ], [ 0, %bb.gl ], [ 0, %bb.gm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.23
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @fskip_ahead(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fileno(ptr noundef %0) #18
  %i.c = call i32 @fstat64(i32 noundef %i.b, ptr noundef nonnull %2) #18
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48
  %i.g = and i32 %i.f, 61440
  %i.h = icmp eq i32 %i.g, 32768
  br i1 %i.h, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @fseeko64(ptr noundef %0, i64 noundef %1, i32 noundef 1)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %fread.inline.exit
  %.013 = phi i64 [ %i.n, %fread.inline.exit ], [ %1, %.preheader ] ; 3 uses
  %.not = icmp eq i64 %.013, 0
  br i1 %.not, label %.loopexit, label %fread.inline.exit

fread.inline.exit:                                ; preds = %bb.e
  %i.k = tail call i64 @llvm.umin.i64(i64 %.013, i64 8192) ; 3 uses
  %i.l = tail call i64 @fread(ptr noundef nonnull @fskip_ahead.dump, i64 noundef 1, i64 noundef %i.k, ptr noundef nonnull %0)
  %i.m = icmp slt i64 %i.l, %i.k
  %i.n = sub nuw nsw i64 %.013, %i.k
  br i1 %i.m, label %.loopexit, label %bb.e, !llvm.loop !0

.loopexit:                                        ; preds = %bb.e, %fread.inline.exit, %bb.d, %bb.a
  %.2 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 1, %bb.e ], [ 0, %fread.inline.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.2
}

declare i32 @FLAC__stream_decoder_seek_absolute(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @FLAC__stream_decoder_get_resolved_state_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: alwaysinline nobuiltin nounwind sspstrong uwtable
declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @format_input(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x ptr], align 16               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not134 = icmp eq i32 %3, 0                    ; 5 uses
  br i1 %.not134, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %3 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = add i32 %3, -1
  %i.c = icmp ult i32 %i.b, 3
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @input_, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.g, ptr %i.h, align 16, !tbaa !13
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @input_, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %i.l, ptr %i.m, align 8, !tbaa !13
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next.1
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @input_, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store ptr %i.q, ptr %i.r, align 16, !tbaa !13
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next.2
  %i.t = load i64, ptr %i.s, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @input_, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store ptr %i.v, ptr %i.w, align 8, !tbaa !13
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !146

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod550 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod550)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.epil
  %i.y = load i64, ptr %i.x, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @input_, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !13
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !147

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  switch i32 %4, label %bb.n [
    i32 8, label %bb.b
    i32 16, label %bb.c
    i32 24, label %bb.f
    i32 32, label %bb.k
  ]

bb.b:                                             ; preds = %._crit_edge
  %.not297 = icmp eq i32 %2, 0
  %7 = icmp ne i32 %3, 0
  %i.ac = icmp ne i32 %0, 0
  %or.cond124 = and i1 %7, %i.ac                  ; 2 uses
  br i1 %.not297, label %.preheader2, label %.preheader4

.preheader4:                                      ; preds = %bb.b
  br i1 %or.cond124, label %.preheader3.preheader, label %.loopexit

.preheader3.preheader:                            ; preds = %.preheader4
  %wide.trip.count288 = zext i32 %3 to i64        ; 2 uses
  %wide.trip.count283 = zext i32 %0 to i64        ; 8 uses
  %i.ad = add nsw i64 %wide.trip.count283, -1     ; 2 uses
  %i.ae = shl nuw nsw i64 %wide.trip.count283, 2
  %i.af = getelementptr i8, ptr @ubuffer, i64 %wide.trip.count288
  %i.ag = getelementptr i8, ptr %i.af, i64 %wide.trip.count283
  %scevgep496 = getelementptr i8, ptr %i.ag, i64 -1
  %min.iters.check501 = icmp ult i32 %0, 12
  %ident.check493 = icmp ne i32 %3, 1
  %i.ah = trunc i64 %i.ad to i32
  %i.ai = icmp ugt i64 %i.ad, 4294967295
  %invariant.op618 = or i1 %i.ai, %ident.check493
  %n.vec503 = and i64 %wide.trip.count283, 4294967288 ; 4 uses
  %i.aj = trunc nuw i64 %n.vec503 to i32
  %cmp.n510 = icmp eq i64 %n.vec503, %wide.trip.count283
  %xtraiter586 = and i64 %wide.trip.count283, 3   ; 2 uses
  %lcmp.mod587.not = icmp eq i64 %xtraiter586, 0
  br label %.preheader3

.preheader2:                                      ; preds = %bb.b
  br i1 %or.cond124, label %.preheader1.preheader, label %.loopexit

.preheader1.preheader:                            ; preds = %.preheader2
  %wide.trip.count298 = zext i32 %3 to i64        ; 2 uses
  %wide.trip.count293 = zext i32 %0 to i64        ; 8 uses
  %i.ak = add nsw i64 %wide.trip.count293, -1     ; 2 uses
  %i.al = shl nuw nsw i64 %wide.trip.count293, 2
  %i.am = getelementptr i8, ptr @ubuffer, i64 %wide.trip.count298
  %i.an = getelementptr i8, ptr %i.am, i64 %wide.trip.count293
  %scevgep517 = getelementptr i8, ptr %i.an, i64 -1
  %min.iters.check522 = icmp ult i32 %0, 16
  %ident.check514 = icmp ne i32 %3, 1
  %i.ao = trunc i64 %i.ak to i32
  %i.ap = icmp ugt i64 %i.ak, 4294967295
  %invariant.op620 = or i1 %i.ap, %ident.check514
  %n.vec524 = and i64 %wide.trip.count293, 4294967288 ; 4 uses
  %i.aq = trunc nuw i64 %n.vec524 to i32
  %cmp.n531 = icmp eq i64 %n.vec524, %wide.trip.count293
  %xtraiter589 = and i64 %wide.trip.count293, 3   ; 2 uses
  %lcmp.mod590.not = icmp eq i64 %xtraiter589, 0
  br label %.preheader1

.preheader3:                                      ; preds = %.preheader3.preheader, %._crit_edge112
  %indvars.iv285 = phi i64 [ 0, %.preheader3.preheader ], [ %indvars.iv.next286, %._crit_edge112 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv285
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !13 ; 8 uses
  %i.at = trunc i64 %indvars.iv285 to i32         ; 5 uses
  br i1 %min.iters.check501, label %scalar.ph500.preheader, label %vector.scevcheck492

vector.scevcheck492:                              ; preds = %.preheader3
  %i.au = xor i32 %i.at, -1
  %i.av = icmp ult i32 %i.au, %i.ah
  %.reass619 = or i1 %i.av, %invariant.op618
  br i1 %.reass619, label %scalar.ph500.preheader, label %vector.memcheck494

vector.memcheck494:                               ; preds = %vector.scevcheck492
  %scevgep495 = getelementptr i8, ptr %i.as, i64 %i.ae
  %bound0497 = icmp ult ptr %i.as, %scevgep496
  %bound1498 = icmp ugt ptr %scevgep495, @ubuffer
  %found.conflict499 = and i1 %bound0497, %bound1498
  br i1 %found.conflict499, label %scalar.ph500.preheader, label %vector.ph502

vector.ph502:                                     ; preds = %vector.memcheck494
  %i.aw = add i32 %i.at, %i.aj
  br label %vector.body504

vector.body504:                                   ; preds = %vector.body504, %vector.ph502
  %index505 = phi i64 [ 0, %vector.ph502 ], [ %index.next508, %vector.body504 ] ; 3 uses
  %i.ax = add i64 %indvars.iv285, %index505
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %wide.load506 = load <4 x i8>, ptr %i.az, align 1, !tbaa !29, !alias.scope !214
  %wide.load507 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !29, !alias.scope !214
  %i.bb = zext <4 x i8> %wide.load506 to <4 x i32>
  %i.bc = zext <4 x i8> %wide.load507 to <4 x i32>
  %i.bd = add nsw <4 x i32> %i.bb, splat (i32 -128)
  %i.be = add nsw <4 x i32> %i.bc, splat (i32 -128)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index505 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <4 x i32> %i.bd, ptr %i.bf, align 4, !tbaa !14, !alias.scope !215, !noalias !214
  store <4 x i32> %i.be, ptr %i.bg, align 4, !tbaa !14, !alias.scope !215, !noalias !214
  %index.next508 = add nuw i64 %index505, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next508, %n.vec503
  br i1 %i.bh, label %middle.block509, label %vector.body504, !llvm.loop !151

middle.block509:                                  ; preds = %vector.body504
  br i1 %cmp.n510, label %._crit_edge112, label %scalar.ph500.preheader

scalar.ph500.preheader:                           ; preds = %vector.memcheck494, %vector.scevcheck492, %.preheader3, %middle.block509
  %indvars.iv280.ph = phi i64 [ 0, %vector.memcheck494 ], [ 0, %vector.scevcheck492 ], [ 0, %.preheader3 ], [ %n.vec503, %middle.block509 ] ; 3 uses
  %.0245109.ph = phi i32 [ %i.at, %vector.memcheck494 ], [ %i.at, %vector.scevcheck492 ], [ %i.at, %.preheader3 ], [ %i.aw, %middle.block509 ] ; 2 uses
  br i1 %lcmp.mod587.not, label %scalar.ph500.prol.loopexit, label %scalar.ph500.prol

scalar.ph500.prol:                                ; preds = %scalar.ph500.preheader, %scalar.ph500.prol
  %indvars.iv280.prol = phi i64 [ %indvars.iv.next281.prol, %scalar.ph500.prol ], [ %indvars.iv280.ph, %scalar.ph500.preheader ] ; 2 uses
  %.0245109.prol = phi i32 [ %i.bo, %scalar.ph500.prol ], [ %.0245109.ph, %scalar.ph500.preheader ] ; 2 uses
  %prol.iter588 = phi i64 [ %prol.iter588.next, %scalar.ph500.prol ], [ 0, %scalar.ph500.preheader ]
  %i.bi = zext i32 %.0245109.prol to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -128
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv280.prol
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !14
  %indvars.iv.next281.prol = add nuw nsw i64 %indvars.iv280.prol, 1 ; 2 uses
  %i.bo = add i32 %.0245109.prol, %3              ; 2 uses
  %prol.iter588.next = add i64 %prol.iter588, 1   ; 2 uses
  %prol.iter588.cmp.not = icmp eq i64 %prol.iter588.next, %xtraiter586
  br i1 %prol.iter588.cmp.not, label %scalar.ph500.prol.loopexit, label %scalar.ph500.prol, !llvm.loop !152

scalar.ph500.prol.loopexit:                       ; preds = %scalar.ph500.prol, %scalar.ph500.preheader
  %indvars.iv280.unr = phi i64 [ %indvars.iv280.ph, %scalar.ph500.preheader ], [ %indvars.iv.next281.prol, %scalar.ph500.prol ]
  %.0245109.unr = phi i32 [ %.0245109.ph, %scalar.ph500.preheader ], [ %i.bo, %scalar.ph500.prol ]
  %i.bp = sub nsw i64 %indvars.iv280.ph, %wide.trip.count283
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge112, label %scalar.ph500

scalar.ph500:                                     ; preds = %scalar.ph500.prol.loopexit, %scalar.ph500
  %indvars.iv280 = phi i64 [ %indvars.iv.next281.3, %scalar.ph500 ], [ %indvars.iv280.unr, %scalar.ph500.prol.loopexit ] ; 5 uses
  %.0245109 = phi i32 [ %i.cv, %scalar.ph500 ], [ %.0245109.unr, %scalar.ph500.prol.loopexit ] ; 2 uses
  %i.br = zext i32 %.0245109 to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !29
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -128
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv280
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !14
  %i.bx = add i32 %.0245109, %3                   ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !29
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -128
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv280
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !14
  %i.cf = add i32 %i.bx, %3                       ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !29
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -128
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv280
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !14
  %i.cn = add i32 %i.cf, %3                       ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !29
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nsw i32 %i.cr, -128
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv280
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 %i.cs, ptr %i.cu, align 4, !tbaa !14
  %indvars.iv.next281.3 = add nuw nsw i64 %indvars.iv280, 4 ; 2 uses
  %i.cv = add i32 %i.cn, %3
  %exitcond284.not.3 = icmp eq i64 %indvars.iv.next281.3, %wide.trip.count283
  br i1 %exitcond284.not.3, label %._crit_edge112, label %scalar.ph500, !llvm.loop !153

._crit_edge112:                                   ; preds = %scalar.ph500.prol.loopexit, %scalar.ph500, %middle.block509
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond289.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count288
  br i1 %exitcond289.not, label %.loopexit, label %.preheader3, !llvm.loop !154

.preheader1:                                      ; preds = %.preheader1.preheader, %._crit_edge117
  %indvars.iv295 = phi i64 [ 0, %.preheader1.preheader ], [ %indvars.iv.next296, %._crit_edge117 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv295
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !13 ; 8 uses
  %i.cy = trunc i64 %indvars.iv295 to i32         ; 5 uses
  br i1 %min.iters.check522, label %scalar.ph521.preheader, label %vector.scevcheck513

vector.scevcheck513:                              ; preds = %.preheader1
  %i.cz = xor i32 %i.cy, -1
  %i.da = icmp ult i32 %i.cz, %i.ao
  %.reass621 = or i1 %i.da, %invariant.op620
  br i1 %.reass621, label %scalar.ph521.preheader, label %vector.memcheck515

vector.memcheck515:                               ; preds = %vector.scevcheck513
  %scevgep516 = getelementptr i8, ptr %i.cx, i64 %i.al
  %bound0518 = icmp ult ptr %i.cx, %scevgep517
  %bound1519 = icmp ugt ptr %scevgep516, @ubuffer
  %found.conflict520 = and i1 %bound0518, %bound1519
  br i1 %found.conflict520, label %scalar.ph521.preheader, label %vector.ph523

vector.ph523:                                     ; preds = %vector.memcheck515
  %i.db = add i32 %i.cy, %i.aq
  br label %vector.body525

vector.body525:                                   ; preds = %vector.body525, %vector.ph523
  %index526 = phi i64 [ 0, %vector.ph523 ], [ %index.next529, %vector.body525 ] ; 3 uses
  %i.dc = add i64 %indvars.iv295, %index526
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %wide.load527 = load <4 x i8>, ptr %i.de, align 1, !tbaa !29, !alias.scope !218
  %wide.load528 = load <4 x i8>, ptr %i.df, align 1, !tbaa !29, !alias.scope !218
  %i.dg = sext <4 x i8> %wide.load527 to <4 x i32>
  %i.dh = sext <4 x i8> %wide.load528 to <4 x i32>
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index526 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <4 x i32> %i.dg, ptr %i.di, align 4, !tbaa !14, !alias.scope !219, !noalias !218
  store <4 x i32> %i.dh, ptr %i.dj, align 4, !tbaa !14, !alias.scope !219, !noalias !218
  %index.next529 = add nuw i64 %index526, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next529, %n.vec524
  br i1 %i.dk, label %middle.block530, label %vector.body525, !llvm.loop !158

middle.block530:                                  ; preds = %vector.body525
  br i1 %cmp.n531, label %._crit_edge117, label %scalar.ph521.preheader

scalar.ph521.preheader:                           ; preds = %vector.memcheck515, %vector.scevcheck513, %.preheader1, %middle.block530
  %indvars.iv290.ph = phi i64 [ 0, %vector.memcheck515 ], [ 0, %vector.scevcheck513 ], [ 0, %.preheader1 ], [ %n.vec524, %middle.block530 ] ; 3 uses
  %.1246114.ph = phi i32 [ %i.cy, %vector.memcheck515 ], [ %i.cy, %vector.scevcheck513 ], [ %i.cy, %.preheader1 ], [ %i.db, %middle.block530 ] ; 2 uses
  br i1 %lcmp.mod590.not, label %scalar.ph521.prol.loopexit, label %scalar.ph521.prol

scalar.ph521.prol:                                ; preds = %scalar.ph521.preheader, %scalar.ph521.prol
  %indvars.iv290.prol = phi i64 [ %indvars.iv.next291.prol, %scalar.ph521.prol ], [ %indvars.iv290.ph, %scalar.ph521.preheader ] ; 2 uses
  %.1246114.prol = phi i32 [ %i.dq, %scalar.ph521.prol ], [ %.1246114.ph, %scalar.ph521.preheader ] ; 2 uses
  %prol.iter591 = phi i64 [ %prol.iter591.next, %scalar.ph521.prol ], [ 0, %scalar.ph521.preheader ]
  %i.dl = zext i32 %.1246114.prol to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !29
  %i.do = sext i8 %i.dn to i32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv290.prol
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !14
  %indvars.iv.next291.prol = add nuw nsw i64 %indvars.iv290.prol, 1 ; 2 uses
  %i.dq = add i32 %.1246114.prol, %3              ; 2 uses
  %prol.iter591.next = add i64 %prol.iter591, 1   ; 2 uses
  %prol.iter591.cmp.not = icmp eq i64 %prol.iter591.next, %xtraiter589
  br i1 %prol.iter591.cmp.not, label %scalar.ph521.prol.loopexit, label %scalar.ph521.prol, !llvm.loop !159

scalar.ph521.prol.loopexit:                       ; preds = %scalar.ph521.prol, %scalar.ph521.preheader
  %indvars.iv290.unr = phi i64 [ %indvars.iv290.ph, %scalar.ph521.preheader ], [ %indvars.iv.next291.prol, %scalar.ph521.prol ]
  %.1246114.unr = phi i32 [ %.1246114.ph, %scalar.ph521.preheader ], [ %i.dq, %scalar.ph521.prol ]
  %i.dr = sub nsw i64 %indvars.iv290.ph, %wide.trip.count293
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %._crit_edge117, label %scalar.ph521

scalar.ph521:                                     ; preds = %scalar.ph521.prol.loopexit, %scalar.ph521
  %indvars.iv290 = phi i64 [ %indvars.iv.next291.3, %scalar.ph521 ], [ %indvars.iv290.unr, %scalar.ph521.prol.loopexit ] ; 5 uses
  %.1246114 = phi i32 [ %i.et, %scalar.ph521 ], [ %.1246114.unr, %scalar.ph521.prol.loopexit ] ; 2 uses
  %i.dt = zext i32 %.1246114 to i64
  %i.du = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !29
  %i.dw = sext i8 %i.dv to i32
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv290
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !14
  %i.dy = add i32 %.1246114, %3                   ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !29
  %i.ec = sext i8 %i.eb to i32
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv290
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.ec, ptr %i.ee, align 4, !tbaa !14
  %i.ef = add i32 %i.dy, %3                       ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !29
  %i.ej = sext i8 %i.ei to i32
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv290
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !14
  %i.em = add i32 %i.ef, %3                       ; 2 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !29
  %i.eq = sext i8 %i.ep to i32
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv290
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 %i.eq, ptr %i.es, align 4, !tbaa !14
  %indvars.iv.next291.3 = add nuw nsw i64 %indvars.iv290, 4 ; 2 uses
  %i.et = add i32 %i.em, %3
  %exitcond294.not.3 = icmp eq i64 %indvars.iv.next291.3, %wide.trip.count293
  br i1 %exitcond294.not.3, label %._crit_edge117, label %scalar.ph521, !llvm.loop !160

._crit_edge117:                                   ; preds = %scalar.ph521.prol.loopexit, %scalar.ph521, %middle.block530
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond299.not = icmp eq i64 %indvars.iv.next296, %wide.trip.count298
  br i1 %exitcond299.not, label %.loopexit, label %.preheader1, !llvm.loop !161

bb.c:                                             ; preds = %._crit_edge
  %.not294 = icmp eq i32 %2, 0
  %.not295 = icmp eq i32 %1, 0                    ; 2 uses
  %8 = icmp ne i32 %3, 0
  %i.eu = icmp ne i32 %0, 0
  %or.cond128 = and i1 %8, %i.eu                  ; 4 uses
  br i1 %.not294, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not295, label %.preheader13, label %.preheader16

.preheader16:                                     ; preds = %bb.d
  br i1 %or.cond128, label %.preheader15.preheader, label %.loopexit

.preheader15.preheader:                           ; preds = %.preheader16
  %wide.trip.count248 = zext i32 %3 to i64        ; 2 uses
  %wide.trip.count243 = zext i32 %0 to i64        ; 8 uses
  %i.ev = add nsw i64 %wide.trip.count243, -1     ; 2 uses
  %i.ew = shl nuw nsw i64 %wide.trip.count243, 2
  %i.ex = add nuw nsw i64 %wide.trip.count248, %wide.trip.count243
  %i.ey = shl nuw nsw i64 %i.ex, 1
  %i.ez = getelementptr i8, ptr @ubuffer, i64 %i.ey
  %scevgep415 = getelementptr i8, ptr %i.ez, i64 -2
  %min.iters.check417 = icmp ult i32 %0, 12
  %ident.check413 = icmp ne i32 %3, 1
  %i.fa = trunc i64 %i.ev to i32
  %i.fb = icmp ugt i64 %i.ev, 4294967295
  %invariant.op610 = or i1 %i.fb, %ident.check413
  %n.vec419 = and i64 %wide.trip.count243, 4294967288 ; 4 uses
  %i.fc = trunc nuw i64 %n.vec419 to i32
  %cmp.n426 = icmp eq i64 %n.vec419, %wide.trip.count243
  %xtraiter574 = and i64 %wide.trip.count243, 1
  %lcmp.mod575.not = icmp eq i64 %xtraiter574, 0
  %i.fd = add nsw i64 %wide.trip.count243, -1
  br label %.preheader15

.preheader13:                                     ; preds = %bb.d
  br i1 %or.cond128, label %.preheader12.preheader, label %.loopexit

.preheader12.preheader:                           ; preds = %.preheader13
  %wide.trip.count258 = zext i32 %3 to i64        ; 2 uses
  %wide.trip.count253 = zext i32 %0 to i64        ; 8 uses
  %i.fe = add nsw i64 %wide.trip.count253, -1     ; 2 uses
  %i.ff = shl nuw nsw i64 %wide.trip.count253, 2
  %i.fg = add nuw nsw i64 %wide.trip.count258, %wide.trip.count253
  %i.fh = shl nuw nsw i64 %i.fg, 1
  %i.fi = getelementptr i8, ptr @ubuffer, i64 %i.fh
  %scevgep433 = getelementptr i8, ptr %i.fi, i64 -2
  %min.iters.check438 = icmp ult i32 %0, 12
  %ident.check430 = icmp ne i32 %3, 1
  %i.fj = trunc i64 %i.fe to i32
  %i.fk = icmp ugt i64 %i.fe, 4294967295
  %invariant.op612 = or i1 %i.fk, %ident.check430
  %n.vec440 = and i64 %wide.trip.count253, 4294967288 ; 4 uses
  %i.fl = trunc nuw i64 %n.vec440 to i32
  %cmp.n447 = icmp eq i64 %n.vec440, %wide.trip.count253
  %xtraiter577 = and i64 %wide.trip.count253, 3   ; 2 uses
  %lcmp.mod578.not = icmp eq i64 %xtraiter577, 0
  br label %.preheader12

.preheader15:                                     ; preds = %.preheader15.preheader, %._crit_edge92
  %indvars.iv245 = phi i64 [ 0, %.preheader15.preheader ], [ %indvars.iv.next246, %._crit_edge92 ] ; 4 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv245
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !13 ; 6 uses
  %i.fo = trunc i64 %indvars.iv245 to i32         ; 5 uses
  br i1 %min.iters.check417, label %scalar.ph416.preheader, label %vector.scevcheck412

vector.scevcheck412:                              ; preds = %.preheader15
  %i.fp = xor i32 %i.fo, -1
  %i.fq = icmp ult i32 %i.fp, %i.fa
  %.reass611 = or i1 %i.fq, %invariant.op610
  br i1 %.reass611, label %scalar.ph416.preheader, label %vector.memcheck414

vector.memcheck414:                               ; preds = %vector.scevcheck412
  %scevgep = getelementptr i8, ptr %i.fn, i64 %i.ew
  %bound0 = icmp ult ptr %i.fn, %scevgep415
  %bound1 = icmp ugt ptr %scevgep, @ubuffer
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph416.preheader, label %vector.ph418

vector.ph418:                                     ; preds = %vector.memcheck414
  %i.fr = add i32 %i.fo, %i.fc
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph418
  %index421 = phi i64 [ 0, %vector.ph418 ], [ %index.next424, %vector.body420 ] ; 3 uses
  %i.fs = add i64 %indvars.iv245, %index421
  %i.ft = and i64 %i.fs, 4294967295
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %wide.load422 = load <4 x i16>, ptr %i.fu, align 2, !tbaa !29, !alias.scope !220
  %wide.load423 = load <4 x i16>, ptr %i.fv, align 2, !tbaa !29, !alias.scope !220
  %i.fw = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load422)
  %i.fx = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load423)
  %i.fy = zext <4 x i16> %i.fw to <4 x i32>
  %i.fz = zext <4 x i16> %i.fx to <4 x i32>
  %i.ga = add nsw <4 x i32> %i.fy, splat (i32 -32768)
  %i.gb = add nsw <4 x i32> %i.fz, splat (i32 -32768)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %index421 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store <4 x i32> %i.ga, ptr %i.gc, align 4, !tbaa !14, !alias.scope !221, !noalias !220
  store <4 x i32> %i.gb, ptr %i.gd, align 4, !tbaa !14, !alias.scope !221, !noalias !220
  %index.next424 = add nuw i64 %index421, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next424, %n.vec419
  br i1 %i.ge, label %middle.block425, label %vector.body420, !llvm.loop !165

middle.block425:                                  ; preds = %vector.body420
  br i1 %cmp.n426, label %._crit_edge92, label %scalar.ph416.preheader

scalar.ph416.preheader:                           ; preds = %vector.memcheck414, %vector.scevcheck412, %.preheader15, %middle.block425
  %indvars.iv240.ph = phi i64 [ 0, %vector.memcheck414 ], [ 0, %vector.scevcheck412 ], [ 0, %.preheader15 ], [ %n.vec419, %middle.block425 ] ; 4 uses
  %.224789.ph = phi i32 [ %i.fo, %vector.memcheck414 ], [ %i.fo, %vector.scevcheck412 ], [ %i.fo, %.preheader15 ], [ %i.fr, %middle.block425 ] ; 3 uses
  br i1 %lcmp.mod575.not, label %scalar.ph416.prol.loopexit, label %scalar.ph416.prol

scalar.ph416.prol:                                ; preds = %scalar.ph416.preheader
  %i.gf = zext i32 %.224789.ph to i64
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !29
  %i.gi = tail call i16 @llvm.bswap.i16(i16 %i.gh)
  %i.gj = zext i16 %i.gi to i32
  %i.gk = add nsw i32 %i.gj, -32768
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv240.ph
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !14
  %indvars.iv.next241.prol = or disjoint i64 %indvars.iv240.ph, 1
  %i.gm = add i32 %.224789.ph, %3
  br label %scalar.ph416.prol.loopexit

scalar.ph416.prol.loopexit:                       ; preds = %scalar.ph416.prol, %scalar.ph416.preheader
  %indvars.iv240.unr = phi i64 [ %indvars.iv240.ph, %scalar.ph416.preheader ], [ %indvars.iv.next241.prol, %scalar.ph416.prol ]
  %.224789.unr = phi i32 [ %.224789.ph, %scalar.ph416.preheader ], [ %i.gm, %scalar.ph416.prol ]
  %i.gn = icmp eq i64 %indvars.iv240.ph, %i.fd
  br i1 %i.gn, label %._crit_edge92, label %scalar.ph416

scalar.ph416:                                     ; preds = %scalar.ph416.prol.loopexit, %scalar.ph416
  %indvars.iv240 = phi i64 [ %indvars.iv.next241.1, %scalar.ph416 ], [ %indvars.iv240.unr, %scalar.ph416.prol.loopexit ] ; 3 uses
  %.224789 = phi i32 [ %i.he, %scalar.ph416 ], [ %.224789.unr, %scalar.ph416.prol.loopexit ] ; 2 uses
  %i.go = zext i32 %.224789 to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !29
  %i.gr = tail call i16 @llvm.bswap.i16(i16 %i.gq)
  %i.gs = zext i16 %i.gr to i32
  %i.gt = add nsw i32 %i.gs, -32768
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv240
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !14
  %i.gv = add i32 %.224789, %3                    ; 2 uses
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.gw
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !29
  %i.gz = tail call i16 @llvm.bswap.i16(i16 %i.gy)
  %i.ha = zext i16 %i.gz to i32
  %i.hb = add nsw i32 %i.ha, -32768
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv240
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store i32 %i.hb, ptr %i.hd, align 4, !tbaa !14
  %indvars.iv.next241.1 = add nuw nsw i64 %indvars.iv240, 2 ; 2 uses
  %i.he = add i32 %i.gv, %3
  %exitcond244.not.1 = icmp eq i64 %indvars.iv.next241.1, %wide.trip.count243
  br i1 %exitcond244.not.1, label %._crit_edge92, label %scalar.ph416, !llvm.loop !166

._crit_edge92:                                    ; preds = %scalar.ph416.prol.loopexit, %scalar.ph416, %middle.block425
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %.loopexit, label %.preheader15, !llvm.loop !167

.preheader12:                                     ; preds = %.preheader12.preheader, %._crit_edge97
  %indvars.iv255 = phi i64 [ 0, %.preheader12.preheader ], [ %indvars.iv.next256, %._crit_edge97 ] ; 4 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv255
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !13 ; 8 uses
  %i.hh = trunc i64 %indvars.iv255 to i32         ; 5 uses
  br i1 %min.iters.check438, label %scalar.ph437.preheader, label %vector.scevcheck429

vector.scevcheck429:                              ; preds = %.preheader12
  %i.hi = xor i32 %i.hh, -1
  %i.hj = icmp ult i32 %i.hi, %i.fj
  %.reass613 = or i1 %i.hj, %invariant.op612
  br i1 %.reass613, label %scalar.ph437.preheader, label %vector.memcheck431

vector.memcheck431:                               ; preds = %vector.scevcheck429
  %scevgep432 = getelementptr i8, ptr %i.hg, i64 %i.ff
  %bound0434 = icmp ult ptr %i.hg, %scevgep433
  %bound1435 = icmp ugt ptr %scevgep432, @ubuffer
  %found.conflict436 = and i1 %bound0434, %bound1435
  br i1 %found.conflict436, label %scalar.ph437.preheader, label %vector.ph439

vector.ph439:                                     ; preds = %vector.memcheck431
  %i.hk = add i32 %i.hh, %i.fl
  br label %vector.body441

vector.body441:                                   ; preds = %vector.body441, %vector.ph439
  %index442 = phi i64 [ 0, %vector.ph439 ], [ %index.next445, %vector.body441 ] ; 3 uses
  %i.hl = add i64 %indvars.iv255, %index442
  %i.hm = and i64 %i.hl, 4294967295
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.hm ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %wide.load443 = load <4 x i16>, ptr %i.hn, align 2, !tbaa !29, !alias.scope !222
  %wide.load444 = load <4 x i16>, ptr %i.ho, align 2, !tbaa !29, !alias.scope !222
  %i.hp = zext <4 x i16> %wide.load443 to <4 x i32>
  %i.hq = zext <4 x i16> %wide.load444 to <4 x i32>
  %i.hr = add nsw <4 x i32> %i.hp, splat (i32 -32768)
  %i.hs = add nsw <4 x i32> %i.hq, splat (i32 -32768)
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %index442 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store <4 x i32> %i.hr, ptr %i.ht, align 4, !tbaa !14, !alias.scope !223, !noalias !222
  store <4 x i32> %i.hs, ptr %i.hu, align 4, !tbaa !14, !alias.scope !223, !noalias !222
  %index.next445 = add nuw i64 %index442, 8       ; 2 uses
  %i.hv = icmp eq i64 %index.next445, %n.vec440
end_hunk_1
begin_hunk_2_@format_input:bb.a
vector.body462:                                   ; preds = %vector.body462, %vector.ph460
  %index463 = phi i64 [ 0, %vector.ph460 ], [ %index.next466, %vector.body462 ] ; 3 uses
  %i.kh = add i64 %indvars.iv265, %index463
  %i.ki = and i64 %i.kh, 4294967295
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %wide.load464 = load <4 x i16>, ptr %i.kj, align 2, !tbaa !29, !alias.scope !224
  %wide.load465 = load <4 x i16>, ptr %i.kk, align 2, !tbaa !29, !alias.scope !224
  %i.kl = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load464)
  %i.km = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load465)
  %i.kn = sext <4 x i16> %i.kl to <4 x i32>
  %i.ko = sext <4 x i16> %i.km to <4 x i32>
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %index463 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store <4 x i32> %i.kn, ptr %i.kp, align 4, !tbaa !14, !alias.scope !225, !noalias !224
  store <4 x i32> %i.ko, ptr %i.kq, align 4, !tbaa !14, !alias.scope !225, !noalias !224
  %index.next466 = add nuw i64 %index463, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next466, %n.vec461
  br i1 %i.kr, label %middle.block467, label %vector.body462, !llvm.loop !178

middle.block467:                                  ; preds = %vector.body462
  br i1 %cmp.n468, label %._crit_edge102, label %scalar.ph458.preheader

scalar.ph458.preheader:                           ; preds = %vector.memcheck452, %vector.scevcheck450, %.preheader9, %middle.block467
  %indvars.iv260.ph = phi i64 [ 0, %vector.memcheck452 ], [ 0, %vector.scevcheck450 ], [ 0, %.preheader9 ], [ %n.vec461, %middle.block467 ] ; 4 uses
  %.424999.ph = phi i32 [ %i.kd, %vector.memcheck452 ], [ %i.kd, %vector.scevcheck450 ], [ %i.kd, %.preheader9 ], [ %i.kg, %middle.block467 ] ; 3 uses
  br i1 %lcmp.mod581.not, label %scalar.ph458.prol.loopexit, label %scalar.ph458.prol

scalar.ph458.prol:                                ; preds = %scalar.ph458.preheader
  %i.ks = zext i32 %.424999.ph to i64
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.ks
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !29
  %i.kv = tail call i16 @llvm.bswap.i16(i16 %i.ku)
  %i.kw = sext i16 %i.kv to i32
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv260.ph
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !14
  %indvars.iv.next261.prol = or disjoint i64 %indvars.iv260.ph, 1
  %i.ky = add i32 %.424999.ph, %3
  br label %scalar.ph458.prol.loopexit

scalar.ph458.prol.loopexit:                       ; preds = %scalar.ph458.prol, %scalar.ph458.preheader
  %indvars.iv260.unr = phi i64 [ %indvars.iv260.ph, %scalar.ph458.preheader ], [ %indvars.iv.next261.prol, %scalar.ph458.prol ]
  %.424999.unr = phi i32 [ %.424999.ph, %scalar.ph458.preheader ], [ %i.ky, %scalar.ph458.prol ]
  %i.kz = icmp eq i64 %indvars.iv260.ph, %i.js
  br i1 %i.kz, label %._crit_edge102, label %scalar.ph458

scalar.ph458:                                     ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.1, %scalar.ph458 ], [ %indvars.iv260.unr, %scalar.ph458.prol.loopexit ] ; 3 uses
  %.424999 = phi i32 [ %i.lo, %scalar.ph458 ], [ %.424999.unr, %scalar.ph458.prol.loopexit ] ; 2 uses
  %i.la = zext i32 %.424999 to i64
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !29
  %i.ld = tail call i16 @llvm.bswap.i16(i16 %i.lc)
  %i.le = sext i16 %i.ld to i32
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv260
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !14
  %i.lg = add i32 %.424999, %3                    ; 2 uses
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !29
  %i.lk = tail call i16 @llvm.bswap.i16(i16 %i.lj)
  %i.ll = sext i16 %i.lk to i32
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv260
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  store i32 %i.ll, ptr %i.ln, align 4, !tbaa !14
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %i.lo = add i32 %i.lg, %3
  %exitcond264.not.1 = icmp eq i64 %indvars.iv.next261.1, %wide.trip.count263
  br i1 %exitcond264.not.1, label %._crit_edge102, label %scalar.ph458, !llvm.loop !179

._crit_edge102:                                   ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458, %middle.block467
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %wide.trip.count268
  br i1 %exitcond269.not, label %.loopexit, label %.preheader9, !llvm.loop !180

.preheader6:                                      ; preds = %.preheader6.preheader, %._crit_edge107
  %indvars.iv275 = phi i64 [ 0, %.preheader6.preheader ], [ %indvars.iv.next276, %._crit_edge107 ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv275
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !13 ; 8 uses
  %i.lr = trunc i64 %indvars.iv275 to i32         ; 5 uses
  br i1 %min.iters.check480, label %scalar.ph479.preheader, label %vector.scevcheck471

vector.scevcheck471:                              ; preds = %.preheader6
  %i.ls = xor i32 %i.lr, -1
  %i.lt = icmp ult i32 %i.ls, %i.jy
  %.reass617 = or i1 %i.lt, %invariant.op616
  br i1 %.reass617, label %scalar.ph479.preheader, label %vector.memcheck473

vector.memcheck473:                               ; preds = %vector.scevcheck471
  %scevgep474 = getelementptr i8, ptr %i.lq, i64 %i.ju
  %bound0476 = icmp ult ptr %i.lq, %scevgep475
  %bound1477 = icmp ugt ptr %scevgep474, @ubuffer
  %found.conflict478 = and i1 %bound0476, %bound1477
  br i1 %found.conflict478, label %scalar.ph479.preheader, label %vector.ph481

vector.ph481:                                     ; preds = %vector.memcheck473
  %i.lu = add i32 %i.lr, %i.ka
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next487, %vector.body483 ] ; 3 uses
  %i.lv = add i64 %indvars.iv275, %index484
  %i.lw = and i64 %i.lv, 4294967295
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.lw ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %wide.load485 = load <4 x i16>, ptr %i.lx, align 2, !tbaa !29, !alias.scope !226
  %wide.load486 = load <4 x i16>, ptr %i.ly, align 2, !tbaa !29, !alias.scope !226
  %i.lz = sext <4 x i16> %wide.load485 to <4 x i32>
  %i.ma = sext <4 x i16> %wide.load486 to <4 x i32>
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %index484 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store <4 x i32> %i.lz, ptr %i.mb, align 4, !tbaa !14, !alias.scope !227, !noalias !226
  store <4 x i32> %i.ma, ptr %i.mc, align 4, !tbaa !14, !alias.scope !227, !noalias !226
  %index.next487 = add nuw i64 %index484, 8       ; 2 uses
  %i.md = icmp eq i64 %index.next487, %n.vec482
  br i1 %i.md, label %middle.block488, label %vector.body483, !llvm.loop !184

middle.block488:                                  ; preds = %vector.body483
  br i1 %cmp.n489, label %._crit_edge107, label %scalar.ph479.preheader

scalar.ph479.preheader:                           ; preds = %vector.memcheck473, %vector.scevcheck471, %.preheader6, %middle.block488
  %indvars.iv270.ph = phi i64 [ 0, %vector.memcheck473 ], [ 0, %vector.scevcheck471 ], [ 0, %.preheader6 ], [ %n.vec482, %middle.block488 ] ; 3 uses
  %.5250104.ph = phi i32 [ %i.lr, %vector.memcheck473 ], [ %i.lr, %vector.scevcheck471 ], [ %i.lr, %.preheader6 ], [ %i.lu, %middle.block488 ] ; 2 uses
  br i1 %lcmp.mod584.not, label %scalar.ph479.prol.loopexit, label %scalar.ph479.prol

scalar.ph479.prol:                                ; preds = %scalar.ph479.preheader, %scalar.ph479.prol
  %indvars.iv270.prol = phi i64 [ %indvars.iv.next271.prol, %scalar.ph479.prol ], [ %indvars.iv270.ph, %scalar.ph479.preheader ] ; 2 uses
  %.5250104.prol = phi i32 [ %i.mj, %scalar.ph479.prol ], [ %.5250104.ph, %scalar.ph479.preheader ] ; 2 uses
  %prol.iter585 = phi i64 [ %prol.iter585.next, %scalar.ph479.prol ], [ 0, %scalar.ph479.preheader ]
  %i.me = zext i32 %.5250104.prol to i64
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !29
  %i.mh = sext i16 %i.mg to i32
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv270.prol
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !14
  %indvars.iv.next271.prol = add nuw nsw i64 %indvars.iv270.prol, 1 ; 2 uses
  %i.mj = add i32 %.5250104.prol, %3              ; 2 uses
  %prol.iter585.next = add i64 %prol.iter585, 1   ; 2 uses
  %prol.iter585.cmp.not = icmp eq i64 %prol.iter585.next, %xtraiter583
  br i1 %prol.iter585.cmp.not, label %scalar.ph479.prol.loopexit, label %scalar.ph479.prol, !llvm.loop !185

scalar.ph479.prol.loopexit:                       ; preds = %scalar.ph479.prol, %scalar.ph479.preheader
  %indvars.iv270.unr = phi i64 [ %indvars.iv270.ph, %scalar.ph479.preheader ], [ %indvars.iv.next271.prol, %scalar.ph479.prol ]
  %.5250104.unr = phi i32 [ %.5250104.ph, %scalar.ph479.preheader ], [ %i.mj, %scalar.ph479.prol ]
  %i.mk = sub nsw i64 %indvars.iv270.ph, %wide.trip.count273
  %i.ml = icmp ugt i64 %i.mk, -4
  br i1 %i.ml, label %._crit_edge107, label %scalar.ph479

scalar.ph479:                                     ; preds = %scalar.ph479.prol.loopexit, %scalar.ph479
  %indvars.iv270 = phi i64 [ %indvars.iv.next271.3, %scalar.ph479 ], [ %indvars.iv270.unr, %scalar.ph479.prol.loopexit ] ; 5 uses
  %.5250104 = phi i32 [ %i.nm, %scalar.ph479 ], [ %.5250104.unr, %scalar.ph479.prol.loopexit ] ; 2 uses
  %i.mm = zext i32 %.5250104 to i64
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.mm
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !29
  %i.mp = sext i16 %i.mo to i32
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv270
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !14
  %i.mr = add i32 %.5250104, %3                   ; 2 uses
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !29
  %i.mv = sext i16 %i.mu to i32
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv270
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 %i.mv, ptr %i.mx, align 4, !tbaa !14
  %i.my = add i32 %i.mr, %3                       ; 2 uses
  %i.mz = zext i32 %i.my to i64
  %i.na = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.mz
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !29
  %i.nc = sext i16 %i.nb to i32
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv270
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store i32 %i.nc, ptr %i.ne, align 4, !tbaa !14
  %i.nf = add i32 %i.my, %3                       ; 2 uses
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.ng
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !29
  %i.nj = sext i16 %i.ni to i32
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv270
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  store i32 %i.nj, ptr %i.nl, align 4, !tbaa !14
  %indvars.iv.next271.3 = add nuw nsw i64 %indvars.iv270, 4 ; 2 uses
  %i.nm = add i32 %i.nf, %3
  %exitcond274.not.3 = icmp eq i64 %indvars.iv.next271.3, %wide.trip.count273
  br i1 %exitcond274.not.3, label %._crit_edge107, label %scalar.ph479, !llvm.loop !186

._crit_edge107:                                   ; preds = %scalar.ph479.prol.loopexit, %scalar.ph479, %middle.block488
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %.loopexit, label %.preheader6, !llvm.loop !187

bb.f:                                             ; preds = %._crit_edge
  %.not291 = icmp eq i32 %1, 0
  %.not292 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not291, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not292, label %.preheader18, label %.preheader20

.preheader20:                                     ; preds = %bb.g
  br i1 %.not134, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader20
  %.not140 = icmp eq i32 %0, 0
  %i.nn = mul i32 %3, 3
  br i1 %.not140, label %.loopexit, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.lr.ph81
  %wide.trip.count228 = zext i32 %3 to i64
  %wide.trip.count223 = zext i32 %0 to i64
  br label %.lr.ph78

.preheader18:                                     ; preds = %bb.g
  br i1 %.not134, label %.loopexit, label %.lr.ph88

.lr.ph88:                                         ; preds = %.preheader18
  %.not142 = icmp eq i32 %0, 0
  %i.no = mul i32 %3, 3                           ; 2 uses
  br i1 %.not142, label %.loopexit, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %.lr.ph88
  %wide.trip.count238 = zext i32 %3 to i64
  %wide.trip.count233 = zext i32 %0 to i64        ; 2 uses
  %xtraiter568 = and i64 %wide.trip.count233, 1
  %i.np = icmp eq i32 %0, 1
  %unroll_iter572 = and i64 %wide.trip.count233, 4294967294
  %lcmp.mod570.not = icmp eq i64 %xtraiter568, 0
  %lcmp.mod571 = trunc i32 %0 to i1
  br label %.lr.ph85

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %._crit_edge79
  %indvars.iv225 = phi i64 [ 0, %.lr.ph78.preheader ], [ %indvars.iv.next226, %._crit_edge79 ] ; 3 uses
  %i.nq = trunc nuw i64 %indvars.iv225 to i32
  %i.nr = mul i32 %i.nq, 3
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv225
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph78, %bb.h
  %indvars.iv220 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next221, %bb.h ] ; 2 uses
  %.027175 = phi i32 [ %i.nr, %.lr.ph78 ], [ %i.oo, %bb.h ] ; 4 uses
  %i.nu = zext i32 %.027175 to i64
  %i.nv = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !29
  %i.nx = zext i8 %i.nw to i32
  %i.ny = add nuw i32 %.027175, 1
  %i.nz = zext i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !29
  %i.oc = zext i8 %i.ob to i32
  %i.od = shl nuw nsw i32 %i.oc, 8
  %i.oe = or disjoint i32 %i.od, %i.nx
  %i.of = add nuw i32 %.027175, 2
  %i.og = zext i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !29
  %i.oj = zext i8 %i.oi to i32
  %i.ok = shl nuw nsw i32 %i.oj, 16
  %i.ol = or disjoint i32 %i.oe, %i.ok
  %i.om = add nsw i32 %i.ol, -8388608
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %indvars.iv220
  store i32 %i.om, ptr %i.on, align 4, !tbaa !14
  %i.oo = add i32 %.027175, %i.nn
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count223
  br i1 %exitcond224.not, label %._crit_edge79, label %bb.h, !llvm.loop !188

._crit_edge79:                                    ; preds = %bb.h
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %.loopexit, label %.lr.ph78, !llvm.loop !189

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %._crit_edge86
  %indvars.iv235 = phi i64 [ 0, %.lr.ph85.preheader ], [ %indvars.iv.next236, %._crit_edge86 ] ; 3 uses
  %i.op = trunc nuw i64 %indvars.iv235 to i32
  %i.oq = mul i32 %i.op, 3                        ; 2 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv235
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !13 ; 3 uses
  br i1 %i.np, label %.epil.preheader567, label %.lr.ph85.new

.lr.ph85.new:                                     ; preds = %.lr.ph85, %.lr.ph85.new
  %indvars.iv230 = phi i64 [ %indvars.iv.next231.1, %.lr.ph85.new ], [ 0, %.lr.ph85 ] ; 3 uses
  %.025582 = phi i32 [ %i.qh, %.lr.ph85.new ], [ %i.oq, %.lr.ph85 ] ; 4 uses
  %niter573 = phi i64 [ %niter573.next.1, %.lr.ph85.new ], [ 0, %.lr.ph85 ]
  %i.ot = zext i32 %.025582 to i64
  %i.ou = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !29
  %i.ow = zext i8 %i.ov to i32
  %i.ox = add nuw i32 %.025582, 1
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !29
  %i.pb = zext i8 %i.pa to i32
  %i.pc = shl nuw nsw i32 %i.pb, 8
  %i.pd = or disjoint i32 %i.pc, %i.ow
  %i.pe = add nuw i32 %.025582, 2
  %i.pf = zext i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !29
  %i.pi = sext i8 %i.ph to i32
  %i.pj = shl nsw i32 %i.pi, 16
  %i.pk = or disjoint i32 %i.pd, %i.pj
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv230
  store i32 %i.pk, ptr %i.pl, align 4, !tbaa !14
  %i.pm = add i32 %.025582, %i.no                 ; 4 uses
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !29
  %i.pq = zext i8 %i.pp to i32
  %i.pr = add nuw i32 %i.pm, 1
  %i.ps = zext i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !29
  %i.pv = zext i8 %i.pu to i32
  %i.pw = shl nuw nsw i32 %i.pv, 8
  %i.px = or disjoint i32 %i.pw, %i.pq
  %i.py = add nuw i32 %i.pm, 2
  %i.pz = zext i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !29
  %i.qc = sext i8 %i.qb to i32
  %i.qd = shl nsw i32 %i.qc, 16
  %i.qe = or disjoint i32 %i.px, %i.qd
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv230
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  store i32 %i.qe, ptr %i.qg, align 4, !tbaa !14
  %i.qh = add i32 %i.pm, %i.no                    ; 2 uses
  %indvars.iv.next231.1 = add nuw nsw i64 %indvars.iv230, 2 ; 2 uses
  %niter573.next.1 = add i64 %niter573, 2         ; 2 uses
  %niter573.ncmp.1 = icmp eq i64 %niter573.next.1, %unroll_iter572
  br i1 %niter573.ncmp.1, label %._crit_edge86.unr-lcssa, label %.lr.ph85.new, !llvm.loop !190

._crit_edge86.unr-lcssa:                          ; preds = %.lr.ph85.new
  br i1 %lcmp.mod570.not, label %._crit_edge86, label %.epil.preheader567

.epil.preheader567:                               ; preds = %._crit_edge86.unr-lcssa, %.lr.ph85
  %indvars.iv230.epil.init = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next231.1, %._crit_edge86.unr-lcssa ]
  %.025582.epil.init = phi i32 [ %i.oq, %.lr.ph85 ], [ %i.qh, %._crit_edge86.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod571)
  %i.qi = zext i32 %.025582.epil.init to i64
  %i.qj = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !29
  %i.ql = zext i8 %i.qk to i32
  %i.qm = add nuw i32 %.025582.epil.init, 1
  %i.qn = zext i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !29
  %i.qq = zext i8 %i.qp to i32
  %i.qr = shl nuw nsw i32 %i.qq, 8
  %i.qs = or disjoint i32 %i.qr, %i.ql
  %i.qt = add nuw i32 %.025582.epil.init, 2
  %i.qu = zext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !29
  %i.qx = sext i8 %i.qw to i32
  %i.qy = shl nsw i32 %i.qx, 16
  %i.qz = or disjoint i32 %i.qs, %i.qy
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv230.epil.init
  store i32 %i.qz, ptr %i.ra, align 4, !tbaa !14
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge86.unr-lcssa, %.epil.preheader567
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %.loopexit, label %.lr.ph85, !llvm.loop !191

bb.i:                                             ; preds = %bb.f
  br i1 %.not292, label %.preheader22, label %.preheader24

.preheader24:                                     ; preds = %bb.i
  br i1 %.not134, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader24
  %.not136 = icmp eq i32 %0, 0
  %i.rb = mul i32 %3, 3
  br i1 %.not136, label %.loopexit, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %.lr.ph67
  %wide.trip.count208 = zext i32 %3 to i64
  %wide.trip.count203 = zext i32 %0 to i64
  br label %.lr.ph64

.preheader22:                                     ; preds = %bb.i
  br i1 %.not134, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader22
  %.not138 = icmp eq i32 %0, 0
  %i.rc = mul i32 %3, 3                           ; 2 uses
  br i1 %.not138, label %.loopexit, label %.lr.ph71.preheader

.lr.ph71.preheader:                               ; preds = %.lr.ph74
  %wide.trip.count218 = zext i32 %3 to i64
  %wide.trip.count213 = zext i32 %0 to i64        ; 2 uses
  %xtraiter561 = and i64 %wide.trip.count213, 1
  %i.rd = icmp eq i32 %0, 1
  %unroll_iter565 = and i64 %wide.trip.count213, 4294967294
  %lcmp.mod563.not = icmp eq i64 %xtraiter561, 0
  %lcmp.mod564 = trunc i32 %0 to i1
  br label %.lr.ph71

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %._crit_edge65
  %indvars.iv205 = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next206, %._crit_edge65 ] ; 3 uses
  %i.re = trunc nuw i64 %indvars.iv205 to i32
  %i.rf = mul i32 %i.re, 3
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv205
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph64, %bb.j
  %indvars.iv200 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next201, %bb.j ] ; 2 uses
  %.024461 = phi i32 [ %i.rf, %.lr.ph64 ], [ %i.sc, %bb.j ] ; 4 uses
  %i.ri = zext i32 %.024461 to i64
  %i.rj = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ri
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !29
  %i.rl = zext i8 %i.rk to i32
  %i.rm = add nuw i32 %.024461, 1
  %i.rn = zext i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !29
  %i.rq = zext i8 %i.rp to i32
  %i.rr = shl nuw nsw i32 %i.rl, 16
  %i.rs = shl nuw nsw i32 %i.rq, 8
  %i.rt = or disjoint i32 %i.rs, %i.rr
  %i.ru = add nuw i32 %.024461, 2
  %i.rv = zext i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !29
  %i.ry = zext i8 %i.rx to i32
  %i.rz = or disjoint i32 %i.rt, %i.ry
  %i.sa = add nsw i32 %i.rz, -8388608
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv200
  store i32 %i.sa, ptr %i.sb, align 4, !tbaa !14
  %i.sc = add i32 %.024461, %i.rb
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge65, label %bb.j, !llvm.loop !192

._crit_edge65:                                    ; preds = %bb.j
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count208
  br i1 %exitcond209.not, label %.loopexit, label %.lr.ph64, !llvm.loop !193

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %._crit_edge72
  %indvars.iv215 = phi i64 [ 0, %.lr.ph71.preheader ], [ %indvars.iv.next216, %._crit_edge72 ] ; 3 uses
  %i.sd = trunc nuw i64 %indvars.iv215 to i32
  %i.se = mul i32 %i.sd, 3                        ; 2 uses
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv215
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !13 ; 3 uses
  br i1 %i.rd, label %.epil.preheader, label %.lr.ph71.new

.lr.ph71.new:                                     ; preds = %.lr.ph71, %.lr.ph71.new
  %indvars.iv210 = phi i64 [ %indvars.iv.next211.1, %.lr.ph71.new ], [ 0, %.lr.ph71 ] ; 3 uses
  %.024169 = phi i32 [ %i.tv, %.lr.ph71.new ], [ %i.se, %.lr.ph71 ] ; 4 uses
  %niter566 = phi i64 [ %niter566.next.1, %.lr.ph71.new ], [ 0, %.lr.ph71 ]
  %i.sh = zext i32 %.024169 to i64
  %i.si = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !29
  %i.sk = sext i8 %i.sj to i32
  %i.sl = add nuw i32 %.024169, 1
  %i.sm = zext i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !29
  %i.sp = zext i8 %i.so to i32
  %i.sq = shl nsw i32 %i.sk, 16
  %i.sr = shl nuw nsw i32 %i.sp, 8
  %i.ss = or disjoint i32 %i.sr, %i.sq
  %i.st = add nuw i32 %.024169, 2
  %i.su = zext i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !29
  %i.sx = zext i8 %i.sw to i32
  %i.sy = or disjoint i32 %i.ss, %i.sx
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %indvars.iv210
  store i32 %i.sy, ptr %i.sz, align 4, !tbaa !14
  %i.ta = add i32 %.024169, %i.rc                 ; 4 uses
  %i.tb = zext i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !29
  %i.te = sext i8 %i.td to i32
  %i.tf = add nuw i32 %i.ta, 1
  %i.tg = zext i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.tg
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !29
  %i.tj = zext i8 %i.ti to i32
  %i.tk = shl nsw i32 %i.te, 16
  %i.tl = shl nuw nsw i32 %i.tj, 8
  %i.tm = or disjoint i32 %i.tl, %i.tk
  %i.tn = add nuw i32 %i.ta, 2
  %i.to = zext i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !29
  %i.tr = zext i8 %i.tq to i32
  %i.ts = or disjoint i32 %i.tm, %i.tr
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %indvars.iv210
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  store i32 %i.ts, ptr %i.tu, align 4, !tbaa !14
  %i.tv = add i32 %i.ta, %i.rc                    ; 2 uses
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %niter566.next.1 = add i64 %niter566, 2         ; 2 uses
  %niter566.ncmp.1 = icmp eq i64 %niter566.next.1, %unroll_iter565
  br i1 %niter566.ncmp.1, label %._crit_edge72.unr-lcssa, label %.lr.ph71.new, !llvm.loop !194

._crit_edge72.unr-lcssa:                          ; preds = %.lr.ph71.new
  br i1 %lcmp.mod563.not, label %._crit_edge72, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge72.unr-lcssa, %.lr.ph71
  %indvars.iv210.epil.init = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next211.1, %._crit_edge72.unr-lcssa ]
  %.024169.epil.init = phi i32 [ %i.se, %.lr.ph71 ], [ %i.tv, %._crit_edge72.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod564)
  %i.tw = zext i32 %.024169.epil.init to i64
  %i.tx = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.tw
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !29
  %i.tz = sext i8 %i.ty to i32
  %i.ua = add nuw i32 %.024169.epil.init, 1
  %i.ub = zext i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ub
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !29
  %i.ue = zext i8 %i.ud to i32
  %i.uf = shl nsw i32 %i.tz, 16
  %i.ug = shl nuw nsw i32 %i.ue, 8
  %i.uh = or disjoint i32 %i.ug, %i.uf
  %i.ui = add nuw i32 %.024169.epil.init, 2
  %i.uj = zext i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.uj
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !29
  %i.um = zext i8 %i.ul to i32
  %i.un = or disjoint i32 %i.uh, %i.um
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %indvars.iv210.epil.init
  store i32 %i.un, ptr %i.uo, align 4, !tbaa !14
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %._crit_edge72.unr-lcssa, %.epil.preheader
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  br i1 %exitcond219.not, label %.loopexit, label %.lr.ph71, !llvm.loop !195

bb.k:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %2, 0
  %.not289 = icmp eq i32 %1, 0                    ; 2 uses
  %9 = icmp ne i32 %3, 0
  %i.up = icmp ne i32 %0, 0
  %or.cond132 = and i1 %9, %i.up                  ; 4 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not289, label %.preheader33, label %.preheader36

.preheader36:                                     ; preds = %bb.l
  br i1 %or.cond132, label %.preheader35.preheader, label %.loopexit

.preheader35.preheader:                           ; preds = %.preheader36
  %wide.trip.count168 = zext i32 %3 to i64
  %wide.trip.count163 = zext i32 %0 to i64        ; 6 uses
  %i.uq = add nsw i64 %wide.trip.count163, -1     ; 2 uses
  %min.iters.check = icmp ult i32 %0, 12
  %ident.check = icmp ne i32 %3, 1
  %i.ur = trunc i64 %i.uq to i32
  %i.us = icmp ugt i64 %i.uq, 4294967295
  %invariant.op = or i1 %i.us, %ident.check
  %n.vec = and i64 %wide.trip.count163, 4294967288 ; 4 uses
  %i.ut = trunc nuw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count163
  %xtraiter551 = and i64 %wide.trip.count163, 1
  %lcmp.mod552.not = icmp eq i64 %xtraiter551, 0
  %i.uu = add nsw i64 %wide.trip.count163, -1
  br label %.preheader35

.preheader33:                                     ; preds = %bb.l
  br i1 %or.cond132, label %.preheader32.preheader, label %.loopexit

.preheader32.preheader:                           ; preds = %.preheader33
  %wide.trip.count178 = zext i32 %3 to i64
  %wide.trip.count173 = zext i32 %0 to i64        ; 6 uses
  %i.uv = add nsw i64 %wide.trip.count173, -1     ; 2 uses
  %min.iters.check366 = icmp ult i32 %0, 12
  %ident.check362 = icmp ne i32 %3, 1
  %i.uw = trunc i64 %i.uv to i32
  %i.ux = icmp ugt i64 %i.uv, 4294967295
  %invariant.op604 = or i1 %i.ux, %ident.check362
  %n.vec368 = and i64 %wide.trip.count173, 4294967288 ; 4 uses
  %i.uy = trunc nuw i64 %n.vec368 to i32
  %cmp.n375 = icmp eq i64 %n.vec368, %wide.trip.count173
  %xtraiter553 = and i64 %wide.trip.count173, 3   ; 2 uses
  %lcmp.mod554.not = icmp eq i64 %xtraiter553, 0
  br label %.preheader32

.preheader35:                                     ; preds = %.preheader35.preheader, %._crit_edge44
  %indvars.iv165 = phi i64 [ 0, %.preheader35.preheader ], [ %indvars.iv.next166, %._crit_edge44 ] ; 5 uses
  %i.uz = shl i64 %indvars.iv165, 2
  %i.va = sub i64 sub (i64 0, i64 ptrtoaddr (ptr @ubuffer to i64)), %i.uz
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv165
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !13 ; 5 uses
  %i.vd = ptrtoaddr ptr %i.vc to i64
  %i.ve = trunc i64 %indvars.iv165 to i32         ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader35
  %i.vf = xor i32 %i.ve, -1
  %i.vg = icmp ult i32 %i.vf, %i.ur
  %.reass = or i1 %i.vg, %invariant.op
  br i1 %.reass, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.vh = add i64 %i.va, %i.vd
  %i.vi = add i64 %i.vh, -1
  %diff.check = icmp ult i64 %i.vi, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.vj = add i32 %i.ve, %i.ut
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.vk = add i64 %indvars.iv165, %index
  %i.vl = and i64 %i.vk, 4294967295
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.vl ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %wide.load = load <4 x i32>, ptr %i.vm, align 4, !tbaa !29
  %wide.load359 = load <4 x i32>, ptr %i.vn, align 4, !tbaa !29
  %i.vo = xor <4 x i32> %wide.load, splat (i32 128)
  %i.vp = xor <4 x i32> %wide.load359, splat (i32 128)
  %i.vq = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.vo)
  %i.vr = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.vp)
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %index ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  store <4 x i32> %i.vq, ptr %i.vs, align 4, !tbaa !14
  store <4 x i32> %i.vr, ptr %i.vt, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vu = icmp eq i64 %index.next, %n.vec
  br i1 %i.vu, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge44, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader35, %middle.block
  %indvars.iv160.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader35 ], [ %n.vec, %middle.block ] ; 4 uses
  %.625141.ph = phi i32 [ %i.ve, %vector.memcheck ], [ %i.ve, %vector.scevcheck ], [ %i.ve, %.preheader35 ], [ %i.vj, %middle.block ] ; 3 uses
  br i1 %lcmp.mod552.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.vv = zext i32 %.625141.ph to i64
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.vv
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !29
  %i.vy = xor i32 %i.vx, 128
  %i.vz = tail call i32 @llvm.bswap.i32(i32 %i.vy)
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %indvars.iv160.ph
  store i32 %i.vz, ptr %i.wa, align 4, !tbaa !14
  %indvars.iv.next161.prol = or disjoint i64 %indvars.iv160.ph, 1
  %i.wb = add i32 %.625141.ph, %3
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv160.unr = phi i64 [ %indvars.iv160.ph, %scalar.ph.preheader ], [ %indvars.iv.next161.prol, %scalar.ph.prol ]
  %.625141.unr = phi i32 [ %.625141.ph, %scalar.ph.preheader ], [ %i.wb, %scalar.ph.prol ]
  %i.wc = icmp eq i64 %indvars.iv160.ph, %i.uu
  br i1 %i.wc, label %._crit_edge44, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.1, %scalar.ph ], [ %indvars.iv160.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.625141 = phi i32 [ %i.wr, %scalar.ph ], [ %.625141.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.wd = zext i32 %.625141 to i64
  %i.we = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.wd
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !29
  %i.wg = xor i32 %i.wf, 128
  %i.wh = tail call i32 @llvm.bswap.i32(i32 %i.wg)
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %indvars.iv160
  store i32 %i.wh, ptr %i.wi, align 4, !tbaa !14
  %i.wj = add i32 %.625141, %3                    ; 2 uses
  %i.wk = zext i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !29
  %i.wn = xor i32 %i.wm, 128
  %i.wo = tail call i32 @llvm.bswap.i32(i32 %i.wn)
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %indvars.iv160
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 4
  store i32 %i.wo, ptr %i.wq, align 4, !tbaa !14
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %i.wr = add i32 %i.wj, %3
  %exitcond164.not.1 = icmp eq i64 %indvars.iv.next161.1, %wide.trip.count163
  br i1 %exitcond164.not.1, label %._crit_edge44, label %scalar.ph, !llvm.loop !197

._crit_edge44:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %.loopexit, label %.preheader35, !llvm.loop !198

.preheader32:                                     ; preds = %.preheader32.preheader, %._crit_edge49
  %indvars.iv175 = phi i64 [ 0, %.preheader32.preheader ], [ %indvars.iv.next176, %._crit_edge49 ] ; 5 uses
  %i.ws = shl i64 %indvars.iv175, 2
  %i.wt = sub i64 sub (i64 0, i64 ptrtoaddr (ptr @ubuffer to i64)), %i.ws
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv175
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !13 ; 7 uses
  %i.ww = ptrtoaddr ptr %i.wv to i64
  %i.wx = trunc i64 %indvars.iv175 to i32         ; 5 uses
  br i1 %min.iters.check366, label %scalar.ph365.preheader, label %vector.scevcheck361

vector.scevcheck361:                              ; preds = %.preheader32
  %i.wy = xor i32 %i.wx, -1
  %i.wz = icmp ult i32 %i.wy, %i.uw
  %.reass605 = or i1 %i.wz, %invariant.op604
  br i1 %.reass605, label %scalar.ph365.preheader, label %vector.memcheck363

vector.memcheck363:                               ; preds = %vector.scevcheck361
  %i.xa = add i64 %i.wt, %i.ww
  %i.xb = add i64 %i.xa, -1
  %diff.check364 = icmp ult i64 %i.xb, 31
  br i1 %diff.check364, label %scalar.ph365.preheader, label %vector.ph367

vector.ph367:                                     ; preds = %vector.memcheck363
  %i.xc = add i32 %i.wx, %i.uy
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph367
  %index370 = phi i64 [ 0, %vector.ph367 ], [ %index.next373, %vector.body369 ] ; 3 uses
  %i.xd = add i64 %indvars.iv175, %index370
  %i.xe = and i64 %i.xd, 4294967295
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.xe ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %wide.load371 = load <4 x i32>, ptr %i.xf, align 4, !tbaa !29
  %wide.load372 = load <4 x i32>, ptr %i.xg, align 4, !tbaa !29
  %i.xh = xor <4 x i32> %wide.load371, splat (i32 -2147483648)
  %i.xi = xor <4 x i32> %wide.load372, splat (i32 -2147483648)
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %index370 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  store <4 x i32> %i.xh, ptr %i.xj, align 4, !tbaa !14
  store <4 x i32> %i.xi, ptr %i.xk, align 4, !tbaa !14
  %index.next373 = add nuw i64 %index370, 8       ; 2 uses
  %i.xl = icmp eq i64 %index.next373, %n.vec368
  br i1 %i.xl, label %middle.block374, label %vector.body369, !llvm.loop !199

middle.block374:                                  ; preds = %vector.body369
  br i1 %cmp.n375, label %._crit_edge49, label %scalar.ph365.preheader

scalar.ph365.preheader:                           ; preds = %vector.memcheck363, %vector.scevcheck361, %.preheader32, %middle.block374
  %indvars.iv170.ph = phi i64 [ 0, %vector.memcheck363 ], [ 0, %vector.scevcheck361 ], [ 0, %.preheader32 ], [ %n.vec368, %middle.block374 ] ; 3 uses
  %.725246.ph = phi i32 [ %i.wx, %vector.memcheck363 ], [ %i.wx, %vector.scevcheck361 ], [ %i.wx, %.preheader32 ], [ %i.xc, %middle.block374 ] ; 2 uses
  br i1 %lcmp.mod554.not, label %scalar.ph365.prol.loopexit, label %scalar.ph365.prol

scalar.ph365.prol:                                ; preds = %scalar.ph365.preheader, %scalar.ph365.prol
  %indvars.iv170.prol = phi i64 [ %indvars.iv.next171.prol, %scalar.ph365.prol ], [ %indvars.iv170.ph, %scalar.ph365.preheader ] ; 2 uses
  %.725246.prol = phi i32 [ %i.xr, %scalar.ph365.prol ], [ %.725246.ph, %scalar.ph365.preheader ] ; 2 uses
end_hunk_2
begin_hunk_3_@format_input:bb.a
  br i1 %i.zw, label %middle.block391, label %vector.body386, !llvm.loop !203

middle.block391:                                  ; preds = %vector.body386
  br i1 %cmp.n392, label %._crit_edge54, label %scalar.ph382.preheader

scalar.ph382.preheader:                           ; preds = %vector.memcheck380, %vector.scevcheck378, %.preheader29, %middle.block391
  %indvars.iv180.ph = phi i64 [ 0, %vector.memcheck380 ], [ 0, %vector.scevcheck378 ], [ 0, %.preheader29 ], [ %n.vec385, %middle.block391 ] ; 3 uses
  %.825351.ph = phi i32 [ %i.zi, %vector.memcheck380 ], [ %i.zi, %vector.scevcheck378 ], [ %i.zi, %.preheader29 ], [ %i.zn, %middle.block391 ] ; 2 uses
  br i1 %lcmp.mod556.not, label %scalar.ph382.prol.loopexit, label %scalar.ph382.prol

scalar.ph382.prol:                                ; preds = %scalar.ph382.preheader, %scalar.ph382.prol
  %indvars.iv180.prol = phi i64 [ %indvars.iv.next181.prol, %scalar.ph382.prol ], [ %indvars.iv180.ph, %scalar.ph382.preheader ] ; 2 uses
  %.825351.prol = phi i32 [ %i.aac, %scalar.ph382.prol ], [ %.825351.ph, %scalar.ph382.preheader ] ; 2 uses
  %prol.iter557 = phi i64 [ %prol.iter557.next, %scalar.ph382.prol ], [ 0, %scalar.ph382.preheader ]
  %i.zx = zext i32 %.825351.prol to i64
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.zx
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !29
  %i.aaa = tail call i32 @llvm.bswap.i32(i32 %i.zz)
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %indvars.iv180.prol
  store i32 %i.aaa, ptr %i.aab, align 4, !tbaa !14
  %indvars.iv.next181.prol = add nuw nsw i64 %indvars.iv180.prol, 1 ; 2 uses
  %i.aac = add i32 %.825351.prol, %3              ; 2 uses
  %prol.iter557.next = add i64 %prol.iter557, 1   ; 2 uses
  %prol.iter557.cmp.not = icmp eq i64 %prol.iter557.next, %xtraiter555
  br i1 %prol.iter557.cmp.not, label %scalar.ph382.prol.loopexit, label %scalar.ph382.prol, !llvm.loop !204

scalar.ph382.prol.loopexit:                       ; preds = %scalar.ph382.prol, %scalar.ph382.preheader
  %indvars.iv180.unr = phi i64 [ %indvars.iv180.ph, %scalar.ph382.preheader ], [ %indvars.iv.next181.prol, %scalar.ph382.prol ]
  %.825351.unr = phi i32 [ %.825351.ph, %scalar.ph382.preheader ], [ %i.aac, %scalar.ph382.prol ]
  %i.aad = sub nsw i64 %indvars.iv180.ph, %wide.trip.count183
  %i.aae = icmp ugt i64 %i.aad, -4
  br i1 %i.aae, label %._crit_edge54, label %scalar.ph382

scalar.ph382:                                     ; preds = %scalar.ph382.prol.loopexit, %scalar.ph382
  %indvars.iv180 = phi i64 [ %indvars.iv.next181.3, %scalar.ph382 ], [ %indvars.iv180.unr, %scalar.ph382.prol.loopexit ] ; 5 uses
  %.825351 = phi i32 [ %i.abf, %scalar.ph382 ], [ %.825351.unr, %scalar.ph382.prol.loopexit ] ; 2 uses
  %i.aaf = zext i32 %.825351 to i64
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !29
  %i.aai = tail call i32 @llvm.bswap.i32(i32 %i.aah)
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %indvars.iv180
  store i32 %i.aai, ptr %i.aaj, align 4, !tbaa !14
  %i.aak = add i32 %.825351, %3                   ; 2 uses
  %i.aal = zext i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.aal
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !29
  %i.aao = tail call i32 @llvm.bswap.i32(i32 %i.aan)
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %indvars.iv180
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 4
  store i32 %i.aao, ptr %i.aaq, align 4, !tbaa !14
  %i.aar = add i32 %i.aak, %3                     ; 2 uses
  %i.aas = zext i32 %i.aar to i64
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.aas
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !29
  %i.aav = tail call i32 @llvm.bswap.i32(i32 %i.aau)
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %indvars.iv180
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  store i32 %i.aav, ptr %i.aax, align 4, !tbaa !14
  %i.aay = add i32 %i.aar, %3                     ; 2 uses
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.aaz
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !29
  %i.abc = tail call i32 @llvm.bswap.i32(i32 %i.abb)
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %indvars.iv180
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 12
  store i32 %i.abc, ptr %i.abe, align 4, !tbaa !14
  %indvars.iv.next181.3 = add nuw nsw i64 %indvars.iv180, 4 ; 2 uses
  %i.abf = add i32 %i.aay, %3
  %exitcond184.not.3 = icmp eq i64 %indvars.iv.next181.3, %wide.trip.count183
  br i1 %exitcond184.not.3, label %._crit_edge54, label %scalar.ph382, !llvm.loop !205

._crit_edge54:                                    ; preds = %scalar.ph382.prol.loopexit, %scalar.ph382, %middle.block391
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %.loopexit, label %.preheader29, !llvm.loop !206

.preheader26:                                     ; preds = %.preheader26.preheader, %._crit_edge59
  %indvars.iv195 = phi i64 [ 0, %.preheader26.preheader ], [ %indvars.iv.next196, %._crit_edge59 ] ; 5 uses
  %i.abg = shl i64 %indvars.iv195, 2
  %i.abh = sub i64 sub (i64 0, i64 ptrtoaddr (ptr @ubuffer to i64)), %i.abg
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv195
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !13 ; 7 uses
  %i.abk = ptrtoaddr ptr %i.abj to i64
  %i.abl = trunc i64 %indvars.iv195 to i32        ; 5 uses
  br i1 %min.iters.check400, label %scalar.ph399.preheader, label %vector.scevcheck395

vector.scevcheck395:                              ; preds = %.preheader26
  %i.abm = xor i32 %i.abl, -1
  %i.abn = icmp ult i32 %i.abm, %i.za
  %.reass609 = or i1 %i.abn, %invariant.op608
  br i1 %.reass609, label %scalar.ph399.preheader, label %vector.memcheck397

vector.memcheck397:                               ; preds = %vector.scevcheck395
  %i.abo = add i64 %i.abh, %i.abk
  %i.abp = add i64 %i.abo, -1
  %diff.check398 = icmp ult i64 %i.abp, 31
  br i1 %diff.check398, label %scalar.ph399.preheader, label %vector.ph401

vector.ph401:                                     ; preds = %vector.memcheck397
  %i.abq = add i32 %i.abl, %i.zc
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next407, %vector.body403 ] ; 3 uses
  %i.abr = add i64 %indvars.iv195, %index404
  %i.abs = and i64 %i.abr, 4294967295
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.abs ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  %wide.load405 = load <4 x i32>, ptr %i.abt, align 4, !tbaa !29
  %wide.load406 = load <4 x i32>, ptr %i.abu, align 4, !tbaa !29
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %index404 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  store <4 x i32> %wide.load405, ptr %i.abv, align 4, !tbaa !14
  store <4 x i32> %wide.load406, ptr %i.abw, align 4, !tbaa !14
  %index.next407 = add nuw i64 %index404, 8       ; 2 uses
  %i.abx = icmp eq i64 %index.next407, %n.vec402
  br i1 %i.abx, label %middle.block408, label %vector.body403, !llvm.loop !207

middle.block408:                                  ; preds = %vector.body403
  br i1 %cmp.n409, label %._crit_edge59, label %scalar.ph399.preheader

scalar.ph399.preheader:                           ; preds = %vector.memcheck397, %vector.scevcheck395, %.preheader26, %middle.block408
  %indvars.iv190.ph = phi i64 [ 0, %vector.memcheck397 ], [ 0, %vector.scevcheck395 ], [ 0, %.preheader26 ], [ %n.vec402, %middle.block408 ] ; 3 uses
  %.925456.ph = phi i32 [ %i.abl, %vector.memcheck397 ], [ %i.abl, %vector.scevcheck395 ], [ %i.abl, %.preheader26 ], [ %i.abq, %middle.block408 ] ; 2 uses
  br i1 %lcmp.mod559.not, label %scalar.ph399.prol.loopexit, label %scalar.ph399.prol

scalar.ph399.prol:                                ; preds = %scalar.ph399.preheader, %scalar.ph399.prol
  %indvars.iv190.prol = phi i64 [ %indvars.iv.next191.prol, %scalar.ph399.prol ], [ %indvars.iv190.ph, %scalar.ph399.preheader ] ; 2 uses
  %.925456.prol = phi i32 [ %i.acc, %scalar.ph399.prol ], [ %.925456.ph, %scalar.ph399.preheader ] ; 2 uses
  %prol.iter560 = phi i64 [ %prol.iter560.next, %scalar.ph399.prol ], [ 0, %scalar.ph399.preheader ]
  %i.aby = zext i32 %.925456.prol to i64
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !29
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %indvars.iv190.prol
  store i32 %i.aca, ptr %i.acb, align 4, !tbaa !14
  %indvars.iv.next191.prol = add nuw nsw i64 %indvars.iv190.prol, 1 ; 2 uses
  %i.acc = add i32 %.925456.prol, %3              ; 2 uses
  %prol.iter560.next = add i64 %prol.iter560, 1   ; 2 uses
  %prol.iter560.cmp.not = icmp eq i64 %prol.iter560.next, %xtraiter558
  br i1 %prol.iter560.cmp.not, label %scalar.ph399.prol.loopexit, label %scalar.ph399.prol, !llvm.loop !208

scalar.ph399.prol.loopexit:                       ; preds = %scalar.ph399.prol, %scalar.ph399.preheader
  %indvars.iv190.unr = phi i64 [ %indvars.iv190.ph, %scalar.ph399.preheader ], [ %indvars.iv.next191.prol, %scalar.ph399.prol ]
  %.925456.unr = phi i32 [ %.925456.ph, %scalar.ph399.preheader ], [ %i.acc, %scalar.ph399.prol ]
  %i.acd = sub nsw i64 %indvars.iv190.ph, %wide.trip.count193
  %i.ace = icmp ugt i64 %i.acd, -4
  br i1 %i.ace, label %._crit_edge59, label %scalar.ph399

scalar.ph399:                                     ; preds = %scalar.ph399.prol.loopexit, %scalar.ph399
  %indvars.iv190 = phi i64 [ %indvars.iv.next191.3, %scalar.ph399 ], [ %indvars.iv190.unr, %scalar.ph399.prol.loopexit ] ; 5 uses
  %.925456 = phi i32 [ %i.adb, %scalar.ph399 ], [ %.925456.unr, %scalar.ph399.prol.loopexit ] ; 2 uses
  %i.acf = zext i32 %.925456 to i64
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.acf
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !29
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %indvars.iv190
  store i32 %i.ach, ptr %i.aci, align 4, !tbaa !14
  %i.acj = add i32 %.925456, %3                   ; 2 uses
  %i.ack = zext i32 %i.acj to i64
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.ack
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !29
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %indvars.iv190
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 4
  store i32 %i.acm, ptr %i.aco, align 4, !tbaa !14
  %i.acp = add i32 %i.acj, %3                     ; 2 uses
  %i.acq = zext i32 %i.acp to i64
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.acq
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !29
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %indvars.iv190
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  store i32 %i.acs, ptr %i.acu, align 4, !tbaa !14
  %i.acv = add i32 %i.acp, %3                     ; 2 uses
  %i.acw = zext i32 %i.acv to i64
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.acw
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !29
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %indvars.iv190
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 12
  store i32 %i.acy, ptr %i.ada, align 4, !tbaa !14
  %indvars.iv.next191.3 = add nuw nsw i64 %indvars.iv190, 4 ; 2 uses
  %i.adb = add i32 %i.acv, %3
  %exitcond194.not.3 = icmp eq i64 %indvars.iv.next191.3, %wide.trip.count193
  br i1 %exitcond194.not.3, label %._crit_edge59, label %scalar.ph399, !llvm.loop !209

._crit_edge59:                                    ; preds = %scalar.ph399.prol.loopexit, %scalar.ph399, %middle.block408
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %.loopexit, label %.preheader26, !llvm.loop !210

bb.n:                                             ; preds = %._crit_edge
  %i.adc = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.adc, i32 noundef 1, ptr noundef nonnull @.str.165) #18
  br label %.critedge

.loopexit:                                        ; preds = %._crit_edge44, %._crit_edge49, %._crit_edge54, %._crit_edge59, %._crit_edge65, %._crit_edge72, %._crit_edge79, %._crit_edge86, %._crit_edge92, %._crit_edge97, %._crit_edge102, %._crit_edge107, %._crit_edge112, %._crit_edge117, %.preheader36, %.preheader33, %.preheader30, %.preheader27, %.preheader24, %.lr.ph67, %.preheader22, %.lr.ph74, %.preheader20, %.lr.ph81, %.preheader18, %.lr.ph88, %.preheader16, %.preheader13, %.preheader10, %.preheader7, %.preheader4, %.preheader2
  %.not298 = icmp eq i32 %5, 0
  br i1 %.not298, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %notmask = shl nsw i32 -1, %5
  %i.add = xor i32 %notmask, -1
  %.not300122 = icmp ne i32 %0, 0
  %10 = icmp ne i32 %3, 0
  %or.cond133 = and i1 %.not300122, %10
  br i1 %or.cond133, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %bb.o
  %wide.trip.count308 = zext i32 %0 to i64
  %wide.trip.count303 = zext i32 %3 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge121
  %indvars.iv305 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next306, %._crit_edge121 ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.r
  %indvars.iv300 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next301, %bb.r ] ; 3 uses
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv300
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !13
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %indvars.iv305 ; 2 uses
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !14 ; 3 uses
  %i.adi = and i32 %i.adh, %i.add
  %.not299 = icmp eq i32 %i.adi, 0
  br i1 %.not299, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.adj = trunc nuw i64 %indvars.iv305 to i32
  %i.adk = trunc nuw i64 %indvars.iv300 to i32
  %i.adl = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.adl, i32 noundef 1, ptr noundef nonnull @.str.166, i32 noundef %i.adk, i32 noundef %i.adj, i32 noundef %i.adh, i32 noundef %5) #18
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.adm = ashr i32 %i.adh, %5
  store i32 %i.adm, ptr %i.adg, align 4, !tbaa !14
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %exitcond304.not = icmp eq i64 %indvars.iv.next301, %wide.trip.count303
  br i1 %exitcond304.not, label %._crit_edge121, label %bb.p, !llvm.loop !211

._crit_edge121:                                   ; preds = %bb.r
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %exitcond309.not = icmp eq i64 %indvars.iv.next306, %wide.trip.count308
  br i1 %exitcond309.not, label %.critedge, label %.preheader, !llvm.loop !212

.critedge:                                        ; preds = %._crit_edge121, %bb.o, %.loopexit, %bb.q, %bb.n
  %.1 = phi i32 [ 0, %bb.n ], [ 0, %bb.q ], [ 1, %.loopexit ], [ 1, %bb.o ], [ 1, %._crit_edge121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @EncoderSession_process(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = load i32, ptr %i.c, align 4, !tbaa !42
  %i.e = icmp eq i32 %i.d, 2
  %i.f = zext i1 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  %i.i = tail call i32 @grabbag__replaygain_analyze(ptr noundef %1, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %2) #18
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.159, ptr noundef %i.l) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !39
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8408
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = tail call i32 @FLAC__stream_encoder_process(ptr noundef %i.p, ptr noundef %1, i32 noundef %2) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_error_with_state(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21
  %i.d = trunc i64 %i.c to i32
  %i.e = add i32 %i.d, 1
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.b, ptr noundef %1) #18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8408
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = tail call ptr @FLAC__stream_encoder_get_resolved_state_string(ptr noundef %i.h) #18 ; 2 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.155, i32 noundef %i.e, ptr noundef nonnull @.str.100, ptr noundef %i.i) #18
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @FLAC__StreamEncoderStateString, i64 40), align 8, !tbaa !38
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.k) #21
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.n, i32 noundef 1, ptr noundef nonnull @.str.156) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @FLAC__stream_decoder_get_state(ptr noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_decoder_process_single(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @EncoderSession_finish_ok(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %struct.FLAC__StreamMetadata, align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8408 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @FLAC__stream_encoder_get_state(ptr noundef nonnull %i.d) #18
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.g = tail call i32 @FLAC__stream_encoder_finish(ptr noundef %i.f) #18
  %.not45 = icmp eq i32 %i.g, 0                   ; 3 uses
  %i.h = icmp eq i32 %i.e, 4
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.j = tail call i32 @FLAC__stream_encoder_get_state(ptr noundef %i.i) #18
  %i.k = icmp eq i32 %i.j, 4                      ; 2 uses
  %i.l = xor i1 %.not45, true
  %or.cond = select i1 %i.l, i1 true, i1 %i.k
  br i1 %or.cond, label %.thread, label %.split64

.split64:                                         ; preds = %bb.c
  tail call fastcc void @print_error_with_state(ptr noundef nonnull %0, ptr noundef nonnull @.str.15)
  br label %.critedge55.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.063 = phi i1 [ %i.k, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40
  %.not46 = icmp eq i64 %i.n, 0
  br i1 %.not46, label %bb.d, label %.split

.thread.thread:                                   ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !40
  %.not4676 = icmp eq i64 %i.p, 0
  br i1 %.not4676, label %.thread85, label %.split

.split:                                           ; preds = %.thread.thread, %.thread
  %.03961.shrunk80 = phi i1 [ false, %.thread.thread ], [ %.not45, %.thread ]
  %.06377 = phi i1 [ false, %.thread.thread ], [ %.063, %.thread ]
  tail call fastcc void @print_stats(ptr noundef nonnull %0)
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.q, i32 noundef 2, ptr noundef nonnull @.str.90) #18
  br i1 %.06377, label %bb.e, label %bb.f

bb.d:                                             ; preds = %.thread
  br i1 %.063, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split, %bb.d
  tail call fastcc void @print_verify_error(ptr noundef %0)
  br label %.critedge55.thread

bb.f:                                             ; preds = %.split, %bb.d
  %.03961.shrunk79 = phi i1 [ %.03961.shrunk80, %.split ], [ %.not45, %bb.d ]
  br i1 %.03961.shrunk79, label %.critedge55.thread, label %.thread85

.thread85:                                        ; preds = %.thread.thread, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = load i128, ptr %i.r, align 1
  %i.t = load i128, ptr %i.a, align 16
  %i.u = icmp ne i128 %i.s, %i.t
  %i.v = zext i1 %i.u to i32
  %.not47 = icmp eq i32 %i.v, 0
  br i1 %.not47, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.thread85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.y = call i32 @FLAC__metadata_get_streaminfo(ptr noundef %i.x, ptr noundef nonnull %3) #18
  %.not48 = icmp eq i32 %i.y, 0
  br i1 %.not48, label %.critedge55.critedge, label %bb.h
end_hunk_3
