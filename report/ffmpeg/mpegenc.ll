Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegenc?download=true
inline.NumInlined: 78
inline.NumDeleted: 13
begin_hunk_0_@mpeg_mux_deinit:bb.a
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !111

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %i.n = phi i32 [ %i.d, %bb.b ], [ %.pre, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge19, !llvm.loop !112
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @avcodec_get_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @av_packet_side_data_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_get_media_type_string(i32 noundef) local_unnamed_addr #2

declare ptr @av_fifo_alloc2(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @av_fifo_can_write(ptr noundef) local_unnamed_addr #2

declare i32 @av_fifo_grow2(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @av_fifo_can_read(ptr noundef) local_unnamed_addr #2

declare i32 @av_fifo_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @output_packet(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.g = load i32, ptr %i.f, align 4, !tbaa !34
  %i.h = sext i32 %i.g to i64
  %i.i = tail call i64 @av_rescale(i64 noundef %i.h, i64 noundef 90000, i64 noundef 1000000) #10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.m = icmp ne i32 %1, 0                        ; 2 uses
  %i.n = load i32, ptr %i.j, align 4, !tbaa !35
  %.not264382 = icmp eq i32 %i.n, 0
  br i1 %.not264382, label %.critedge195, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.o = load i64, ptr %i.e, align 8, !tbaa !68
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %remove_decoded_packets.exit
  %.0144388 = phi i64 [ %i.o, %.lr.ph.lr.ph ], [ %.2, %remove_decoded_packets.exit ] ; 8 uses
  %.0146387 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.2148, %remove_decoded_packets.exit ] ; 3 uses
  %.0149386 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.3, %remove_decoded_packets.exit ] ; 4 uses
  %.0152385 = phi i32 [ -2147483648, %.lr.ph.lr.ph ], [ %.3155.ph, %remove_decoded_packets.exit ]
  %.0156384 = phi i32 [ -1, %.lr.ph.lr.ph ], [ %.3159.ph, %remove_decoded_packets.exit ]
  %.0163383 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.3166.ph, %remove_decoded_packets.exit ]
  %i.p = icmp ne i32 %.0149386, 0
  %i.q = icmp ne i32 %.0146387, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.1153247 = phi i32 [ %.0152385, %.lr.ph ], [ %.3155.ph, %bb.j ] ; 4 uses
  %.1157246 = phi i32 [ %.0156384, %.lr.ph ], [ %.3159.ph, %bb.j ] ; 3 uses
  %.1164245 = phi i32 [ %.0163383, %.lr.ph ], [ %.3166.ph, %bb.j ] ; 3 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45   ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61
  %i.x = call i64 @av_fifo_can_read(ptr noundef %i.w) #9 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !58   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !119 ; 2 uses
  %i.ac = sub nsw i32 %i.z, %i.ab                 ; 3 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 10
  %i.af = sext i32 %i.z to i64
  %i.ag = sdiv i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32                  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 2 uses
  %i.ak = load i32, ptr %i.l, align 8, !tbaa !33  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp uge i64 %i.x, %i.al
  %or.cond = or i1 %i.m, %i.am
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !49
  %.not190 = icmp eq i32 %i.ap, 3
  br i1 %.not190, label %bb.d, label %.critedge195

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = icmp ne i64 %i.x, 0
  %i.ar = icmp sge i32 %i.ac, %i.ak
  %or.cond3 = select i1 %i.ar, i1 true, i1 %i.p
  %or.cond263 = select i1 %i.aq, i1 %or.cond3, i1 false
  br i1 %or.cond263, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %.not191 = icmp eq ptr %i.aj, null
  br i1 %.not191, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !75
  %i.au = sub nsw i64 %i.at, %.0144388
  %i.av = icmp sle i64 %i.au, %i.i
  %or.cond5 = select i1 %i.av, i1 true, i1 %i.q
  br i1 %or.cond5, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !69 ; 2 uses
  %.not192 = icmp eq ptr %i.ax, null
  br i1 %.not192, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !76
  %i.ba = icmp sgt i32 %i.az, %i.ab
  %i.bb = add nsw i32 %i.ah, 268435456
  %spec.select = select i1 %i.ba, i32 %i.bb, i32 %i.ah
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0142 = phi i32 [ %i.ah, %bb.g ], [ %spec.select, %bb.h ] ; 2 uses
  %i.bc = icmp sgt i32 %.0142, %.1153247          ; 2 uses
  %.2165 = select i1 %i.bc, i32 %i.ac, i32 %.1164245
  %i.bd = trunc nuw nsw i64 %indvars.iv to i32
  %.2158 = select i1 %i.bc, i32 %i.bd, i32 %.1157246
  %.2154 = call i32 @llvm.smax.i32(i32 %.0142, i32 %.1153247)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d, %bb.f
  %.3166.ph = phi i32 [ %.1164245, %bb.f ], [ %.1164245, %bb.d ], [ %.2165, %bb.i ] ; 3 uses
  %.3159.ph = phi i32 [ %.1157246, %bb.f ], [ %.1157246, %bb.d ], [ %.2158, %bb.i ] ; 7 uses
  %.3155.ph = phi i32 [ %.1153247, %bb.f ], [ %.1153247, %bb.d ], [ %.2154, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = load i32, ptr %i.j, align 4, !tbaa !35  ; 3 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp samesign ult i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.b, label %._crit_edge, !llvm.loop !113

._crit_edge:                                      ; preds = %bb.j
  %i.bh = icmp slt i32 %.3159.ph, 0
  br i1 %i.bh, label %.preheader221, label %bb.z

.preheader221:                                    ; preds = %._crit_edge
  %.not265 = icmp eq i32 %i.be, 0
  br i1 %.not265, label %.critedge195, label %.lr.ph254

.lr.ph254:                                        ; preds = %.preheader221
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !36
  %wide.trip.count = zext i32 %i.be to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph254, %bb.m
  %indvars.iv284 = phi i64 [ 0, %.lr.ph254 ], [ %indvars.iv.next285, %bb.m ] ; 2 uses
  %.0253 = phi i32 [ 0, %.lr.ph254 ], [ %i.bv, %bb.m ]
  %.0139252 = phi i64 [ 9223372036854775807, %.lr.ph254 ], [ %.1, %bb.m ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv284
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !38
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !45 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !69 ; 2 uses
  %.not189 = icmp eq ptr %i.bo, null
  br i1 %.not189, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !75
  %spec.select193 = call i64 @llvm.smin.i64(i64 %i.bq, i64 %.0139252)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i64 [ %.0139252, %bb.k ], [ %spec.select193, %bb.l ] ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !73
  %i.bt = icmp ne ptr %i.bs, null
  %i.bu = zext i1 %i.bt to i32
  %i.bv = or i32 %.0253, %i.bu                    ; 2 uses
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge255, label %bb.k, !llvm.loop !114

._crit_edge255:                                   ; preds = %bb.m
  %.not188 = icmp eq i64 %.1, 9223372036854775807
  br i1 %.not188, label %bb.x, label %bb.n

bb.n:                                             ; preds = %._crit_edge255
  %i.bw = sitofp nsz i64 %.0144388 to double
  %i.bx = sitofp nsz i64 %.1 to double
  %i.by = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bx, i64 1
  %i.ca = fdiv nsz <2 x double> %i.bz, splat (double 9.000000e+04) ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 0
  %i.cc = extractelement <2 x double> %i.ca, i64 1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.38, double noundef %i.cb, double noundef %i.cc) #9
  %i.cd = add nsw i64 %.1, 1
  %2 = icmp sle i64 %.0144388, %.1                ; 2 uses
  %i.ce = icmp ne i32 %.0149386, 0
  %or.cond7 = select i1 %2, i1 true, i1 %i.ce
  br i1 %or.cond7, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.39) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1150 = phi i32 [ %.0149386, %bb.n ], [ 1, %bb.o ] ; 2 uses
  %3 = select i1 %2, i64 %i.cd, i64 %.0144388     ; 3 uses
  %i.cf = load i32, ptr %i.j, align 4, !tbaa !35
  %.not27.i = icmp eq i32 %i.cf, 0
  br i1 %.not27.i, label %remove_decoded_packets.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %bb.p, %.critedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ 0, %bb.p ] ; 3 uses
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !69 ; 3 uses
  store ptr %i.cm, ptr %i.b, align 8, !tbaa !80
  %.not22.i = icmp eq ptr %i.cm, null
  br i1 %.not22.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph26.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %.lr.ph.i
  %i.cq = phi ptr [ %i.cm, %.lr.ph.i ], [ %i.de, %bb.w ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !75
  %i.ct = icmp sgt i64 %3, %i.cs
  br i1 %i.ct, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.cu = load i32, ptr %i.cn, align 8, !tbaa !119 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !76 ; 3 uses
  %i.cx = icmp slt i32 %i.cu, %i.cw
  br i1 %i.cx, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !73
  %i.cz = icmp eq ptr %i.cq, %i.cy
  br i1 %i.cz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.da = trunc nuw nsw i64 %indvars.iv.i to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.47, i32 noundef %i.da, i32 noundef %i.cu, i32 noundef %i.cw) #9
  br label %.critedge.i

