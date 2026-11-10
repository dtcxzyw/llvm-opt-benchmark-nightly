Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mjpegdec?download=true
inline.NumInlined: 62
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ff_mjpeg_unescape_sos:bb.a
bb.z:                                             ; preds = %.thread155, %.lr.ph
  %.1111 = phi ptr [ %.1, %.thread155 ], [ %.0110165, %.lr.ph ] ; 3 uses
  %.3 = phi ptr [ %.1, %.thread155 ], [ %i.bq, %.lr.ph ] ; 2 uses
  %i.cy = ptrtoint ptr %.3 to i64
  %i.cz = sub i64 %i.q, %i.cy
  %i.da = call ptr @memchr(ptr noundef nonnull %.3, i32 noundef 255, i64 noundef %i.cz) #12 ; 2 uses
  %.not141 = icmp eq ptr %i.da, null
  br i1 %.not141, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !253

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre174 = ptrtoint ptr %.1111 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %.pre-phi175 = phi i64 [ %.pre174, %._crit_edge.loopexit ], [ %i.f, %bb.n ]
  %.0110.lcssa = phi ptr [ %.1111, %._crit_edge.loopexit ], [ %i.b, %bb.n ]
  %i.db = sub i64 %i.q, %.pre-phi175              ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %.tr = trunc i64 %i.db to i32
  %i.dd = shl i32 %.tr, 3
  call void @ff_copy_bits(ptr noundef nonnull %1, ptr noundef %.0110.lcssa, i32 noundef %i.dd) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %._crit_edge, %bb.aa
  %.4 = phi ptr [ %spec.select144, %bb.y ], [ %i.j, %bb.aa ], [ %i.j, %._crit_edge ]
  %i.de = load i32, ptr %i.bn, align 4, !tbaa !259 ; 2 uses
  %i.df = icmp slt i32 %i.de, 32
  br i1 %i.df, label %.lr.ph.i, label %flush_put_bits.exit

.lr.ph.i:                                         ; preds = %bb.ab
  %i.dg = load i32, ptr %1, align 8, !tbaa !260
  %i.dh = shl i32 %i.dg, %i.de                    ; 2 uses
  store i32 %i.dh, ptr %1, align 8, !tbaa !260
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph.i
  %i.di = phi i32 [ %i.dq, %bb.ae ], [ %i.dh, %.lr.ph.i ]
  %i.dj = load ptr, ptr %i.bm, align 8, !tbaa !258 ; 3 uses
  %i.dk = load ptr, ptr %i.bl, align 8, !tbaa !257
  %i.dl = icmp ult ptr %i.dj, %i.dk
  br i1 %i.dl, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 160) #10
  call void @abort() #11
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dm = lshr i32 %i.di, 24
  %i.dn = trunc nuw i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store ptr %i.do, ptr %i.bm, align 8, !tbaa !258
  store i8 %i.dn, ptr %i.dj, align 1, !tbaa !63
  %i.dp = load i32, ptr %1, align 8, !tbaa !260
  %i.dq = shl i32 %i.dp, 8                        ; 2 uses
  store i32 %i.dq, ptr %1, align 8, !tbaa !260
  %i.dr = load i32, ptr %i.bn, align 4, !tbaa !259 ; 2 uses
  %i.ds = add nsw i32 %i.dr, 8
  store i32 %i.ds, ptr %i.bn, align 4, !tbaa !259
  %i.dt = icmp slt i32 %i.dr, 24
  br i1 %i.dt, label %bb.ac, label %flush_put_bits.exit, !llvm.loop !254

flush_put_bits.exit:                              ; preds = %bb.ae, %bb.ab
  %.val = load ptr, ptr %i.bi, align 8, !tbaa !256
  %.val145 = load ptr, ptr %i.bm, align 8, !tbaa !258
  %i.du = ptrtoint ptr %.val145 to i64
  %i.dv = ptrtoint ptr %.val to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %sext158 = shl i64 %i.dw, 32
  %i.dy = ashr exact i64 %sext158, 32
  %i.dz = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ea, i8 0, i64 64, i1 false)
  %i.eb = ptrtoint ptr %.4 to i64
  %i.ec = sub i64 %i.eb, %i.f
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.ee = and i64 %i.ec, 4294967295
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.m, %flush_put_bits.exit
  %.0123 = phi ptr [ %i.au, %bb.m ], [ %i.r, %flush_put_bits.exit ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ] ; 2 uses
  %.0122 = phi i32 [ %i.ay, %bb.m ], [ %i.dx, %flush_put_bits.exit ], [ %i.h, %bb.a ], [ %i.h, %bb.a ], [ %i.h, %bb.a ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %or.cond.i = icmp ugt i32 %.0122, 268435455
  %i.eh = shl nuw nsw i32 %.0122, 3
  %i.ei = select i1 %or.cond.i, i32 -8, i32 %i.eh ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.ei, 2147483135   ; 2 uses
  %i.ej = icmp ne ptr %.0123, null
  %or.cond3.i.i = and i1 %i.ej, %or.cond.i.i      ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %.0123, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.ei, i32 0 ; 2 uses
  %.0.i.i = select i1 %or.cond3.i.i, i32 0, i32 -1094995529
  store ptr %.014.i.i, ptr %i.eg, align 8, !tbaa !128
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.013.i.i, ptr %i.ek, align 4, !tbaa !126
  %i.el = add nuw nsw i32 %.013.i.i, 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.el, ptr %i.em, align 8, !tbaa !127
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.en, align 8, !tbaa !120
  br label %bb.ag

bb.ag:                                            ; preds = %bb.b, %bb.af
  %.0 = phi i32 [ %.0.i.i, %bb.af ], [ -12, %bb.b ]
  ret i32 %.0
}

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ff_copy_bits(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ff_mjpeg_decode_frame_from_buf(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca [64 x i8], align 1                ; 3 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 66 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1524
  store i32 0, ptr %i.h, align 4, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1784
  store i64 0, ptr %i.i, align 8, !tbaa !312
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i32 %5, ptr %i.j, align 16, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1816 ; 6 uses
  tail call void @av_exif_free(ptr noundef nonnull %i.k) #10
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1832 ; 6 uses
  tail call void @av_freep(ptr noundef nonnull %i.l) #10
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 960 ; 4 uses
  store i32 -1, ptr %i.m, align 16, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1856 ; 9 uses
  %i.o = load i32, ptr %i.n, align 16, !tbaa !134 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 1848 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %reset_icc_profile.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.r = icmp sgt i32 %i.o, 0
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !135
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i
  tail call void @av_freep(ptr noundef %i.t) #10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = load i32, ptr %i.n, align 16, !tbaa !134
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next.i, %i.v
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  tail call void @av_freep(ptr noundef nonnull %i.p) #10
  br label %reset_icc_profile.exit

reset_icc_profile.exit:                           ; preds = %bb.b, %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 1860
  store i32 0, ptr %i.x, align 4, !tbaa !313
  store i32 0, ptr %i.n, align 16, !tbaa !134
  br label %bb.c

bb.c:                                             ; preds = %reset_icc_profile.exit, %bb.a
  %i.y = sext i32 %5 to i64
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y ; 6 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 4 uses
  %i.ab = getelementptr i8, ptr %i.g, i64 40      ; 56 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 35 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 1768
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 1792 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 1760
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 1764 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 956
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 952
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 928 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 944 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 924 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 1264 ; 7 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1848 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 1860 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 912 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 916 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 920 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 1752 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 1776 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 1880
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 1888
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.g, i64 948     ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 1024 ; 14 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 1256 ; 13 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 1272 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 1204
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 1060
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 1208
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 1076
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 1008 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 1012 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 1488
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 904 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 908 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 1028
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 1424
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 1656
  %scevgep = getelementptr i8, ptr %i.g, i64 952
  %scevgep1065 = getelementptr i8, ptr %i.g, i64 48 ; 2 uses
  br label %.loopexit747

.loopexit747:                                     ; preds = %.loopexit747.backedge, %bb.c
  %.0711 = phi ptr [ %4, %bb.c ], [ %.0711.be, %.loopexit747.backedge ] ; 4 uses
  %.1567 = phi i32 [ 248, %bb.c ], [ %.1567.be, %.loopexit747.backedge ]
  %i.bs = icmp ult ptr %.0711, %i.z
  br i1 %i.bs, label %bb.d, label %ff_mjpeg_find_marker.exit.thread

bb.d:                                             ; preds = %.loopexit747
  %i.bt = ptrtoint ptr %.0711 to i64
  %i.bu = sub i64 %i.aa, %i.bt
  %i.bv = call ptr @memchr(ptr noundef %.0711, i32 noundef 255, i64 noundef %i.bu) #12 ; 2 uses
  %.not24.i = icmp eq ptr %i.bv, null
  br i1 %.not24.i, label %ff_mjpeg_find_marker.exit.thread, label %.lr.ph.i676

.lr.ph.i676:                                      ; preds = %bb.d, %.loopexit.i
  %i.bw = phi ptr [ %i.cf, %.loopexit.i ], [ %i.bv, %bb.d ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 3 uses
  %i.by = icmp ult ptr %i.bx, %i.z
  br i1 %i.by, label %.lr.ph1035, label %.loopexit.i

bb.e:                                             ; preds = %.lr.ph1035
  %i.bz = icmp ult ptr %i.ca, %i.z
  br i1 %i.bz, label %.lr.ph1035, label %.loopexit.i, !llvm.loop !2

.lr.ph1035:                                       ; preds = %.lr.ph.i676, %bb.e
  %.1.i1034 = phi ptr [ %i.ca, %bb.e ], [ %i.bx, %.lr.ph.i676 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i1034, i64 1 ; 23 uses
  %i.cb = load i8, ptr %.1.i1034, align 1, !tbaa !63 ; 7 uses
  %.not18.i = icmp eq i8 %i.cb, -1
  br i1 %.not18.i, label %bb.e, label %bb.f, !llvm.loop !2

bb.f:                                             ; preds = %.lr.ph1035
  %i.cc = icmp ugt i8 %i.cb, -65
  br i1 %i.cc, label %ff_mjpeg_find_marker.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.e, %.lr.ph.i676, %bb.f
  %.2.i = phi ptr [ %i.ca, %bb.f ], [ %i.bx, %.lr.ph.i676 ], [ %i.ca, %bb.e ] ; 2 uses
  %i.cd = ptrtoint ptr %.2.i to i64
  %i.ce = sub i64 %i.aa, %i.cd
  %i.cf = call ptr @memchr(ptr noundef nonnull %.2.i, i32 noundef 255, i64 noundef %i.ce) #12 ; 2 uses
  %.not.i677 = icmp eq ptr %i.cf, null
  br i1 %.not.i677, label %ff_mjpeg_find_marker.exit.thread, label %.lr.ph.i676, !llvm.loop !3

ff_mjpeg_find_marker.exit:                        ; preds = %bb.f
  %i.cg = zext i8 %i.cb to i32                    ; 11 uses
  %i.ch = ptrtoint ptr %i.ca to i64
  %i.ci = sub i64 %i.aa, %i.ch                    ; 6 uses
  %i.cj = icmp sgt i64 %i.ci, 268435455
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ff_mjpeg_find_marker.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.53, i32 noundef %i.cg, i64 noundef %i.ci, i32 noundef %5) #10
  br label %.critedge

bb.h:                                             ; preds = %ff_mjpeg_find_marker.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.54, i32 noundef %i.cg, i64 noundef %i.ci) #10
  %i.ck = and i64 %i.ci, 2147483648
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bytestream2_init.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef 141) #10
  call void @abort() #11
  unreachable

bytestream2_init.exit:                            ; preds = %bb.h
  store ptr %i.ca, ptr %i.ab, align 8, !tbaa !56
  store ptr %i.ca, ptr %i.ac, align 8, !tbaa !57
  %i.cm = and i64 %i.ci, 2147483647
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cm
  store ptr %i.cn, ptr %i.ad, align 16, !tbaa !58
  %i.co = load i32, ptr %i.ae, align 4, !tbaa !70
  %i.cp = and i32 %i.co, 256
  %.not636 = icmp eq i32 %i.cp, 0
  br i1 %.not636, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bytestream2_init.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.55, i32 noundef %i.cg) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bytestream2_init.exit
  %i.cq = and i32 %i.cg, 248
  %or.cond = icmp eq i32 %i.cq, 208
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = and i32 %i.cg, 7
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.56, i32 noundef %i.cr) #10
  br label %mjpeg_decode_com.exit

