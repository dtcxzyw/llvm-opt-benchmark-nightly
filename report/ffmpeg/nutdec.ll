Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/nutdec?download=true
inline.NumInlined: 36
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@nut_read_header:bb.a
  store i32 %i.jq, ptr %i.js, align 4, !tbaa !126
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cq, %bb.cj
  %i.jt = call fastcc i32 @skip_reserved(ptr noundef %i.gd, i64 noundef %i.gh)
  %.not166.i = icmp eq i32 %i.jt, 0
  br i1 %.not166.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ju = call i64 @ffio_get_checksum(ptr noundef %i.gd) #12
  %.not167.i = icmp eq i64 %i.ju, 0
  br i1 %.not167.i, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.gb, i32 noundef 16, ptr noundef nonnull @.str.39, i32 noundef %i.gr) #12
  br label %bb.da

bb.cz:                                            ; preds = %bb.bm, %bb.bl
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.gb, i32 noundef 16, ptr noundef nonnull @.str.26, i64 noundef %i.gi) #12
  br label %decode_stream_header.exit.thread

bb.da:                                            ; preds = %bb.cy, %bb.cu, %bb.cs, %bb.cp, %bb.cn, %bb.cl, %bb.cg, %bb.ce, %bb.cc, %bb.ca
  %i.jv = load ptr, ptr %i.he, align 8, !tbaa !110 ; 2 uses
  %.not169.i = icmp eq ptr %i.jv, null
  br i1 %.not169.i, label %decode_stream_header.exit.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  call void @av_freep(ptr noundef nonnull %i.jw) #12
  %i.jx = load ptr, ptr %i.he, align 8, !tbaa !110
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  store i32 0, ptr %i.jy, align 8, !tbaa !120
  br label %decode_stream_header.exit.thread

decode_stream_header.exit.thread:                 ; preds = %bb.ci, %bb.bv, %bb.bn, %bb.db, %bb.da, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cx
  %i.jz = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.ka = load i32, ptr %i.hv, align 8, !tbaa !117
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kb ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !109
  %i.ke = load ptr, ptr %i.gu, align 8, !tbaa !62
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.gs
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !64
  %i.kh = load i32, ptr %i.kc, align 4, !tbaa !107
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !108
  call void @avpriv_set_pts_info(ptr noundef %i.kg, i32 noundef 63, i32 noundef %i.kh, i32 noundef %i.kj) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.kk = add nuw nsw i32 %.041145, 1
  br label %bb.dd

bb.dd:                                            ; preds = %decode_stream_header.exit.thread, %bb.dc
  %i.kl = phi i32 [ %i.kk, %bb.dc ], [ %.041145, %decode_stream_header.exit.thread ] ; 2 uses
  %i.km = load i32, ptr %i.fw, align 4, !tbaa !59
  %i.kn = icmp ult i32 %i.kl, %i.km
  br i1 %i.kn, label %.lr.ph, label %.preheader.preheader, !llvm.loop !99

.preheader.preheader:                             ; preds = %bb.dd, %.preheader86
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %.245 = phi i64 [ 0, %.preheader.preheader ], [ %i.kx, %.preheader.backedge ] ; 2 uses
  %i.ko = icmp sgt i64 %.245, -1
  br i1 %i.ko, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.preheader
  %i.kp = call i64 @avio_seek(ptr noundef %i.g, i64 noundef %.245, i32 noundef 0) #12 ; 0 uses
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.preheader
  %i.kq = call i32 @avio_feof(ptr noundef %i.g) #12
  %.not12.i = icmp eq i32 %i.kq, 0
  br i1 %.not12.i, label %.lr.ph.i55, label %find_any_startcode.exit.thread

.lr.ph.i55:                                       ; preds = %bb.df, %.backedge.i
  %.013.i = phi i64 [ %i.ku, %.backedge.i ], [ 0, %bb.df ]
  %i.kr = shl i64 %.013.i, 8
  %i.ks = call i32 @avio_r8(ptr noundef %i.g) #12
  %i.kt = sext i32 %i.ks to i64
  %i.ku = or i64 %i.kr, %i.kt                     ; 4 uses
  %.mask.i = and i64 %i.ku, -72057594037927936
  %.not11.i = icmp eq i64 %.mask.i, 5620492334958379008
  br i1 %.not11.i, label %bb.dg, label %.backedge.i

.backedge.i:                                      ; preds = %bb.dg, %.lr.ph.i55
  %i.kv = call i32 @avio_feof(ptr noundef %i.g) #12
  %.not.i56 = icmp eq i32 %i.kv, 0
  br i1 %.not.i56, label %.lr.ph.i55, label %find_any_startcode.exit.thread, !llvm.loop !1

bb.dg:                                            ; preds = %.lr.ph.i55
  switch i64 %i.ku, label %.backedge.i [
    i64 5642300418477196461, label %find_any_startcode.exit
    i64 5643873726143592923, label %find_any_startcode.exit
    i64 5641854393898386793, label %find_any_startcode.exit
    i64 5641228474469759608, label %find_any_startcode.exit
    i64 5645505568151168590, label %find_any_startcode.exit
  ]

find_any_startcode.exit.thread:                   ; preds = %bb.df, %.backedge.i
  %i.kw = call i64 @avio_seek(ptr noundef %i.g, i64 noundef 0, i32 noundef 1) #12 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.4) #12
  br label %.loopexit88

find_any_startcode.exit:                          ; preds = %bb.dg, %bb.dg, %bb.dg, %bb.dg, %bb.dg
  %i.kx = call i64 @avio_seek(ptr noundef %i.g, i64 noundef 0, i32 noundef 1) #12 ; 2 uses
  switch i64 %i.ku, label %.preheader.backedge [
    i64 5641228474469759608, label %bb.dh
    i64 5641854393898386793, label %bb.di
  ]

.preheader.backedge:                              ; preds = %find_any_startcode.exit, %bb.dh
  br label %.preheader

bb.dh:                                            ; preds = %find_any_startcode.exit
  %i.ky = call fastcc i32 @decode_info_header(ptr noundef %i.e) ; 0 uses
  br label %.preheader.backedge