bb.u:                                             ; preds = %bb.s
  %i.db = sub nsw i32 %i.cu, %i.cw
  store i32 %i.db, ptr %i.cn, align 8, !tbaa !119
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !72 ; 2 uses
  store ptr %i.dd, ptr %i.cl, align 8, !tbaa !69
  %.not20.i = icmp eq ptr %i.dd, null
  br i1 %.not20.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %i.cp, align 8, !tbaa !70
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @av_freep(ptr noundef nonnull %i.b) #9
  %i.de = load ptr, ptr %i.cl, align 8, !tbaa !69 ; 3 uses
  store ptr %i.de, ptr %i.b, align 8, !tbaa !80
  %.not.i = icmp eq ptr %i.de, null
  br i1 %.not.i, label %.critedge.i, label %bb.q, !llvm.loop !115

.critedge.i:                                      ; preds = %bb.w, %bb.q, %bb.t, %.lr.ph26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.df = load i32, ptr %i.j, align 4, !tbaa !35
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv.next.i, %i.dg
  br i1 %i.dh, label %.lr.ph26.i, label %remove_decoded_packets.exit, !llvm.loop !116

bb.x:                                             ; preds = %._crit_edge255
  %i.di = icmp ne i32 %i.bv, 0
  %i.dj = and i1 %i.m, %i.di
  br i1 %i.dj, label %bb.y, label %.critedge195

