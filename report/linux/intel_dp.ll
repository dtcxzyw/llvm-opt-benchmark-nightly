inline.NumInlined: 1015
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@intel_dp_compute_config_limits:bb.a
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %intel_dp_min_link_rate.exit, label %.lr.ph.i.i.i.i, !llvm.loop !30

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.e ] ; 2 uses
  %i.q = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  %i.r = xor i32 %i.q, -1
  %i.s = add i32 %i.o, %i.r                       ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [4 x i8], ptr %i.m, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %.not.i.i.i.i = icmp sgt i32 %i.v, %i.l
  br i1 %.not.i.i.i.i, label %bb.e, label %intel_dp_min_link_rate.exit

intel_dp_min_link_rate.exit:                      ; preds = %bb.e, %.lr.ph.i.i.i.i, %bb.c, %bb.d
  %.sink.i = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.s, %.lr.ph.i.i.i.i ], [ 0, %bb.e ]
  %i.w = tail call i32 @intel_dp_common_rate(ptr noundef readonly %0, i32 noundef %.sink.i) #17
  store i32 %i.w, ptr %5, align 4
  %i.x = load i32, ptr %i.k, align 8              ; 2 uses
  %.not.i134 = icmp eq i32 %i.x, 0
  br i1 %.not.i134, label %bb.h, label %bb.f

bb.f:                                             ; preds = %intel_dp_min_link_rate.exit
  %i.y = getelementptr i8, ptr %0, i64 160
  %i.z = getelementptr i8, ptr %0, i64 156
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i.i135, label %intel_dp_max_link_rate.exit

.lr.ph.preheader.i.i.i.i135:                      ; preds = %bb.f
  %wide.trip.count.i.i.i.i136 = zext nneg i32 %i.aa to i64
  br label %.lr.ph.i.i.i.i137

bb.g:                                             ; preds = %.lr.ph.i.i.i.i137
  %indvars.iv.next.i.i.i.i140 = add nuw nsw i64 %indvars.iv.i.i.i.i138, 1 ; 2 uses
  %exitcond.not.i.i.i.i141 = icmp eq i64 %indvars.iv.next.i.i.i.i140, %wide.trip.count.i.i.i.i136
  br i1 %exitcond.not.i.i.i.i141, label %intel_dp_max_link_rate.exit, label %.lr.ph.i.i.i.i137, !llvm.loop !30

.lr.ph.i.i.i.i137:                                ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i135
  %indvars.iv.i.i.i.i138 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i135 ], [ %indvars.iv.next.i.i.i.i140, %bb.g ] ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.i.i.i.i138 to i32
  %i.ad = xor i32 %i.ac, -1
  %i.ae = add i32 %i.aa, %i.ad                    ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.y, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %.not.i.i.i.i139 = icmp sgt i32 %i.ah, %i.x
  br i1 %.not.i.i.i.i139, label %bb.g, label %intel_dp_max_link_rate.exit

bb.h:                                             ; preds = %intel_dp_min_link_rate.exit
  %i.ai = getelementptr i8, ptr %0, i64 232
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %0, i64 160
  %i.al = getelementptr i8, ptr %0, i64 156
  %i.am = load i32, ptr %i.al, align 4            ; 3 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i, label %intel_dp_max_link_rate.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.h
  %wide.trip.count.i.i.i = zext nneg i32 %i.am to i64
  br label %.lr.ph.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.intel_dp_common_len_rate_limit.exit.loopexit.i_crit_edge, label %.lr.ph.i.i.i, !llvm.loop !30

.intel_dp_common_len_rate_limit.exit.loopexit.i_crit_edge: ; preds = %bb.i
  br label %intel_dp_max_link_rate.exit, !llvm.loop !30

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.i ] ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.ap = sub i32 %i.am, %i.ao                    ; 2 uses
  %i.aq = add i32 %i.ap, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ak, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %.not.i.i.i = icmp sgt i32 %i.at, %i.aj
  br i1 %.not.i.i.i, label %bb.i, label %intel_dp_common_len_rate_limit.exit.loopexit.isplit