bb.m:                                             ; preds = %bb.k
  %i.cs = and i32 %i.cg, 240
  %or.cond5 = icmp eq i32 %i.cs, 224
  br i1 %or.cond5, label %bb.n, label %bb.cs

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ct = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2 ; 3 uses
  store ptr %i.cu, ptr %i.ab, align 8, !tbaa !66
  %i.cv = load i16, ptr %i.ct, align 1, !tbaa !63
  %i.cw = call i16 @llvm.bswap.i16(i16 %i.cv)     ; 11 uses
  %i.cx = zext i16 %i.cw to i32                   ; 14 uses
  %i.cy = icmp ult i16 %i.cw, 2
  br i1 %i.cy, label %mjpeg_parse_len.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %i.ad, align 16, !tbaa !58
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cu to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add nsw i32 %i.cx, -2                   ; 3 uses
  %i.df = icmp sgt i32 %i.de, %i.dd
  br i1 %i.df, label %mjpeg_parse_len.exit.thread.i, label %mjpeg_parse_len.exit.i

mjpeg_parse_len.exit.thread.i:                    ; preds = %bb.o, %bb.n
  %i.dg = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dg, i32 noundef 16, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.99, i32 noundef %i.cx) #10
  br label %bb.cr

mjpeg_parse_len.exit.i:                           ; preds = %bb.o
  %i.dh = icmp ult i16 %i.cw, 6
  br i1 %i.dh, label %bb.p, label %bb.r

bb.p:                                             ; preds = %mjpeg_parse_len.exit.i
  %i.di = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 528
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !73
  %i.dl = and i32 %i.dk, 8
  %.not238.i = icmp eq i32 %i.dl, 0
  br i1 %.not238.i, label %bb.q, label %bb.cr

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.di, i32 noundef 40, ptr noundef nonnull @.str.100, i32 noundef %i.de) #10
  br label %.thread289.i

bb.r:                                             ; preds = %mjpeg_parse_len.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 6
  store ptr %i.dm, ptr %i.ab, align 8, !tbaa !66
  %i.dn = load i32, ptr %i.cu, align 1, !tbaa !63 ; 9 uses
  %i.do = call i32 @llvm.bswap.i32(i32 %i.dn)     ; 2 uses
  %i.dp = add nsw i32 %i.cx, -6                   ; 10 uses
  %i.dq = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 524
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !70
  %i.dt = and i32 %i.ds, 256
  %.not.i678 = icmp eq i32 %i.dt, 0
  br i1 %.not.i678, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.du = call ptr @av_fourcc_make_string(ptr noundef nonnull %i.a, i32 noundef %i.dn) #10
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.dq, i32 noundef 48, ptr noundef nonnull @.str.101, ptr noundef %i.du, i32 noundef %i.do, i32 noundef %i.dp) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  switch i32 %i.do, label %bb.af [
    i32 1096173873, label %bb.u
    i32 1246120262, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.dv = icmp eq i32 %i.dp, 0
  br i1 %i.dv, label %mjpeg_decode_app.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store ptr %i.dx, ptr %i.ab, align 8, !tbaa !66
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !63
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add nsw i32 %i.cx, -7
  %i.eb = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.eb, i32 noundef 48, ptr noundef nonnull @.str.103, i32 noundef %i.dz) #10
  br label %.thread289.i