bb.y:                                             ; preds = %bb.x
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.40) #9
  br label %remove_decoded_packets.exit

remove_decoded_packets.exit:                      ; preds = %.critedge.i, %bb.p, %bb.y
  %.3 = phi i32 [ 1, %bb.y ], [ %.1150, %bb.p ], [ %.1150, %.critedge.i ]
  %.2148 = phi i32 [ 1, %bb.y ], [ %.0146387, %bb.p ], [ %.0146387, %.critedge.i ]
  %.2 = phi i64 [ %.0144388, %bb.y ], [ %3, %bb.p ], [ %3, %.critedge.i ]
  %i.dk = load i32, ptr %i.j, align 4, !tbaa !35
  %.not264 = icmp eq i32 %i.dk, 0
  br i1 %.not264, label %.critedge195, label %.lr.ph

bb.z:                                             ; preds = %._crit_edge
  %i.dl = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.dm = zext nneg i32 %.3159.ph to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !38
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !45 ; 4 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !61
  %i.ds = call i64 @av_fifo_can_read(ptr noundef %i.dr) #9
  %.not = icmp eq i64 %i.ds, 0
  br i1 %.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, i32 noundef 1099) #9
  call void @abort() #11
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dt = load i32, ptr %i.l, align 8, !tbaa !33
  %i.du = icmp sge i32 %.3166.ph, %i.dt
  %i.dv = icmp ne i32 %.0149386, 0
  %or.cond11 = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond11, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.37, i32 noundef 1101) #9
  call void @abort() #11
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 40 ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !73 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !77 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !76
  %i.ec = icmp eq i32 %i.dz, %i.eb
  br i1 %i.ec, label %.thread213, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !72 ; 2 uses
  %.not181 = icmp eq ptr %i.ee, null
  br i1 %.not181, label %bb.af, label %.thread213