intel_dp_common_len_rate_limit.exit.loopexit.isplit: ; preds = %.lr.ph.i.i.i
  %i.au = add i32 %i.ap, -1
  br label %intel_dp_max_link_rate.exit

intel_dp_max_link_rate.exit:                      ; preds = %bb.g, %.lr.ph.i.i.i.i137, %.intel_dp_common_len_rate_limit.exit.loopexit.i_crit_edge, %intel_dp_common_len_rate_limit.exit.loopexit.isplit, %bb.f, %bb.h
  %.09.i.i.sink.i = phi i32 [ -1, %bb.h ], [ 0, %bb.f ], [ %i.au, %intel_dp_common_len_rate_limit.exit.loopexit.isplit ], [ -1, %.intel_dp_common_len_rate_limit.exit.loopexit.i_crit_edge ], [ %i.ae, %.lr.ph.i.i.i.i137 ], [ 0, %bb.g ]
  %i.av = tail call i32 @intel_dp_common_rate(ptr noundef readonly %0, i32 noundef %.09.i.i.sink.i) #17 ; 2 uses
  %i.aw = getelementptr i8, ptr %5, i64 4         ; 3 uses
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = load i32, ptr %5, align 4
  %i.ay = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.av)
  store i32 %i.ay, ptr %5, align 4
  %i.az = getelementptr i8, ptr %0, i64 244       ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4            ; 3 uses
  %.not.i142 = icmp eq i32 %i.ba, 0
  br i1 %.not.i142, label %intel_dp_min_lane_count.exit, label %forced_lane_count.exit.i

forced_lane_count.exit.i:                         ; preds = %intel_dp_max_link_rate.exit
  %i.bb = getelementptr i8, ptr %0, i64 192
  %.val.i = load i32, ptr %i.bb, align 8          ; 2 uses
  %.not.i.i = icmp slt i32 %i.ba, %.val.i
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 1)
  %i.bd = select i1 %.not.i.i, i32 %i.bc, i32 %.val.i
  br label %intel_dp_min_lane_count.exit

intel_dp_min_lane_count.exit:                     ; preds = %intel_dp_max_link_rate.exit, %forced_lane_count.exit.i
  %.0.i = phi i32 [ %i.bd, %forced_lane_count.exit.i ], [ 1, %intel_dp_max_link_rate.exit ]
  %i.be = getelementptr i8, ptr %5, i64 8         ; 2 uses
  store i32 %.0.i, ptr %i.be, align 4
  %i.bf = load i32, ptr %i.az, align 4            ; 3 uses
  %.not.i143 = icmp eq i32 %i.bf, 0
  br i1 %.not.i143, label %bb.j, label %forced_lane_count.exit.i145

forced_lane_count.exit.i145:                      ; preds = %intel_dp_min_lane_count.exit
  %i.bg = getelementptr i8, ptr %0, i64 192
  %.val.i144 = load i32, ptr %i.bg, align 8       ; 2 uses
  %.not.i.i146 = icmp slt i32 %i.bf, %.val.i144
  %i.bh = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 1)
  %spec.select = select i1 %.not.i.i146, i32 %i.bh, i32 %.val.i144
  br label %select.unfold.i

bb.j:                                             ; preds = %intel_dp_min_lane_count.exit
  %i.bi = getelementptr i8, ptr %0, i64 228
  %i.bj = load i32, ptr %i.bi, align 4
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %forced_lane_count.exit.i145, %bb.j
  %.013.i = phi i32 [ %spec.select, %forced_lane_count.exit.i145 ], [ %i.bj, %bb.j ] ; 5 uses
  switch i32 %.013.i, label %bb.k [
    i32 1, label %intel_dp_max_lane_count.exit
    i32 2, label %intel_dp_max_lane_count.exit
    i32 4, label %intel_dp_max_lane_count.exit
  ]

bb.k:                                             ; preds = %select.unfold.i
  %i.bk = sext i32 %.013.i to i64
  %i.bl = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.2, i32 411, i32 2321, i64 16) #16, !srcloc !13
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bl, ptr noundef nonnull @.str.4, i64 noundef %i.bk) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !14
  br label %intel_dp_max_lane_count.exit