bb.w:                                             ; preds = %bb.t
  %i.ec = icmp ult i16 %i.cw, 14
  br i1 %i.ec, label %.thread289.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 2 ; 2 uses
  store ptr %i.ef, ptr %i.ab, align 8, !tbaa !66
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !63
  %i.eh = zext i8 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 3
  store ptr %i.ei, ptr %i.ab, align 8, !tbaa !66
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !63
  %i.ek = zext i8 %i.ej to i32
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 6 ; 2 uses
  store ptr %i.em, ptr %i.ab, align 8, !tbaa !66
  %i.en = load i16, ptr %i.el, align 1, !tbaa !63 ; 2 uses
  %i.eo = call i16 @llvm.bswap.i16(i16 %i.en)
  %i.ep = zext i16 %i.eo to i32                   ; 2 uses
  %i.eq = load ptr, ptr %i.af, align 8, !tbaa !49 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 128 ; 2 uses
  store i32 %i.ep, ptr %i.er, align 8, !tbaa !314
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.es, ptr %i.ab, align 8, !tbaa !66
  %i.et = load i16, ptr %i.em, align 1, !tbaa !63 ; 2 uses
  %i.eu = call i16 @llvm.bswap.i16(i16 %i.et)
  %i.ev = zext i16 %i.eu to i32                   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 132 ; 2 uses
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !315
  %i.ex = icmp eq i16 %i.en, 0
  %i.ey = icmp eq i16 %i.et, 0
  %or.cond299.i = select i1 %i.ex, i1 true, i1 %i.ey
  br i1 %or.cond299.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.er, align 8, !tbaa !314
  store i32 1, ptr %i.ew, align 4, !tbaa !315
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ez = phi i32 [ %i.ev, %bb.x ], [ 1, %bb.y ]
  %i.fa = phi i32 [ %i.ep, %bb.x ], [ 0, %bb.y ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 524
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !70
  %i.fd = and i32 %i.fc, 1
  %.not237.i = icmp eq i32 %i.fd, 0
  br i1 %.not237.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
end_hunk_0
begin_hunk_1_@ff_mjpeg_decode_frame_from_buf:bb.a
  %indvars.iv.i688.prol = phi i64 [ %indvars.iv.next.i689.prol, %scalar.ph1066.prol ], [ %indvars.iv.i688.ph, %scalar.ph1066.preheader ] ; 2 uses
  %i.nb = phi ptr [ %i.nc, %scalar.ph1066.prol ], [ %.ph, %scalar.ph1066.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1066.prol ], [ 0, %scalar.ph1066.preheader ]
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 1 ; 3 uses
  store ptr %i.nc, ptr %i.ab, align 8, !tbaa !66
  %i.nd = load i8, ptr %i.nb, align 1, !tbaa !63
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv.i688.prol
  store i8 %i.nd, ptr %i.ne, align 1, !tbaa !63
  %indvars.iv.next.i689.prol = add nuw nsw i64 %indvars.iv.i688.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph1066.prol.loopexit, label %scalar.ph1066.prol, !llvm.loop !266

scalar.ph1066.prol.loopexit:                      ; preds = %scalar.ph1066.prol, %scalar.ph1066.preheader
  %indvars.iv.i688.unr = phi i64 [ %indvars.iv.i688.ph, %scalar.ph1066.preheader ], [ %indvars.iv.next.i689.prol, %scalar.ph1066.prol ]
  %.unr = phi ptr [ %.ph, %scalar.ph1066.preheader ], [ %i.nc, %scalar.ph1066.prol ]
  %i.nf = sub nsw i64 %indvars.iv.i688.ph, %wide.trip.count.i
  %i.ng = icmp ugt i64 %i.nf, -4
  br i1 %i.ng, label %._crit_edge.i690, label %scalar.ph1066

scalar.ph1066:                                    ; preds = %scalar.ph1066.prol.loopexit, %scalar.ph1066
  %indvars.iv.i688 = phi i64 [ %indvars.iv.next.i689.3, %scalar.ph1066 ], [ %indvars.iv.i688.unr, %scalar.ph1066.prol.loopexit ] ; 5 uses
  %i.nh = phi ptr [ %i.nt, %scalar.ph1066 ], [ %.unr, %scalar.ph1066.prol.loopexit ] ; 5 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 1 ; 2 uses
  store ptr %i.ni, ptr %i.ab, align 8, !tbaa !66
  %i.nj = load i8, ptr %i.nh, align 1, !tbaa !63
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv.i688
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !63
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 2 ; 2 uses
  store ptr %i.nl, ptr %i.ab, align 8, !tbaa !66
  %i.nm = load i8, ptr %i.ni, align 1, !tbaa !63
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv.i688
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  store i8 %i.nm, ptr %i.no, align 1, !tbaa !63
  %i.np = getelementptr inbounds nuw i8, ptr %i.nh, i64 3 ; 2 uses
  store ptr %i.np, ptr %i.ab, align 8, !tbaa !66
  %i.nq = load i8, ptr %i.nl, align 1, !tbaa !63
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv.i688
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  store i8 %i.nq, ptr %i.ns, align 1, !tbaa !63
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nh, i64 4 ; 2 uses
  store ptr %i.nt, ptr %i.ab, align 8, !tbaa !66
  %i.nu = load i8, ptr %i.np, align 1, !tbaa !63
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv.i688
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 3
  store i8 %i.nu, ptr %i.nw, align 1, !tbaa !63
  %indvars.iv.next.i689.3 = add nuw nsw i64 %indvars.iv.i688, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i689.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i690, label %scalar.ph1066, !llvm.loop !267

._crit_edge.i690:                                 ; preds = %scalar.ph1066.prol.loopexit, %scalar.ph1066, %middle.block1087, %.preheader.i686
  %.031.lcssa.i = phi i64 [ 0, %.preheader.i686 ], [ %wide.trip.count.i, %middle.block1087 ], [ %wide.trip.count.i, %scalar.ph1066 ], [ %wide.trip.count.i, %scalar.ph1066.prol.loopexit ]
  %i.nx = getelementptr i8, ptr %i.mr, i64 %.031.lcssa.i ; 2 uses
  %i.ny = getelementptr i8, ptr %i.nx, i64 -1     ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !63
  %i.oa = icmp eq i8 %i.nz, 10
  br i1 %i.oa, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %._crit_edge.i690
  store i8 0, ptr %i.ny, align 1, !tbaa !63
  br label %bb.cy

bb.cx:                                            ; preds = %._crit_edge.i690
  store i8 0, ptr %i.nx, align 1, !tbaa !63
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.ob = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 524
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !70
  %i.oe = and i32 %i.od, 1
  %.not36.i = icmp eq i32 %i.oe, 0
  br i1 %.not36.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ob, i32 noundef 32, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.mr) #10
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.of = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.mr, ptr noundef nonnull dereferenceable(5) @.str.139, i64 noundef 4) #12
  %.not37.i = icmp eq i32 %i.of, 0
  br i1 %.not37.i, label %bb.db, label %bb.df

bb.db:                                            ; preds = %bb.da
  %i.og = icmp ugt i16 %i.me, 14
  br i1 %i.og, label %bb.dc, label %.critedge.thread.i.i

bb.dc:                                            ; preds = %bb.db
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.oi, label %.critedge.i.i [
    i8 1, label %.critedge.i.sink.split.i
    i8 2, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc
  br label %.critedge.i.sink.split.i

.critedge.i.sink.split.i:                         ; preds = %bb.dd, %bb.dc
  %.sink.i692 = phi i32 [ 0, %bb.dd ], [ 1, %bb.dc ]
  store i32 %.sink.i692, ptr %i.aj, align 4, !tbaa !59
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.sink.split.i, %bb.dc
  %i.oj = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 524
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !70
  %i.om = and i32 %i.ol, 1
  %.not.i.i = icmp eq i32 %i.om, 0
  br i1 %.not.i.i, label %parse_avid.exit.i, label %bb.de

.critedge.thread.i.i:                             ; preds = %bb.db
  %i.on = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 524
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !70
  %i.oq = and i32 %i.op, 1
  %.not10.i.i = icmp eq i32 %i.oq, 0
  br i1 %.not10.i.i, label %parse_avid.exit.i, label %.thread.i.i

bb.de:                                            ; preds = %.critedge.i.i
  %i.or = zext i8 %i.oi to i32
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.de, %.critedge.thread.i.i
  %i.os = phi ptr [ %i.oj, %bb.de ], [ %i.on, %.critedge.thread.i.i ]
  %i.ot = phi i32 [ %i.or, %bb.de ], [ -1, %.critedge.thread.i.i ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.os, i32 noundef 32, ptr noundef nonnull @.str.82, i32 noundef %i.mm, i32 noundef %i.ot) #10
  br label %parse_avid.exit.i

bb.df:                                            ; preds = %bb.da
  %i.ou = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mr, ptr noundef nonnull dereferenceable(10) @.str.140) #12
  %.not38.i = icmp eq i32 %i.ou, 0
  br i1 %.not38.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 1, ptr %i.ai, align 16, !tbaa !102
  br label %parse_avid.exit.i

bb.dh:                                            ; preds = %bb.df
  %i.ov = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.mr, ptr noundef nonnull dereferenceable(33) @.str.141, i64 noundef 32) #12
  %.not39.i = icmp eq i32 %i.ov, 0
  br i1 %.not39.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ow = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 28
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !60
  %.not40.i = icmp eq i32 %i.oy, 0
  br i1 %.not40.i, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.oz = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.mr, ptr noundef nonnull dereferenceable(21) @.str.142, i64 noundef 20) #12
  %.not41.i = icmp eq i32 %i.oz, 0
  br i1 %.not41.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj, %bb.di
  store i32 1, ptr %i.ah, align 16, !tbaa !65
  br label %parse_avid.exit.i

bb.dl:                                            ; preds = %bb.dj
  %i.pa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mr, ptr noundef nonnull dereferenceable(14) @.str.143) #12
  %.not42.i = icmp eq i32 %i.pa, 0
  br i1 %.not42.i, label %bb.dm, label %parse_avid.exit.i

bb.dm:                                            ; preds = %bb.dl
  %i.pb = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 128
  store i32 1, ptr %i.pc, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pb, i64 132
  store i32 2, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !55
  store i32 2, ptr %i.ag, align 8, !tbaa !92
  br label %parse_avid.exit.i

parse_avid.exit.i:                                ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dg, %.thread.i.i, %.critedge.thread.i.i, %.critedge.i.i
  call void @av_free(ptr noundef nonnull %i.mr) #10
  br label %mjpeg_decode_com.exit