.thread213:                                       ; preds = %bb.ad, %bb.ae
  %.0143218 = phi ptr [ %i.ee, %bb.ae ], [ %i.dx, %bb.ad ] ; 3 uses
  %.0160217 = phi i32 [ %i.dz, %bb.ae ], [ 0, %bb.ad ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.0143218, i64 8
  %i.eg = load <2 x i64>, ptr %.0143218, align 8, !tbaa !62
  %i.eh = sitofp <2 x i64> %i.eg to <2 x double>
  %i.ei = fdiv nsz <2 x double> %i.eh, splat (double 9.000000e+04) ; 2 uses
  %i.ej = sitofp nsz i64 %.0144388 to double
  %i.ek = fdiv nsz double %i.ej, 9.000000e+04
  %i.el = extractelement <2 x double> %i.ei, i64 0
  %i.em = extractelement <2 x double> %i.ei, i64 1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.44, double noundef %i.em, double noundef %i.el, double noundef %i.ek, i32 noundef %.3159.ph) #9
  %i.en = load i64, ptr %.0143218, align 8, !tbaa !74
  %i.eo = load i64, ptr %i.ef, align 8, !tbaa !75
  %i.ep = call fastcc i32 @flush_packet(ptr noundef nonnull %0, i32 noundef %.3159.ph, i64 noundef %i.en, i64 noundef %i.eo, i64 noundef %.0144388, i32 noundef %.0160217)
  br label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.eq = load ptr, ptr %i.dq, align 8, !tbaa !61
  %i.er = call i64 @av_fifo_can_read(ptr noundef %i.eq) #9
  %i.es = sext i32 %i.dz to i64
  %i.et = icmp eq i64 %i.er, %i.es
  br i1 %i.et, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.37, i32 noundef 1119) #9
  call void @abort() #11
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.eu = call fastcc i32 @flush_packet(ptr noundef nonnull %0, i32 noundef %.3159.ph, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef %.0144388, i32 noundef %i.dz)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread213
  %.0161 = phi i32 [ %i.ep, %.thread213 ], [ %i.eu, %bb.ah ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !29
  %.not182 = icmp eq i32 %i.ew, 0
  br i1 %.not182, label %..loopexit_crit_edge, label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.ai
  %.pre = load i32, ptr %i.l, align 8, !tbaa !33
  %.pr.pre = load ptr, ptr %i.dw, align 8, !tbaa !73
  br label %.loopexit

.preheader:                                       ; preds = %bb.ai
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader, %bb.al
  %i.ez = load ptr, ptr %i.dw, align 8, !tbaa !73 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !74 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !26  ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !64 ; 2 uses
  %i.fd = icmp sgt i64 %i.fc, 0
  %i.fe = icmp ne i64 %i.fa, -9223372036854775808
  %or.cond.i = and i1 %i.fe, %i.fd
  br i1 %or.cond.i, label %bb.ak, label %get_vcd_padding_size.exit

bb.ak:                                            ; preds = %bb.aj
end_hunk_0
begin_hunk_1_@put_system_header:put_bits.exit86
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !58
  %i.dv = sdiv i32 %i.du, 128                     ; 3 uses
  %i.dw = icmp sgt i32 %i.dk, 14
  br i1 %i.dw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %put_bits.exit234.thread, %put_bits.exit234
  %i.dx = phi i32 [ %i.dr, %put_bits.exit234.thread ], [ %i.dv, %put_bits.exit234 ]
  %.0.i.i233523 = phi i32 [ 32, %put_bits.exit234.thread ], [ %i.ds, %put_bits.exit234 ]
  %.026.i.i232522 = phi i32 [ 0, %put_bits.exit234.thread ], [ %.026.i.i228, %put_bits.exit234 ]
  %.sroa.188.86521.idx = phi i64 [ %.sroa.188.86.ph.idx, %put_bits.exit234.thread ], [ %.sroa.188.84.idx, %put_bits.exit234 ]
  %i.dy = shl i32 %.026.i.i232522, 13
  %i.dz = or i32 %i.dx, %i.dy
  %i.ea = add nsw i32 %.0.i.i233523, -13
  br label %put_bits.exit238

bb.ab:                                            ; preds = %put_bits.exit234
  %notsub551 = add nsw i64 %.sroa.188.84.idx, -129
  %i.eb = icmp ult i64 %notsub551, -4
  br i1 %i.eb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ec = shl i32 %.026.i.i228, %i.ds
  %i.ed = sub nsw i32 14, %i.dk
  %i.ee = lshr i32 %i.dv, %i.ed
  %i.ef = or i32 %i.ee, %i.ec
  %i.eg = tail call i32 @llvm.bswap.i32(i32 %i.ef)
  store i32 %i.eg, ptr %.sroa.188.84.ptr, align 1, !tbaa !56
  %.sroa.188.84.add = add nuw nsw i64 %.sroa.188.84.idx, 4
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.50) #9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.188.87.idx = phi i64 [ %.sroa.188.84.add, %bb.ac ], [ %.sroa.188.84.idx, %bb.ad ]
  %i.eh = add nuw nsw i32 %i.dk, 18
  br label %put_bits.exit238

