Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wavdec?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@wav_read_header:bb.a

bb.cn:                                            ; preds = %bb.cm
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.jw = call i32 @av_dict_set(ptr noundef nonnull %i.jv, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.h, i32 noundef 0) #8 ; 0 uses
  br label %.loopexit

.thread394:                                       ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %.critedge

.loopexit:                                        ; preds = %bb.cl, %bb.ck, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  %i.jx = call i64 @avio_seek(ptr noundef %i.k, i64 noundef 0, i32 noundef 1) #8
  %i.jy = icmp slt i64 %i.jx, %i.bg
  br i1 %i.jy, label %.lr.ph566, label %.critedge

bb.co:                                            ; preds = %bb.r, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  call void @ff_id3v2_read(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.i, i32 noundef 0) #8
  %i.jz = load ptr, ptr %i.i, align 8, !tbaa !86  ; 2 uses
  %.not362 = icmp eq ptr %i.jz, null
  br i1 %.not362, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ka = call i32 @ff_id3v2_parse_apic(ptr noundef nonnull %0, ptr noundef nonnull %i.jz) #8 ; 0 uses
  %i.kb = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.kc = call i32 @ff_id3v2_parse_chapters(ptr noundef nonnull %0, ptr noundef %i.kb) #8 ; 0 uses
  %i.kd = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.ke = call i32 @ff_id3v2_parse_priv(ptr noundef nonnull %0, ptr noundef %i.kd) #8 ; 0 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  call void @ff_id3v2_free_extra_meta(ptr noundef nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  br label %.critedge

bb.cr:                                            ; preds = %bb.r
  %i.kf = icmp ugt i32 %.0.in.i, 3
  %i.kg = icmp ne i32 %.0307, 0
  %or.cond23 = select i1 %i.kf, i1 %i.kg, i1 false
  br i1 %or.cond23, label %bb.cs, label %.critedge

bb.cs:                                            ; preds = %bb.cr
  %i.kh = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 152
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !60 ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %bb.cs
  %i.kl = call i32 @avio_rl32(ptr noundef %i.k) #8 ; 3 uses
  %i.km = zext i32 %i.kl to i64
  %i.kn = mul nuw nsw i64 %i.km, 24
  %i.ko = or disjoint i64 %i.kn, 4
  %.not358 = icmp samesign ule i64 %i.ko, %.0.i
  %.not361561 = icmp ne i32 %i.kl, 0
  %or.cond582 = and i1 %.not358, %.not361561
  br i1 %or.cond582, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ct
  %.sroa.4.0.insert.ext = zext nneg i32 %i.kj to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, 1
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cw
  %i.kp = add nuw i32 %.0563, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.kp, %i.kl
  br i1 %exitcond.not, label %.critedge, label %bb.cv, !llvm.loop !88

bb.cv:                                            ; preds = %.lr.ph, %bb.cu
  %.0563 = phi i32 [ 0, %.lr.ph ], [ %i.kp, %bb.cu ]
  %i.kq = call i32 @avio_rl32(ptr noundef %i.k) #8
  %i.kr = call i32 @avio_feof(ptr noundef %i.k) #8
  %.not359 = icmp eq i32 %i.kr, 0
  br i1 %.not359, label %bb.cw, label %set_max_size.exit

bb.cw:                                            ; preds = %bb.cv
  %i.ks = call i64 @avio_skip(ptr noundef %i.k, i64 noundef 16) #8 ; 0 uses
  %i.kt = call i32 @avio_rl32(ptr noundef %i.k) #8
  %i.ku = zext i32 %i.kq to i64
  %i.kv = zext i32 %i.kt to i64
  %i.kw = call ptr @avpriv_new_chapter(ptr noundef nonnull %0, i64 noundef %i.ku, i64 %.sroa.0.0.insert.insert, i64 noundef %i.kv, i64 noundef -9223372036854775808, ptr noundef null) #8
  %.not360.not = icmp eq ptr %i.kw, null
  br i1 %.not360.not, label %set_max_size.exit, label %bb.cu

