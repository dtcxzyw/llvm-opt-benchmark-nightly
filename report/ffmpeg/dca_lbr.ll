Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dca_lbr?download=true
inline.NumInlined: 114
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 45
begin_hunk_0_@ff_dca_lbr_filter_frame:bb.a
  store <4 x float> %i.bbg, ptr %i.bbf, align 4, !tbaa !9
  %i.bbh = fmul nsz <4 x float> %broadcast.splat180, <float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01>
  %i.bbi = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float 1.600000e+01, float 1.500000e+01, float 1.400000e+01, float 1.300000e+01>, <4 x float> %i.bbh)
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.avp, i64 448 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.bbj, align 4, !tbaa !9
  %i.bbk = fmul nsz <4 x float> %wide.load.4, %i.bbi
  store <4 x float> %i.bbk, ptr %i.bbj, align 4, !tbaa !9
  %i.bbl = fmul nsz <4 x float> %broadcast.splat180, <float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01>
  %i.bbm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float 1.200000e+01, float 1.100000e+01, float 1.000000e+01, float 9.000000e+00>, <4 x float> %i.bbl)
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.avp, i64 464 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.bbn, align 4, !tbaa !9
  %i.bbo = fmul nsz <4 x float> %wide.load.5, %i.bbm
  store <4 x float> %i.bbo, ptr %i.bbn, align 4, !tbaa !9
  %i.bbp = fmul nsz <4 x float> %broadcast.splat180, <float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01>
  %i.bbq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float 8.000000e+00, float 7.000000e+00, float 6.000000e+00, float 5.000000e+00>, <4 x float> %i.bbp)
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.avp, i64 480 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.bbr, align 4, !tbaa !9
  %i.bbs = fmul nsz <4 x float> %wide.load.6, %i.bbq
  store <4 x float> %i.bbs, ptr %i.bbr, align 4, !tbaa !9
  %i.bbt = fmul nsz <4 x float> %broadcast.splat180, <float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01>
  %i.bbu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float 4.000000e+00, float 3.000000e+00, float 2.000000e+00, float 1.000000e+00>, <4 x float> %i.bbt)
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.avp, i64 496 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.bbv, align 4, !tbaa !9
  %i.bbw = fmul nsz <4 x float> %wide.load.7, %i.bbu
  store <4 x float> %i.bbw, ptr %i.bbv, align 4, !tbaa !9
  br label %.loopexit.i102

.loopexit.i102:                                   ; preds = %vector.ph205, %bb.s
  %indvars.iv.next53.i = add nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i100
  br i1 %exitcond55.not.i, label %._crit_edge.i103, label %bb.s, !llvm.loop !141

._crit_edge.i103:                                 ; preds = %.loopexit.i102
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %lftr.wideiv148 = trunc i64 %indvars.iv.next57.i to i32
  %exitcond149 = icmp eq i32 %i.ave, %lftr.wideiv148
  br i1 %exitcond149, label %decode_part_stereo.exit, label %.lr.ph.i101, !llvm.loop !142

decode_part_stereo.exit:                          ; preds = %._crit_edge.i103, %bb.r, %.lr.ph45.i, %filter_ts.exit
  %i.bbx = icmp samesign ult i64 %i.be, %i.bc
  br i1 %i.bbx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %decode_part_stereo.exit
  %i.bby = load ptr, ptr %i.bb, align 8, !tbaa !143
  %i.bbz = getelementptr inbounds nuw i8, ptr %.072, i64 %i.be
  %i.bca = load i8, ptr %i.bbz, align 1, !tbaa !18
  %i.bcb = sext i8 %i.bca to i64
  %i.bcc = getelementptr inbounds [8 x i8], ptr %i.bby, i64 %i.bcb
  %i.bcd = load ptr, ptr %i.bcc, align 8, !tbaa !144
  %i.bce = trunc nuw nsw i64 %i.be to i32
  tail call fastcc void @transform_channel(ptr noundef nonnull %0, i32 noundef %i.bce, ptr noundef %i.bcd)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %decode_part_stereo.exit
  %i.bcf = icmp slt i32 %i.bj, %i.k
  %or.cond = select i1 %.not84, i1 %i.bcf, i1 false
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bcg = load ptr, ptr %i.bb, align 8, !tbaa !143
  %i.bch = getelementptr inbounds i8, ptr %.072, i64 %i.bk
  %i.bci = load i8, ptr %i.bch, align 1, !tbaa !18
  %i.bcj = sext i8 %i.bci to i64
  %i.bck = getelementptr inbounds [8 x i8], ptr %i.bcg, i64 %i.bcj
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !144
  tail call fastcc void @transform_channel(ptr noundef nonnull %0, i32 noundef %i.bj, ptr noundef %i.bcl)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bcm = load i32, ptr %i.ah, align 4, !tbaa !31 ; 2 uses
  %i.bcn = add nsw i32 %i.bcm, 1
  %i.bco = sdiv i32 %i.bcn, 2
  %i.bcp = sext i32 %i.bco to i64
  %i.bcq = icmp slt i64 %indvars.iv.next, %i.bcp
  br i1 %i.bcq, label %bb.b, label %._crit_edge, !llvm.loop !145

