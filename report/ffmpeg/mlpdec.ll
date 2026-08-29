Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mlpdec?download=true
inline.NumInlined: 95
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@output_data:bb.a
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !38
  %i.ba = shl i32 %.016.i, 8                      ; 2 uses
  %i.bb = or disjoint i32 %.mask.i, %i.ba
  %i.bc = lshr i32 %i.ba, 15
  %.mask.i.1 = and i32 %i.bc, 255                 ; 3 uses
  %i.bd = zext nneg i32 %.mask.i.1 to i64
  %i.be = getelementptr inbounds nuw i8, ptr @noise_table, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.bf, ptr %i.bh, align 1, !tbaa !38
  %i.bi = shl nuw nsw i32 %.mask.i, 13
  %i.bj = shl i32 %i.bb, 8
  %i.bk = xor i32 %i.bi, %i.bj
  %i.bl = or disjoint i32 %.mask.i.1, %i.bk
  %i.bm = shl nuw nsw i32 %.mask.i.1, 5
  %i.bn = xor i32 %i.bl, %i.bm                    ; 3 uses
  %indvars.iv.next.i74.1 = add nuw nsw i64 %indvars.iv.i73, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %fill_noise_buffer.exit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !146

fill_noise_buffer.exit.loopexit.unr-lcssa:        ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %fill_noise_buffer.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %fill_noise_buffer.exit.loopexit.unr-lcssa, %.lr.ph.i71
  %indvars.iv.i73.epil.init = phi i64 [ 0, %.lr.ph.i71 ], [ %indvars.iv.next.i74.1, %fill_noise_buffer.exit.loopexit.unr-lcssa ]
  %.016.i.epil.init = phi i32 [ %i.aq, %.lr.ph.i71 ], [ %i.bn, %fill_noise_buffer.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i32 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.bo = lshr i32 %.016.i.epil.init, 15
  %.mask.i.epil = and i32 %i.bo, 255              ; 3 uses
  %i.bp = zext nneg i32 %.mask.i.epil to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @noise_table, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !38
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i73.epil.init
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !38
  %i.bt = shl i32 %.016.i.epil.init, 8
  %i.bu = or disjoint i32 %.mask.i.epil, %i.bt
  %i.bv = shl nuw nsw i32 %.mask.i.epil, 5
  %i.bw = xor i32 %i.bu, %i.bv
  br label %fill_noise_buffer.exit

fill_noise_buffer.exit:                           ; preds = %.epil.preheader, %fill_noise_buffer.exit.loopexit.unr-lcssa, %bb.g
  %.0.lcssa.i76 = phi i32 [ %i.aq, %bb.g ], [ %i.bn, %fill_noise_buffer.exit.loopexit.unr-lcssa ], [ %i.bw, %.epil.preheader ]
  store i32 %.0.lcssa.i76, ptr %i.ap, align 4, !tbaa !103
  br label %bb.i

bb.i:                                             ; preds = %fill_noise_buffer.exit, %generate_2_noise_channels.exit
  %.061 = phi i32 [ %i.n, %fill_noise_buffer.exit ], [ %i.an, %generate_2_noise_channels.exit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 1370 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !107 ; 2 uses
  %.not79 = icmp eq i8 %i.by, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 1371
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 13528
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8400
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 1392
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 7108
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 6852
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 1648
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 1656
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %.in = phi i8 [ %i.by, %.lr.ph ], [ %i.da, %bb.j ]
  %i.ci = zext i8 %.in to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !38  ; 2 uses
  %i.cl = zext i8 %i.ck to i32
  %i.cm = load ptr, ptr %i.ca, align 8, !tbaa !147
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %indvars.iv
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv
  %i.cp = trunc nuw nsw i64 %indvars.iv to i32
  %i.cq = sub nuw nsw i32 %i.ci, %i.cp
  %i.cr = load i16, ptr %i.p, align 2, !tbaa !97
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !38
  %i.cu = zext i8 %i.ct to i32
  %i.cv = load i32, ptr %i.cg, align 4, !tbaa !61
  %i.cw = zext i8 %i.ck to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !38
  %i.cz = zext nneg i8 %i.cy to i32
  %.neg = shl nsw i32 -1, %i.cz
  tail call void %i.cm(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.co, ptr noundef nonnull %i.ce, i32 noundef %i.cq, i32 noundef %i.cl, i16 noundef zeroext %i.cr, i32 noundef %.061, i32 noundef %i.cu, i32 noundef %i.cv, i32 noundef %.neg) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i8, ptr %i.bx, align 2, !tbaa !107 ; 2 uses
  %i.db = zext i8 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %bb.j, label %._crit_edge, !llvm.loop !148

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.dd = load i16, ptr %i.p, align 2, !tbaa !97
  %i.de = zext i16 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i32 %i.de, ptr %i.df, align 8, !tbaa !149
  %i.dg = tail call i32 @ff_get_buffer(ptr noundef nonnull %i.b, ptr noundef %2, i32 noundef 0) #8 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %bb.o, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 13544
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 1676 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !33
  %i.dm = load i16, ptr %i.p, align 2, !tbaa !97
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8400
  %i.do = load ptr, ptr %2, align 8, !tbaa !150
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 1668
  %i.dr = load i8, ptr %i.l, align 16, !tbaa !74
  %i.ds = tail call i32 %i.dj(i32 noundef %i.dl, i16 noundef zeroext %i.dm, ptr noundef nonnull %i.dn, ptr noundef %i.do, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dq, i8 noundef zeroext %i.dr, i32 noundef %i.i) #8
  store i32 %i.ds, ptr %i.dk, align 4, !tbaa !33
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !87 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 44 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %.not69 = icmp eq i32 %i.du, %i.dw
  br i1 %.not69, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = tail call i32 @ff_side_data_update_matrix_encoding(ptr noundef nonnull %2, i32 noundef %i.du) #8 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dz = load i32, ptr %i.dt, align 8, !tbaa !87
  store i32 %i.dz, ptr %i.dv, align 4, !tbaa !141
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  store i32 1, ptr %3, align 4, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %._crit_edge, %bb.n, %bb.d, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.d ], [ %i.dg, %._crit_edge ], [ 0, %bb.n ], [ %i.dx, %bb.l ]
  ret i32 %.0
}