.critedge:                                        ; preds = %bb.cu, %.loopexit, %.lr.ph566, %.preheader, %bb.ct, %wav_parse_xma2_tag.exit, %.thread394, %wav_parse_bext_tag.exit, %.thread, %bb.ap, %bb.ah, %bb.ag, %bb.x, %bb.w, %bb.cr, %bb.cs, %bb.cf, %bb.cg, %bb.ch, %bb.aq, %bb.au, %bb.cq, %bb.r
  %.3320 = phi i64 [ %.1318, %bb.r ], [ %.1318, %bb.cr ], [ %.1318, %bb.x ], [ %.2319, %bb.ap ], [ %.1318, %bb.aq ], [ %.1318, %bb.au ], [ %.1318, %wav_parse_bext_tag.exit ], [ %.1318, %bb.cf ], [ %.1318, %bb.cg ], [ %.1318, %.thread394 ], [ %.1318, %bb.ct ], [ %.1318, %.preheader ], [ %.1318, %bb.ch ], [ %.1318, %bb.cq ], [ %.1318, %wav_parse_xma2_tag.exit ], [ %.1318, %bb.cs ], [ %.1318, %bb.w ], [ %.1318, %bb.ag ], [ %.1318, %bb.ah ], [ %.1318, %.thread ], [ %.1318, %.loopexit ], [ %.1318, %.lr.ph566 ], [ %.1318, %bb.cu ] ; 3 uses
  %.2314 = phi i64 [ %.1313, %bb.r ], [ %.1313, %bb.cr ], [ %.1313, %bb.x ], [ %.1313, %bb.ap ], [ %.1313, %bb.aq ], [ %i.en, %bb.au ], [ %.1313, %wav_parse_bext_tag.exit ], [ %.1313, %bb.cf ], [ %.1313, %bb.cg ], [ %.1313, %.thread394 ], [ %.1313, %bb.ct ], [ %.1313, %.preheader ], [ %.1313, %bb.ch ], [ %.1313, %bb.cq ], [ %.1313, %wav_parse_xma2_tag.exit ], [ %.1313, %bb.cs ], [ %.1313, %bb.w ], [ %.1313, %bb.ag ], [ %.1313, %bb.ah ], [ %.1313, %.thread ], [ %.1313, %.loopexit ], [ %.1313, %.lr.ph566 ], [ %.1313, %bb.cu ] ; 3 uses
  %.1308 = phi i32 [ %.0307, %bb.r ], [ %.0307, %bb.cr ], [ 1, %bb.x ], [ %.0307, %bb.ap ], [ %.0307, %bb.aq ], [ %.0307, %bb.au ], [ %.0307, %wav_parse_bext_tag.exit ], [ %.0307, %bb.cf ], [ %.0307, %bb.cg ], [ %.0307, %.thread394 ], [ 1, %bb.ct ], [ %.0307, %.preheader ], [ %.0307, %bb.ch ], [ %.0307, %bb.cq ], [ 0, %wav_parse_xma2_tag.exit ], [ 1, %bb.cs ], [ 1, %bb.w ], [ %.0307, %bb.ag ], [ %.0307, %bb.ah ], [ 1, %.thread ], [ %.0307, %.loopexit ], [ %.0307, %.lr.ph566 ], [ 1, %bb.cu ] ; 3 uses
  %.1305 = phi i32 [ %.0304, %bb.r ], [ %.0304, %bb.cr ], [ %.0304, %bb.x ], [ %.0304, %bb.ap ], [ %.0304, %bb.aq ], [ %.0304, %bb.au ], [ %.0304, %wav_parse_bext_tag.exit ], [ %.0304, %bb.cf ], [ %.0304, %bb.cg ], [ %.0304, %.thread394 ], [ %.0304, %bb.ct ], [ %.0304, %.preheader ], [ %.0304, %bb.ch ], [ %.0304, %bb.cq ], [ 1, %wav_parse_xma2_tag.exit ], [ %.0304, %bb.cs ], [ %.0304, %bb.w ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 0, %.thread ], [ %.0304, %.loopexit ], [ %.0304, %.lr.ph566 ], [ %.0304, %bb.cu ] ; 3 uses
  %.1303 = phi i64 [ %i.bg, %bb.r ], [ %i.bg, %bb.cr ], [ %i.bg, %bb.x ], [ %.0302, %bb.ap ], [ %i.bg, %bb.aq ], [ %i.bg, %bb.au ], [ %i.bg, %wav_parse_bext_tag.exit ], [ %i.bg, %bb.cf ], [ %i.bg, %bb.cg ], [ %i.bg, %.thread394 ], [ %i.bg, %bb.ct ], [ %i.bg, %.preheader ], [ %i.bg, %bb.ch ], [ %i.bg, %bb.cq ], [ %i.bg, %wav_parse_xma2_tag.exit ], [ %i.bg, %bb.cs ], [ %i.bg, %bb.w ], [ %i.bg, %bb.ag ], [ %i.bg, %bb.ah ], [ %i.bg, %.thread ], [ %i.bg, %.loopexit ], [ %i.bg, %.lr.ph566 ], [ %i.bg, %bb.cu ] ; 4 uses
  %.1300 = phi i64 [ %.0299, %bb.r ], [ %.0299, %bb.cr ], [ %.0299, %bb.x ], [ %i.eg, %bb.ap ], [ %.0299, %bb.aq ], [ %.0299, %bb.au ], [ %.0299, %wav_parse_bext_tag.exit ], [ %.0299, %bb.cf ], [ %.0299, %bb.cg ], [ %.0299, %.thread394 ], [ %.0299, %bb.ct ], [ %.0299, %.preheader ], [ %.0299, %bb.ch ], [ %.0299, %bb.cq ], [ %.0299, %wav_parse_xma2_tag.exit ], [ %.0299, %bb.cs ], [ %.0299, %bb.w ], [ %.0299, %bb.ag ], [ %.0299, %bb.ah ], [ %.0299, %.thread ], [ %.0299, %.loopexit ], [ %.0299, %.lr.ph566 ], [ %.0299, %bb.cu ] ; 3 uses
  %i.kx = call i64 @avio_size(ptr noundef %i.k) #8
  %i.ky = icmp sgt i64 %i.kx, 0
  br i1 %i.ky, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.critedge
  %i.kz = call i64 @avio_size(ptr noundef %i.k) #8
  %.not373 = icmp slt i64 %.1303, %i.kz
  br i1 %.not373, label %.thread404, label %.thread418