bb.af:                                            ; preds = %put_bits.exit230
  br i1 %i.dm, label %put_bits.exit242, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %notsub548 = add nsw i64 %.sroa.188.84.idx, -129
  %i.ei = icmp ult i64 %notsub548, -4
  br i1 %i.ei, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ej = or i32 %.026.i.i228, 1
  %i.ek = tail call i32 @llvm.bswap.i32(i32 %i.ej)
  store i32 %i.ek, ptr %.sroa.188.84.ptr, align 1, !tbaa !56
  %.sroa.188.84.add539 = add nuw nsw i64 %.sroa.188.84.idx, 4
  br label %put_bits.exit242.thread

bb.ai:                                            ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.50) #9
  br label %put_bits.exit242.thread

put_bits.exit242.thread:                          ; preds = %bb.ai, %bb.ah
  %.sroa.188.90.ph.idx = phi i64 [ %.sroa.188.84.idx, %bb.ai ], [ %.sroa.188.84.add539, %bb.ah ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !58
  %i.en = sdiv i32 %i.em, 1024
  br label %bb.aj

put_bits.exit242:                                 ; preds = %bb.af
  %i.eo = or disjoint i32 %.026.i.i228, 1         ; 2 uses
  %i.ep = add nsw i32 %i.dk, -1                   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !58
  %i.es = sdiv i32 %i.er, 1024                    ; 3 uses
  %i.et = icmp sgt i32 %i.dk, 14
  br i1 %i.et, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %put_bits.exit242.thread, %put_bits.exit242
  %i.eu = phi i32 [ %i.en, %put_bits.exit242.thread ], [ %i.es, %put_bits.exit242 ]
  %.0.i.i241529 = phi i32 [ 32, %put_bits.exit242.thread ], [ %i.ep, %put_bits.exit242 ]
  %.026.i.i240528 = phi i32 [ 1, %put_bits.exit242.thread ], [ %i.eo, %put_bits.exit242 ]
  %.sroa.188.90527.idx = phi i64 [ %.sroa.188.90.ph.idx, %put_bits.exit242.thread ], [ %.sroa.188.84.idx, %put_bits.exit242 ]
  %i.ev = shl i32 %.026.i.i240528, 13
  %i.ew = or i32 %i.eu, %i.ev
  %i.ex = add nsw i32 %.0.i.i241529, -13
  br label %put_bits.exit238

bb.ak:                                            ; preds = %put_bits.exit242
  %notsub549 = add nsw i64 %.sroa.188.84.idx, -129
  %i.ey = icmp ult i64 %notsub549, -4
  br i1 %i.ey, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ez = shl i32 %i.eo, %i.ep
  %i.fa = sub nsw i32 14, %i.dk
  %i.fb = lshr i32 %i.es, %i.fa
  %i.fc = or i32 %i.fb, %i.ez
  %i.fd = tail call i32 @llvm.bswap.i32(i32 %i.fc)
  store i32 %i.fd, ptr %.sroa.188.84.ptr, align 1, !tbaa !56
  %.sroa.188.84.add538 = add nuw nsw i64 %.sroa.188.84.idx, 4
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.50) #9
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.188.91.idx = phi i64 [ %.sroa.188.84.add538, %bb.al ], [ %.sroa.188.84.idx, %bb.am ]
  %i.fe = add nuw nsw i32 %i.dk, 18
  br label %put_bits.exit238