declare i32 @ff_mlp_read_major_sync(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @av_channel_layout_from_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_index_from_channel(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ff_mlp_restart_checksum(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_check(ptr noundef) local_unnamed_addr #3

declare i64 @av_channel_layout_subset(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @read_filter_params(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 256) %2, i32 noundef range(i32 0, 256) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #1 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr [1680 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %i.d = zext nneg i32 %3 to i64                  ; 2 uses
  %i.e = getelementptr [164 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = zext nneg i32 %4 to i64                  ; 3 uses
  %i.g = getelementptr [44 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %.not = icmp eq i32 %4, 0                       ; 3 uses
  %i.h = select i1 %.not, i32 8, i32 4            ; 2 uses
  %i.i = select i1 %.not, i8 70, i8 73            ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6788
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.f ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37   ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !37
  %i.o = icmp sgt i32 %i.m, 1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.q, i32 noundef 16, ptr noundef nonnull @.str.56) #8
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !48   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !47   ; 4 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !44     ; 9 uses
  %i.w = lshr i32 %i.s, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = load i32, ptr %i.y, align 1, !tbaa !38
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = and i32 %i.s, 7
  %i.ac = shl i32 %i.aa, %i.ab
  %i.ad = lshr i32 %i.ac, 28                      ; 5 uses
  %i.ae = add i32 %i.s, 4
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.ae) ; 4 uses
  store i32 %i.af, ptr %i.r, align 8, !tbaa !48
  %i.ag = icmp samesign ugt i32 %i.ad, %i.h
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = zext nneg i8 %i.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ai, i32 noundef 16, ptr noundef nonnull @.str.57, i32 noundef %i.aj, i32 noundef %i.ad, i32 noundef %i.h) #8
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.ak = trunc nuw nsw i32 %i.ad to i8
  store i8 %i.ak, ptr %i.g, align 4, !tbaa !109
  %.not76 = icmp eq i32 %i.ad, 0
  br i1 %.not76, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.f
  %i.an = lshr i32 %i.af, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !38
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = and i32 %i.af, 7
  %i.at = shl i32 %i.ar, %i.as
  %i.au = lshr i32 %i.at, 28
  %i.av = add i32 %i.af, 4
  %i.aw = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.av) ; 4 uses
  store i32 %i.aw, ptr %i.r, align 8, !tbaa !48
  %i.ax = trunc nuw nsw i32 %i.au to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !111
  %i.az = lshr i32 %i.aw, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !38
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = and i32 %i.aw, 7
  %i.bf = shl i32 %i.bd, %i.be
  %i.bg = lshr i32 %i.bf, 27                      ; 4 uses
  %i.bh = add i32 %i.aw, 5
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.bh) ; 4 uses
  store i32 %i.bi, ptr %i.r, align 8, !tbaa !48
  %i.bj = lshr i32 %i.bi, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 1, !tbaa !38
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bm)
  %i.bo = and i32 %i.bi, 7
  %i.bp = shl i32 %i.bn, %i.bo
  %i.bq = lshr i32 %i.bp, 29                      ; 2 uses
  %i.br = add i32 %i.bi, 3
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.br)
  store i32 %i.bs, ptr %i.r, align 8, !tbaa !48
  %i.bt = add nsw i32 %i.bg, -17
  %or.cond = icmp ult i32 %i.bt, -16
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29
  %i.bw = zext nneg i8 %i.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bv, i32 noundef 16, ptr noundef nonnull @.str.58, i32 noundef %i.bw) #8
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.bx = add nuw nsw i32 %i.bq, %i.bg
  %i.by = icmp samesign ugt i32 %i.bx, 16
  br i1 %i.by, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.bz = sub nuw nsw i32 32, %i.bg
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 3 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29
  %i.cc = zext nneg i8 %i.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cb, i32 noundef 16, ptr noundef nonnull @.str.59, i32 noundef %i.cc) #8
  br label %.critedge