bb.cy:                                            ; preds = %.critedge
  %.not.i388 = icmp eq i64 %.1303, 9223372036854775807
  br i1 %.not.i388, label %wav_seek_tag.exit, label %.thread404

.thread404:                                       ; preds = %bb.cx, %bb.cy
  %i.la = load i32, ptr %i.q, align 8, !tbaa !30
  %i.lb = trunc i64 %.1303 to i32
  %i.lc = add i32 %i.la, %i.lb
  %i.ld = and i32 %i.lc, 1
  %i.le = zext nneg i32 %i.ld to i64
  br label %wav_seek_tag.exit

wav_seek_tag.exit:                                ; preds = %bb.cy, %.thread404
  %i.lf = phi i64 [ 0, %bb.cy ], [ %i.le, %.thread404 ]
  %i.lg = add nsw i64 %i.lf, %.1303
  %i.lh = call i64 @avio_seek(ptr noundef %i.k, i64 noundef %i.lg, i32 noundef 0) #8
  %i.li = icmp slt i64 %i.lh, 0
  br i1 %i.li, label %.thread418, label %bb.o

.thread418:                                       ; preds = %wav_seek_tag.exit, %bb.ap, %next_tag.exit, %bb.cx
  %.2301430 = phi i64 [ %.1300, %wav_seek_tag.exit ], [ %.1300, %bb.cx ], [ %i.eg, %bb.ap ], [ %.0299, %next_tag.exit ]
  %.2306429 = phi i32 [ %.1305, %wav_seek_tag.exit ], [ %.1305, %bb.cx ], [ %.0304, %bb.ap ], [ %.0304, %next_tag.exit ]
  %.2309428 = phi i32 [ %.1308, %wav_seek_tag.exit ], [ %.1308, %bb.cx ], [ %.0307, %bb.ap ], [ %.0307, %next_tag.exit ]
  %.3315427 = phi i64 [ %.2314, %wav_seek_tag.exit ], [ %.2314, %bb.cx ], [ %.1313, %bb.ap ], [ %.1313, %next_tag.exit ]
  %.4321426 = phi i64 [ %.3320, %wav_seek_tag.exit ], [ %.3320, %bb.cx ], [ %.2319, %bb.ap ], [ %.1318, %next_tag.exit ]
  %i.lj = icmp ne i32 %.2309428, 0
  %i.lk = icmp ne i32 %.2306429, 0
  %or.cond25 = select i1 %i.lj, i1 true, i1 %i.lk
  br i1 %or.cond25, label %.thread418.thread, label %bb.cz