intel_dp_max_lane_count.exit:                     ; preds = %select.unfold.i, %select.unfold.i, %select.unfold.i, %bb.k
  %.0.i147 = phi i32 [ 1, %bb.k ], [ %.013.i, %select.unfold.i ], [ %.013.i, %select.unfold.i ], [ %.013.i, %select.unfold.i ]
  %i.bm = getelementptr i8, ptr %5, i64 12        ; 3 uses
  store i32 %.0.i147, ptr %i.bm, align 4
  %i.bn = getelementptr i8, ptr %2, i64 4392      ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %intel_dp_min_bpp.exit

bb.l:                                             ; preds = %intel_dp_max_lane_count.exit
  %i.bq = tail call i32 @intel_display_min_pipe_bpp() #15
  br label %intel_dp_min_bpp.exit

intel_dp_min_bpp.exit:                            ; preds = %intel_dp_max_lane_count.exit, %bb.l
  %.0.i148 = phi i32 [ %i.bq, %bb.l ], [ 24, %intel_dp_max_lane_count.exit ]
  %i.br = getelementptr i8, ptr %5, i64 16        ; 10 uses
  store i32 %.0.i148, ptr %i.br, align 4
  br i1 %.not169, label %bb.n, label %bb.m

bb.m:                                             ; preds = %intel_dp_min_bpp.exit
  %i.bs = getelementptr i8, ptr %2, i64 1236
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 24)
  br label %intel_dp_max_bpp.exit

bb.n:                                             ; preds = %intel_dp_min_bpp.exit
  %i.bv = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i149 = icmp eq ptr %i.bv, null
  br i1 %.not.i149, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = tail call ptr @__drm_to_display(ptr noundef nonnull %i.bv) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bx = phi ptr [ %i.bw, %bb.o ], [ null, %bb.n ]
  %i.by = getelementptr i8, ptr %0, i64 1816      ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 3 uses
  %i.ca = getelementptr i8, ptr %2, i64 1236
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = sdiv i32 %i.cb, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %0, i64 3192      ; 2 uses
  %i.ce = getelementptr i8, ptr %0, i64 3208
  %i.cf = load i8, ptr %i.ce, align 8             ; 2 uses
  %.not47.i = icmp eq i8 %i.cf, 0
  %i.cg = zext i8 %i.cf to i32
  %i.ch = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 %i.cg)
  %.042.i = select i1 %.not47.i, i32 %i.cc, i32 %i.ch ; 3 uses
  %i.ci = load i32, ptr %i.cd, align 8
  %.not48.i = icmp eq i32 %i.ci, 0
  br i1 %.not48.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr i8, ptr %2, i64 644
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = getelementptr i8, ptr %2, i64 4396
  %i.cm = getelementptr i8, ptr %0, i64 3196
  br i1 %3, label %.split.us.i.preheader.i, label %.split.i.i

.split.us.i.preheader.i:                          ; preds = %bb.q
  %i.cn = tail call i32 @llvm.smax.i32(i32 range(i32 -715827882, 715827883) %.042.i, i32 8)
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %intel_dp_tmds_clock_valid.exit.us.i.i, %.split.us.i.preheader.i
  %.02325.us.i.i = phi i32 [ %i.dd, %intel_dp_tmds_clock_valid.exit.us.i.i ], [ %i.cn, %.split.us.i.preheader.i ] ; 5 uses
  %i.co = load ptr, ptr %i.by, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 237
  %i.cq = load i8, ptr %i.cp, align 1, !range !18, !noundef !19
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = tail call zeroext i1 @intel_hdmi_bpc_possible(ptr noundef %2, i32 noundef %.02325.us.i.i, i1 noundef zeroext %i.cr) #15
  br i1 %i.cs, label %bb.r, label %intel_dp_tmds_clock_valid.exit.us.i.i