bb.dn:                                            ; preds = %bb.cs
  %i.pd = call i32 @ff_mjpeg_decode_dqt(ptr noundef nonnull %i.g) ; 2 uses
  %i.pe = icmp slt i32 %i.pd, 0
  br i1 %i.pe, label %.critedge, label %mjpeg_decode_com.exit

mjpeg_decode_com.exit:                            ; preds = %parse_avid.exit.i, %mjpeg_parse_len.exit.i684, %mjpeg_decode_app.exit.thread, %bb.cs, %bb.cr, %bb.dn, %bb.l
  %i.pf = load i32, ptr %i.ar, align 8, !tbaa !104
  %i.pg = icmp eq i32 %i.pf, 48
  br i1 %i.pg, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %mjpeg_decode_com.exit
  switch i8 %i.cb, label %bb.ff [
    i8 -64, label %bb.dp
    i8 -63, label %bb.dp
    i8 -62, label %bb.dp
    i8 -61, label %bb.dp
    i8 -9, label %bb.dp
  ]

bb.dp:                                            ; preds = %bb.do, %bb.do, %bb.do, %bb.do, %bb.do, %mjpeg_decode_com.exit
  switch i8 %i.cb, label %bb.fc [
    i8 -40, label %bb.dq
    i8 -60, label %bb.dr
    i8 -56, label %bb.fb
    i8 -49, label %bb.fb
    i8 -62, label %bb.du
    i8 -61, label %bb.dv
    i8 -9, label %bb.dw
    i8 -8, label %bb.dx
    i8 -39, label %bb.dz
    i8 -38, label %bb.ey
    i8 -35, label %bb.fa
    i8 -59, label %bb.fb
    i8 -58, label %bb.fb
    i8 -57, label %bb.fb
    i8 -55, label %bb.fb
    i8 -54, label %bb.fb
    i8 -53, label %bb.fb
    i8 -51, label %bb.fb
    i8 -50, label %bb.fb
    i8 -64, label %bb.dt
    i8 -63, label %6
  ]

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr %i.aw, align 8, !tbaa !125
  store ptr %i.ca, ptr %i.az, align 8, !tbaa !109
  store i64 %i.ci, ptr %i.ba, align 16, !tbaa !110
  br label %bb.fc

bb.dr:                                            ; preds = %bb.dp
  %i.ph = call i32 @ff_mjpeg_decode_dht(ptr noundef nonnull %i.g) ; 2 uses
  %i.pi = icmp slt i32 %i.ph, 0
  br i1 %i.pi, label %bb.ds, label %bb.fc

bb.ds:                                            ; preds = %bb.dr
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.58) #10
  br label %.loopexit746

6:                                                ; preds = %bb.dp
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dp, %6
  %storemerge = phi i32 [ 193, %6 ], [ 192, %bb.dp ]
  store i32 %storemerge, ptr %i.as, align 8, !tbaa !330
  store i32 0, ptr %i.at, align 16, !tbaa !77
  store i32 0, ptr %i.au, align 4, !tbaa !83
  store i32 0, ptr %i.av, align 8, !tbaa !82
  %i.pj = call i32 @ff_mjpeg_decode_sof(ptr noundef nonnull %i.g) ; 2 uses
  %i.pk = icmp slt i32 %i.pj, 0
  br i1 %i.pk, label %.loopexit746, label %bb.fc

bb.du:                                            ; preds = %bb.dp
  store i32 194, ptr %i.as, align 8, !tbaa !330
  store i32 0, ptr %i.at, align 16, !tbaa !77
  store i32 0, ptr %i.au, align 4, !tbaa !83
  store i32 1, ptr %i.av, align 8, !tbaa !82
  %i.pl = call i32 @ff_mjpeg_decode_sof(ptr noundef nonnull %i.g) ; 2 uses
  %i.pm = icmp slt i32 %i.pl, 0
  br i1 %i.pm, label %.loopexit746, label %bb.fc

bb.dv:                                            ; preds = %bb.dp
  store i32 195, ptr %i.as, align 8, !tbaa !330
  store i32 1, ptr %i.at, align 16, !tbaa !77
  store i32 0, ptr %i.au, align 4, !tbaa !83
  store i32 0, ptr %i.av, align 8, !tbaa !82
  %i.pn = call i32 @ff_mjpeg_decode_sof(ptr noundef nonnull %i.g) ; 2 uses
  %i.po = icmp slt i32 %i.pn, 0
  br i1 %i.po, label %.loopexit746, label %bb.fc

bb.dw:                                            ; preds = %bb.dp
  store i32 247, ptr %i.as, align 8, !tbaa !330
  store i32 1, ptr %i.at, align 16, !tbaa !77
  store i32 1, ptr %i.au, align 4, !tbaa !83
  store i32 0, ptr %i.av, align 8, !tbaa !82
  %i.pp = call i32 @ff_mjpeg_decode_sof(ptr noundef nonnull %i.g) ; 2 uses
  %i.pq = icmp slt i32 %i.pp, 0
  br i1 %i.pq, label %.loopexit746, label %bb.fc

bb.dx:                                            ; preds = %bb.dp
  %i.pr = call i32 @ff_jpegls_decode_lse(ptr noundef nonnull %i.g) #10 ; 3 uses
  %i.ps = icmp slt i32 %i.pr, 0
  br i1 %i.ps, label %.loopexit746, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pt = icmp eq i32 %i.pr, 1
  br i1 %i.pt, label %.loopexit747.backedge, label %bb.fc

bb.dz:                                            ; preds = %bb.dp, %bb.fh
  %.1712 = phi ptr [ %.4715, %bb.fh ], [ %i.ca, %bb.dp ] ; 6 uses
  %.2568 = phi i32 [ %.5571, %bb.fh ], [ 217, %bb.dp ] ; 2 uses
  %i.pu = load ptr, ptr %i.bb, align 8, !tbaa !106
  %.not640 = icmp eq ptr %i.pu, null
  br i1 %.not640, label %bb.ea, label %mjpeg_idct_scan_progressive_ac.exit

bb.ea:                                            ; preds = %bb.dz
  %i.pv = load i32, ptr %i.av, align 8, !tbaa !82
  %.not641 = icmp eq i32 %i.pv, 0
  br i1 %.not641, label %mjpeg_idct_scan_progressive_ac.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pw = load i32, ptr %i.ax, align 16, !tbaa !74
  %.not642 = icmp eq i32 %i.pw, 0
  br i1 %.not642, label %mjpeg_idct_scan_progressive_ac.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.px = load i32, ptr %i.ap, align 16, !tbaa !52
  %.not643 = icmp eq i32 %i.px, 0
  br i1 %.not643, label %mjpeg_idct_scan_progressive_ac.exit.thread, label %bb.ed

mjpeg_idct_scan_progressive_ac.exit.thread:       ; preds = %bb.ec
  store i32 0, ptr %i.ax, align 16, !tbaa !74
  br label %bb.em

bb.ed:                                            ; preds = %bb.ec
  %i.py = load i32, ptr %i.bd, align 16, !tbaa !86
  %i.pz = icmp sgt i32 %i.py, 0
  br i1 %i.pz, label %.lr.ph79.i, label %mjpeg_idct_scan_progressive_ac.exit.thread979

mjpeg_idct_scan_progressive_ac.exit.thread979:    ; preds = %bb.ed
  store i32 0, ptr %i.ax, align 16, !tbaa !74
  br label %bb.en

.lr.ph79.i:                                       ; preds = %bb.ed
  %i.qa = load i32, ptr %i.at, align 16, !tbaa !77
  %.not.i694 = icmp eq i32 %i.qa, 0
  %i.qb = load i32, ptr %i.bc, align 4, !tbaa !91
  %i.qc = icmp sgt i32 %i.qb, 8
  %i.qd = select i1 %.not.i694, i32 3, i32 0      ; 2 uses
  %i.qe = select i1 %i.qc, i32 16, i32 8
  br label %bb.ee