bb.cz:                                            ; preds = %.thread418
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.32) #8
  br label %set_max_size.exit

.thread418.thread:                                ; preds = %bb.cc, %bb.bv, %.thread418
  %.4321426470 = phi i64 [ %.4321426, %.thread418 ], [ %.1318, %bb.bv ], [ %.1318, %bb.cc ] ; 9 uses
  %.3315427469 = phi i64 [ %.3315427, %.thread418 ], [ %.1313, %bb.bv ], [ %.1313, %bb.cc ] ; 10 uses
  %.2301430468 = phi i64 [ %.2301430, %.thread418 ], [ %.0299, %bb.bv ], [ %.0299, %bb.cc ] ; 2 uses
  %i.ll = icmp slt i64 %.2301430468, 0
  br i1 %i.ll, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.thread418.thread
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.33) #8
  br label %set_max_size.exit

bb.db:                                            ; preds = %.thread418.thread
  %i.lm = call i64 @avio_seek(ptr noundef %i.k, i64 noundef %.2301430468, i32 noundef 0) #8 ; 0 uses
  %i.ln = icmp sgt i64 %.4321426470, 1152921504606846975
  br i1 %i.ln, label %.thread435, label %bb.dc

.thread435:                                       ; preds = %bb.db
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.34, i64 noundef %.4321426470) #8
  br label %bb.dl

bb.dc:                                            ; preds = %bb.db
  %i.lo = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 5 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 48
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !89 ; 2 uses
  %i.lr = icmp sgt i64 %i.lq, 0
  %i.ls = icmp sgt i64 %.4321426470, 0            ; 2 uses
  %or.cond27 = select i1 %i.lr, i1 %i.ls, i1 false
  br i1 %or.cond27, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 152
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !60 ; 2 uses
  %i.lv = icmp sgt i32 %i.lu, 0
  %i.lw = icmp sgt i64 %.3315427469, 0
  %or.cond29 = select i1 %i.lv, i1 %i.lw, i1 false
  br i1 %or.cond29, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lo, i64 132
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !66 ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, 1
  br i1 %i.lz, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.ma = zext nneg i32 %i.ly to i64              ; 2 uses
  %i.mb = urem i64 %.3315427469, %i.ma
  %i.mc = udiv i64 %.3315427469, %i.ma
  %i.md = icmp eq i64 %i.mb, 0
  br i1 %i.md, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.me = uitofp nneg i64 %.4321426470 to double
  %i.mf = fmul nnan nsz double %i.me, 8.000000e+00
  %i.mg = uitofp nneg i32 %i.ly to double
  %i.mh = fmul nsz double %i.mf, %i.mg
  %i.mi = uitofp nneg i32 %i.lu to double
  %i.mj = fmul nsz double %i.mh, %i.mi
  %i.mk = uitofp nneg i64 %.3315427469 to double
  %i.ml = fdiv nsz double %i.mj, %i.mk
  %i.mm = uitofp nneg i64 %i.lq to double
  %i.mn = fdiv nsz double %i.ml, %i.mm
  %i.mo = fadd nsz double %i.mn, -1.000000e+00
  %i.mp = call nsz double @llvm.fabs.f64(double %i.mo)
  %i.mq = fcmp nsz olt double %i.mp, 3.000000e-01
  br i1 %i.mq, label %1, label %bb.dh

1:                                                ; preds = %bb.dg
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %1, %bb.df, %bb.de, %bb.dd, %bb.dc
  %.4316 = phi i64 [ %i.mc, %1 ], [ %.3315427469, %bb.dg ], [ %.3315427469, %bb.df ], [ %.3315427469, %bb.de ], [ %.3315427469, %bb.dd ], [ %.3315427469, %bb.dc ] ; 6 uses
  %i.mr = icmp ne i64 %.4316, 0
  %or.cond31 = select i1 %i.ls, i1 %i.mr, i1 false
  br i1 %or.cond31, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lo, i64 132
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !66 ; 2 uses
  %.not374 = icmp eq i32 %i.mt, 0
  br i1 %.not374, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.mu = shl nuw nsw i64 %.4321426470, 3
  %i.mv = udiv i64 %i.mu, %.4316
  %i.mw = sext i32 %i.mt to i64
  %i.mx = sdiv i64 %i.mv, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.lo, i64 56
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !90
  %i.na = add nsw i32 %i.mz, 1
  %i.nb = sext i32 %i.na to i64
  %i.nc = icmp sgt i64 %i.mx, %i.nb
  br i1 %i.nc, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.35, i64 noundef %.4316) #8
  br label %bb.dl