bb.di:                                            ; preds = %find_any_startcode.exit
  %i.kz = getelementptr inbounds nuw i8, ptr %i.e, i64 4240 ; 2 uses
  store i64 5641854393898386793, ptr %i.kz, align 8, !tbaa !72
  %i.la = add nsw i64 %i.kx, -8
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 %i.la, ptr %i.lb, align 8, !tbaa !129
  %i.lc = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !130
  %i.le = and i32 %i.ld, 1
  %.not50 = icmp eq i32 %i.le, 0
  br i1 %.not50, label %.thread, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lf = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef 0, i32 noundef 1) #12
  %i.lg = load ptr, ptr %i.h, align 8, !tbaa !39  ; 13 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !32 ; 20 uses
  %i.lj = call i64 @avio_size(ptr noundef %i.li) #12 ; 3 uses
  %i.lk = icmp slt i64 %i.lj, 1
  br i1 %i.lk, label %bb.eg, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ll = add nsw i64 %i.lj, -12
  %i.lm = call i64 @avio_seek(ptr noundef %i.li, i64 noundef %i.ll, i32 noundef 0) #12 ; 0 uses
  %i.ln = call i64 @avio_rb64(ptr noundef %i.li) #12
  %i.lo = sub i64 %i.lj, %i.ln
  %i.lp = call i64 @avio_seek(ptr noundef %i.li, i64 noundef %i.lo, i32 noundef 0) #12 ; 0 uses
  %i.lq = call i64 @avio_rb64(ptr noundef %i.li) #12
  %.not.i57 = icmp eq i64 %i.lq, 5645505568151168590
  br i1 %.not.i57, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.lg, i32 noundef 24, ptr noundef nonnull @.str.58) #12
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lg, i64 104 ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !131
  %i.lt = icmp slt i64 %i.ls, 1
  br i1 %i.lt, label %bb.dm, label %bb.eg

bb.dm:                                            ; preds = %bb.dl
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !75
  %i.lu = call i32 @ff_find_last_ts(ptr noundef %.val.i, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull @nut_read_timestamp) #12 ; 0 uses
  %i.lv = load i64, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  %i.lw = icmp sgt i64 %i.lv, 0
  br i1 %i.lw, label %bb.dn, label %find_duration.exit.i

bb.dn:                                            ; preds = %bb.dm
  %i.lx = getelementptr inbounds nuw i8, ptr %.val.i, i64 300
  store i32 0, ptr %i.lx, align 4, !tbaa !132
  br label %find_duration.exit.i

find_duration.exit.i:                             ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i64 %i.lv, ptr %i.lr, align 8, !tbaa !131
  br label %bb.eg

bb.do:                                            ; preds = %bb.dk
  %i.ly = call fastcc i32 @get_packetheader(ptr noundef %i.li, i32 noundef 1, i64 noundef 5645505568151168590)
  %i.lz = sext i32 %i.ly to i64
  %i.ma = call i64 @avio_seek(ptr noundef %i.li, i64 noundef 0, i32 noundef 1) #12
  %i.mb = add i64 %i.ma, %i.lz                    ; 2 uses
  %i.mc = call i64 @ffio_read_varlen(ptr noundef %i.li) #12 ; 2 uses
  %i.md = load i32, ptr %i.l, align 4, !tbaa !41
  %i.me = zext i32 %i.md to i64                   ; 2 uses
  %i.mf = udiv i64 %i.mc, %i.me
  %i.mg = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.mh = urem i64 %i.mc, %i.me
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.mh
  %i.mj = load i64, ptr %i.mi, align 4
  %i.mk = call i64 @av_rescale_q(i64 noundef %i.mf, i64 %i.mj, i64 4294967296000001) #13
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lg, i64 104
  store i64 %i.mk, ptr %i.ml, align 8, !tbaa !131
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lg, i64 300
  store i32 0, ptr %i.mm, align 4, !tbaa !132
  %i.mn = call i64 @ffio_read_varlen(ptr noundef %i.li) #12
  %.fr220.i = freeze i64 %i.mn                    ; 8 uses
  %i.mo = add i64 %.fr220.i, -1
  %or.cond.i58 = icmp ult i64 %i.mo, 268435454
  br i1 %or.cond.i58, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.lg, i32 noundef 16, ptr noundef nonnull @.str.59, i64 noundef %.fr220.i) #12
  br label %.loopexit186.i

bb.dq:                                            ; preds = %bb.do
  %i.mp = trunc nuw nsw i64 %.fr220.i to i32      ; 3 uses
  %i.mq = call ptr @av_malloc_array(i64 noundef %.fr220.i, i64 noundef 8) #12 ; 13 uses
  %i.mr = add nuw nsw i32 %i.mp, 1                ; 3 uses
  %i.ms = zext nneg i32 %i.mr to i64              ; 2 uses
  %i.mt = call ptr @av_malloc_array(i64 noundef %i.ms, i64 noundef 1) #12 ; 15 uses
  %i.mu = icmp ne ptr %i.mq, null
  %i.mv = icmp ne ptr %i.mt, null
  %or.cond4.i = select i1 %i.mu, i1 %i.mv, i1 false
  br i1 %or.cond4.i, label %.lr.ph.preheader.i, label %.loopexit186.i

.lr.ph.preheader.i:                               ; preds = %bb.dq
  %i.mw = call i64 @ffio_read_varlen(ptr noundef %i.li) #12 ; 2 uses
  store i64 %i.mw, ptr %i.mq, align 8, !tbaa !75
  %i.mx = icmp slt i64 %i.mw, 1
  br i1 %i.mx, label %.loopexit186.i, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.preheader.i
  %exitcond.peel.not.i = icmp eq i64 %.fr220.i, 1
  br i1 %exitcond.peel.not.i, label %.preheader184.i, label %.lr.ph.i59

.preheader184.i:                                  ; preds = %bb.ds, %bb.dr
  %i.my = getelementptr inbounds nuw i8, ptr %i.lg, i64 44 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !59
  %.not219.i = icmp eq i32 %i.mz, 0
  br i1 %.not219.i, label %._crit_edge218.split.i, label %.preheader183.preheader.i

.preheader183.preheader.i:                        ; preds = %.preheader184.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  br label %.preheader183.i

.lr.ph.i59:                                       ; preds = %bb.dr, %bb.ds
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i61, %bb.ds ], [ 1, %bb.dr ] ; 2 uses
  %i.nb = call i64 @ffio_read_varlen(ptr noundef %i.li) #12 ; 3 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv.i60 ; 3 uses
  store i64 %i.nb, ptr %i.nc, align 8, !tbaa !75
  %i.nd = icmp slt i64 %i.nb, 1
  br i1 %i.nd, label %.loopexit186.i, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i59
  %i.ne = getelementptr i8, ptr %i.nc, i64 -8
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !75
  %i.ng = add nsw i64 %i.nf, %i.nb
  store i64 %i.ng, ptr %i.nc, align 8, !tbaa !75
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %exitcond.not.i62 = icmp eq i64 %indvars.iv.next.i61, %.fr220.i
  br i1 %exitcond.not.i62, label %.preheader184.i, label %.lr.ph.i59, !llvm.loop !100