put_bits.exit238:                                 ; preds = %bb.l, %bb.an, %bb.aj, %bb.ae, %bb.aa, %bb.m
  %.sroa.188.6.idx = phi i64 [ %.sroa.188.5474.idx, %bb.l ], [ %.sroa.188.87.idx, %bb.ae ], [ %.sroa.188.5474.idx, %bb.m ], [ %.sroa.188.86521.idx, %bb.aa ], [ %.sroa.188.90527.idx, %bb.aj ], [ %.sroa.188.91.idx, %bb.an ] ; 3 uses
  %.sroa.95.6 = phi i32 [ %.sroa.95.5475, %bb.l ], [ %i.eh, %bb.ae ], [ %.sroa.95.5475, %bb.m ], [ %i.ea, %bb.aa ], [ %i.ex, %bb.aj ], [ %i.fe, %bb.an ] ; 4 uses
  %.sroa.0.6 = phi i32 [ %.sroa.0.5476, %bb.l ], [ %i.dv, %bb.ae ], [ %.sroa.0.5476, %bb.m ], [ %i.dz, %bb.aa ], [ %i.ew, %bb.aj ], [ %i.es, %bb.an ] ; 2 uses
  %.3 = phi i32 [ %.065478, %bb.l ], [ %.166, %bb.ae ], [ 1, %bb.m ], [ %.166, %bb.aa ], [ %.166, %bb.aj ], [ %.166, %bb.an ]
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 2 uses
  %i.ff = load i32, ptr %i.at, align 4, !tbaa !35
  %i.fg = zext i32 %i.ff to i64
  %i.fh = icmp samesign ult i64 %indvars.iv.next487, %i.fg
  br i1 %i.fh, label %bb.l, label %put_bits.exit222, !llvm.loop !123

put_bits.exit222:                                 ; preds = %put_bits.exit238
  %.sroa.188.6.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.188.6.idx
  %i.fi = icmp slt i32 %.sroa.95.6, 32
  br i1 %i.fi, label %.lr.ph.i, label %flush_put_bits.exit

.lr.ph.i:                                         ; preds = %put_bits.exit222
  %i.fj = shl i32 %.sroa.0.6, %.sroa.95.6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.lr.ph.i
  %.sroa.188.93.idx = phi i64 [ %.sroa.188.6.idx, %.lr.ph.i ], [ %.sroa.188.93.add, %bb.aq ] ; 3 uses
  %.sroa.95.8 = phi i32 [ %.sroa.95.6, %.lr.ph.i ], [ %i.fo, %bb.aq ] ; 2 uses
  %.sroa.0.8 = phi i32 [ %i.fj, %.lr.ph.i ], [ %i.fn, %bb.aq ] ; 2 uses
  %i.fk = icmp slt i64 %.sroa.188.93.idx, 128
  br i1 %i.fk, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 160) #9
  tail call void @abort() #11
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %.sroa.188.93.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.188.93.idx
  %i.fl = lshr i32 %.sroa.0.8, 24
  %i.fm = trunc nuw i32 %i.fl to i8
  %.sroa.188.93.add = add nuw nsw i64 %.sroa.188.93.idx, 1 ; 2 uses
  store i8 %i.fm, ptr %.sroa.188.93.ptr, align 1, !tbaa !56
  %i.fn = shl i32 %.sroa.0.8, 8
  %i.fo = add nsw i32 %.sroa.95.8, 8
  %i.fp = icmp slt i32 %.sroa.95.8, 24
  br i1 %i.fp, label %bb.ao, label %flush_put_bits.exit.loopexit, !llvm.loop !0

flush_put_bits.exit.loopexit:                     ; preds = %bb.aq
  %.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.188.93.add
  br label %flush_put_bits.exit