._crit_edge:                                      ; preds = %bb.w, %.preheader
  %i.bcr = load i32, ptr %i.v, align 8, !tbaa !35
  %i.bcs = and i32 %i.bcr, 2
  %.not82 = icmp eq i32 %i.bcs, 0
  br i1 %.not82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.bct = getelementptr inbounds nuw i8, ptr %0, i64 22240
  %i.bcu = load ptr, ptr %i.bct, align 16, !tbaa !146
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 152
  %i.bcw = load ptr, ptr %i.bcv, align 8, !tbaa !147
  %i.bcx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bcy = load ptr, ptr %i.bcx, align 8, !tbaa !143
  %i.bcz = getelementptr inbounds i8, ptr @lfe_index, i64 %i.f
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !18
  %i.bdb = zext i8 %i.bda to i64
  %i.bdc = getelementptr inbounds nuw [8 x i8], ptr %i.bcy, i64 %i.bdb
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !144
  %i.bde = getelementptr inbounds nuw i8, ptr %0, i64 13072
  %i.bdf = getelementptr inbounds nuw i8, ptr %0, i64 13328
  %i.bdg = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.bdh = shl i32 16, %i.bdg
  %i.bdi = sext i32 %i.bdh to i64
  tail call void %i.bcw(ptr noundef %i.bdd, ptr noundef nonnull %i.bde, ptr noundef nonnull @ff_dca_lfe_iir, ptr noundef nonnull %i.bdf, i64 noundef %i.bdi) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %i.bdj = tail call i32 @ff_side_data_update_matrix_encoding(ptr noundef %1, i32 noundef 0) #11
  %. = tail call i32 @llvm.smin.i32(i32 %i.bdj, i32 0)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.a
  %.074 = phi i32 [ %i.af, %bb.a ], [ %., %bb.y ]
  ret i32 %.074
}

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #4