.preheader183.i:                                  ; preds = %._crit_edge216.i, %.preheader183.preheader.i
  %indvars.iv247.i = phi i64 [ 0, %.preheader183.preheader.i ], [ %indvars.iv.next248.i, %._crit_edge216.i ] ; 2 uses
  br label %bb.dt

.loopexit179.i:                                   ; preds = %bb.ed, %.preheader.i67
  %.1142.lcssa.i = phi i32 [ %.0141213.i, %.preheader.i67 ], [ %invariant.smin.i, %bb.ed ] ; 2 uses
  %.1131.lcssa.i = phi i64 [ %.0130214.i, %.preheader.i67 ], [ %.2132.i, %bb.ed ]
  %i.nh = icmp slt i32 %.1142.lcssa.i, %i.mp
  br i1 %i.nh, label %bb.dt, label %._crit_edge216.i, !llvm.loop !101

bb.dt:                                            ; preds = %.loopexit179.i, %.preheader183.i
  %.0130214.i = phi i64 [ -1, %.preheader183.i ], [ %.1131.lcssa.i, %.loopexit179.i ] ; 2 uses
  %.0141213.i = phi i32 [ 0, %.preheader183.i ], [ %.1142.lcssa.i, %.loopexit179.i ] ; 8 uses
  %i.ni = call i64 @ffio_read_varlen(ptr noundef %i.li) #12 ; 4 uses
  %i.nj = lshr i64 %i.ni, 1                       ; 4 uses
  %i.nk = and i64 %i.ni, 1
  %.not157.i63 = icmp eq i64 %i.nk, 0
  br i1 %.not157.i63, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.nl = lshr i64 %i.ni, 2                       ; 4 uses
  %i.nm = zext nneg i32 %.0141213.i to i64        ; 3 uses
  %i.nn = add nuw nsw i64 %i.nl, %i.nm            ; 3 uses
  %.not160.i64 = icmp samesign ult i64 %i.nn, %i.ms
  br i1 %.not160.i64, label %.preheader182.i, label %.thread.i

.preheader182.i:                                  ; preds = %bb.du
  %.not161199.i = icmp eq i64 %i.nl, 0
  %.pre251.i = trunc i64 %i.nj to i8              ; 2 uses
  br i1 %.not161199.i, label %._crit_edge.i65, label %.lr.ph202.i

.lr.ph202.i:                                      ; preds = %.preheader182.i
  %i.no = and i8 %.pre251.i, 1                    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.mt, i64 %i.nm
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 %i.no, i64 %i.nl, i1 false), !tbaa !15
  %i.np = trunc nuw nsw i64 %i.nn to i32
  br label %._crit_edge.i65

.thread.i:                                        ; preds = %bb.du
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lg, i32 noundef 16, ptr noundef nonnull @.str.60, i32 noundef %.0141213.i, i64 noundef %i.nl, i32 noundef %i.mr) #12
  br label %.loopexit186.i

._crit_edge.i65:                                  ; preds = %.lr.ph202.i, %.preheader182.i
  %.pre-phi252.i = phi i8 [ %i.no, %.lr.ph202.i ], [ %.pre251.i, %.preheader182.i ]
  %.pre-phi.i = phi i64 [ %i.nn, %.lr.ph202.i ], [ %i.nm, %.preheader182.i ]
  %.0127.lcssa.i = phi i32 [ %i.np, %.lr.ph202.i ], [ %.0141213.i, %.preheader182.i ]
  %i.nq = xor i8 %.pre-phi252.i, 1
  %i.nr = add nuw nsw i32 %.0127.lcssa.i, 1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mt, i64 %.pre-phi.i
  store i8 %i.nq, ptr %i.ns, align 1, !tbaa !15
  br label %.loopexit181.i

bb.dv:                                            ; preds = %bb.dt
  %i.nt = icmp ult i64 %i.ni, 4
  br i1 %i.nt, label %bb.dw, label %.preheader180.i

.preheader180.i:                                  ; preds = %bb.dv
  %.not158203.i = icmp eq i64 %i.nj, 1
  br i1 %.not158203.i, label %.loopexit181.i, label %.lr.ph206.preheader.i

.lr.ph206.preheader.i:                            ; preds = %.preheader180.i
  %i.nu = zext nneg i32 %.0141213.i to i64        ; 2 uses
  %.not159.not.i361 = icmp slt i64 %.fr220.i, %i.nu
  br i1 %.not159.not.i361, label %.lr.ph206.preheader.i._crit_edge, label %.lr.ph364.a

bb.dw:                                            ; preds = %bb.dv
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lg, i32 noundef 16, ptr noundef nonnull @.str.61, i64 noundef %i.nj) #12
  br label %.loopexit186.i

.lr.ph206.i:                                      ; preds = %.lr.ph364.a
  %.not159.not.i.not = icmp slt i64 %indvars.iv240.i362, %.fr220.i
  br i1 %.not159.not.i.not, label %.lr.ph364.a, label %.lr.ph206.preheader.i._crit_edge, !llvm.loop !102

.lr.ph206.preheader.i._crit_edge:                 ; preds = %.lr.ph206.preheader.i, %.lr.ph206.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lg, i32 noundef 16, ptr noundef nonnull @.str.62) #12
  br label %.loopexit186.i

.lr.ph364.a:                                      ; preds = %.lr.ph206.preheader.i, %.lr.ph206.i
  %.1129204.i363 = phi i64 [ %i.ny, %.lr.ph206.i ], [ %i.nj, %.lr.ph206.preheader.i ] ; 2 uses
  %indvars.iv240.i362 = phi i64 [ %indvars.iv.next241.i, %.lr.ph206.i ], [ %i.nu, %.lr.ph206.preheader.i ] ; 3 uses
  %i.nv = trunc i64 %.1129204.i363 to i8
  %i.nw = and i8 %i.nv, 1
  %indvars.iv.next241.i = add nuw nsw i64 %indvars.iv240.i362, 1 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mt, i64 %indvars.iv240.i362
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !15
  %i.ny = lshr i64 %.1129204.i363, 1              ; 2 uses
  %.not158.i70 = icmp eq i64 %i.ny, 1
  br i1 %.not158.i70, label %.loopexit181.loopexit.i, label %.lr.ph206.i, !llvm.loop !102

