Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/matroskaenc?download=true
inline.NumInlined: 332
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mkv_write_header:bb.a
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.at

bb.at:                                            ; preds = %bb.be, %.lr.ph.i110
  %i.kb = phi i32 [ %i.js, %.lr.ph.i110 ], [ %i.mh, %bb.be ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i110 ], [ %indvars.iv.next.i, %bb.be ] ; 4 uses
  %i.kc = load ptr, ptr %i.jt, align 8, !tbaa !69
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.i
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !71 ; 2 uses
  %i.kf = load ptr, ptr %i.ju, align 8, !tbaa !86
  %i.kg = getelementptr inbounds nuw [120 x i8], ptr %i.kf, i64 %indvars.iv.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 4 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !81
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !87
  %.not38.i = icmp eq i32 %i.kj, 4
  br i1 %.not38.i, label %bb.au, label %bb.be

bb.au:                                            ; preds = %bb.at
  store i32 24999, ptr %1, align 16, !tbaa !53
  store i32 7, ptr %i.jv, align 4, !tbaa !54
  store i32 -1, ptr %i.jx, align 4, !tbaa !89
  store i32 -1, ptr %i.jw, align 8, !tbaa !90
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 80 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !78
  %i.km = call ptr @av_dict_get(ptr noundef %i.kl, ptr noundef nonnull @.str.48, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not39.i = icmp eq ptr %i.km, null
  br i1 %.not39.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !63
  store i32 18046, ptr %i.jy, align 16, !tbaa !53
  store i32 4, ptr %i.jz, align 4, !tbaa !54
  store ptr %i.ko, ptr %i.ka, align 8, !tbaa !56
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.0.0.i = phi i32 [ 1, %bb.au ], [ 2, %bb.av ] ; 2 uses
  %i.kp = load ptr, ptr %i.kk, align 8, !tbaa !78
  %i.kq = call ptr @av_dict_get(ptr noundef %i.kp, ptr noundef nonnull @.str.95, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not40.i = icmp eq ptr %i.kq, null
  br i1 %.not40.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kr = trunc nuw nsw i64 %indvars.iv.i to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.97, i32 noundef %i.kr) #14
  br label %.thread.i

bb.ay:                                            ; preds = %bb.aw
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !63
  %i.ku = zext nneg i32 %.sroa.0.0.i to i64
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ku ; 13 uses
  store i32 18030, ptr %i.kv, align 16, !tbaa !53
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  store i32 4, ptr %i.kw, align 4, !tbaa !54
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  store ptr %i.kt, ptr %i.kx, align 8, !tbaa !56
  %i.ky = load ptr, ptr %i.kk, align 8, !tbaa !78
  %i.kz = call ptr @av_dict_get(ptr noundef %i.ky, ptr noundef nonnull @.str.96, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not.i42.i = icmp eq ptr %i.kz, null
  br i1 %.not.i42.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  br label %get_mimetype.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.lb = load ptr, ptr %i.kh, align 8, !tbaa !81
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !84 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.ld, 0
  br i1 %.not14.i.i, label %get_mimetype.exit.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.le = call ptr @avcodec_descriptor_get(i32 noundef %i.ld) #14 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.le, null
  br i1 %.not15.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !94 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.lg, null
  br i1 %.not16.i.i, label %bb.bd, label %get_mimetype.exit.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.lh = load ptr, ptr %i.kh, align 8, !tbaa !81 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !84
  %.not19.i.i = icmp eq i32 %i.lj, 94210
  br i1 %.not19.i.i, label %get_mimetype.exit.thread60.i, label %get_mimetype.exit.thread.i

get_mimetype.exit.i:                              ; preds = %bb.bc, %bb.az
  %.1.i.in.i = phi ptr [ %i.la, %bb.az ], [ %i.lg, %bb.bc ]
  %.1.i.i112 = load ptr, ptr %.1.i.in.i, align 8, !tbaa !95 ; 2 uses
  %.not41.i = icmp eq ptr %.1.i.i112, null
  br i1 %.not41.i, label %get_mimetype.exit.thread.i, label %get_mimetype.exit.get_mimetype.exit.thread60_crit_edge.i

get_mimetype.exit.get_mimetype.exit.thread60_crit_edge.i: ; preds = %get_mimetype.exit.i
  %.pre.i113 = load ptr, ptr %i.kh, align 8, !tbaa !81
  br label %get_mimetype.exit.thread60.i

get_mimetype.exit.thread.i:                       ; preds = %get_mimetype.exit.i, %bb.bd, %bb.ba
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.47, i32 noundef 2548) #14
  call void @abort() #17
  unreachable

get_mimetype.exit.thread60.i:                     ; preds = %get_mimetype.exit.get_mimetype.exit.thread60_crit_edge.i, %bb.bd
  %i.lk = phi ptr [ %.pre.i113, %get_mimetype.exit.get_mimetype.exit.thread60_crit_edge.i ], [ %i.lh, %bb.bd ] ; 2 uses
  %.1.i63.i = phi ptr [ %.1.i.i112, %get_mimetype.exit.get_mimetype.exit.thread60_crit_edge.i ], [ @.str.98, %bb.bd ]
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  store i32 18016, ptr %i.ll, align 16, !tbaa !53
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kv, i64 36
  store i32 4, ptr %i.lm, align 4, !tbaa !54
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kv, i64 56
  store ptr %.1.i63.i, ptr %i.ln, align 8, !tbaa !56
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !96
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !97
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kv, i64 64
  store i32 18012, ptr %i.lt, align 16, !tbaa !53
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kv, i64 68
  store i32 5, ptr %i.lu, align 4, !tbaa !54
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kv, i64 80
  store i64 %i.ls, ptr %i.lv, align 16, !tbaa !98
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kv, i64 88
  store ptr %i.lp, ptr %i.lw, align 8, !tbaa !56
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !100
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kv, i64 96
  store i32 18094, ptr %i.lz, align 16, !tbaa !53
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 100
  store i32 3, ptr %i.ma, align 4, !tbaa !54
  %i.mb = or disjoint i32 %.sroa.0.0.i, 4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kv, i64 120
  store i64 %i.ly, ptr %i.mc, align 8, !tbaa !56
  %i.md = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.me = call fastcc i32 @ebml_writer_elem_len(ptr noundef nonnull %1, i32 noundef %i.mb) ; 2 uses
  %i.mf = icmp slt i32 %i.me, 0
  br i1 %i.mf, label %.thread.i, label %ebml_writer_write.exit.i

ebml_writer_write.exit.i:                         ; preds = %get_mimetype.exit.thread60.i
  %i.mg = call fastcc i32 @ebml_writer_elem_write(ptr noundef nonnull %1, ptr noundef %i.md) ; 0 uses
  %.pre77.i = load i32, ptr %i.u, align 4, !tbaa !47
  br label %bb.be

.thread.i:                                        ; preds = %get_mimetype.exit.thread60.i, %bb.ax
  %.1.ph.i = phi i32 [ -22, %bb.ax ], [ %i.me, %get_mimetype.exit.thread60.i ]
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %mkv_write_attachments.exit.thread

bb.be:                                            ; preds = %ebml_writer_write.exit.i, %bb.at
  %i.mh = phi i32 [ %i.kb, %bb.at ], [ %.pre77.i, %ebml_writer_write.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mi = zext i32 %i.mh to i64
  %i.mj = icmp samesign ult i64 %indvars.iv.next.i, %i.mi
  br i1 %i.mj, label %bb.at, label %mkv_write_attachments.exit, !llvm.loop !168

mkv_write_attachments.exit.thread:                ; preds = %.thread.i, %bb.aq
  %.2.i.ph = phi i32 [ %i.jk, %bb.aq ], [ %.1.ph.i, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %mkv_write_tags.exit.thread

mkv_write_attachments.exit:                       ; preds = %bb.be, %start_ebml_master_crc32.exit.i
  %i.mk = call fastcc i32 @end_ebml_master_crc32(ptr noundef %.pre191, ptr noundef nonnull %i.a, ptr noundef nonnull %.pre189, i32 noundef 423732329, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ml = icmp slt i32 %i.mk, 0
  br i1 %i.ml, label %mkv_write_tags.exit.thread, label %mkv_write_attachments.exit._crit_edge

mkv_write_attachments.exit._crit_edge:            ; preds = %mkv_write_attachments.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !31
  %.pre190 = load ptr, ptr %i.h, align 8, !tbaa !32
  br label %bb.bf

bb.bf:                                            ; preds = %mkv_write_attachments.exit._crit_edge, %mkv_write_attachments.exit.thread157, %bb.ao
  %i.mm = phi ptr [ %.pre190, %mkv_write_attachments.exit._crit_edge ], [ %.pre191, %mkv_write_attachments.exit.thread157 ], [ %.pre191, %bb.ao ]
  %i.mn = phi ptr [ %.pre, %mkv_write_attachments.exit._crit_edge ], [ %.pre189, %mkv_write_attachments.exit.thread157 ], [ %.pre189, %bb.ao ] ; 12 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 144
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !80
  %i.mq = and i32 %i.mp, 1
  %.not.i114 = icmp eq i32 %i.mq, 0
  br i1 %.not.i114, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 372
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !68
  %.fr82.i = freeze i32 %i.ms
  %.not57.i = icmp eq i32 %.fr82.i, 0
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.fr.i = phi i1 [ false, %bb.bf ], [ %.not57.i, %bb.bg ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 348
  store i32 1, ptr %i.mt, align 4, !tbaa !101
  call void @ff_metadata_conv_ctx(ptr noundef nonnull %0, ptr noundef nonnull @ff_mkv_metadata_conv, ptr noundef null) #14
  %i.mu = load ptr, ptr %i.cm, align 8, !tbaa !46
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 56 ; 7 uses
  %i.mw = call fastcc i32 @mkv_write_tag(ptr noundef %i.mn, ptr noundef %i.mu, ptr noundef nonnull %i.mv, i32 noundef 0, i32 noundef 0, i64 noundef 0) ; 2 uses
  %i.mx = icmp slt i32 %i.mw, 0
  br i1 %i.mx, label %mkv_write_tags.exit.thread, label %.preheader73.i

.preheader73.i:                                   ; preds = %bb.bh
  %i.my = load i32, ptr %i.u, align 4, !tbaa !47  ; 3 uses
  %.not81.i = icmp eq i32 %i.my, 0
  br i1 %.not81.i, label %._crit_edge.i119, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.preheader73.i
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mn, i64 120 ; 2 uses
  %3 = select i1 %.fr.i, i32 36, i32 0            ; 2 uses
  br i1 %.fr.i, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i115, %.thread.us.i
  %i.nb = phi i32 [ %i.nr, %.thread.us.i ], [ %i.my, %.lr.ph.i115 ]
  %indvars.iv.i116 = phi i64 [ %indvars.iv.next.i118, %.thread.us.i ], [ 0, %.lr.ph.i115 ] ; 3 uses
  %i.nc = load ptr, ptr %i.mz, align 8, !tbaa !69
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %indvars.iv.i116
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !71 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !81
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !87
  %i.ni = icmp eq i32 %i.nh, 4
  br i1 %i.ni, label %.thread.us.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.split.us.i
  %i.nj = load ptr, ptr %i.na, align 8, !tbaa !86
  %i.nk = getelementptr inbounds nuw [120 x i8], ptr %i.nj, i64 %indvars.iv.i116
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 80
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !78
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !100
  %i.np = call fastcc i32 @mkv_write_tag(ptr noundef nonnull %i.mn, ptr noundef %i.nm, ptr noundef nonnull %i.mv, i32 noundef %3, i32 noundef 25541, i64 noundef %i.no) ; 2 uses
  %i.nq = icmp sgt i32 %i.np, -1
  br i1 %i.nq, label %..thread.us_crit_edge.i, label %mkv_write_tags.exit.thread

..thread.us_crit_edge.i:                          ; preds = %bb.bi
  %.pre.i117 = load i32, ptr %i.u, align 4, !tbaa !47
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %..thread.us_crit_edge.i, %.lr.ph.split.us.i
  %i.nr = phi i32 [ %i.nb, %.lr.ph.split.us.i ], [ %.pre.i117, %..thread.us_crit_edge.i ] ; 3 uses
  %indvars.iv.next.i118 = add nuw nsw i64 %indvars.iv.i116, 1 ; 2 uses
  %i.ns = zext i32 %i.nr to i64
  %i.nt = icmp samesign ult i64 %indvars.iv.next.i118, %i.ns
  br i1 %i.nt, label %.lr.ph.split.us.i, label %._crit_edge.i119, !llvm.loop !169

.lr.ph.split.i:                                   ; preds = %.lr.ph.i115, %.thread.i120
  %i.nu = phi i32 [ %i.oo, %.thread.i120 ], [ %i.my, %.lr.ph.i115 ]
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i, %.thread.i120 ], [ 0, %.lr.ph.i115 ] ; 3 uses
  %i.nv = load ptr, ptr %i.mz, align 8, !tbaa !69
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv89.i
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !71 ; 2 uses
  %i.ny = load ptr, ptr %i.na, align 8, !tbaa !86
  %i.nz = getelementptr inbounds nuw [120 x i8], ptr %i.ny, i64 %indvars.iv89.i ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !81
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !87
  %i.od = icmp eq i32 %i.oc, 4
  br i1 %i.od, label %.thread.i120, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.split.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 80
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !78
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !100
  %i.oi = call fastcc i32 @mkv_write_tag(ptr noundef nonnull %i.mn, ptr noundef %i.of, ptr noundef nonnull %i.mv, i32 noundef %3, i32 noundef 25541, i64 noundef %i.oh) ; 2 uses
  %i.oj = icmp sgt i32 %i.oi, -1
  br i1 %i.oj, label %bb.bk, label %mkv_write_tags.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.ok = load ptr, ptr %i.mv, align 8, !tbaa !102
  %i.ol = call i64 @avio_seek(ptr noundef %i.ok, i64 noundef 0, i32 noundef 1) #14
  %i.om = add nsw i64 %i.ol, -36
  %i.on = getelementptr inbounds nuw i8, ptr %i.nz, i64 56
  store i64 %i.om, ptr %i.on, align 8, !tbaa !103
  %.pre95.i = load i32, ptr %i.u, align 4, !tbaa !47
  br label %.thread.i120

.thread.i120:                                     ; preds = %bb.bk, %.lr.ph.split.i
  %i.oo = phi i32 [ %.pre95.i, %bb.bk ], [ %i.nu, %.lr.ph.split.i ] ; 3 uses
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %i.op = zext i32 %i.oo to i64
  %i.oq = icmp samesign ult i64 %indvars.iv.next90.i, %i.op
  br i1 %i.oq, label %.lr.ph.split.i, label %._crit_edge.i119, !llvm.loop !169

._crit_edge.i119:                                 ; preds = %.thread.us.i, %.thread.i120, %.preheader73.i
  %i.or = phi i32 [ %i.oo, %.thread.i120 ], [ 0, %.preheader73.i ], [ %i.nr, %.thread.us.i ] ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.mn, i64 336
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !85
  %.not58.i = icmp eq i32 %i.ot, 0
  br i1 %.not58.i, label %.loopexit.i, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i119
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !45
  %i.ow = icmp eq i32 %i.ov, 2
  %.not83.i = icmp eq i32 %i.or, 0
  %or.cond.i = or i1 %.not83.i, %i.ow
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %bb.bl
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mn, i64 120
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bo, %.lr.ph80.i
  %i.oz = phi i32 [ %i.or, %.lr.ph80.i ], [ %i.po, %bb.bo ]
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph80.i ], [ %indvars.iv.next93.i, %bb.bo ] ; 3 uses
  %i.pa = load ptr, ptr %i.ox, align 8, !tbaa !69
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %indvars.iv92.i
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !71 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !81
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !87
  %.not59.i = icmp eq i32 %i.pf, 4
  br i1 %.not59.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.pg = load ptr, ptr %i.oy, align 8, !tbaa !86
  %i.ph = getelementptr inbounds nuw [120 x i8], ptr %i.pg, i64 %indvars.iv92.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pc, i64 80
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !78
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !100
  %i.pm = call fastcc i32 @mkv_write_tag(ptr noundef %i.mn, ptr noundef %i.pj, ptr noundef nonnull %i.mv, i32 noundef 0, i32 noundef 25542, i64 noundef %i.pl) ; 2 uses
  %i.pn = icmp slt i32 %i.pm, 0
  br i1 %i.pn, label %mkv_write_tags.exit.thread, label %._crit_edge96.i

._crit_edge96.i:                                  ; preds = %bb.bn
  %.pre97.i = load i32, ptr %i.u, align 4, !tbaa !47
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge96.i, %bb.bm
  %i.po = phi i32 [ %.pre97.i, %._crit_edge96.i ], [ %i.oz, %bb.bm ] ; 2 uses
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %i.pp = zext i32 %i.po to i64
  %i.pq = icmp samesign ult i64 %indvars.iv.next93.i, %i.pp
  br i1 %i.pq, label %bb.bm, label %.loopexit.i, !llvm.loop !170

.loopexit.i:                                      ; preds = %bb.bo, %bb.bl, %._crit_edge.i119
  %i.pr = load ptr, ptr %i.mv, align 8, !tbaa !102
  %.not60.i = icmp eq ptr %i.pr, null
  br i1 %.not60.i, label %mkv_write_tags.exit.thread160, label %mkv_write_tags.exit

mkv_write_tags.exit:                              ; preds = %.loopexit.i
  %i.ps = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.pt = call fastcc i32 @end_ebml_master_crc32_tentatively(ptr noundef %i.ps, ptr noundef nonnull %i.mv, ptr noundef nonnull %i.mn, i32 noundef 307544935) ; 2 uses
  %i.pu = icmp slt i32 %i.pt, 0
  br i1 %i.pu, label %mkv_write_tags.exit.thread, label %mkv_write_tags.exit.thread160

mkv_write_tags.exit.thread160:                    ; preds = %.loopexit.i, %mkv_write_tags.exit
  %i.pv = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 3 uses
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !80
  %i.px = and i32 %i.pw, 1
  %.not89 = icmp eq i32 %i.px, 0
  br i1 %.not89, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %mkv_write_tags.exit.thread160
  %i.py = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !68
  %.not90 = icmp eq i32 %i.pz, 0
  br i1 %.not90, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %mkv_write_tags.exit.thread160
  %i.qa = call i64 @avio_seek(ptr noundef nonnull %i.i, i64 noundef 0, i32 noundef 1) #14
  %i.qb = call fastcc i32 @mkv_write_seekhead(ptr noundef nonnull %i.i, ptr noundef %i.g, i32 noundef 0, i64 noundef %i.qa) ; 2 uses
  %i.qc = icmp slt i32 %i.qb, 0
  br i1 %i.qc, label %mkv_write_tags.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !174 ; 3 uses
  %i.qf = icmp sgt i32 %i.qe, 0
  br i1 %i.qf, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.qg = icmp eq i32 %i.qe, 1
  br i1 %i.qg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 2, ptr %i.qd, align 8, !tbaa !174
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.qh = phi i32 [ 2, %bb.bt ], [ %i.qe, %bb.bs ]
  call fastcc void @put_ebml_void(ptr noundef nonnull %i.i, i32 noundef %i.qh)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.br
  %i.qi = getelementptr inbounds nuw i8, ptr %i.g, i64 352 ; 4 uses
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !104
  %.not91 = icmp eq i32 %i.qj, 0
  br i1 %.not91, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.qk = getelementptr inbounds nuw i8, ptr %i.g, i64 396
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !105
  %.not92 = icmp eq i32 %i.ql, 0
  br i1 %.not92, label %bb.ce, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.qm = load i32, ptr %i.pv, align 8, !tbaa !80
  %i.qn = and i32 %i.qm, 1
  %.not93 = icmp eq i32 %i.qn, 0
  br i1 %.not93, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qo = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !68
  %.not94 = icmp eq i32 %i.qp, 0
  br i1 %.not94, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.qq = call i64 @avio_seek(ptr noundef nonnull %i.i, i64 noundef 0, i32 noundef 1) #14
  %i.qr = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  store i64 %i.qq, ptr %i.qr, align 8, !tbaa !106
  %i.qs = load i32, ptr %i.qi, align 8, !tbaa !104 ; 3 uses
  %i.qt = icmp sgt i32 %i.qs, 0
  br i1 %i.qt, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.qu = icmp eq i32 %i.qs, 1
  br i1 %i.qu, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 2, ptr %i.qi, align 8, !tbaa !104
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.qv = phi i32 [ 2, %bb.cb ], [ %i.qs, %bb.ca ]
  call fastcc void @put_ebml_void(ptr noundef nonnull %i.i, i32 noundef %i.qv)
  br label %bb.ce

bb.cd:                                            ; preds = %bb.by, %bb.bx
  store i32 -1, ptr %i.qi, align 8, !tbaa !104
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.bz, %bb.bw
  %i.qw = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i64 -1, ptr %i.qw, align 8, !tbaa !107
  %i.qx = load i32, ptr %i.pv, align 8, !tbaa !80
  %i.qy = and i32 %i.qx, 1
  %.not95 = icmp eq i32 %i.qy, 0
  br i1 %.not95, label %bb.ck, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qz = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !68
  %.not96 = icmp eq i32 %i.ra, 0
  br i1 %.not96, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.rb = getelementptr inbounds nuw i8, ptr %i.g, i64 360 ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !108
  %i.rd = icmp slt i64 %i.rc, 0
  br i1 %i.rd, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 5000, ptr %i.rb, align 8, !tbaa !108
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.re = getelementptr inbounds nuw i8, ptr %i.g, i64 356 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !109
  %i.rg = icmp slt i32 %i.rf, 0
  br i1 %i.rg, label %bb.cj, label %mkv_write_tags.exit.thread
end_hunk_0