declare i32 @av_channel_layout_from_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @transform_channel(ptr noundef %0, i32 noundef range(i32 -2147483648, 126) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x [4 x float]], align 16      ; 15 uses
  %i.b = alloca [64 x [4 x float]], align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i32, ptr %i.c, align 16, !tbaa !43  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %i.g = shl i32 8, %i.f                          ; 3 uses
  %i.h = icmp slt i32 %i.d, %i.g
  %i.i = sext i32 %i.d to i64                     ; 2 uses
  br i1 %i.h, label %bb.b, label %._crit_edge59

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.i
  %i.k = sub nsw i32 %i.g, %i.d
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.j, i8 0, i64 %i.m, i1 false)
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 22240
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7928
  %i.p = sext i32 %1 to i64                       ; 2 uses
  %i.q = getelementptr inbounds [256 x i8], ptr %i.o, i64 %i.p ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 22224
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 22216
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 22232 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12560 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9488
  %i.x = getelementptr inbounds [512 x i8], ptr %i.w, i64 %i.p ; 2 uses
  %i.y = shl i32 32, %i.f                         ; 3 uses
  %i.z = sext i32 %i.g to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.z
  %i.ab = sext i32 %i.y to i64
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.ac = icmp sgt i32 %i.d, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ad = icmp ult i32 %i.d, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge59, %bb.c
  %indvars.iv = phi i64 [ 0, %._crit_edge59 ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %.052 = phi ptr [ %2, %._crit_edge59 ], [ %i.cs, %bb.c ] ; 2 uses
  %i.ae = load ptr, ptr %i.n, align 16, !tbaa !146
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !148
  %i.ah = shl nuw nsw i64 %indvars.iv, 2
  call void %i.ag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.q, ptr noundef nonnull @ff_dca_bank_coeff, i64 noundef %i.ah, i64 noundef %i.i) #11
  %i.ai = add nsw i64 %indvars.iv, -22            ; 4 uses
  %i.aj = load i32, ptr %i.r, align 16, !tbaa !76
  %i.ak = trunc nsw i64 %i.ai to i32              ; 6 uses
  %i.al = ashr i32 %i.ak, 5
  %i.am = add nsw i32 %i.aj, %i.al                ; 2 uses
  %i.an = and i32 %i.ak, 31                       ; 2 uses
  %i.ao = add i32 %i.am, 31
  %i.ap = and i32 %i.ao, 31
  %i.aq = sub nsw i32 30, %i.an
  call fastcc void @synth_tones(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 126) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.ap, i32 noundef %i.aq)
  %i.ar = and i32 %i.am, 31
  call fastcc void @synth_tones(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 126) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.ar, i32 noundef %i.an)
  %i.as = load i32, ptr %i.r, align 16, !tbaa !76
  %i.at = shl i32 %i.as, 1
  %i.au = ashr i32 %i.ak, 4
  %i.av = add nsw i32 %i.at, %i.au                ; 2 uses
  %.tr = trunc i64 %i.ai to i32
  %i.aw = shl i32 %.tr, 1
  %i.ax = and i32 %i.aw, 30                       ; 2 uses
  %i.ay = or disjoint i32 %i.ax, 1
  %i.az = add i32 %i.av, 31
  %i.ba = and i32 %i.az, 31
  %i.bb = sub nsw i32 29, %i.ax
  call fastcc void @synth_tones(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 126) %1, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.ba, i32 noundef %i.bb)
  %i.bc = and i32 %i.av, 31
  call fastcc void @synth_tones(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 126) %1, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.bc, i32 noundef %i.ay)
  %i.bd = load i32, ptr %i.r, align 16, !tbaa !76
  %i.be = shl i32 %i.bd, 2
  %i.bf = ashr i32 %i.ak, 3
  %i.bg = add nsw i32 %i.be, %i.bf                ; 2 uses
  %.tr61 = trunc i64 %i.ai to i32
  %i.bh = shl i32 %.tr61, 2
  %i.bi = and i32 %i.bh, 28                       ; 2 uses
  %i.bj = or disjoint i32 %i.bi, 3
  %i.bk = add i32 %i.bg, 31
  %i.bl = and i32 %i.bk, 31
  %i.bm = sub nsw i32 27, %i.bi
  call fastcc void @synth_tones(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 126) %1, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %i.bl, i32 noundef %i.bm)
  %i.bn = and i32 %i.bg, 31
  call fastcc void @synth_tones(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 126) %1, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %i.bn, i32 noundef %i.bj)
  %i.bo = load i32, ptr %i.r, align 16, !tbaa !76
  %i.bp = shl i32 %i.bo, 3
  %i.bq = ashr i32 %i.ak, 2
  %i.br = add nsw i32 %i.bp, %i.bq                ; 2 uses
  %.tr62 = trunc i64 %i.ai to i32
  %i.bs = shl i32 %.tr62, 3
  %i.bt = and i32 %i.bs, 24                       ; 2 uses
  %i.bu = or disjoint i32 %i.bt, 7
  %i.bv = add i32 %i.br, 31
  %i.bw = and i32 %i.bv, 31
  %i.bx = sub nsw i32 23, %i.bt
  call fastcc void @synth_tones(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 126) %1, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef %i.bw, i32 noundef %i.bx)
  %i.by = and i32 %i.br, 31
  call fastcc void @synth_tones(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 126) %1, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef %i.by, i32 noundef %i.bu)
  %i.bz = load i32, ptr %i.r, align 16, !tbaa !76
  %i.ca = shl i32 %i.bz, 4
  %i.cb = ashr i32 %i.ak, 1
  %i.cc = add nsw i32 %i.ca, %i.cb                ; 2 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.cd = shl i32 %indvars.iv.tr, 4
  %i.ce = and i32 %i.cd, 16                       ; 2 uses
  %i.cf = or disjoint i32 %i.ce, 15
  %i.cg = add i32 %i.cc, 31
  %i.ch = and i32 %i.cg, 31
  %i.ci = sub nsw i32 15, %i.ce
  call fastcc void @synth_tones(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 126) %1, ptr noundef nonnull %i.a, i32 noundef 4, i32 noundef %i.ch, i32 noundef %i.ci)
  %i.cj = and i32 %i.cc, 31
  call fastcc void @synth_tones(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 126) %1, ptr noundef nonnull %i.a, i32 noundef 4, i32 noundef %i.cj, i32 noundef %i.cf)
  %i.ck = load ptr, ptr %i.s, align 16, !tbaa !149
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !150
  call void %i.ck(ptr noundef %i.cl, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 4) #11
  %i.cm = load ptr, ptr %i.u, align 8, !tbaa !151
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !152
  call void %i.co(ptr noundef %.052, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v, ptr noundef nonnull %i.x, i32 noundef %i.y) #11
  %i.cp = load ptr, ptr %i.u, align 8, !tbaa !151
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !154
  call void %i.cr(ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.v, i32 noundef %i.y) #11
  %i.cs = getelementptr inbounds [4 x i8], ptr %.052, i64 %i.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !155

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv55 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next56.3, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv55
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !129 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cv, ptr noundef nonnull align 4 dereferenceable(32) %i.cw, i64 32, i1 false)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv55
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !129 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.da, ptr noundef nonnull align 4 dereferenceable(32) %i.db, i64 32, i1 false)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv55
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !129 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.df, ptr noundef nonnull align 4 dereferenceable(32) %i.dg, i64 32, i1 false)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv55
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !129 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dk, ptr noundef nonnull align 4 dereferenceable(32) %i.dl, i64 32, i1 false)
  %indvars.iv.next56.3 = add nuw nsw i64 %indvars.iv55, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !156

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv55.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next56.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod63)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv55.epil = phi i64 [ %indvars.iv55.epil.init, %.epil.preheader ], [ %indvars.iv.next56.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv55.epil
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !129 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.do, ptr noundef nonnull align 4 dereferenceable(32) %i.dp, i64 32, i1 false)
  %indvars.iv.next56.epil = add nuw nsw i64 %indvars.iv55.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !157

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare i32 @ff_side_data_update_matrix_encoding(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_dca_lbr_flush(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 16, !tbaa !29
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.c, i8 16, i64 240, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2304) %i.d, i8 0, i64 2304, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3072) %i.e, i8 0, i64 3072, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 13378
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.f, i8 0, i64 640, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 13328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.h, align 16, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 22212
  store i32 0, ptr %i.i, align 4, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7928
  %.pre = load i32, ptr %i.m, align 16, !tbaa !43
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.o = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.y, %._crit_edge ]
  %i.p = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.z, %._crit_edge ] ; 2 uses
  %indvars.iv21 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next22, %._crit_edge ] ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw [256 x i8], ptr %i.n, i64 %indvars.iv21
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !129
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i32, ptr %i.m, align 16, !tbaa !43  ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !158

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre24 = load i32, ptr %i.j, align 4, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.y = phi i32 [ %.pre24, %._crit_edge.loopexit ], [ %i.o, %.preheader ] ; 2 uses
  %i.z = phi i32 [ %i.v, %._crit_edge.loopexit ], [ %i.p, %.preheader ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %i.aa = sext i32 %i.y to i64
  %i.ab = icmp slt i64 %indvars.iv.next22, %i.aa
  br i1 %i.ab, label %.preheader, label %.loopexit, !llvm.loop !159

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -12, 1) i32 @ff_dca_lbr_init(ptr nofree noundef writeonly captures(none) initializes((22232, 22240)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @avpriv_float_dsp_alloc(i32 noundef 0) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22232
  store ptr %i.a, ptr %i.b, align 8, !tbaa !151
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.c, align 4, !tbaa !130
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind optsize uwtable
define void @ff_dca_lbr_close(ptr noundef initializes((32, 36)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 16, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9464
  tail call void @av_freep(ptr noundef nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9472
  store i32 0, ptr %i.c, align 16, !tbaa !160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22232
  tail call void @av_freep(ptr noundef nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22216
  tail call void @av_tx_uninit(ptr noundef nonnull %i.e) #11
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #4

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #4

end_hunk_0