bb.j:                                             ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.cd = load i32, ptr %i.r, align 8, !tbaa !48  ; 3 uses
  %i.ce = load i32, ptr %i.t, align 8, !tbaa !47
  %i.cf = lshr i32 %i.cd, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !38
  %i.cj = tail call i32 @llvm.bswap.i32(i32 %i.ci)
  %i.ck = and i32 %i.cd, 7
  %i.cl = shl i32 %i.cj, %i.ck
  %i.cm = ashr i32 %i.cl, %i.bz
  %i.cn = add i32 %i.cd, %i.bg
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 %i.cn)
  store i32 %i.co, ptr %i.r, align 8, !tbaa !48
  %i.cp = shl nsw i32 %i.cm, %i.bq
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.k, label %bb.j, !llvm.loop !151

bb.k:                                             ; preds = %bb.j
  %i.cr = load i32, ptr %i.r, align 8, !tbaa !48  ; 4 uses
  %i.cs = lshr i32 %i.cr, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !38
  %i.cw = load i32, ptr %i.t, align 8, !tbaa !47  ; 3 uses
  %i.cx = icmp slt i32 %i.cr, %i.cw
  %i.cy = zext i1 %i.cx to i32
  %spec.select.i = add i32 %i.cr, %i.cy           ; 4 uses
  %i.cz = zext i8 %i.cv to i32
  %i.da = and i32 %i.cr, 7
  store i32 %spec.select.i, ptr %i.r, align 8, !tbaa !48
  %i.db = lshr exact i32 128, %i.da
  %i.dc = and i32 %i.db, %i.cz
  %.not73 = icmp eq i32 %i.dc, 0
  br i1 %.not73, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.de, i32 noundef 16, ptr noundef nonnull @.str.60) #8
  br label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.df = lshr i32 %spec.select.i, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 1, !tbaa !38
  %i.dj = tail call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dk = and i32 %spec.select.i, 7
  %i.dl = shl i32 %i.dj, %i.dk
  %i.dm = lshr i32 %i.dl, 28                      ; 3 uses
  %i.dn = add i32 %spec.select.i, 4
  %i.do = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.dn) ; 4 uses
  store i32 %i.do, ptr %i.r, align 8, !tbaa !48
  %i.dp = lshr i32 %i.do, 3
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 1, !tbaa !38
  %i.dt = tail call i32 @llvm.bswap.i32(i32 %i.ds)
  %i.du = and i32 %i.do, 7
  %i.dv = shl i32 %i.dt, %i.du
  %i.dw = lshr i32 %i.dv, 28
  %i.dx = add i32 %i.do, 4
  %i.dy = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.dx)
  store i32 %i.dy, ptr %i.r, align 8, !tbaa !48
  %.not74 = icmp eq i32 %i.dm, 0
  %i.dz = getelementptr i8, ptr %i.g, i64 4       ; 2 uses
  %i.ea = sub nuw nsw i32 32, %i.dm
  br i1 %.not74, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.m
  %i.eb = shl nuw nsw i64 %wide.trip.count, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dz, i8 0, i64 %i.eb, i1 false), !tbaa !37
  br label %.critedge