.loopexit181.loopexit.i:                          ; preds = %.lr.ph364.a
  %i.nz = trunc nuw nsw i64 %indvars.iv.next241.i to i32
  br label %.loopexit181.i

.loopexit181.i:                                   ; preds = %.loopexit181.loopexit.i, %.preheader180.i, %._crit_edge.i65
  %.3.i = phi i32 [ %i.nr, %._crit_edge.i65 ], [ %.0141213.i, %.preheader180.i ], [ %i.nz, %.loopexit181.loopexit.i ] ; 2 uses
  %i.oa = load i8, ptr %i.mt, align 1, !tbaa !15
  %.not163.i66 = icmp eq i8 %i.oa, 0
  br i1 %.not163.i66, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.loopexit181.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lg, i32 noundef 16, ptr noundef nonnull @.str.63) #12
  br label %.loopexit186.i

bb.dy:                                            ; preds = %.loopexit181.i
  %.not164.i = icmp sgt i32 %.3.i, %i.mr
  br i1 %.not164.i, label %bb.dz, label %.preheader.i67

.preheader.i67:                                   ; preds = %bb.dy
  %invariant.smin.i = call i32 @llvm.smin.i32(i32 %.3.i, i32 %i.mp) ; 3 uses
  %i.ob = icmp slt i32 %.0141213.i, %invariant.smin.i
  br i1 %i.ob, label %.lr.ph210.preheader.i, label %.loopexit179.i

.lr.ph210.preheader.i:                            ; preds = %.preheader.i67
  %i.oc = zext nneg i32 %.0141213.i to i64
  br label %.lr.ph210.i

bb.dz:                                            ; preds = %bb.dy
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.7, i32 noundef 768) #12
  call void @abort() #14
  unreachable

.lr.ph210.i:                                      ; preds = %bb.ed, %.lr.ph210.preheader.i
  %indvars.iv243.i = phi i64 [ %i.oc, %.lr.ph210.preheader.i ], [ %indvars.iv.next244.i, %bb.ed ] ; 3 uses
  %.1131209.i = phi i64 [ %.0130214.i, %.lr.ph210.preheader.i ], [ %.2132.i, %bb.ed ] ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.mt, i64 %indvars.iv243.i
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !15
  %.not165.i68 = icmp eq i8 %i.oe, 0
  br i1 %.not165.i68, label %bb.ed, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph210.i
  %i.of = call i64 @ffio_read_varlen(ptr noundef %i.li) #12 ; 2 uses
  %.not166.i69 = icmp eq i64 %i.of, 0
  br i1 %.not166.i69, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.og = call i64 @ffio_read_varlen(ptr noundef %i.li) #12
  %i.oh = call i64 @ffio_read_varlen(ptr noundef %i.li) #12
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.0126.i = phi i64 [ %i.oh, %bb.eb ], [ 0, %bb.ea ]
  %.0.i = phi i64 [ %i.og, %bb.eb ], [ %i.of, %bb.ea ]
  %i.oi = load ptr, ptr %i.na, align 8, !tbaa !62
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %indvars.iv247.i
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !64
  %i.ol = getelementptr [8 x i8], ptr %i.mq, i64 %indvars.iv243.i
  %i.om = getelementptr i8, ptr %i.ol, i64 -8
  %i.on = load i64, ptr %i.om, align 8, !tbaa !75
  %i.oo = shl nsw i64 %i.on, 4
  %i.op = add i64 %.0.i, %.1131209.i              ; 2 uses
  %i.oq = call i32 @av_add_index_entry(ptr noundef %i.ok, i64 noundef %i.oo, i64 noundef %i.op, i32 noundef 0, i32 noundef 0, i32 noundef 1) #12 ; 0 uses
  %i.or = add i64 %i.op, %.0126.i
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.lr.ph210.i
  %.2132.i = phi i64 [ %i.or, %bb.ec ], [ %.1131209.i, %.lr.ph210.i ] ; 2 uses
  %indvars.iv.next244.i = add nuw nsw i64 %indvars.iv243.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next244.i to i32
  %exitcond246.not.i = icmp eq i32 %invariant.smin.i, %lftr.wideiv.i
  br i1 %exitcond246.not.i, label %.loopexit179.i, label %.lr.ph210.i, !llvm.loop !103

._crit_edge216.i:                                 ; preds = %.loopexit179.i
  %indvars.iv.next248.i = add nuw nsw i64 %indvars.iv247.i, 1 ; 2 uses
  %i.os = load i32, ptr %i.my, align 4, !tbaa !59
  %i.ot = zext i32 %i.os to i64
  %i.ou = icmp samesign ult i64 %indvars.iv.next248.i, %i.ot
  br i1 %i.ou, label %.preheader183.i, label %._crit_edge218.split.i, !llvm.loop !104

._crit_edge218.split.i:                           ; preds = %._crit_edge216.i, %.preheader184.i
  %i.ov = call i64 @avio_seek(ptr noundef %i.li, i64 noundef 0, i32 noundef 1) #12 ; 2 uses
  %i.ow = sub nsw i64 %i.mb, %i.ov                ; 3 uses
  %i.ox = icmp slt i64 %i.ow, 0
  br i1 %i.ox, label %bb.ee, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge218.split.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.li, i64 80
  %.not11.i.i = icmp eq i64 %i.mb, %i.ov
  br i1 %.not11.i.i, label %.loopexit.i, label %.lr.ph.i.i

bb.ee:                                            ; preds = %._crit_edge218.split.i
  %i.oz = call i64 @avio_seek(ptr noundef %i.li, i64 noundef %i.ow, i32 noundef 1) #12 ; 0 uses
  br label %skip_reserved.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ef
  %.in.i.i = phi i64 [ %i.pb, %bb.ef ], [ %i.ow, %.preheader.i.i ]
  %i.pa = load i32, ptr %i.oy, align 8, !tbaa !45
  %.not10.i.i = icmp eq i32 %i.pa, 0
  br i1 %.not10.i.i, label %bb.ef, label %skip_reserved.exit.i

bb.ef:                                            ; preds = %.lr.ph.i.i
  %i.pb = add nsw i64 %.in.i.i, -1                ; 2 uses
  %i.pc = call i32 @avio_r8(ptr noundef nonnull %i.li) #12 ; 0 uses
  %.not.i.i = icmp eq i64 %i.pb, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.ef, %.preheader.i.i
  %i.pd = call i64 @ffio_get_checksum(ptr noundef %i.li) #12
  %.not156.i = icmp eq i64 %i.pd, 0
  br i1 %.not156.i, label %.loopexit186.i, label %skip_reserved.exit.i