flush_put_bits.exit:                              ; preds = %flush_put_bits.exit.loopexit, %.preheader, %put_bits.exit206, %put_bits.exit222
  %.sroa.188.94 = phi ptr [ %.sroa.188.6.ptr, %put_bits.exit222 ], [ %i.ci, %put_bits.exit206 ], [ %.sroa.188.4.ptr, %.preheader ], [ %.ptr, %flush_put_bits.exit.loopexit ]
  %i.fq = ptrtoint ptr %1 to i64
  %i.fr = ptrtoint ptr %.sroa.188.94 to i64
  %i.fs = sub i64 %i.fr, %i.fq                    ; 2 uses
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = trunc i64 %i.fs to i16
  %i.fv = add i16 %i.fu, -6
  %i.fw = tail call i16 @llvm.bswap.i16(i16 %i.fv)
  store i16 %i.fw, ptr %i.e, align 1, !tbaa !56
  ret i32 %i.ft
}

declare void @avio_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_wb32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_wb16(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_w8(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ffio_fill(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @av_fifo_read_to_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @fifo_avio_wrapper(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !62
  %i.b = trunc i64 %i.a to i32
  tail call void @avio_write(ptr noundef %0, ptr noundef %1, i32 noundef %i.b) #9
  ret i32 0
}

declare void @avio_write_marker(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare void @av_fifo_freep2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1>, i1 immarg) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !55}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!12 = !{!"p1 _ZTS13AVInputFormat", !10, i64 0}
!13 = !{!"p1 _ZTS14AVOutputFormat", !10, i64 0}
!14 = !{!"p1 _ZTS11AVIOContext", !10, i64 0}
!15 = !{!"any p2 pointer", !10, i64 0}
!16 = !{!"p2 _ZTS8AVStream", !15, i64 0}
!17 = !{!"p2 _ZTS13AVStreamGroup", !15, i64 0}
!18 = !{!"p2 _ZTS9AVChapter", !15, i64 0}
!19 = !{!"p1 omnipotent char", !10, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!"p2 _ZTS9AVProgram", !15, i64 0}
!22 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!23 = !{!"AVIOInterruptCB", !10, i64 0, !10, i64 8}
!24 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!25 = !{!"AVFormatContext", !11, i64 0, !12, i64 8, !13, i64 16, !10, i64 24, !14, i64 32, !7, i64 40, !7, i64 44, !16, i64 48, !7, i64 56, !17, i64 64, !7, i64 72, !18, i64 80, !19, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !7, i64 120, !7, i64 124, !7, i64 128, !20, i64 136, !20, i64 144, !19, i64 152, !7, i64 160, !7, i64 164, !21, i64 168, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !22, i64 192, !20, i64 200, !7, i64 208, !7, i64 212, !23, i64 216, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !20, i64 248, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !20, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !19, i64 336, !19, i64 344, !19, i64 352, !19, i64 360, !7, i64 368, !24, i64 376, !24, i64 384, !24, i64 392, !24, i64 400, !7, i64 408, !10, i64 416, !10, i64 424, !20, i64 432, !19, i64 440, !10, i64 448, !10, i64 456, !20, i64 464, !19, i64 472}
!26 = !{!25, !10, i64 24}
!27 = !{!"MpegMuxContext", !11, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !7, i64 88}
!28 = !{!27, !7, i64 12}
!29 = !{!27, !7, i64 48}
!30 = !{!27, !7, i64 52}
!31 = !{!27, !7, i64 44}
!32 = !{!27, !7, i64 56}
!33 = !{!27, !7, i64 8}
!34 = !{!25, !7, i64 124}
!35 = !{!25, !7, i64 44}
!36 = !{!25, !16, i64 48}
!37 = !{!"p1 _ZTS8AVStream", !10, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTS17AVCodecParameters", !10, i64 0}
!40 = !{!"AVRational", !7, i64 0, !7, i64 4}
!41 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!42 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!43 = !{!"AVPacket", !41, i64 0, !20, i64 8, !20, i64 16, !19, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !42, i64 48, !7, i64 56, !20, i64 64, !20, i64 72, !10, i64 80, !41, i64 88, !40, i64 96}
!44 = !{!"AVStream", !11, i64 0, !7, i64 8, !7, i64 12, !39, i64 16, !10, i64 24, !40, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !7, i64 64, !7, i64 68, !40, i64 72, !22, i64 80, !40, i64 88, !43, i64 96, !7, i64 200, !40, i64 204, !7, i64 212}
!45 = !{!44, !10, i64 24}
!46 = !{!44, !39, i64 16}
!47 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!48 = !{!"AVCodecParameters", !7, i64 0, !7, i64 4, !7, i64 8, !19, i64 16, !7, i64 24, !42, i64 32, !7, i64 40, !7, i64 44, !20, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !40, i64 80, !40, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !47, i64 128, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176}
!49 = !{!48, !7, i64 0}
!50 = !{!48, !7, i64 4}
!51 = !{!"p1 _ZTS6AVFifo", !10, i64 0}
!52 = !{!"p1 _ZTS10PacketDesc", !10, i64 0}
!53 = !{!"StreamInfo", !51, i64 0, !6, i64 8, !7, i64 12, !7, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !7, i64 48, !6, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !20, i64 72}
!54 = !{!53, !6, i64 8}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!6, !6, i64 0}
!57 = !{!53, !7, i64 56}
!58 = !{!53, !7, i64 12}
!59 = !{!27, !7, i64 36}
!60 = !{!27, !7, i64 40}
!61 = !{!53, !51, i64 0}
!62 = !{!20, !20, i64 0}
!63 = !{!27, !7, i64 32}
!64 = !{!27, !20, i64 72}
!65 = !{!27, !7, i64 16}
!66 = !{!27, !7, i64 20}
!67 = !{!53, !7, i64 48}
!68 = !{!27, !20, i64 64}
!69 = !{!53, !52, i64 24}
!70 = !{!53, !52, i64 32}
!71 = !{!"PacketDesc", !20, i64 0, !20, i64 8, !7, i64 16, !7, i64 20, !52, i64 24}
!72 = !{!71, !52, i64 24}
!73 = !{!53, !52, i64 40}
!74 = !{!71, !20, i64 0}
!75 = !{!71, !20, i64 8}
!76 = !{!71, !7, i64 16}
!77 = !{!71, !7, i64 20}
!78 = !{!53, !7, i64 60}
!79 = !{!53, !7, i64 64}
!80 = !{!52, !52, i64 0}
!81 = !{!25, !14, i64 32}
!82 = distinct !{!82, !55}
!83 = distinct !{!83, !55}
!84 = distinct !{!84, !55}
!85 = distinct !{!85, !55}
!86 = distinct !{!86, !55}
!87 = !{!25, !13, i64 16}
!88 = !{!25, !7, i64 120}
!89 = !{!7, !7, i64 0}
!90 = !{!48, !7, i64 152}
!91 = !{!48, !7, i64 132}
!92 = !{!48, !7, i64 56}
!93 = !{!48, !42, i64 32}
!94 = !{!48, !7, i64 40}
!95 = !{!"AVPacketSideData", !19, i64 0, !20, i64 8, !7, i64 16}
!96 = !{!95, !19, i64 0}
!97 = !{!"AVCPBProperties", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32}
!98 = !{!97, !20, i64 24}
!99 = !{!27, !7, i64 28}
!100 = !{!27, !7, i64 24}
!101 = !{!43, !7, i64 36}
!102 = !{!43, !7, i64 32}
!103 = !{!43, !19, i64 24}
!104 = !{!43, !7, i64 40}
!105 = !{!27, !7, i64 88}
!106 = !{!43, !20, i64 8}
!107 = !{!43, !20, i64 16}
!108 = !{!25, !7, i64 280}
!109 = !{!53, !20, i64 72}
!110 = distinct !{!110, !55}
!111 = distinct !{!111, !55}
!112 = distinct !{!112, !55}
!113 = distinct !{!113, !55}
!114 = distinct !{!114, !55}
!115 = distinct !{!115, !55}
!116 = distinct !{!116, !55}
!117 = distinct !{!117, !55}
!118 = distinct !{!118, !55}
!119 = !{!53, !7, i64 16}
!120 = !{!27, !20, i64 80}
!121 = distinct !{!121, !55}
!122 = distinct !{!122, !55}
!123 = distinct !{!123, !55}
end_hunk_1