bb.r:                                             ; preds = %.split.us.i.i
  %i.ct = load i32, ptr %i.cl, align 4
  %i.cu = tail call i32 @intel_hdmi_tmds_clock(i32 noundef %i.ck, i32 noundef range(i32 8, 715827883) %.02325.us.i.i, i32 noundef %i.ct) #15 ; 2 uses
  %i.cv = load i32, ptr %i.cd, align 8            ; 2 uses
  %i.cw = load i32, ptr %i.cm, align 4            ; 3 uses
  %.not.i.i.us.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.us.i.i, label %intel_dp_max_tmds_clock.exit.i.us.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.by, align 8
  %i.cy = getelementptr i8, ptr %i.cx, i64 232
  %i.cz = load i32, ptr %i.cy, align 8            ; 2 uses
  %.not18.i.i.us.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not18.i.i.us.i.i, label %intel_dp_max_tmds_clock.exit.i.us.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.cz)
  br label %intel_dp_max_tmds_clock.exit.i.us.i.i

intel_dp_max_tmds_clock.exit.i.us.i.i:            ; preds = %bb.t, %bb.s, %bb.r
  %.0.i.i.us.i.i = phi i32 [ %i.da, %bb.t ], [ %i.cw, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %.not.i.us.i.i = icmp ne i32 %i.cv, 0
  %i.db = icmp slt i32 %i.cu, %i.cv
  %or.cond.i.us.i.i = select i1 %.not.i.us.i.i, i1 %i.db, i1 false
  br i1 %or.cond.i.us.i.i, label %intel_dp_tmds_clock_valid.exit.us.i.i, label %bb.u

bb.u:                                             ; preds = %intel_dp_max_tmds_clock.exit.i.us.i.i
  %.not14.i.us.i.i = icmp ne i32 %.0.i.i.us.i.i, 0
  %i.dc = icmp sgt i32 %i.cu, %.0.i.i.us.i.i
  %or.cond15.i.us.i.i = select i1 %.not14.i.us.i.i, i1 %i.dc, i1 false
  br i1 %or.cond15.i.us.i.i, label %intel_dp_tmds_clock_valid.exit.us.i.i, label %intel_dp_hdmi_compute_bpc.exit.thread.i

intel_dp_tmds_clock_valid.exit.us.i.i:            ; preds = %bb.u, %intel_dp_max_tmds_clock.exit.i.us.i.i, %.split.us.i.i
  %i.dd = add nsw i32 %.02325.us.i.i, -2
  %i.de = icmp sgt i32 %.02325.us.i.i, 9
  br i1 %i.de, label %.split.us.i.i, label %intel_dp_max_bpp.exit, !llvm.loop !48

.split.i.i:                                       ; preds = %bb.q
  %6 = getelementptr i8, ptr %i.bz, i64 237
  %7 = load i8, ptr %6, align 1, !range !18, !noundef !19
  %8 = trunc nuw i8 %7 to i1
  %9 = tail call zeroext i1 @intel_hdmi_bpc_possible(ptr noundef %2, i32 noundef 8, i1 noundef zeroext %8) #15
  br i1 %9, label %intel_dp_hdmi_compute_bpc.exit.thread.i, label %intel_dp_max_bpp.exit

intel_dp_hdmi_compute_bpc.exit.thread.i:          ; preds = %bb.u, %.split.i.i
  %.us-phi.i.ph.i = phi i32 [ 8, %.split.i.i ], [ %.02325.us.i.i, %bb.u ]
  %i.df = tail call i32 @llvm.smin.i32(i32 %.042.i, i32 %.us-phi.i.ph.i)
  br label %bb.v

bb.v:                                             ; preds = %intel_dp_hdmi_compute_bpc.exit.thread.i, %bb.p
  %.2.i = phi i32 [ %i.df, %intel_dp_hdmi_compute_bpc.exit.thread.i ], [ %.042.i, %bb.p ]
  %i.dg = mul i32 %.2.i, 3                        ; 4 uses
  %i.dh = getelementptr i8, ptr %0, i64 -352
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = icmp eq i32 %i.di, 8
  br i1 %i.dj, label %bb.w, label %intel_dp_max_bpp.exit

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr i8, ptr %i.bz, i64 200
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.x, label %intel_dp_max_bpp.exit

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr i8, ptr %i.bz, i64 2480   ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8            ; 3 uses
  %.not49.i = icmp ne i32 %i.do, 0
  %i.dp = icmp slt i32 %i.do, %i.dg
  %or.cond.i = select i1 %.not49.i, i1 %i.dp, i1 false
  br i1 %or.cond.i, label %bb.y, label %intel_dp_max_bpp.exit

bb.y:                                             ; preds = %bb.x
  %i.dq = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i150, label %__drm_to_dev.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.z, %bb.y
  %i.dt = phi ptr [ %i.ds, %bb.z ], [ null, %bb.y ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dt, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef %i.do) #15
  %i.du = load i32, ptr %i.dn, align 8
  br label %intel_dp_max_bpp.exit

intel_dp_max_bpp.exit:                            ; preds = %intel_dp_tmds_clock_valid.exit.us.i.i, %__drm_to_dev.exit.i, %bb.x, %bb.w, %bb.v, %.split.i.i, %bb.m
  %.1.i.sink = phi i32 [ %i.bu, %bb.m ], [ %i.dg, %bb.w ], [ %i.du, %__drm_to_dev.exit.i ], [ %i.dg, %bb.v ], [ %i.dg, %bb.x ], [ 0, %.split.i.i ], [ 0, %intel_dp_tmds_clock_valid.exit.us.i.i ]
  %i.dv = getelementptr i8, ptr %5, i64 20
  store i32 %.1.i.sink, ptr %i.dv, align 4
  br i1 %4, label %intel_dp_in_hdr_mode.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %intel_dp_max_bpp.exit
  %i.dw = getelementptr i8, ptr %1, i64 152
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not.i151 = icmp eq ptr %i.dx, null
  br i1 %.not.i151, label %intel_dp_in_hdr_mode.exit.thread, label %intel_dp_in_hdr_mode.exit

intel_dp_in_hdr_mode.exit:                        ; preds = %bb.aa
  %i.dy = getelementptr i8, ptr %i.dx, i64 80
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %i.eb = load i8, ptr %i.ea, align 4
  %i.ec = icmp eq i8 %i.eb, 2
  br i1 %i.ec, label %bb.ab, label %intel_dp_in_hdr_mode.exit.thread

bb.ab:                                            ; preds = %intel_dp_in_hdr_mode.exit
  %i.ed = tail call zeroext i1 @intel_dp_supports_dsc(ptr noundef %0, ptr noundef %i.j, ptr noundef %2) #17
  br i1 %i.ed, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr i8, ptr %5, i64 20        ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4            ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 29
  br i1 %i.eg, label %.thread167, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eh = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i153 = icmp eq ptr %i.eh, null
  br i1 %.not.i153, label %__drm_to_dev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.ad, %bb.ae
  %i.ek = phi ptr [ %i.ej, %bb.ae ], [ null, %bb.ad ]
  %i.el = getelementptr i8, ptr %i.j, i64 64
  %i.em = load i32, ptr %i.el, align 8
  %i.en = getelementptr i8, ptr %i.j, i64 96
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = load i32, ptr %i.br, align 4
  %i.eq = getelementptr i8, ptr %5, i64 20
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = tail call zeroext i1 @intel_dp_supports_dsc(ptr noundef %0, ptr noundef %i.j, ptr noundef %2) #17
  %i.et = select i1 %i.es, ptr @.str.63, ptr @.str.64
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ek, i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef %i.em, ptr noundef %i.eo, i32 noundef %i.ep, i32 noundef %i.er, ptr noundef nonnull %i.et) #15
  br label %intel_dp_in_hdr_mode.exit.thread

