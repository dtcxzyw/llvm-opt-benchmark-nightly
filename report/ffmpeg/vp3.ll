Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3?download=true
inline.NumInlined: 159
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@vp3_decode_frame:bb.a
  %i.dpm = load i32, ptr %i.cyu, align 4, !tbaa !118
  %.not253.1 = icmp eq i32 %i.dpm, 0
  %i.dpn = select i1 %.not253.1, i32 3, i32 4
  %i.dpo = ashr i32 %.pre503, %i.dpn              ; 2 uses
  %i.dpp = add nsw i32 %i.dpo, -1
  call fastcc void @apply_loop_filter(ptr noundef nonnull %i.m, i32 noundef 1, i32 noundef %i.dpp, i32 noundef %i.dpo)
  %.pre504 = load i32, ptr %i.cys, align 4, !tbaa !129
  %i.dpq = load i32, ptr %i.cyu, align 4, !tbaa !118
  %.not253.2 = icmp eq i32 %i.dpq, 0
  %i.dpr = select i1 %.not253.2, i32 3, i32 4
  %i.dps = ashr i32 %.pre504, %i.dpr              ; 2 uses
  %i.dpt = add nsw i32 %i.dps, -1
  call fastcc void @apply_loop_filter(ptr noundef nonnull %i.m, i32 noundef 2, i32 noundef %i.dpt, i32 noundef %i.dps)
  %.pre505.pre = load i32, ptr %i.cys, align 4, !tbaa !129
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge434
  %i.dpu = phi i32 [ %.pre505.pre, %.loopexit.loopexit ], [ %.pre506, %._crit_edge434 ]
  call fastcc void @vp3_draw_horiz_band(ptr noundef nonnull %i.m, i32 noundef %i.dpu)
  call void @ff_progress_frame_unref(ptr noundef nonnull %i.ln) #11
  %i.dpv = load ptr, ptr %i.lq, align 8, !tbaa !78
  %i.dpw = call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.dpv) #11 ; 2 uses
  %i.dpx = icmp slt i32 %i.dpw, 0
  br i1 %i.dpx, label %bb.ne, label %bb.nc

bb.nc:                                            ; preds = %.loopexit
  %i.dpy = getelementptr inbounds nuw i8, ptr %i.m, i64 968
  %i.dpz = load i8, ptr %i.dpy, align 8, !tbaa !157 ; 2 uses
  %i.dqa = zext i8 %i.dpz to i64
  %i.dqb = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 %i.dqa, ptr %i.dqb, align 8, !tbaa !158
  %i.dqc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dqd = load i32, ptr %i.dqc, align 8, !tbaa !159
  %i.dqe = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dqf = load i32, ptr %i.dqe, align 8, !tbaa !160
  %i.dqg = zext i8 %i.dpz to i32
  %i.dqh = add i32 %i.dqf, %i.dqg
  %i.dqi = sub i32 %i.dqd, %i.dqh
  %i.dqj = sext i32 %i.dqi to i64
  %i.dqk = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 %i.dqj, ptr %i.dqk, align 8, !tbaa !161
  %i.dql = getelementptr inbounds nuw i8, ptr %i.m, i64 969
  %i.dqm = load i8, ptr %i.dql, align 1, !tbaa !162 ; 2 uses
  %i.dqn = zext i8 %i.dqm to i64
  %i.dqo = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 %i.dqn, ptr %i.dqo, align 8, !tbaa !163
  %i.dqp = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.dqq = load i32, ptr %i.dqp, align 4, !tbaa !164
  %i.dqr = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dqs = load i32, ptr %i.dqr, align 4, !tbaa !165
  %i.dqt = zext i8 %i.dqm to i32
  %i.dqu = add i32 %i.dqs, %i.dqt
  %i.dqv = sub i32 %i.dqq, %i.dqu
  %i.dqw = sext i32 %i.dqv to i64
  %i.dqx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i64 %i.dqw, ptr %i.dqx, align 8, !tbaa !166
  store i32 1, ptr %2, align 4, !tbaa !29
  br label %bb.ne