bb.dl:                                            ; preds = %.thread435, %bb.dk, %bb.dj, %bb.di, %bb.dh
  %.5322434439 = phi i64 [ %.4321426470, %bb.dk ], [ %.4321426470, %bb.dj ], [ %.4321426470, %bb.di ], [ %.4321426470, %bb.dh ], [ 0, %.thread435 ] ; 2 uses
  %.5 = phi i64 [ 0, %bb.dk ], [ %.4316, %bb.dj ], [ %.4316, %bb.di ], [ %.4316, %bb.dh ], [ %.3315427469, %.thread435 ] ; 6 uses
  %i.nd = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !42 ; 2 uses
  %i.ng = icmp eq i32 %i.nf, 86069
  %i.nh = icmp ne i64 %.5, 0
  %or.cond33 = select i1 %i.ng, i1 %i.nh, i1 false
  %i.ni = shl nuw nsw i64 %.5322434439, 3         ; 2 uses
  %i.nj = icmp sgt i64 %i.ni, %.5
  %or.cond381 = select i1 %or.cond33, i1 %i.nj, i1 false
  br i1 %or.cond381, label %.thread440, label %bb.dm

.thread440:                                       ; preds = %bb.dl
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.35, i64 noundef %.5) #8
  br label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %.not375 = icmp eq i64 %.5, 0
  br i1 %.not375, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nk = call i32 @av_get_exact_bits_per_sample(i32 noundef %i.nf) #8
  %i.nl = icmp sgt i32 %i.nk, 0
  br i1 %i.nl, label %bb.do, label %.thread444

bb.do:                                            ; preds = %.thread440, %bb.dn, %bb.dm
  %.6443 = phi i64 [ 0, %.thread440 ], [ %.5, %bb.dn ], [ 0, %bb.dm ] ; 3 uses
  %i.nm = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 132
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !66
  %i.np = icmp ne i32 %i.no, 0
  %i.nq = icmp ne i64 %.5322434439, 0
  %or.cond35 = select i1 %i.np, i1 %i.nq, i1 false
  br i1 %or.cond35, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !42
  %i.nt = call i32 @av_get_bits_per_sample(i32 noundef %i.ns) #8
  %.not376 = icmp eq i32 %i.nt, 0
  br i1 %.not376, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.nu = load i64, ptr %i.au, align 8, !tbaa !69
  %i.nv = call i64 @avio_size(ptr noundef %i.k) #8
  %.not377 = icmp sgt i64 %i.nu, %i.nv
  br i1 %.not377, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.nw = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 132
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !66
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !42
  %i.oc = call i32 @av_get_bits_per_sample(i32 noundef %i.ob) #8
  %i.od = sext i32 %i.oc to i64
  %i.oe = mul nsw i64 %i.od, %i.nz
  %i.of = udiv i64 %i.ni, %i.oe
  br label %bb.ds

bb.ds:                                            ; preds = %bb.do, %bb.dp, %bb.dq, %bb.dr
  %.7 = phi i64 [ %i.of, %bb.dr ], [ %.6443, %bb.dq ], [ %.6443, %bb.dp ], [ %.6443, %bb.do ] ; 2 uses
  %.not378 = icmp eq i64 %.7, 0
  br i1 %.not378, label %bb.dt, label %.thread444

.thread444:                                       ; preds = %bb.dn, %bb.ds
  %.7447 = phi i64 [ %.7, %bb.ds ], [ %.5, %bb.dn ]
  store i64 %.7447, ptr %i.aw, align 8, !tbaa !62
  br label %bb.dt

bb.dt:                                            ; preds = %.thread444, %bb.ds
  %i.og = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 12 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4 ; 3 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !42
  switch i32 %i.oi, label %.thread451 [
    i32 65544, label %bb.du
    i32 65548, label %bb.dz
    i32 86095, label %bb.ec
    i32 86096, label %bb.ec
    i32 69638, label %bb.ed
  ]