bb.ee:                                            ; preds = %._crit_edge76.split.i, %.lr.ph79.i
  %indvars.iv.i695 = phi i64 [ 0, %.lr.ph79.i ], [ %indvars.iv.next.i696, %._crit_edge76.split.i ] ; 9 uses
  %i.qf = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %indvars.iv.i695
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !66 ; 3 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i695
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !55 ; 4 uses
  %i.qk = load i32, ptr %i.bg, align 4, !tbaa !88
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i695
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !55
  %i.qn = sdiv i32 %i.qk, %i.qm
  %i.qo = load i32, ptr %i.bi, align 8, !tbaa !89
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i695
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !55
  %i.qr = sdiv i32 %i.qo, %i.qq
  %i.qs = load i32, ptr %i.bk, align 16, !tbaa !80
  %i.qt = shl i32 %i.qn, %i.qd                    ; 2 uses
  %i.qu = add i32 %i.qt, -1
  %i.qv = add i32 %i.qu, %i.qs
  %i.qw = sdiv i32 %i.qv, %i.qt                   ; 2 uses
  %i.qx = load i32, ptr %i.bl, align 4, !tbaa !81
  %i.qy = shl i32 %i.qr, %i.qd                    ; 2 uses
  %i.qz = add i32 %i.qy, -1
  %i.ra = add i32 %i.qz, %i.qx
  %i.rb = sdiv i32 %i.ra, %i.qy                   ; 2 uses
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i695
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !119
  %.not65.i = icmp eq i64 %i.rd, -1
  br i1 %.not65.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.re = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.rf = trunc nuw nsw i64 %indvars.iv.i695 to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.re, i32 noundef 24, ptr noundef nonnull @.str.144, i32 noundef %i.rf) #10
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.rg = load i32, ptr %i.bn, align 8, !tbaa !79
  %.not66.i = icmp eq i32 %i.rg, 0
  br i1 %.not66.i, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.rh = load i32, ptr %i.bo, align 4, !tbaa !85
  %.not67.i = icmp eq i32 %i.rh, 0
  br i1 %.not67.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ri = ashr i32 %i.qj, 1
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds i8, ptr %i.qh, i64 %i.rj
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %bb.eg
  %.061.i = phi ptr [ %i.rk, %bb.ei ], [ %i.qh, %bb.eh ], [ %i.qh, %bb.eg ]
  %i.rl = icmp sgt i32 %i.rb, 0
  br i1 %i.rl, label %.lr.ph75.i, label %._crit_edge76.split.i

.lr.ph75.i:                                       ; preds = %bb.ej
  %i.rm = shl i32 %i.qj, 3
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i695
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i695
  %i.rp = icmp sgt i32 %i.qw, 0
  %i.rq = sext i32 %i.qj to i64                   ; 4 uses
  br i1 %i.rp, label %.lr.ph.preheader.i, label %._crit_edge76.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph75.i
  %.pre.i697 = load ptr, ptr %i.af, align 8, !tbaa !49
  %.phi.trans.insert.i698 = getelementptr inbounds nuw i8, ptr %.pre.i697, i64 720
  %.pre84.i = load i32, ptr %.phi.trans.insert.i698, align 8, !tbaa !78
  %stride.check = icmp slt i32 %i.qj, 0
  br label %.lr.ph.i699

.lr.ph.i699:                                      ; preds = %._crit_edge.i701, %.lr.ph.preheader.i
  %i.rr = phi i32 [ %i.ud, %._crit_edge.i701 ], [ %.pre84.i, %.lr.ph.preheader.i ]
  %.06373.i = phi i32 [ %i.uj, %._crit_edge.i701 ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.rs = mul i32 %i.rm, %.06373.i
  %i.rt = ashr i32 %i.rs, %i.rr
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds i8, ptr %.061.i, i64 %i.ru
  %i.rw = load i32, ptr %i.rn, align 4, !tbaa !55
  %i.rx = mul nsw i32 %i.rw, %.06373.i
  %i.ry = load ptr, ptr %i.ro, align 8, !tbaa !105
  %i.rz = sext i32 %i.rx to i64
  %i.sa = getelementptr inbounds [128 x i8], ptr %i.ry, i64 %i.rz
  br label %bb.ek

bb.ek:                                            ; preds = %shift_output.exit.i, %.lr.ph.i699
  %.072.i = phi ptr [ %i.sa, %.lr.ph.i699 ], [ %i.ui, %shift_output.exit.i ] ; 2 uses
  %.06071.i = phi ptr [ %i.rv, %.lr.ph.i699 ], [ %i.ug, %shift_output.exit.i ] ; 6 uses
  %.06470.i = phi i32 [ 0, %.lr.ph.i699 ], [ %i.uh, %shift_output.exit.i ]
  %i.sb = load ptr, ptr %i.br, align 8, !tbaa !133
  call void %i.sb(ptr noundef %.06071.i, i64 noundef %i.rq, ptr noundef %.072.i) #10, !inline_history !268
  %i.sc = load i32, ptr %i.bc, align 4, !tbaa !91 ; 3 uses
  %i.sd = and i32 %i.sc, 7
  %.not68.i = icmp eq i32 %i.sd, 0
  %.pre86.i = load ptr, ptr %i.af, align 8, !tbaa !49 ; 5 uses
  br i1 %.not68.i, label %shift_output.exit.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.se = getelementptr inbounds nuw i8, ptr %.pre86.i, i64 720
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !78 ; 5 uses
  %i.sg = lshr i32 8, %i.sf                       ; 2 uses
  %i.sh = icmp sgt i32 %i.sc, 8
  %.not37.i.i = icmp ugt i32 %i.sf, 3             ; 2 uses
  br i1 %i.sh, label %.preheader27.i.i, label %.preheader29.i.i

.preheader29.i.i:                                 ; preds = %bb.el
  br i1 %.not37.i.i, label %shift_output.exit.i, label %.preheader28.preheader.i.i

.preheader28.preheader.i.i:                       ; preds = %.preheader29.i.i
  %wide.trip.count43.i.i = zext nneg i32 %i.sg to i64 ; 6 uses
  %i.si = add nsw i64 %wide.trip.count43.i.i, -1  ; 2 uses
  %i.sj = mul nsw i64 %i.si, %i.rq
  %i.sk = getelementptr i8, ptr %.06071.i, i64 %i.sj
  %scevgep1037 = getelementptr i8, ptr %i.sk, i64 %wide.trip.count43.i.i
  %min.iters.check1039 = icmp ugt i32 %i.sf, 1
  %bound0 = icmp ult ptr %.06071.i, %scevgep
  %bound1 = icmp ult ptr %i.bc, %scevgep1037
  %found.conflict = and i1 %bound0, %bound1
  %i.sl = or i1 %found.conflict, %stride.check
  %xtraiter1336 = and i64 %wide.trip.count43.i.i, 1
  %i.sm = icmp eq i64 %i.si, 0
  %unroll_iter = and i64 %wide.trip.count43.i.i, 14
  %lcmp.mod1337.not = icmp eq i64 %xtraiter1336, 0
  %lcmp.mod1338 = icmp eq i32 %i.sf, 3
  br label %.preheader28.i.i

.preheader27.i.i:                                 ; preds = %bb.el
  br i1 %.not37.i.i, label %shift_output.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader27.i.i
  %i.sn = sub nsw i32 16, %i.sc                   ; 2 uses
  %wide.trip.count54.i.i = zext nneg i32 %i.sg to i64 ; 3 uses
  %min.iters.check.not = icmp eq i32 %i.sf, 0
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.sn, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %middle.block, %.preheader.lr.ph.i.i
  %indvars.iv51.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next52.i.i, %middle.block ] ; 2 uses
  %i.so = mul nsw i64 %indvars.iv51.i.i, %i.rq
  %invariant.gep33.i.i = getelementptr i8, ptr %.06071.i, i64 %i.so ; 2 uses
  br i1 %min.iters.check.not, label %vector.body, label %scalar.ph

vector.body:                                      ; preds = %.preheader.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.sp = shl nuw nsw i64 %index, 1
  %i.sq = getelementptr i8, ptr %invariant.gep33.i.i, i64 %i.sp ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.sq, align 2, !tbaa !72
  %i.sr = zext <8 x i16> %wide.load to <8 x i32>
  %i.ss = shl nuw nsw <8 x i32> %i.sr, %broadcast.splat
  %i.st = trunc <8 x i32> %i.ss to <8 x i16>
  store <8 x i16> %i.st, ptr %i.sq, align 2, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.su = icmp eq i64 %index.next, %wide.trip.count54.i.i
  br i1 %i.su, label %middle.block, label %vector.body, !llvm.loop !269