intel_dp_in_hdr_mode.exit.thread:                 ; preds = %bb.aa, %__drm_to_dev.exit, %intel_dp_in_hdr_mode.exit, %intel_dp_max_bpp.exit
  %.pr = load i32, ptr %i.br, align 4             ; 6 uses
  %i.eu = icmp slt i32 %.pr, 1
  br i1 %i.eu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %intel_dp_in_hdr_mode.exit.thread
  %i.ev = getelementptr i8, ptr %5, i64 20        ; 7 uses
  %i.ew = load i32, ptr %i.ev, align 4            ; 3 uses
  %i.ex = icmp sgt i32 %.pr, %i.ew
  br i1 %i.ex, label %bb.ag, label %bb.ai

.thread167:                                       ; preds = %bb.ac
  %i.ey = load i32, ptr %i.br, align 4            ; 2 uses
  %i.ez = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 30) ; 3 uses
  store i32 %i.ez, ptr %i.br, align 4
  %i.fa = icmp sgt i32 %i.ey, %i.ef
  br i1 %i.fa, label %bb.ag, label %.thread168

bb.ag:                                            ; preds = %.thread167, %bb.af, %intel_dp_in_hdr_mode.exit.thread
  %i.fb = phi i32 [ %.pr, %bb.af ], [ %.pr, %intel_dp_in_hdr_mode.exit.thread ], [ %i.ez, %.thread167 ]
  %i.fc = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i154 = icmp eq ptr %i.fc, null
  br i1 %.not.i154, label %__drm_to_dev.exit155, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  br label %__drm_to_dev.exit155