skip_reserved.exit.i:                             ; preds = %.lr.ph.i.i, %.loopexit.i, %bb.ee
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lg, i32 noundef 16, ptr noundef nonnull @.str.65) #12
  br label %.loopexit186.i

.loopexit186.i:                                   ; preds = %.lr.ph.i59, %skip_reserved.exit.i, %.loopexit.i, %bb.dx, %.lr.ph206.preheader.i._crit_edge, %bb.dw, %.thread.i, %.lr.ph.preheader.i, %bb.dq, %bb.dp
  %.0140.i = phi ptr [ %i.mq, %.thread.i ], [ %i.mq, %.loopexit.i ], [ %i.mq, %skip_reserved.exit.i ], [ %i.mq, %bb.dq ], [ null, %bb.dp ], [ %i.mq, %bb.dx ], [ %i.mq, %.lr.ph206.preheader.i._crit_edge ], [ %i.mq, %bb.dw ], [ %i.mq, %.lr.ph.preheader.i ], [ %i.mq, %.lr.ph.i59 ]
  %.0139.i = phi ptr [ %i.mt, %.thread.i ], [ %i.mt, %.loopexit.i ], [ %i.mt, %skip_reserved.exit.i ], [ %i.mt, %bb.dq ], [ null, %bb.dp ], [ %i.mt, %bb.dx ], [ %i.mt, %.lr.ph206.preheader.i._crit_edge ], [ %i.mt, %bb.dw ], [ %i.mt, %.lr.ph.preheader.i ], [ %i.mt, %.lr.ph.i59 ]
  call void @av_free(ptr noundef %.0140.i) #12
  call void @av_free(ptr noundef %.0139.i) #12
  br label %bb.eg

bb.eg:                                            ; preds = %.loopexit186.i, %find_duration.exit.i, %bb.dl, %bb.dj
  %i.pe = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef %i.lf, i32 noundef 0) #12 ; 0 uses
  %.pre = load i64, ptr %i.kz, align 8, !tbaa !72
  %i.pf = icmp eq i64 %.pre, 5641854393898386793
  br i1 %i.pf, label %.thread, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 873) #12
  call void @abort() #14
  unreachable

.thread:                                          ; preds = %bb.di, %bb.eg
  call void @ff_metadata_conv_ctx(ptr noundef %0, ptr noundef null, ptr noundef nonnull @ff_nut_metadata_conv) #12
  br label %.loopexit88

.loopexit88:                                      ; preds = %._crit_edge432.i, %bb.n, %find_any_startcode.exit.thread, %.thread, %bb.bk, %bb.b
  %.2 = phi i32 [ 0, %.thread ], [ -1094995529, %bb.b ], [ -1094995529, %bb.bk ], [ -1094995529, %find_any_startcode.exit.thread ], [ -12, %bb.n ], [ -12, %._crit_edge432.i ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @nut_read_packet(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4240 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4272 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4264 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4248 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4288
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 3088
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 3216
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4280 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.045 = phi i32 [ 0, %bb.a ], [ %.045.be, %.backedge ]
  %i.t = tail call i64 @avio_seek(ptr noundef %i.f, i64 noundef 0, i32 noundef 1) #12 ; 3 uses
  %i.u = load i64, ptr %i.g, align 8, !tbaa !72   ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !72
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = add nsw i64 %i.t, -8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.w = tail call i32 @avio_r8(ptr noundef %i.f) #12 ; 2 uses
  %i.x = tail call i32 @avio_feof(ptr noundef %i.f) #12
  %.not58 = icmp eq i32 %i.x, 0
  br i1 %.not58, label %bb.e, label %.loopexit76

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i32 %i.w, 78
  br i1 %i.y, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.e
  %i.z = tail call i32 @avio_r8(ptr noundef %i.f) #12
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 8
end_hunk_0
begin_hunk_1_@read_sm_data:bb.a
  %i.dp = getelementptr i8, ptr %i.a, i64 3
  %i.dq = load i64, ptr %i.dp, align 1
  %i.dr = xor i64 %i.dq, 28556933990804592
  %i.ds = or i64 %i.do, %i.dr
  %i.dt = icmp ne i64 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %.not132 = icmp eq i32 %i.du, 0
  br i1 %.not132, label %.thread187, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = load i32, ptr %i.a, align 16
  %i.dw = xor i32 %i.dv, 1952737623
  %i.dx = getelementptr i8, ptr %i.a, i64 4
  %i.dy = load i16, ptr %i.dx, align 4
  %i.dz = zext i16 %i.dy to i32
  %i.ea = xor i32 %i.dz, 104
  %i.eb = or i32 %i.dw, %i.ea
  %i.ec = icmp ne i32 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %.not134 = icmp eq i32 %i.ed, 0
  br i1 %.not134, label %.thread187, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = load i32, ptr %i.a, align 16
  %i.ef = xor i32 %i.ee, 1734960456
  %i.eg = getelementptr i8, ptr %i.a, i64 3
  %i.eh = load i32, ptr %i.eg, align 1
  %i.ei = xor i32 %i.eh, 7628903
  %i.ej = or i32 %i.ef, %i.ei
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %.not136 = icmp eq i32 %i.el, 0
  br i1 %.not136, label %.thread187, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.a) #12
  br label %.thread187

.thread202.sink.split.sink.split:                 ; preds = %.lr.ph.i, %.lr.ph.i151
  %.sink346.sroa.phi = phi ptr [ %.sink346.sroa.gep, %.lr.ph.i151 ], [ %.sink346.sroa.gep35, %.lr.ph.i ]
  %.lcssa.sink = phi i32 [ %i.al, %.lr.ph.i151 ], [ %i.q, %.lr.ph.i ]
  store i8 0, ptr %.sink346.sroa.phi, align 1, !tbaa !15
  %.not29.i148304 = icmp ne i32 %.lcssa.sink, 0
  br label %.thread202.sink.split

.thread202.sink.split.loopexit:                   ; preds = %get_str.exit, %get_str.exit155
  %.sink344.ph = phi i1 [ %i.ar, %get_str.exit155 ], [ %i.w, %get_str.exit ]
  %.not29.i301.sink.ph = phi i1 [ %.not29.i148, %get_str.exit155 ], [ %.not29.i, %get_str.exit ]
  %i.em = sext i1 %.sink344.ph to i32
  br label %.thread202.sink.split

.thread202.sink.split:                            ; preds = %.thread202.sink.split.loopexit, %.thread202.sink.split.sink.split
  %.sink344 = phi i32 [ -1, %.thread202.sink.split.sink.split ], [ %i.em, %.thread202.sink.split.loopexit ]
  %.not29.i301.sink = phi i1 [ %.not29.i148304, %.thread202.sink.split.sink.split ], [ %.not29.i301.sink.ph, %.thread202.sink.split.loopexit ]
  %.025.i = select i1 %.not29.i301.sink, i32 -541478725, i32 %.sink344
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.80) #12
  br label %.thread202