scalar.ph:                                        ; preds = %.preheader.i.i, %scalar.ph
  %indvars.iv45.i.i = phi i64 [ %indvars.iv.next46.i.i, %scalar.ph ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.sv = shl nuw nsw i64 %indvars.iv45.i.i, 1
  %gep34.i.i = getelementptr i8, ptr %invariant.gep33.i.i, i64 %i.sv ; 2 uses
  %i.sw = load i16, ptr %gep34.i.i, align 2, !tbaa !72
  %i.sx = zext i16 %i.sw to i32
  %i.sy = shl nuw nsw i32 %i.sx, %i.sn
  %i.sz = trunc i32 %i.sy to i16
  store i16 %i.sz, ptr %gep34.i.i, align 2, !tbaa !72
  %indvars.iv.next46.i.i = add nuw nsw i64 %indvars.iv45.i.i, 1 ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %indvars.iv.next46.i.i, %wide.trip.count54.i.i
  br i1 %exitcond50.not.i.i, label %middle.block, label %scalar.ph, !llvm.loop !270

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %indvars.iv.next52.i.i = add nuw nsw i64 %indvars.iv51.i.i, 1 ; 2 uses
  %exitcond55.not.i.i = icmp eq i64 %indvars.iv.next52.i.i, %wide.trip.count54.i.i
  br i1 %exitcond55.not.i.i, label %shift_output.exit.i, label %.preheader.i.i, !llvm.loop !0

.preheader28.i.i:                                 ; preds = %middle.block1048, %.preheader28.preheader.i.i
  %indvars.iv40.i.i = phi i64 [ 0, %.preheader28.preheader.i.i ], [ %indvars.iv.next41.i.i, %middle.block1048 ] ; 2 uses
  %i.ta = mul nsw i64 %indvars.iv40.i.i, %i.rq
  %invariant.gep.i.i = getelementptr i8, ptr %.06071.i, i64 %i.ta ; 4 uses
  %brmerge = select i1 %min.iters.check1039, i1 true, i1 %i.sl
  br i1 %brmerge, label %scalar.ph1038.preheader, label %vector.ph1040

scalar.ph1038.preheader:                          ; preds = %.preheader28.i.i
  br i1 %i.sm, label %scalar.ph1038.epil.preheader, label %scalar.ph1038

vector.ph1040:                                    ; preds = %.preheader28.i.i
  %i.tb = load i32, ptr %i.bc, align 4, !tbaa !91, !alias.scope !331
  %i.tc = sub nsw i32 8, %i.tb
  %broadcast.splatinsert1045 = insertelement <4 x i32> poison, i32 %i.tc, i64 0
  %broadcast.splat1046 = shufflevector <4 x i32> %broadcast.splatinsert1045, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %vector.ph1040
  %index1043 = phi i64 [ 0, %vector.ph1040 ], [ %index.next1047, %vector.body1042 ] ; 2 uses
  %i.td = getelementptr i8, ptr %invariant.gep.i.i, i64 %index1043 ; 2 uses
  %wide.load1044 = load <4 x i8>, ptr %i.td, align 1, !tbaa !63, !alias.scope !332, !noalias !331
  %i.te = zext <4 x i8> %wide.load1044 to <4 x i32>
  %i.tf = shl <4 x i32> %i.te, %broadcast.splat1046
  %i.tg = trunc <4 x i32> %i.tf to <4 x i8>
  store <4 x i8> %i.tg, ptr %i.td, align 1, !tbaa !63, !alias.scope !332, !noalias !331
  %index.next1047 = add nuw i64 %index1043, 4     ; 2 uses
  %i.th = icmp eq i64 %index.next1047, %wide.trip.count43.i.i
  br i1 %i.th, label %middle.block1048, label %vector.body1042, !llvm.loop !274

scalar.ph1038:                                    ; preds = %scalar.ph1038.preheader, %scalar.ph1038
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph1038 ], [ 0, %scalar.ph1038.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph1038 ], [ 0, %scalar.ph1038.preheader ]
  %i.ti = load i32, ptr %i.bc, align 4, !tbaa !91
  %i.tj = sub nsw i32 8, %i.ti
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.tk = load i8, ptr %gep.i.i, align 1, !tbaa !63
  %i.tl = zext i8 %i.tk to i32
  %i.tm = shl i32 %i.tl, %i.tj
  %i.tn = trunc i32 %i.tm to i8
  store i8 %i.tn, ptr %gep.i.i, align 1, !tbaa !63
  %i.to = load i32, ptr %i.bc, align 4, !tbaa !91
  %i.tp = sub nsw i32 8, %i.to
  %i.tq = getelementptr i8, ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.1 = getelementptr i8, ptr %i.tq, i64 1 ; 2 uses
  %i.tr = load i8, ptr %gep.i.i.1, align 1, !tbaa !63
  %i.ts = zext i8 %i.tr to i32
  %i.tt = shl i32 %i.ts, %i.tp
  %i.tu = trunc i32 %i.tt to i8
  store i8 %i.tu, ptr %gep.i.i.1, align 1, !tbaa !63
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block1048.loopexit.unr-lcssa, label %scalar.ph1038, !llvm.loop !275

middle.block1048.loopexit.unr-lcssa:              ; preds = %scalar.ph1038
  br i1 %lcmp.mod1337.not, label %middle.block1048, label %scalar.ph1038.epil.preheader

scalar.ph1038.epil.preheader:                     ; preds = %middle.block1048.loopexit.unr-lcssa, %scalar.ph1038.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %scalar.ph1038.preheader ], [ %indvars.iv.next.i.i.1, %middle.block1048.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1338)
  %i.tv = load i32, ptr %i.bc, align 4, !tbaa !91
  %i.tw = sub nsw i32 8, %i.tv
  %gep.i.i.epil = getelementptr i8, ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.tx = load i8, ptr %gep.i.i.epil, align 1, !tbaa !63
  %i.ty = zext i8 %i.tx to i32
  %i.tz = shl i32 %i.ty, %i.tw
  %i.ua = trunc i32 %i.tz to i8
  store i8 %i.ua, ptr %gep.i.i.epil, align 1, !tbaa !63
  br label %middle.block1048

middle.block1048:                                 ; preds = %vector.body1042, %scalar.ph1038.epil.preheader, %middle.block1048.loopexit.unr-lcssa
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond44.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, %wide.trip.count43.i.i
  br i1 %exitcond44.not.i.i, label %shift_output.exit.loopexit81.i, label %.preheader28.i.i, !llvm.loop !1

shift_output.exit.loopexit81.i:                   ; preds = %middle.block1048
  %.pre85.i = load ptr, ptr %i.af, align 8, !tbaa !49
  br label %shift_output.exit.i

shift_output.exit.i:                              ; preds = %middle.block, %shift_output.exit.loopexit81.i, %.preheader27.i.i, %.preheader29.i.i, %bb.ek
  %i.ub = phi ptr [ %.pre85.i, %shift_output.exit.loopexit81.i ], [ %.pre86.i, %bb.ek ], [ %.pre86.i, %.preheader27.i.i ], [ %.pre86.i, %.preheader29.i.i ], [ %.pre86.i, %middle.block ]
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 720
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !78 ; 2 uses
  %i.ue = lshr i32 %i.qe, %i.ud
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %.06071.i, i64 %i.uf
  %i.uh = add nuw nsw i32 %.06470.i, 1            ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.072.i, i64 128
  %exitcond.not.i700 = icmp eq i32 %i.uh, %i.qw
  br i1 %exitcond.not.i700, label %._crit_edge.i701, label %bb.ek, !llvm.loop !276

._crit_edge.i701:                                 ; preds = %shift_output.exit.i
  %i.uj = add nuw nsw i32 %.06373.i, 1            ; 2 uses
  %exitcond82.not.i = icmp eq i32 %i.uj, %i.rb
  br i1 %exitcond82.not.i, label %._crit_edge76.split.i, label %.lr.ph.i699, !llvm.loop !277

._crit_edge76.split.i:                            ; preds = %._crit_edge.i701, %.lr.ph75.i, %bb.ej
  %indvars.iv.next.i696 = add nuw nsw i64 %indvars.iv.i695, 1 ; 2 uses
  %i.uk = load i32, ptr %i.bd, align 16, !tbaa !86
  %i.ul = sext i32 %i.uk to i64
  %i.um = icmp slt i64 %indvars.iv.next.i696, %i.ul
  br i1 %i.um, label %bb.ee, label %mjpeg_idct_scan_progressive_ac.exit, !llvm.loop !278

mjpeg_idct_scan_progressive_ac.exit:              ; preds = %._crit_edge76.split.i, %bb.eb, %bb.ea, %bb.dz
  %.pr977 = load i32, ptr %i.ap, align 16, !tbaa !52
  store i32 0, ptr %i.ax, align 16, !tbaa !74
  %.not644 = icmp eq i32 %.pr977, 0
  br i1 %.not644, label %bb.em, label %bb.en

bb.em:                                            ; preds = %mjpeg_idct_scan_progressive_ac.exit.thread, %mjpeg_idct_scan_progressive_ac.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.59) #10
  br label %bb.fc