.sink.split:                                      ; preds = %bb.eb, %bb.ec, %bb.ke, %bb.kd, %.loopexit362, %._crit_edge166.i, %bb.ee, %.loopexit365, %bb.ha, %bb.kb
  %.str.39.sink = phi ptr [ @.str.38, %bb.kd ], [ @.str.37, %.loopexit362 ], [ @.str.34, %._crit_edge166.i ], [ @.str.36, %bb.kb ], [ @.str.35, %bb.ha ], [ @.str.33, %.loopexit365 ], [ @.str.34, %bb.ee ], [ @.str.39, %bb.ke ], [ @.str.34, %bb.ec ], [ @.str.34, %bb.eb ]
  %.2.ph = phi i32 [ %i.cxd, %bb.kd ], [ -1, %.loopexit362 ], [ -1, %._crit_edge166.i ], [ -1, %bb.kb ], [ -1, %bb.ha ], [ %.10215.i.ph, %.loopexit365 ], [ -1094995529, %bb.ee ], [ %i.cxf, %bb.ke ], [ -1094995529, %bb.eb ], [ -1, %bb.ec ]
  %i.dqy = load ptr, ptr %i.m, align 16, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dqy, i32 noundef 16, ptr noundef nonnull %.str.39.sink) #11
  br label %bb.nd

bb.nd:                                            ; preds = %.sink.split, %bb.ai, %bb.bc
  %.2 = phi i32 [ -12, %bb.ai ], [ %i.ra, %bb.bc ], [ %.2.ph, %.sink.split ]
  tail call void @ff_progress_frame_report(ptr noundef nonnull %i.lq, i32 noundef 2147483647) #11
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.ln) #11
  br label %bb.ne