bb.du:                                            ; preds = %bb.dt
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 156
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !91
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 132
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !66
  %i.on = shl nsw i32 %i.om, 2
  %i.oo = icmp eq i32 %i.ok, %i.on
  br i1 %i.oo, label %bb.dv, label %.thread451

bb.dv:                                            ; preds = %bb.du
  %i.op = getelementptr inbounds nuw i8, ptr %i.og, i64 56 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !90
  %i.or = icmp eq i32 %i.oq, 32
  br i1 %i.or, label %bb.dw, label %.thread451

bb.dw:                                            ; preds = %bb.dv
  %i.os = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !92
  %i.ou = icmp eq i32 %i.ot, 2
  br i1 %i.ou, label %bb.dx, label %.thread451

bb.dx:                                            ; preds = %bb.dw
  %i.ov = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !78
  %i.ox = load i16, ptr %i.ow, align 1, !tbaa !70
  %i.oy = icmp eq i16 %i.ox, 1
  br i1 %i.oy, label %bb.dy, label %.thread451

bb.dy:                                            ; preds = %bb.dx
  store i32 65569, ptr %i.oh, align 4, !tbaa !42
  store i32 16, ptr %i.op, align 8, !tbaa !90
  br label %.thread451

bb.dz:                                            ; preds = %bb.dt
  %i.oz = getelementptr inbounds nuw i8, ptr %i.og, i64 156
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !91
  %i.pb = getelementptr inbounds nuw i8, ptr %i.og, i64 132
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !66
  %i.pd = shl nsw i32 %i.pc, 2
  %i.pe = icmp eq i32 %i.pa, %i.pd
  br i1 %i.pe, label %bb.ea, label %.thread451

bb.ea:                                            ; preds = %bb.dz
  %i.pf = getelementptr inbounds nuw i8, ptr %i.og, i64 56
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !90
  %i.ph = icmp eq i32 %i.pg, 24
  br i1 %i.ph, label %bb.eb, label %.thread451

bb.eb:                                            ; preds = %bb.ea
  store i32 65570, ptr %i.oh, align 4, !tbaa !42
  br label %.thread451

bb.ec:                                            ; preds = %bb.dt, %bb.dt
  %i.pi = getelementptr inbounds nuw i8, ptr %i.og, i64 156
  store i32 2048, ptr %i.pi, align 4, !tbaa !91
  br label %.thread451

bb.ed:                                            ; preds = %bb.dt
  %i.pj = getelementptr inbounds nuw i8, ptr %i.og, i64 132
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !66 ; 3 uses
  %i.pl = icmp sgt i32 %i.pk, 2
  br i1 %i.pl, label %bb.ee, label %.thread451

bb.ee:                                            ; preds = %bb.ed
  %i.pm = getelementptr inbounds nuw i8, ptr %i.og, i64 156 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !91 ; 2 uses
  %i.po = udiv i32 2147483647, %i.pk
  %i.pp = icmp slt i32 %i.pn, %i.po
  br i1 %i.pp, label %bb.ef, label %.thread451

bb.ef:                                            ; preds = %bb.ee
  %i.pq = mul nsw i32 %i.pn, %i.pk
  store i32 %i.pq, ptr %i.pm, align 4, !tbaa !91
  br label %.thread451

.thread451:                                       ; preds = %bb.dt, %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dz, %bb.ea, %bb.eb, %bb.ed, %bb.ee, %bb.ef, %bb.ec, %bb.dy
  call void @ff_metadata_conv_ctx(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @wav_metadata_conv) #8
  call void @ff_metadata_conv_ctx(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @ff_riff_info_conv) #8
  call fastcc void @set_spdif(ptr noundef nonnull %0, ptr noundef %i.m)
  %i.pr = getelementptr inbounds nuw i8, ptr %i.m, i64 68 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !93
  %i.pt = icmp slt i32 %i.ps, 1
  br i1 %i.pt, label %bb.eg, label %set_max_size.exit

bb.eg:                                            ; preds = %.thread451
  %i.pu = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.pv = call i32 @ff_pcm_default_packet_size(ptr noundef %i.pu) #8 ; 2 uses
  %i.pw = icmp slt i32 %i.pv, 0
  %i.px = select i1 %i.pw, i32 4096, i32 %i.pv
end_hunk_0