bb.en:                                            ; preds = %mjpeg_idct_scan_progressive_ac.exit.thread979, %mjpeg_idct_scan_progressive_ac.exit
  %i.un = load i32, ptr %i.bn, align 8, !tbaa !79
  %.not645 = icmp eq i32 %i.un, 0
  br i1 %.not645, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.uo = load i32, ptr %i.bo, align 4, !tbaa !85
  %i.up = xor i32 %i.uo, 1                        ; 2 uses
  store i32 %i.up, ptr %i.bo, align 4, !tbaa !85
  %i.uq = load i32, ptr %i.aj, align 4, !tbaa !59
  %.not646 = icmp eq i32 %i.uq, 0
  %i.ur = zext i1 %.not646 to i32
  %i.us = icmp eq i32 %i.up, %i.ur
  br i1 %i.us, label %bb.fc, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.ut = load ptr, ptr %i.bb, align 8, !tbaa !106 ; 2 uses
  %.not647 = icmp eq ptr %i.ut, null
  br i1 %.not647, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 56
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !333
  %i.uw = call i32 %i.uv(ptr noundef nonnull %0) #10 ; 2 uses
  %i.ux = icmp slt i32 %i.uw, 0
  br i1 %i.ux, label %.critedge, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.uy = getelementptr inbounds nuw i8, ptr %i.g, i64 4080
  call void @av_freep(ptr noundef nonnull %i.uy) #10
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.ep
  %i.uz = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.va = call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.uz) #10 ; 2 uses
  %i.vb = icmp slt i32 %i.va, 0
  br i1 %i.vb, label %.critedge, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.vc = load i32, ptr %i.at, align 16, !tbaa !77
  %.not648 = icmp eq i32 %i.vc, 0
  br i1 %.not648, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !97
  %i.vf = or i32 %i.ve, 32
  store i32 %i.vf, ptr %i.vd, align 4, !tbaa !97
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  store i32 1, ptr %2, align 4, !tbaa !55
  store i32 0, ptr %i.ap, align 16, !tbaa !52
  %i.vg = load i32, ptr %i.at, align 16, !tbaa !77
  %.not649 = icmp eq i32 %i.vg, 0
  br i1 %.not649, label %bb.ew, label %bb.fj

bb.ew:                                            ; preds = %bb.ev
  %i.vh = load i32, ptr %i.ae, align 4, !tbaa !70
  %i.vi = and i32 %i.vh, 16
  %.not650 = icmp eq i32 %i.vi, 0
  br i1 %.not650, label %bb.fj, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.vj = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.vk = load i32, ptr %i.vj, align 16, !tbaa !55
  %i.vl = getelementptr inbounds nuw i8, ptr %i.g, i64 884
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !55
  %. = call i32 @llvm.smax.i32(i32 %i.vk, i32 %i.vm)
  %i.vn = getelementptr inbounds nuw i8, ptr %i.g, i64 888
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !55
  %spec.select = call i32 @llvm.smax.i32(i32 %., i32 %i.vo)
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.60, i32 noundef %spec.select) #10
  br label %bb.fj

bb.ey:                                            ; preds = %bb.dp
  %i.vp = load i32, ptr %i.ax, align 16, !tbaa !74
  %i.vq = add nsw i32 %i.vp, 1
  store i32 %i.vq, ptr %i.ax, align 16, !tbaa !74
  %i.vr = call i32 @ff_mjpeg_decode_sos(ptr noundef nonnull %i.g) ; 2 uses
  %i.vs = icmp slt i32 %i.vr, 0
  br i1 %i.vs, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  %i.vt = load i32, ptr %i.ay, align 8, !tbaa !73
  %i.vu = and i32 %i.vt, 8
  %.not637 = icmp eq i32 %i.vu, 0
  br i1 %.not637, label %bb.fc, label %.loopexit746

bb.fa:                                            ; preds = %bb.dp
  %i.vv = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 2 ; 2 uses
  store ptr %i.vw, ptr %i.ab, align 8, !tbaa !66
  %i.vx = load i16, ptr %i.vv, align 1, !tbaa !63
  %.not.i702 = icmp eq i16 %i.vx, 1024
  br i1 %.not.i702, label %mjpeg_decode_dri.exit, label %.critedge

mjpeg_decode_dri.exit:                            ; preds = %bb.fa
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  store ptr %i.vy, ptr %i.ab, align 8, !tbaa !66
  %i.vz = load i16, ptr %i.vw, align 1, !tbaa !63
  %i.wa = call i16 @llvm.bswap.i16(i16 %i.vz)
  %i.wb = zext i16 %i.wa to i32                   ; 2 uses
  store i32 %i.wb, ptr %i.aw, align 8, !tbaa !125
  %i.wc = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.wc, i32 noundef 48, ptr noundef nonnull @.str.145, i32 noundef %i.wb) #10
  br label %bb.fc

bb.fb:                                            ; preds = %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.61, i32 noundef %i.cg) #10
  br label %bb.fc

bb.fc:                                            ; preds = %mjpeg_decode_dri.exit, %bb.dp, %bb.ey, %bb.ez, %bb.eo, %bb.dy, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.dr, %bb.fb, %bb.em, %bb.dq
  %.2713 = phi ptr [ %.1712, %bb.em ], [ %.1712, %bb.eo ], [ %i.ca, %bb.dp ], [ %i.ca, %bb.dq ], [ %i.ca, %bb.dr ], [ %i.ca, %bb.du ], [ %i.ca, %bb.dv ], [ %i.ca, %bb.dw ], [ %i.ca, %bb.dy ], [ %i.ca, %bb.ez ], [ %i.ca, %bb.ey ], [ %i.ca, %mjpeg_decode_dri.exit ], [ %i.ca, %bb.fb ], [ %i.ca, %bb.dt ] ; 3 uses
  %.3569 = phi i32 [ %.2568, %bb.em ], [ %.2568, %bb.eo ], [ %i.cg, %bb.dp ], [ 216, %bb.dq ], [ 196, %bb.dr ], [ 194, %bb.du ], [ 195, %bb.dv ], [ 247, %bb.dw ], [ 248, %bb.dy ], [ 218, %bb.ez ], [ 218, %bb.ey ], [ 221, %mjpeg_decode_dri.exit ], [ %i.cg, %bb.fb ], [ %i.cg, %bb.dt ] ; 3 uses
  %i.wd = load i32, ptr %i.ar, align 8, !tbaa !104
  %i.we = icmp eq i32 %i.wd, 48
  br i1 %i.we, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  switch i32 %.3569, label %bb.ff [
    i32 192, label %bb.fe
    i32 193, label %bb.fe
    i32 194, label %bb.fe
    i32 195, label %bb.fe
    i32 247, label %bb.fe
  ]

bb.fe:                                            ; preds = %bb.fd, %bb.fd, %bb.fd, %bb.fd, %bb.fd
  store i32 0, ptr %i.ap, align 16, !tbaa !52
  br label %bb.ie

bb.ff:                                            ; preds = %bb.fc, %bb.fd, %bb.do
  %.3714 = phi ptr [ %.2713, %bb.fd ], [ %.2713, %bb.fc ], [ %i.ca, %bb.do ]
  %.4570 = phi i32 [ %.3569, %bb.fd ], [ %.3569, %bb.fc ], [ %i.cg, %bb.do ]
  %i.wf = load ptr, ptr %i.ab, align 8, !tbaa !56
  %i.wg = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.wh = ptrtoint ptr %i.wf to i64
  %i.wi = ptrtoint ptr %i.wg to i64
  %i.wj = sub i64 %i.wh, %i.wi                    ; 2 uses
  %i.wk = trunc i64 %i.wj to i32
  %sext = shl i64 %i.wj, 32
  %i.wl = ashr exact i64 %sext, 32
  %i.wm = getelementptr inbounds i8, ptr %.3714, i64 %i.wl
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.62, i32 noundef %i.wk) #10
  br label %.loopexit747.backedge

.loopexit747.backedge:                            ; preds = %bb.ff, %bb.dy
  %.0711.be = phi ptr [ %i.wm, %bb.ff ], [ %4, %bb.dy ]
  %.1567.be = phi i32 [ %.4570, %bb.ff ], [ 248, %bb.dy ]
  br label %.loopexit747

ff_mjpeg_find_marker.exit.thread:                 ; preds = %.loopexit.i, %bb.d, %.loopexit747
  %.4715 = phi ptr [ %i.z, %bb.d ], [ %.0711, %.loopexit747 ], [ %i.z, %.loopexit.i ]
  %.5571 = phi i32 [ -1, %bb.d ], [ %.1567, %.loopexit747 ], [ -1, %.loopexit.i ]
  %i.wn = load i32, ptr %i.ap, align 16, !tbaa !52
  %.not638 = icmp eq i32 %i.wn, 0
  br i1 %.not638, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %ff_mjpeg_find_marker.exit.thread
  %i.wo = load i32, ptr %i.ax, align 16, !tbaa !74
  %.not639 = icmp eq i32 %i.wo, 0
  br i1 %.not639, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.63) #10
  br label %bb.dz

bb.fi:                                            ; preds = %bb.fg, %ff_mjpeg_find_marker.exit.thread
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.64) #10
  br label %.critedge

.loopexit746:                                     ; preds = %bb.ez, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds
  %.0580 = phi i32 [ %i.ph, %bb.ds ], [ %i.vr, %bb.ez ], [ %i.pr, %bb.dx ], [ %i.pp, %bb.dw ], [ %i.pn, %bb.dv ], [ %i.pl, %bb.du ], [ %i.pj, %bb.dt ]
  store i32 0, ptr %i.ap, align 16, !tbaa !52
  br label %.critedge