bb.ne:                                            ; preds = %.loopexit, %bb.ag, %bb.af, %bb.nd, %bb.nc
  %.1206 = phi i32 [ %i.k, %bb.af ], [ %.2, %bb.nd ], [ %i.lo, %bb.ag ], [ %i.k, %bb.nc ], [ %i.dpw, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  br label %bb.nf

bb.nf:                                            ; preds = %bb.e, %.thread, %.thread339, %bb.k, %bb.h, %bb.j, %bb.a, %bb.ne, %bb.m
  %.2207 = phi i32 [ -1, %bb.m ], [ -1094995529, %bb.a ], [ %.1206, %bb.ne ], [ -1163346256, %bb.e ], [ %.0204338, %.thread ], [ -1, %bb.k ], [ %.1341, %.thread339 ], [ %i.k, %bb.h ], [ %i.k, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.2207
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @vp3_decode_end(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  tail call fastcc void @free_tables(ptr %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 31952
  tail call void @av_freep(ptr noundef nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !167
  tail call void @vp3_decode_flush(ptr noundef %0) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 29616
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.e) #11
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @vp3_decode_flush(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.e) #11
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @vp3_decode_init(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 47 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !168  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %switch.selectcmp = icmp ne i32 %i.d, 808669270
  %switch.select = zext i1 %switch.selectcmp to i32
  %switch.selectcmp300 = icmp eq i32 %i.d, 808734806
  %switch.select301 = select i1 %switch.selectcmp300, i32 3, i32 %switch.select
  store i32 %switch.select301, ptr %i.e, align 4, !tbaa !67
  store ptr %0, ptr %i.b, align 16, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.h = load <2 x i32>, ptr %i.f, align 8, !tbaa !29
  %i.i = add nsw <2 x i32> %i.h, splat (i32 15)
  %i.j = and <2 x i32> %i.i, splat (i32 -16)      ; 2 uses
  store <2 x i32> %i.j, ptr %i.g, align 8, !tbaa !29
  %i.k = extractelement <2 x i32> %i.j, i64 0
  %i.l = icmp slt i32 %i.k, 18
  br i1 %i.l, label %.thread246, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !169
  %.not = icmp eq i32 %i.n, 30
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.o, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 2, ptr %i.p, align 8, !tbaa !170
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !171
  %i.t = or i32 %i.s, 8388608
  tail call void @ff_hpeldsp_init(ptr noundef nonnull %i.q, i32 noundef %i.t) #11
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  tail call void @ff_videodsp_init(ptr noundef nonnull %i.u, i32 noundef 8) #11
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  tail call void @ff_vp3dsp_init(ptr noundef nonnull %i.v) #11
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  br label %bb.e

.preheader255:                                    ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 828
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, i8 -1, i64 12, i1 false), !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.ad = tail call i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #11 ; 2 uses
  %.not226 = icmp eq i32 %i.ad, 0
  br i1 %.not226, label %bb.f, label %.thread246

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.e ] ; 6 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = lshr i32 %i.ae, 3
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ag = shl i32 %indvars.iv.tr, 3
  %i.ah = and i32 %i.ag, 56
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = trunc nuw nsw i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !51  ; 2 uses
  %i.an = lshr i8 %i.am, 3
  %i.ao = shl i8 %i.am, 3
  %i.ap = and i8 %i.ao, 56
  %i.aq = or i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.preheader255, label %bb.e, !llvm.loop !172

bb.f:                                             ; preds = %.preheader255
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  %i.at = load <2 x i32>, ptr %i.g, align 8, !tbaa !29 ; 5 uses
  %i.au = add nsw <2 x i32> %i.at, splat (i32 31)
  %i.av = sdiv <2 x i32> %i.au, splat (i32 32)    ; 3 uses
  store <2 x i32> %i.av, ptr %i.as, align 16, !tbaa !29
  %i.aw = extractelement <2 x i32> %i.av, i64 0
  %i.ax = extractelement <2 x i32> %i.av, i64 1
  %i.ay = mul nsw i32 %i.ax, %i.aw                ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !173
  %i.ba = load i32, ptr %i.ab, align 16, !tbaa !119 ; 2 uses
  %i.bb = extractelement <2 x i32> %i.at, i64 0
  %i.bc = ashr i32 %i.bb, %i.ba                   ; 2 uses
  %i.bd = load i32, ptr %i.ac, align 4, !tbaa !118 ; 2 uses
  %i.be = extractelement <2 x i32> %i.at, i64 1
  %i.bf = ashr i32 %i.be, %i.bd                   ; 2 uses
  %i.bg = add nsw i32 %i.bc, 31
  %i.bh = sdiv i32 %i.bg, 32                      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 860
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !174
  %i.bj = add nsw i32 %i.bf, 31
  %i.bk = sdiv i32 %i.bj, 32                      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  store i32 %i.bk, ptr %i.bl, align 16, !tbaa !132
  %i.bm = mul nsw i32 %i.bk, %i.bh                ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 868
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !175
  %i.bo = shl nsw i32 %i.bm, 1
  %i.bp = add nsw i32 %i.bo, %i.ay
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 844
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !91
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 872
  store i32 %i.ay, ptr %i.br, align 8, !tbaa !176
  %i.bs = add nsw i32 %i.bm, %i.ay
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 876
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !177
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 892
  %i.bv = add nsw <2 x i32> %i.at, splat (i32 15)
  %i.bw = sdiv <2 x i32> %i.bv, splat (i32 16)    ; 3 uses
  store <2 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !29
  %i.bx = extractelement <2 x i32> %i.bw, i64 0
  %i.by = extractelement <2 x i32> %i.bw, i64 1
  %i.bz = mul nsw i32 %i.by, %i.bx                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 888
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !97
  %i.cb = add nsw i32 %i.bc, 15
  %i.cc = sdiv i32 %i.cb, 16                      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 904
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !178
  %i.ce = add nsw i32 %i.bf, 15
  %i.cf = sdiv i32 %i.ce, 16                      ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 908
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !179
  %i.ch = mul nsw i32 %i.cf, %i.cc                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 900
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !180
  %i.cj = shl nsw i32 %i.ch, 1
  %i.ck = add nsw i32 %i.cj, %i.bz
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  store i32 %i.ck, ptr %i.cl, align 16, !tbaa !105
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 920
  %2 = sdiv <2 x i32> %i.at, splat (i32 8)        ; 2 uses
  %3 = extractelement <2 x i32> %2, i64 0         ; 3 uses
  store i32 %3, ptr %1, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 928
  %4 = extractelement <2 x i32> %2, i64 1         ; 3 uses
  store i32 %4, ptr %i.cm, align 16, !tbaa !29
  %i.cn = ashr i32 %3, %i.ba                      ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 924
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !29
  %i.cp = ashr i32 %4, %i.bd                      ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 932
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !29
  %i.cr = mul nsw i32 %4, %3                      ; 3 uses
  %i.cs = mul nsw i32 %i.cp, %i.cn                ; 2 uses
  %i.ct = shl nsw i32 %i.cs, 1
  %i.cu = add nsw i32 %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 916
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !89
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 948
  store i32 %i.cr, ptr %i.cw, align 4, !tbaa !29
  %i.cx = add nsw i32 %i.cs, %i.cr
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 952
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !29
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !167
  %.not227 = icmp eq i32 %i.da, 0
  br i1 %.not227, label %.preheader254, label %.loopexit

.preheader254:                                    ; preds = %bb.f
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 992
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 1504
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 1632
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 37160
  %.pre = load i32, ptr %i.db, align 4, !tbaa !67
  %i.dj = icmp slt i32 %.pre, 2                   ; 7 uses
  %.in231.in.v = select i1 %i.dj, ptr @vp31_ac_scale_factor, ptr @vp4_ac_scale_factor
  %.in235.in.v = select i1 %i.dj, ptr @vp31_filter_limit_values, ptr @vp4_filter_limit_values
  br label %bb.g

.preheader253:                                    ; preds = %bb.g
  %i.dk = getelementptr i8, ptr %i.b, i64 26080
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 26086
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 26470
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dk, i8 1, i64 6, i1 false), !tbaa !51
  br label %.preheader252

bb.g:                                             ; preds = %.preheader254, %bb.g
  %indvars.iv273 = phi i64 [ 0, %.preheader254 ], [ %indvars.iv.next274, %bb.g ] ; 17 uses
  %i.dn = getelementptr inbounds nuw i8, ptr @vp31_dc_scale_factor, i64 %indvars.iv273 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr @vp4_y_dc_scale_factor, i64 %indvars.iv273
  %.in.in = select i1 %i.dj, ptr %i.dn, ptr %i.do
  %.in = load i8, ptr %.in.in, align 1, !tbaa !51
  %i.dp = zext i8 %.in to i16
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %indvars.iv273
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !68
  %i.dr = getelementptr inbounds nuw i8, ptr @vp4_uv_dc_scale_factor, i64 %indvars.iv273
  %.in230.in = select i1 %i.dj, ptr %i.dn, ptr %i.dr
  %.in230 = load i8, ptr %.in230.in, align 1, !tbaa !51
  %i.ds = zext i8 %.in230 to i16
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %indvars.iv273
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !68
  %.in231.in = getelementptr inbounds nuw [2 x i8], ptr %.in231.in.v, i64 %indvars.iv273
  %.in231 = load i16, ptr %.in231.in, align 2, !tbaa !68
  %i.du = zext i16 %.in231 to i32
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv273
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr @vp31_intra_y_dequant, i64 %indvars.iv273
  %i.dx = getelementptr inbounds nuw i8, ptr @vp4_generic_dequant, i64 %indvars.iv273 ; 3 uses
  %.in232.in = select i1 %i.dj, ptr %i.dw, ptr %i.dx
  %.in232 = load i8, ptr %.in232.in, align 1, !tbaa !51
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv273
  store i8 %.in232, ptr %i.dy, align 1, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 %indvars.iv273
  %.in233.in = select i1 %i.dj, ptr %i.dz, ptr %i.dx
  %.in233 = load i8, ptr %.in233.in, align 1, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv273
  store i8 %.in233, ptr %i.ea, align 1, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr @vp31_inter_dequant, i64 %indvars.iv273
  %.in234.in = select i1 %i.dj, ptr %i.eb, ptr %i.dx
  %.in234 = load i8, ptr %.in234.in, align 1, !tbaa !51
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv273
  store i8 %.in234, ptr %i.ec, align 1, !tbaa !51
  %.in235.in = getelementptr inbounds nuw i8, ptr %.in235.in.v, i64 %indvars.iv273
  %.in235 = load i8, ptr %.in235.in, align 1, !tbaa !51
  %i.ed = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv273
  store i8 %.in235, ptr %i.ed, align 1, !tbaa !51
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next274, 64
  br i1 %exitcond276.not, label %.preheader253, label %bb.g, !llvm.loop !181

.preheader252:                                    ; preds = %.preheader253, %bb.h
  %i.ee = phi i1 [ true, %.preheader253 ], [ false, %bb.h ]
  %indvars.iv281 = phi i64 [ 0, %.preheader253 ], [ 1, %bb.h ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [192 x i8], ptr %i.dl, i64 %indvars.iv281
  %i.eg = trunc nuw nsw i64 %indvars.iv281 to i16
  %i.eh = xor i16 %i.eg, 1
  %i.ei = getelementptr inbounds nuw [384 x i8], ptr %i.dm, i64 %indvars.iv281
  %indvars.iv281.tr = trunc nuw nsw i64 %indvars.iv281 to i16
  %i.ej = shl nuw nsw i16 %indvars.iv281.tr, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  br i1 %i.ee, label %.preheader252, label %.loopexit, !llvm.loop !182

bb.i:                                             ; preds = %.preheader252, %bb.i
  %indvars.iv277 = phi i64 [ 0, %.preheader252 ], [ %indvars.iv.next278, %bb.i ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [64 x i8], ptr %i.ef, i64 %indvars.iv277
  store i8 63, ptr %i.ek, align 2, !tbaa !51
  %.not229 = icmp eq i64 %indvars.iv277, 0
  %i.el = select i1 %.not229, i16 0, i16 %i.eh
  %i.em = or disjoint i16 %i.el, %i.ej            ; 2 uses
  %i.en = getelementptr inbounds nuw [128 x i8], ptr %i.ei, i64 %indvars.iv277 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i16 %i.em, ptr %i.eo, align 2, !tbaa !68
  store i16 %i.em, ptr %i.en, align 2, !tbaa !68
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next278, 3
  br i1 %exitcond280.not, label %bb.h, label %bb.i, !llvm.loop !183

.loopexit:                                        ; preds = %bb.h, %bb.f
  %i.ep = tail call i32 @ff_thread_sync_ref(ptr noundef %0, i64 noundef 29616) #11
  %.not236 = icmp eq i32 %i.ep, 0
  br i1 %.not236, label %.thread, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.eq = tail call ptr @av_refstruct_alloc_ext_c(i64 noundef 2560, i32 noundef 0, ptr null, ptr noundef nonnull @free_vlc_tables) #11 ; 6 uses
  %.not237 = icmp eq ptr %i.eq, null
  br i1 %.not237, label %.thread246, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 29616
  store ptr %i.eq, ptr %i.er, align 16, !tbaa !184
  %i.es = load i32, ptr %i.cz, align 4, !tbaa !167
  %.not238 = icmp eq i32 %i.es, 0
  br i1 %.not238, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 31960
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 640
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !67
  %i.ex = icmp sgt i32 %i.ew, 1
  %i.ey = select i1 %i.ex, ptr @vp4_bias, ptr @vp3_bias
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 640
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.n
  %indvars.iv288 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next289, %bb.n ] ; 4 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %indvars.iv288 ; 2 uses
  %i.fb = getelementptr inbounds nuw [64 x i8], ptr %i.ey, i64 %indvars.iv288 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = tail call i32 @ff_vlc_init_from_lengths(ptr noundef nonnull %i.fa, i32 noundef 11, i32 noundef 32, ptr noundef nonnull %i.fc, i32 noundef 2, ptr noundef nonnull %i.fb, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %0) #11 ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %.thread246, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !185
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv288
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !108
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond291 = icmp eq i64 %indvars.iv.next289, 80
  br i1 %exitcond291, label %.thread, label %bb.m, !llvm.loop !187

bb.o:                                             ; preds = %.preheader, %bb.p
  %indvars.iv284 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next285, %bb.p ] ; 4 uses
  %i.fi = getelementptr inbounds nuw [65 x i8], ptr %i.et, i64 %indvars.iv284 ; 3 uses
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %indvars.iv284 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !188
  %i.fm = zext i8 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fo = tail call i32 @ff_vlc_init_from_lengths(ptr noundef nonnull %i.fj, i32 noundef 11, i32 noundef %i.fm, ptr noundef nonnull %i.fi, i32 noundef 2, ptr noundef nonnull %i.fn, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %0) #11 ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, -1
  br i1 %i.fp, label %bb.p, label %.thread246

bb.p:                                             ; preds = %bb.o
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !185
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv284
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !108
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond287 = icmp eq i64 %indvars.iv.next285, 80
  br i1 %exitcond287, label %.thread, label %bb.o, !llvm.loop !190

.thread:                                          ; preds = %bb.p, %bb.n, %.loopexit
  %i.ft = tail call i32 @pthread_once(ptr noundef nonnull @vp3_decode_init.init_static_once, ptr noundef nonnull @init_tables_once) #11 ; 0 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.fu = tail call fastcc i32 @allocate_tables(ptr %.val) #12
  br label %.thread246

.thread246:                                       ; preds = %bb.o, %bb.m, %bb.j, %.preheader255, %bb.a, %.thread
  %.6 = phi i32 [ %i.ad, %.preheader255 ], [ -1163346256, %bb.a ], [ %i.fu, %.thread ], [ -12, %bb.j ], [ %i.fd, %bb.m ], [ %i.fo, %bb.o ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @ff_progress_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #3
end_hunk_0