.thread202:                                       ; preds = %bb.b, %.thread202.sink.split
  %.3114.ph = phi i32 [ %.025.i, %.thread202.sink.split ], [ -1094995529, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.thread217

.thread211:                                       ; preds = %bb.s, %bb.l, %bb.p, %bb.k, %.loopexit310
  %.1112.ph.ph = phi i32 [ %.025.i160, %.loopexit310 ], [ -12, %bb.s ], [ -1094995529, %bb.l ], [ -12, %bb.p ], [ -1094995529, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.thread217

bb.af:                                            ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.thread187

.thread187:                                       ; preds = %bb.t, %bb.u, %bb.x, %bb.ae, %bb.aa, %bb.v, %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.h, %bb.af
  %.298200 = phi i32 [ %.096262, %bb.af ], [ %.096262, %bb.t ], [ %.096262, %bb.y ], [ %.096262, %bb.aa ], [ %.096262, %bb.z ], [ %.096262, %bb.ab ], [ %.096262, %bb.ac ], [ %.096262, %bb.ae ], [ %.096262, %bb.x ], [ %.096262, %bb.v ], [ %.096262, %bb.u ], [ %.096262, %bb.h ], [ %i.ad, %bb.ad ] ; 2 uses
  %.2101199 = phi i32 [ %.099260, %bb.af ], [ %.099260, %bb.t ], [ %.099260, %bb.y ], [ %.099260, %bb.aa ], [ %.099260, %bb.z ], [ %.099260, %bb.ab ], [ %i.ad, %bb.ac ], [ %.099260, %bb.ae ], [ %.099260, %bb.x ], [ %.099260, %bb.v ], [ %.099260, %bb.u ], [ %.099260, %bb.h ], [ %.099260, %bb.ad ] ; 2 uses
  %.2104198 = phi i32 [ %.0102258, %bb.af ], [ %.0102258, %bb.t ], [ %.0102258, %bb.y ], [ %.0102258, %bb.aa ], [ %.0102258, %bb.z ], [ %i.ad, %bb.ab ], [ %.0102258, %bb.ac ], [ %.0102258, %bb.ae ], [ %.0102258, %bb.x ], [ %.0102258, %bb.v ], [ %.0102258, %bb.u ], [ %.0102258, %bb.h ], [ %.0102258, %bb.ad ] ; 2 uses
  %.2107197 = phi i32 [ %.0105256, %bb.af ], [ %.0105256, %bb.t ], [ %.0105256, %bb.y ], [ %.0105256, %bb.aa ], [ %i.ad, %bb.z ], [ %.0105256, %bb.ab ], [ %.0105256, %bb.ac ], [ %.0105256, %bb.ae ], [ %.0105256, %bb.x ], [ %.0105256, %bb.v ], [ %.0105256, %bb.u ], [ %.0105256, %bb.h ], [ %.0105256, %bb.ad ] ; 2 uses
  %.2110196 = phi i32 [ %.0108254, %bb.af ], [ %.0108254, %bb.t ], [ %i.ad, %bb.y ], [ %.0108254, %bb.aa ], [ %.0108254, %bb.z ], [ %.0108254, %bb.ab ], [ %.0108254, %bb.ac ], [ %.0108254, %bb.ae ], [ %.0108254, %bb.x ], [ %.0108254, %bb.v ], [ %.0108254, %bb.u ], [ %.0108254, %bb.h ], [ %.0108254, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.en = add nuw nsw i32 %.095264, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.en, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !169

._crit_edge:                                      ; preds = %.thread187, %bb.a
  %.0108.lcssa = phi i32 [ 0, %bb.a ], [ %.2110196, %.thread187 ] ; 2 uses
  %.0105.lcssa = phi i32 [ 0, %bb.a ], [ %.2107197, %.thread187 ] ; 2 uses
  %.0102.lcssa = phi i32 [ 0, %bb.a ], [ %.2104198, %.thread187 ] ; 2 uses
  %.099.lcssa = phi i32 [ 0, %bb.a ], [ %.2101199, %.thread187 ] ; 3 uses
  %.096.lcssa = phi i32 [ 0, %bb.a ], [ %.298200, %.thread187 ] ; 3 uses
  %i.eo = icmp ne i32 %.0102.lcssa, 0             ; 3 uses
  %i.ep = icmp ne i32 %.099.lcssa, 0              ; 2 uses
  %or.cond5 = select i1 %i.eo, i1 true, i1 %i.ep
  %i.eq = icmp ne i32 %.096.lcssa, 0              ; 2 uses
  %or.cond7 = select i1 %or.cond5, i1 true, i1 %i.eq
  br i1 %or.cond7, label %bb.ag, label %.thread215

bb.ag:                                            ; preds = %._crit_edge
  %i.er = call ptr @av_packet_new_side_data(ptr noundef %2, i32 noundef 2, i64 noundef 16) #12 ; 4 uses
  %.not.not = icmp eq ptr %i.er, null
  br i1 %.not.not, label %.thread217, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.es = select i1 %i.eo, i32 4, i32 0
  %i.et = or i32 %.096.lcssa, %.099.lcssa
  %.not123 = icmp eq i32 %i.et, 0
  %i.eu = select i1 %.not123, i32 0, i32 8
  %i.ev = or disjoint i32 %i.eu, %i.es
  store i32 %i.ev, ptr %i.er, align 1, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  br i1 %i.eo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %.0102.lcssa, ptr %i.ew, align 1, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0177 = phi ptr [ %i.ex, %bb.ai ], [ %i.ew, %bb.ah ] ; 2 uses
  %or.cond9 = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond9, label %bb.ak, label %.thread215

bb.ak:                                            ; preds = %bb.aj
  store i32 %.099.lcssa, ptr %.0177, align 1, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %.0177, i64 4
  store i32 %.096.lcssa, ptr %i.ey, align 1, !tbaa !15
  br label %.thread215

.thread215:                                       ; preds = %bb.aj, %bb.ak, %._crit_edge
  %i.ez = icmp ne i32 %.0108.lcssa, 0
  %i.fa = icmp ne i32 %.0105.lcssa, 0
  %or.cond11 = select i1 %i.ez, i1 true, i1 %i.fa
  br i1 %or.cond11, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.thread215
  %i.fb = call ptr @av_packet_new_side_data(ptr noundef %2, i32 noundef 11, i64 noundef 10) #12 ; 3 uses
  %.not.not124 = icmp eq ptr %i.fb, null
  br i1 %.not.not124, label %.thread217, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %.0108.lcssa, ptr %i.fb, align 1, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i32 %.0105.lcssa, ptr %i.fc, align 1, !tbaa !15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread215
  %i.fd = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #12
  %.not = icmp slt i64 %i.fd, %3
  %. = select i1 %.not, i32 0, i32 -1094995529
  br label %.thread217

.thread217:                                       ; preds = %bb.al, %bb.ag, %.thread211, %.thread202, %bb.an
  %.7 = phi i32 [ %.1112.ph.ph, %.thread211 ], [ %., %bb.an ], [ %.3114.ph, %.thread202 ], [ -12, %bb.ag ], [ -12, %bb.al ]
  ret i32 %.7
}

declare void @av_shrink_packet(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #3

declare i64 @ff_lsb2full(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @av_packet_new_side_data(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @ff_nut_free_sp(ptr noundef) local_unnamed_addr #3

declare i32 @av_index_search_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_tree_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_nut_sp_pts_cmp(ptr noundef, ptr noundef) #3

declare i64 @ff_gen_search(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_nut_sp_pos_cmp(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{!2, !16}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"override-stack-alignment", i32 16}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"AVProbeData", !13, i64 0, !13, i64 8, !9, i64 16, !13, i64 24}
!15 = !{!8, !8, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!18 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!19 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!20 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!21 = !{!"any p2 pointer", !12, i64 0}
!22 = !{!"p2 _ZTS8AVStream", !21, i64 0}
!23 = !{!"p2 _ZTS13AVStreamGroup", !21, i64 0}
!24 = !{!"p2 _ZTS9AVChapter", !21, i64 0}
!25 = !{!"long", !8, i64 0}
!26 = !{!"p2 _ZTS9AVProgram", !21, i64 0}
!27 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!28 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!29 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!30 = !{!"AVFormatContext", !17, i64 0, !18, i64 8, !19, i64 16, !12, i64 24, !20, i64 32, !9, i64 40, !9, i64 44, !22, i64 48, !9, i64 56, !23, i64 64, !9, i64 72, !24, i64 80, !13, i64 88, !25, i64 96, !25, i64 104, !25, i64 112, !9, i64 120, !9, i64 124, !9, i64 128, !25, i64 136, !25, i64 144, !13, i64 152, !9, i64 160, !9, i64 164, !26, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !27, i64 192, !25, i64 200, !9, i64 208, !9, i64 212, !28, i64 216, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !25, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !25, i64 304, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !9, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !9, i64 368, !29, i64 376, !29, i64 384, !29, i64 392, !29, i64 400, !9, i64 408, !12, i64 416, !12, i64 424, !25, i64 432, !13, i64 440, !12, i64 448, !12, i64 456, !25, i64 464, !13, i64 472}
!31 = !{!30, !12, i64 24}
!32 = !{!30, !20, i64 32}
!33 = !{!"p1 _ZTS15AVFormatContext", !12, i64 0}
!34 = !{!"p1 _ZTS13StreamContext", !12, i64 0}
!35 = !{!"p1 _ZTS14ChapterContext", !12, i64 0}
!36 = !{!"p1 _ZTS10AVRational", !12, i64 0}
!37 = !{!"p1 _ZTS10AVTreeNode", !12, i64 0}
!38 = !{!"NUTContext", !17, i64 0, !33, i64 8, !8, i64 16, !8, i64 3088, !8, i64 3216, !25, i64 4240, !34, i64 4248, !35, i64 4256, !9, i64 4264, !9, i64 4268, !25, i64 4272, !25, i64 4280, !9, i64 4288, !36, i64 4296, !37, i64 4304, !9, i64 4312, !9, i64 4316, !25, i64 4320, !36, i64 4328, !9, i64 4336, !9, i64 4340, !9, i64 4344}
!39 = !{!38, !33, i64 8}
!40 = !{!38, !9, i64 4264}
!41 = !{!38, !9, i64 4268}
!42 = !{!38, !36, i64 4296}
!43 = !{!"AVRational", !9, i64 0, !9, i64 4}
!44 = !{!"AVIOContext", !17, i64 0, !13, i64 8, !9, i64 16, !13, i64 24, !13, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !25, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !25, i64 104, !13, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !9, i64 144, !9, i64 148, !13, i64 152, !13, i64 160, !12, i64 168, !9, i64 176, !13, i64 184, !25, i64 192, !25, i64 200}
!45 = !{!44, !9, i64 80}
!46 = !{!"short", !8, i64 0}
!47 = !{!"FrameCode", !46, i64 0, !8, i64 2, !46, i64 4, !46, i64 6, !46, i64 8, !8, i64 10, !8, i64 11}
!48 = !{!47, !46, i64 0}
!49 = !{!47, !46, i64 8}
!50 = !{!47, !8, i64 2}
!51 = !{!47, !46, i64 4}
!52 = !{!47, !46, i64 6}
!53 = !{!47, !8, i64 10}
!54 = !{!47, !8, i64 11}
!55 = !{!38, !9, i64 4288}
!56 = !{!13, !13, i64 0}
!57 = !{!38, !9, i64 4336}
!58 = !{!38, !34, i64 4248}
!59 = !{!30, !9, i64 44}
!60 = !{!"p1 long", !12, i64 0}
!61 = !{!"StreamContext", !9, i64 0, !9, i64 4, !25, i64 8, !9, i64 16, !36, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !60, i64 48}
!62 = !{!30, !22, i64 48}
!63 = !{!"p1 _ZTS8AVStream", !12, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!66 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!67 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!68 = !{!"AVPacket", !66, i64 0, !25, i64 8, !25, i64 16, !13, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !67, i64 48, !9, i64 56, !25, i64 64, !25, i64 72, !12, i64 80, !66, i64 88, !43, i64 96}
!69 = !{!"AVStream", !17, i64 0, !9, i64 8, !9, i64 12, !65, i64 16, !12, i64 24, !43, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !9, i64 64, !9, i64 68, !43, i64 72, !27, i64 80, !43, i64 88, !68, i64 96, !9, i64 200, !43, i64 204, !9, i64 212}
!70 = !{!61, !9, i64 32}
!71 = !{!61, !9, i64 36}
!72 = !{!38, !25, i64 4240}
!73 = !{!"p1 _ZTS15PacketListEntry", !12, i64 0}
!74 = !{!"p1 _ZTS8AVPacket", !12, i64 0}
!75 = !{!25, !25, i64 0}
!76 = !{!38, !25, i64 4272}
!77 = !{!61, !9, i64 4}
!78 = !{!"p1 _ZTS12AVBSFContext", !12, i64 0}
!79 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!80 = !{!"", !78, i64 0, !9, i64 8}
!81 = !{!"FFFrac", !25, i64 0, !25, i64 8, !25, i64 16}
!82 = !{!"p1 _ZTS12FFStreamInfo", !12, i64 0}
!83 = !{!"p1 _ZTS12AVIndexEntry", !12, i64 0}
!84 = !{!"p1 _ZTS20AVCodecParserContext", !12, i64 0}
!85 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!86 = !{!"FFStream", !69, i64 0, !33, i64 216, !9, i64 224, !78, i64 232, !9, i64 240, !79, i64 248, !9, i64 256, !80, i64 264, !9, i64 280, !9, i64 284, !81, i64 288, !82, i64 312, !83, i64 320, !9, i64 328, !9, i64 332, !25, i64 336, !25, i64 344, !9, i64 352, !9, i64 356, !9, i64 360, !25, i64 368, !25, i64 376, !25, i64 384, !9, i64 392, !25, i64 400, !25, i64 408, !25, i64 416, !9, i64 424, !9, i64 428, !8, i64 432, !8, i64 568, !8, i64 592, !25, i64 728, !8, i64 736, !8, i64 737, !43, i64 740, !14, i64 752, !73, i64 784, !25, i64 792, !9, i64 800, !9, i64 804, !9, i64 808, !84, i64 816, !74, i64 824, !9, i64 832, !9, i64 836, !25, i64 840, !25, i64 848, !85, i64 856}
!87 = !{!38, !25, i64 4280}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !16}
!90 = !{!14, !9, i64 16}
!91 = !{!14, !13, i64 8}
!92 = distinct !{!92, !16}
!93 = distinct !{!93, !16}
!94 = distinct !{!94, !16}
!95 = distinct !{!95, !16}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !16}
!98 = distinct !{!98, !16}
!99 = distinct !{!99, !16}
!100 = distinct !{!100, !16, !133}
!101 = distinct !{!101, !16}
!102 = distinct !{!102, !16}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !16}
!105 = !{!38, !9, i64 4340}
!106 = !{!38, !9, i64 4344}
!107 = !{!43, !9, i64 0}
!108 = !{!43, !9, i64 4}
!109 = !{!61, !36, i64 24}
!110 = !{!69, !65, i64 16}
!111 = !{!"AVChannelLayout", !9, i64 0, !9, i64 4, !8, i64 8, !12, i64 16}
!112 = !{!"AVCodecParameters", !9, i64 0, !9, i64 4, !9, i64 8, !13, i64 16, !9, i64 24, !67, i64 32, !9, i64 40, !9, i64 44, !25, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !43, i64 80, !43, i64 88, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !111, i64 128, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176}
!113 = !{!112, !9, i64 8}
!114 = !{!112, !9, i64 0}
!115 = !{i64 0, i64 32, !15}
!116 = !{!112, !9, i64 4}
!117 = !{!61, !9, i64 16}
!118 = !{!61, !9, i64 40}
!119 = !{!112, !9, i64 120}
!120 = !{!112, !9, i64 24}
!121 = !{!112, !9, i64 72}
!122 = !{!112, !9, i64 76}
!123 = !{!69, !9, i64 72}
!124 = !{!69, !9, i64 76}
!125 = !{!112, !9, i64 152}
!126 = !{!112, !9, i64 132}
!127 = !{!"PacketList", !73, i64 0, !73, i64 8}
!128 = !{!"FFFormatContext", !30, i64 0, !9, i64 480, !127, i64 488, !25, i64 504, !74, i64 512, !74, i64 520, !9, i64 528, !27, i64 536, !9, i64 544}
!129 = !{!128, !25, i64 504}
!130 = !{!44, !9, i64 144}
!131 = !{!30, !25, i64 104}
!132 = !{!30, !9, i64 300}
!133 = !{!"llvm.loop.peeled.count", i32 1}
!134 = distinct !{!134, !16}
!135 = !{!61, !25, i64 8}
!136 = !{!61, !9, i64 0}
!137 = !{!69, !9, i64 68}
!138 = !{!86, !25, i64 792}
!139 = !{!68, !13, i64 24}
!140 = !{!68, !25, i64 72}
!141 = !{!68, !9, i64 36}
!142 = !{!68, !9, i64 40}
!143 = !{!68, !25, i64 8}
!144 = distinct !{!144, !16}
!145 = distinct !{!145, !16}
!146 = distinct !{!146, !88}
!147 = !{!"Syncpoint", !25, i64 0, !25, i64 8, !25, i64 16}
!148 = !{!147, !25, i64 16}
!149 = !{!"p1 _ZTS9Syncpoint", !12, i64 0}
!150 = !{!149, !149, i64 0}
!151 = !{!86, !83, i64 320}
!152 = !{!"AVIndexEntry", !25, i64 0, !25, i64 8, !9, i64 16, !9, i64 16, !9, i64 20}
!153 = !{!152, !25, i64 0}
!154 = !{!152, !25, i64 8}
!155 = !{!38, !37, i64 4304}
!156 = !{!147, !25, i64 0}
!157 = !{!147, !25, i64 8}
!158 = distinct !{!158, !16}
!159 = distinct !{!159, !16}
!160 = distinct !{!160, !88}
!161 = distinct !{!161, !16}
!162 = !{!"Dispositions", !8, i64 0, !9, i64 12}
!163 = !{!162, !9, i64 12}
!164 = !{!69, !9, i64 64}
!165 = !{!69, !9, i64 204}
!166 = !{!69, !9, i64 208}
!167 = !{!9, !9, i64 0}
!168 = distinct !{!168, !16}
!169 = distinct !{!169, !16}
end_hunk_1