__drm_to_dev.exit155:                             ; preds = %bb.ag, %bb.ah
  %i.ff = phi ptr [ %i.fe, %bb.ah ], [ null, %bb.ag ]
  %i.fg = getelementptr i8, ptr %i.j, i64 64
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = getelementptr i8, ptr %i.j, i64 96
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr i8, ptr %5, i64 20
  %i.fl = load i32, ptr %i.fk, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ff, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %i.fh, ptr noundef %i.fj, i32 noundef %i.fb, i32 noundef %i.fl) #15
  br label %intel_dp_compute_config_link_bpp_limits.exit

bb.ai:                                            ; preds = %bb.af
  br i1 %4, label %bb.aj, label %.thread168

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i156 = icmp eq ptr %i.fm, null
  br i1 %.not.i156, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fn = tail call ptr @__drm_to_display(ptr noundef nonnull %i.fm) #15
  %.sroa.4.0.copyload.i.pre = load i32, ptr %i.br, align 4
  %.sroa.5.0.copyload.i.pre = load i32, ptr %i.ev, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.5.0.copyload.i = phi i32 [ %.sroa.5.0.copyload.i.pre, %bb.ak ], [ %i.ew, %bb.aj ]
  %.sroa.4.0.copyload.i = phi i32 [ %.sroa.4.0.copyload.i.pre, %bb.ak ], [ %.pr, %bb.aj ] ; 2 uses
  %i.fo = phi ptr [ %i.fn, %bb.ak ], [ null, %bb.aj ] ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 1168
  %i.fq = load i16, ptr %i.fp, align 8            ; 2 uses
  %i.fr = icmp ugt i16 %i.fq, 11
  %i.fs = icmp eq i16 %i.fq, 11
  %i.ft = tail call i32 @llvm.smax.i32(i32 %.sroa.4.0.copyload.i, i32 24) ; 2 uses
  store i32 %i.ft, ptr %i.br, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.c, i8 0, i64 3, i1 false), !annotation !28
  %i.fu = getelementptr i8, ptr %i.j, i64 2728    ; 2 uses
  %i.fv = call i32 @drm_dp_dsc_sink_supported_input_bpcs(ptr noundef %i.fu, ptr noundef nonnull %i.c) #15
  %i.fw = zext i32 %i.fv to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.an ], [ %i.fw, %bb.al ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.fx = and i64 %indvars.iv.next.i.i, 2147483648
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %bb.an, label %align_min_sink_dsc_input_bpp.exit.i

bb.an:                                            ; preds = %bb.am
  %i.fz = and i64 %indvars.iv.next.i.i, 2147483647
  %i.ga = getelementptr i8, ptr %i.c, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = zext i8 %i.gb to i32
  %i.gd = mul nuw nsw i32 %i.gc, 3                ; 2 uses
  %.not.i.i158 = icmp samesign ult i32 %i.gd, %i.ft
  br i1 %.not.i.i158, label %bb.am, label %align_min_sink_dsc_input_bpp.exit.i, !llvm.loop !49

align_min_sink_dsc_input_bpp.exit.i:              ; preds = %bb.an, %bb.am
  %.07.i.i = phi i32 [ %i.gd, %bb.an ], [ 0, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  store i32 %.07.i.i, ptr %i.br, align 4
  %i.ge = select i1 %i.fs, i32 30, i32 24
  %i.gf = select i1 %i.fr, i32 36, i32 %i.ge      ; 2 uses
  %i.gg = load i32, ptr %i.ev, align 4
  %i.gh = call i32 @llvm.smin.i32(i32 %i.gg, i32 %i.gf) ; 2 uses
  store i32 %i.gh, ptr %i.ev, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false), !annotation !28
  %i.gi = call i32 @drm_dp_dsc_sink_supported_input_bpcs(ptr noundef %i.fu, ptr noundef nonnull %i.b) #15 ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph.preheader.i.i, label %align_max_sink_dsc_input_bpp.exit.i

.lr.ph.preheader.i.i:                             ; preds = %align_min_sink_dsc_input_bpp.exit.i
  %wide.trip.count.i.i = zext nneg i32 %i.gi to i64
  br label %.lr.ph.i.i

bb.ao:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i49.i = add nuw nsw i64 %indvars.iv.i47.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i49.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %align_max_sink_dsc_input_bpp.exit.i, label %.lr.ph.i.i, !llvm.loop !33

.lr.ph.i.i:                                       ; preds = %bb.ao, %.lr.ph.preheader.i.i
  %indvars.iv.i47.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i49.i, %bb.ao ] ; 2 uses
  %i.gk = getelementptr i8, ptr %i.b, i64 %indvars.iv.i47.i
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = zext i8 %i.gl to i32
  %i.gn = mul nuw nsw i32 %i.gm, 3                ; 2 uses
  %.not.i48.i = icmp sgt i32 %i.gn, %i.gh
  br i1 %.not.i48.i, label %bb.ao, label %align_max_sink_dsc_input_bpp.exit.i