bb.fj:                                            ; preds = %bb.ev, %bb.ew, %bb.ex
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !101
  %i.wr = call ptr @av_pix_fmt_desc_get(i32 noundef %i.wq) #10
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 28
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !335
  %i.wu = icmp sgt i32 %i.wt, 1                   ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.g, i64 932 ; 2 uses
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !63
  %.not651 = icmp eq i32 %i.ww, 0
  br i1 %.not651, label %.loopexit745, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.wx = load i32, ptr %i.wp, align 8, !tbaa !101 ; 2 uses
  switch i32 %i.wx, label %bb.fl [
    i32 14, label %bb.fm
    i32 5, label %bb.fm
    i32 32, label %bb.fm
    i32 31, label %bb.fm
    i32 79, label %bb.fm
    i32 13, label %bb.fm
    i32 4, label %bb.fm
    i32 12, label %bb.fm
    i32 0, label %bb.fm
    i32 45, label %bb.fm
    i32 33, label %bb.fm
    i32 93, label %bb.fm
    i32 71, label %bb.fm
    i32 111, label %bb.fm
  ]

bb.fl:                                            ; preds = %bb.fk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.29, i32 noundef 2654) #10
  call void @abort() #11
  unreachable

bb.fm:                                            ; preds = %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk
  %i.wy = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef %i.wx, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not652 = icmp eq i32 %i.wy, 0
  br i1 %.not652, label %bb.fn, label %.critedge

bb.fn:                                            ; preds = %bb.fm
  %i.wz = load i32, ptr %i.bd, align 16, !tbaa !86
  %i.xa = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 116
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !336
  %i.xd = call i32 @av_pix_fmt_count_planes(i32 noundef %i.xc) #10
  %i.xe = icmp eq i32 %i.wz, %i.xd
  br i1 %i.xe, label %.preheader744, label %bb.fo

.preheader744:                                    ; preds = %bb.fn
  %i.xf = load i32, ptr %i.bd, align 16, !tbaa !86 ; 2 uses
  %i.xg = icmp sgt i32 %i.xf, 0
  br i1 %i.xg, label %.lr.ph789, label %.loopexit745

.lr.ph789:                                        ; preds = %.preheader744
  %i.xh = getelementptr inbounds nuw i8, ptr %i.g, i64 936
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.29, i32 noundef 2659) #10
  call void @abort() #11
  unreachable

bb.fp:                                            ; preds = %.lr.ph789, %.loopexit743
  %i.xi = phi i32 [ %i.xf, %.lr.ph789 ], [ %i.ahf, %.loopexit743 ] ; 2 uses
  %indvars.iv856 = phi i64 [ 0, %.lr.ph789 ], [ %indvars.iv.next857, %.loopexit743 ] ; 6 uses
  %i.xj = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %indvars.iv856
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !66
  %i.xm = load i32, ptr %i.bk, align 16, !tbaa !80 ; 2 uses
  %i.xn = load i32, ptr %i.bl, align 4, !tbaa !81 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wv, i64 %indvars.iv856 ; 2 uses
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !63
  %.not653 = icmp eq i8 %i.xp, 0
  br i1 %.not653, label %.loopexit743, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.xq = trunc i64 %indvars.iv856 to i32
  %i.xr = add i32 %i.xq, -1
  %or.cond7 = icmp ult i32 %i.xr, 2
  br i1 %or.cond7, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.xs = load i32, ptr %i.b, align 4, !tbaa !55
  %i.xt = sub nsw i32 0, %i.xm
  %i.xu = ashr i32 %i.xt, %i.xs
  %i.xv = sub nsw i32 0, %i.xu
  %i.xw = load i32, ptr %i.c, align 4, !tbaa !55
  %i.xx = sub nsw i32 0, %i.xn
  %i.xy = ashr i32 %i.xx, %i.xw
  %i.xz = sub nsw i32 0, %i.xy
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.0596 = phi i32 [ %i.xn, %bb.fq ], [ %i.xz, %bb.fr ] ; 2 uses
  %.0588 = phi i32 [ %i.xm, %bb.fq ], [ %i.xv, %bb.fr ] ; 10 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xh, i64 %indvars.iv856
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !63
  %i.yc = icmp eq i8 %i.yb, 1
  %i.yd = add nsw i32 %.0596, 1
  %i.ye = ashr i32 %i.yd, 1
  %.1597 = select i1 %i.yc, i32 %i.ye, i32 %.0596 ; 2 uses
  %i.yf = icmp sgt i32 %.0588, 0
  br i1 %i.yf, label %.preheader742, label %bb.ft

.preheader742:                                    ; preds = %bb.fs
  %i.yg = icmp sgt i32 %.1597, 0
  br i1 %i.yg, label %.lr.ph787, label %.loopexit743

.lr.ph787:                                        ; preds = %.preheader742
  %i.yh = add nsw i32 %.0588, -1                  ; 4 uses
  %i.yi = lshr i32 %i.yh, 2
  %i.yj = zext nneg i32 %i.yi to i64              ; 2 uses
  %i.yk = zext nneg i32 %i.yh to i64              ; 6 uses
  %.not654 = icmp eq i32 %.0588, 1                ; 4 uses
  %i.yl = add nsw i32 %.0588, -2                  ; 2 uses
  %i.ym = lshr i32 %i.yl, 2
  %i.yn = zext nneg i32 %i.ym to i64              ; 2 uses
  %i.yo = zext i32 %i.yl to i64                   ; 15 uses
  %i.yp = icmp samesign ugt i32 %.0588, 2         ; 4 uses
  %i.yq = zext nneg i32 %.0588 to i64             ; 4 uses
  %i.yr = add nsw i32 %.0588, -4
  %i.ys = icmp samesign ugt i32 %.0588, 4
  %i.yt = udiv i32 %i.yh, 3
  %i.yu = zext nneg i32 %i.yt to i64              ; 2 uses
  %i.yv = add nsw i32 %.0588, -3
  %i.yw = icmp samesign ugt i32 %.0588, 3
  %i.yx = lshr i32 %i.yh, 1
  %i.yy = zext nneg i32 %i.yx to i64              ; 2 uses
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv856
  %i.za = zext i32 %i.yr to i64
  %i.zb = zext i32 %i.yv to i64
  %i.zc = add nsw i64 %i.yo, -1                   ; 2 uses
  %xtraiter1339 = and i64 %i.yo, 1
  %lcmp.mod1340.not = icmp eq i64 %xtraiter1339, 0
  %i.zd = lshr i64 %i.yo, 1
  %i.ze = add nuw nsw i64 %i.yo, 1
  %i.zf = lshr exact i64 %i.ze, 1
  %i.zg = and i64 %i.zf, 2147483647
  %indvars.iv.next851.prol = add nsw i64 %i.yo, -1
  %i.zh = icmp eq i64 %i.zc, 0
  %xtraiter1342 = and i64 %i.yo, 1
  %lcmp.mod1343.not = icmp eq i64 %xtraiter1342, 0
  %i.zi = lshr i64 %i.yo, 1
  %i.zj = add nuw nsw i64 %i.yo, 1
  %i.zk = lshr exact i64 %i.zj, 1
  %i.zl = and i64 %i.zk, 2147483647
  %indvars.iv.next854.prol = add nsw i64 %i.yo, -1
  %i.zm = icmp eq i64 %i.zc, 0
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.29, i32 noundef 2672) #10
  call void @abort() #11
  unreachable

bb.fu:                                            ; preds = %.lr.ph787, %.loopexit739
  %.0587784 = phi ptr [ %i.xl, %.lr.ph787 ], [ %i.ahd, %.loopexit739 ] ; 48 uses
  %.0595783 = phi i32 [ 0, %.lr.ph787 ], [ %i.ahe, %.loopexit739 ]
  %i.zn = load i8, ptr %i.xo, align 1, !tbaa !63
  switch i8 %i.zn, label %.loopexit739 [
    i8 1, label %bb.fv
    i8 2, label %bb.fx
    i8 4, label %bb.gd
  ]

bb.fv:                                            ; preds = %bb.fu
  br i1 %i.wu, label %bb.fw, label %.thread981

bb.fw:                                            ; preds = %bb.fv
  %i.zo = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.yy
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !72
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.yk
  store i16 %i.zp, ptr %i.zq, align 2, !tbaa !72
  br i1 %i.yp, label %.lr.ph782.split.us.preheader, label %.loopexit739

.lr.ph782.split.us.preheader:                     ; preds = %bb.fw
  br i1 %lcmp.mod1343.not, label %.lr.ph782.split.us.prol.loopexit, label %.lr.ph782.split.us.prol

.lr.ph782.split.us.prol:                          ; preds = %.lr.ph782.split.us.preheader
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.zi
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !72
  %i.zt = zext i16 %i.zs to i32
end_hunk_1