.split:                                           ; preds = %bb.m, %.split
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %.split ], [ 0, %bb.m ] ; 2 uses
  %i.ec = load i32, ptr %i.r, align 8, !tbaa !48  ; 3 uses
  %i.ed = load i32, ptr %i.t, align 8, !tbaa !47
  %i.ee = lshr i32 %i.ec, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 1, !tbaa !38
  %i.ei = tail call i32 @llvm.bswap.i32(i32 %i.eh)
  %i.ej = and i32 %i.ec, 7
  %i.ek = shl i32 %i.ei, %i.ej
  %i.el = ashr i32 %i.ek, %i.ea
  %i.em = add i32 %i.ec, %i.dm
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.ed, i32 %i.em)
  store i32 %i.en, ptr %i.r, align 8, !tbaa !48
  %i.eo = shl nsw i32 %i.el, %i.dw
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv81
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !37
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count
  br i1 %exitcond85.not, label %.critedge, label %.split, !llvm.loop !152

.critedge:                                        ; preds = %.split, %.split.us.preheader, %bb.k, %.thread, %bb.g, %bb.i, %bb.e, %bb.d, %bb.b
  %.3 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.d ], [ 0, %bb.e ], [ -1094995529, %bb.g ], [ -1094995529, %.thread ], [ -1094995529, %bb.i ], [ 0, %bb.k ], [ 0, %.split.us.preheader ], [ 0, %.split ]
  ret i32 %.3
}

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_side_data_update_matrix_encoding(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !31, i64 8}
!30 = !{!"MLPDecodeContext", !11, i64 0, !31, i64 8, !20, i64 16, !6, i64 40, !6, i64 44, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51, !7, i64 52, !7, i64 53, !6, i64 56, !6, i64 60, !7, i64 64, !6, i64 6784, !7, i64 6788, !7, i64 6852, !7, i64 7108, !7, i64 8400, !32, i64 13520, !12, i64 13544}
!31 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!32 = !{!"MLPDSPContext", !12, i64 0, !12, i64 8, !12, i64 16}
!33 = !{!34, !6, i64 1676}
!34 = !{!"SubStream", !7, i64 0, !7, i64 1, !35, i64 2, !7, i64 4, !7, i64 5, !15, i64 8, !7, i64 16, !7, i64 17, !15, i64 32, !6, i64 40, !6, i64 44, !7, i64 48, !7, i64 1360, !6, i64 1364, !7, i64 1368, !7, i64 1369, !7, i64 1370, !7, i64 1371, !7, i64 1379, !7, i64 1392, !7, i64 1648, !7, i64 1656, !35, i64 1664, !35, i64 1666, !7, i64 1668, !6, i64 1676}
!35 = !{!"short", !7, i64 0}
!36 = !{!30, !6, i64 20}
!37 = !{!6, !6, i64 0}
!38 = !{!7, !7, i64 0}
!39 = !{!20, !12, i64 16}
!40 = !{!12, !12, i64 0}
!41 = !{!42, !16, i64 24}
!42 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!43 = !{!42, !6, i64 32}
!44 = !{!45, !16, i64 0}
!45 = !{!"GetBitContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!46 = !{!45, !6, i64 12}
!47 = !{!45, !6, i64 16}
!48 = !{!45, !6, i64 8}
!49 = !{!30, !6, i64 40}
!50 = !{!51, !6, i64 8}
!51 = !{!"MLPHeaderInfo", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104}
!52 = !{!51, !6, i64 12}
!53 = !{!51, !6, i64 20}
!54 = !{!51, !6, i64 80}
!55 = !{!51, !6, i64 84}
!56 = !{!51, !6, i64 96}
!57 = !{!10, !6, i64 24}
!58 = !{!51, !6, i64 4}
!59 = !{!30, !6, i64 44}
!60 = !{!30, !6, i64 56}
!61 = !{!30, !6, i64 60}
!62 = !{!30, !7, i64 49}
!63 = !{!51, !6, i64 100}
!64 = !{!30, !7, i64 50}
!65 = !{!51, !6, i64 104}
!66 = !{!30, !7, i64 51}
!67 = !{!10, !6, i64 688}
!68 = !{!30, !7, i64 52}
!69 = !{!10, !6, i64 344}
!70 = !{!10, !6, i64 376}
!71 = !{!10, !6, i64 652}
!72 = !{!10, !6, i64 348}
!73 = !{!30, !12, i64 13536}
!74 = !{!34, !7, i64 16}
!75 = distinct !{null}
!76 = !{!30, !12, i64 13544}
!77 = !{!30, !7, i64 48}
!78 = !{!34, !7, i64 0}
!79 = !{!51, !6, i64 0}
!80 = !{!34, !15, i64 32}
!81 = !{!51, !15, i64 56}
!82 = !{!51, !15, i64 64}
!83 = !{!51, !6, i64 44}
!84 = !{!51, !15, i64 72}
!85 = !{!51, !6, i64 24}
!86 = !{!30, !7, i64 53}
!87 = !{!34, !6, i64 40}
!88 = !{!51, !6, i64 28}
!89 = !{!90, !6, i64 276}
!90 = !{!"AVFrame", !7, i64 0, !7, i64 64, !91, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !92, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !93, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!91 = !{!"p2 omnipotent char", !28, i64 0}
!92 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!93 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!94 = !{!35, !35, i64 0}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!34, !35, i64 1666}
!98 = !{!34, !7, i64 4}
!99 = !{!34, !7, i64 5}
!100 = !{!34, !15, i64 8}
!101 = !{!34, !35, i64 2}
!102 = !{!34, !7, i64 1360}
!103 = !{!34, !6, i64 1364}
!104 = !{!34, !7, i64 1368}
!105 = distinct !{!105, !96}
!106 = !{!34, !7, i64 1369}
!107 = !{!34, !7, i64 1370}
!108 = !{!34, !35, i64 1664}
!109 = !{!110, !7, i64 0}
!110 = !{!"FilterParams", !7, i64 0, !7, i64 1, !7, i64 4, !6, i64 36, !6, i64 40}
!111 = !{!110, !7, i64 1}
!112 = !{!113, !35, i64 152}
!113 = !{!"ChannelParams", !7, i64 0, !7, i64 88, !35, i64 152, !6, i64 156, !7, i64 160, !7, i64 161}
!114 = !{!113, !6, i64 156}
!115 = !{!113, !7, i64 160}
!116 = !{!113, !7, i64 161}
!117 = distinct !{!117, !96}
!118 = distinct !{null}
!119 = !{!30, !6, i64 6784}
!120 = distinct !{!120, !96}
!121 = distinct !{!121, !96}
!122 = distinct !{!122, !96}
!123 = distinct !{null}
!124 = distinct !{!124, !96}
!125 = distinct !{!125, !96}
!126 = distinct !{!126, !96}
!127 = !{!10, !6, i64 356}
!128 = distinct !{!128, !96}
!129 = !{!130, !131, i64 8}
!130 = !{!"VLC", !6, i64 0, !131, i64 8, !6, i64 16, !6, i64 20}
!131 = !{!"p1 _ZTS7VLCElem", !12, i64 0}
!132 = distinct !{!132, !96}
!133 = distinct !{!133, !96}
!134 = !{!30, !12, i64 13520}
end_hunk_0