align_max_sink_dsc_input_bpp.exit.i:              ; preds = %.lr.ph.i.i, %bb.ao, %align_min_sink_dsc_input_bpp.exit.i
  %.07.i46.i = phi i32 [ 0, %align_min_sink_dsc_input_bpp.exit.i ], [ 0, %bb.ao ], [ %i.gn, %.lr.ph.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  store i32 %.07.i46.i, ptr %i.ev, align 4
  %i.go = load i32, ptr %i.br, align 4            ; 4 uses
  %i.gp = icmp sgt i32 %i.go, 0
  %i.gq = icmp sle i32 %i.go, %.07.i46.i
  %or.cond.not.i = and i1 %i.gp, %i.gq
  br i1 %or.cond.not.i, label %.thread168, label %bb.ap

bb.ap:                                            ; preds = %align_max_sink_dsc_input_bpp.exit.i
  %i.gr = load ptr, ptr %i.fo, align 8            ; 2 uses
  %.not.i50.i = icmp eq ptr %i.gr, null
  br i1 %.not.i50.i, label %intel_dp_dsc_compute_pipe_bpp_limits.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  br label %intel_dp_dsc_compute_pipe_bpp_limits.exit

intel_dp_dsc_compute_pipe_bpp_limits.exit:        ; preds = %bb.ap, %bb.aq
  %i.gu = phi ptr [ %i.gt, %bb.aq ], [ null, %bb.ap ]
  %i.gv = getelementptr i8, ptr %i.j, i64 64
  %i.gw = load i32, ptr %i.gv, align 8
  %i.gx = getelementptr i8, ptr %i.j, i64 96
  %i.gy = load ptr, ptr %i.gx, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gu, i32 noundef 2, ptr noundef nonnull @.str.65, i32 noundef %i.gw, ptr noundef %i.gy, i32 noundef 24, i32 noundef %i.gf, i32 noundef %.sroa.4.0.copyload.i, i32 noundef %.sroa.5.0.copyload.i, i32 noundef %i.go, i32 noundef %.07.i46.i) #15
  br label %intel_dp_compute_config_link_bpp_limits.exit
end_hunk_0
