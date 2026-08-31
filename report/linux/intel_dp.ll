Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dp?download=true
inline.NumInlined: 1015
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@intel_dp_mode_valid_format:bb.a
bb.p:                                             ; preds = %select.unfold.i
  %i.bj = sext i32 %.013.i to i64
  %i.bk = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.2, i32 411, i32 2321, i64 16) #16, !srcloc !13
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bk, ptr noundef nonnull @.str.4, i64 noundef %i.bj) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !14
  br label %intel_dp_max_lane_count.exit

intel_dp_max_lane_count.exit:                     ; preds = %select.unfold.i, %select.unfold.i, %select.unfold.i, %bb.p
  %.0.i113 = phi i32 [ 1, %bb.p ], [ %.013.i, %select.unfold.i ], [ %.013.i, %select.unfold.i ], [ %.013.i, %select.unfold.i ] ; 3 uses
  %i.bl = tail call i32 @drm_dp_max_dprx_data_rate(i32 noundef %i.bc, i32 noundef %.0.i113) #15
  %i.bm = icmp eq i32 %i.ad, 0
  br i1 %i.bm, label %bb.q, label %intel_dp_mode_min_link_bpp_x16.exit

bb.q:                                             ; preds = %intel_dp_max_lane_count.exit
  %i.bn = tail call i32 @intel_display_min_pipe_bpp() #15
  br label %intel_dp_mode_min_link_bpp_x16.exit

intel_dp_mode_min_link_bpp_x16.exit:              ; preds = %intel_dp_max_lane_count.exit, %bb.q
  %.0.i.i114 = phi i32 [ %i.bn, %bb.q ], [ 24, %intel_dp_max_lane_count.exit ] ; 2 uses
  %i.bo = icmp eq i32 %i.ad, 1
  %i.bp = sdiv i32 %.0.i.i114, 2
  %.0.i2.i = select i1 %i.bo, i32 %i.bp, i32 %.0.i.i114
  %i.bq = shl i32 %.0.i2.i, 4                     ; 2 uses
  %i.br = getelementptr i8, ptr %1, i64 4         ; 4 uses
  %i.bs = load i16, ptr %i.br, align 4
  %i.bt = zext i16 %i.bs to i32
  %i.bu = icmp sgt i32 %i.bc, 999999              ; 2 uses
  %spec.select.i.i = select i1 %i.bu, i64 2, i64 0
  %i.bv = tail call i32 @drm_dp_bw_overhead(i32 noundef %.0.i113, i32 noundef %i.bt, i32 noundef 0, i32 noundef %i.bq, i64 noundef %spec.select.i.i) #15
  %i.bw = tail call range(i32 1000000, -2147483648) i32 @llvm.smax.i32(i32 %i.bv, i32 1000000)
  %i.bx = mul i32 %i.bq, %2
  %i.by = zext i32 %i.bx to i64
  %i.bz = zext nneg i32 %i.bw to i64
  %i.ca = mul nuw nsw i64 %i.by, %i.bz
  %i.cb = add nuw nsw i64 %i.ca, 127999984
  %i.cc = udiv i64 %i.cb, 128000000
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = getelementptr i8, ptr %0, i64 132
  %i.cf = getelementptr i8, ptr %0, i64 2497
  %i.cg = getelementptr i8, ptr %0, i64 2728      ; 2 uses
  %i.ch = getelementptr i8, ptr %.0.i140, i64 -352
  %i.ci = getelementptr i8, ptr %0, i64 2744
  %spec.select = select i1 %i.bu, i64 0, i64 8
  %i.cj = getelementptr i8, ptr %0, i64 2735
  %i.ck = getelementptr i8, ptr %0, i64 2736
  %i.cl = getelementptr i8, ptr %i.d, i64 1168
  %i.cm = icmp sge i32 %i.bl, %i.cd
  %i.cn = getelementptr i8, ptr %1, i64 10
  %i.co = getelementptr i8, ptr %i.d, i64 684
  br label %bb.r

bb.r:                                             ; preds = %intel_dp_mode_min_link_bpp_x16.exit, %.thread
  %.083163 = phi i32 [ 1, %intel_dp_mode_min_link_bpp_x16.exit ], [ %i.fa, %.thread ] ; 9 uses
  %.084162 = phi i1 [ false, %intel_dp_mode_min_link_bpp_x16.exit ], [ %.4, %.thread ] ; 7 uses
  %.086161 = phi i32 [ 15, %intel_dp_mode_min_link_bpp_x16.exit ], [ %.288, %.thread ]
  %i.cp = load i16, ptr %i.br, align 4
  %i.cq = zext i16 %i.cp to i32
  %i.cr = call zeroext i1 @intel_dp_joiner_candidate_valid(ptr noundef %0, i32 noundef %i.cq, i32 noundef %.083163) #17
  br i1 %i.cr, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.cs = call i32 @intel_pfit_mode_valid(ptr noundef %i.d, ptr noundef %1, i32 noundef %i.ad, i32 noundef %.083163) #15 ; 2 uses
  %.not98 = icmp eq i32 %i.cs, 0
  br i1 %.not98, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.ct = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i115 = icmp eq ptr %i.ct, null
  br i1 %.not.i115, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = call ptr @__drm_to_display(ptr noundef nonnull %i.ct) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cv = phi ptr [ %i.cu, %bb.u ], [ null, %bb.t ] ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 1168
  %i.cx = getelementptr i8, ptr %i.cv, i64 1203
  %i.cy = load i8, ptr %i.cx, align 1, !range !18, !noundef !19
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.w, label %intel_dp_has_dsc.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.da = load ptr, ptr %i.e, align 8
  %.not11.i = icmp eq ptr %i.da, null
  br i1 %.not11.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = load i16, ptr %i.cw, align 8
  %i.dc = icmp ugt i16 %i.db, 11
  br i1 %i.dc, label %bb.y, label %intel_dp_has_dsc.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dd = load i32, ptr %i.ce, align 4
  %i.de = icmp eq i32 %i.dd, 14
  br i1 %i.de, label %bb.z, label %intel_dp_has_dsc.exit

bb.z:                                             ; preds = %bb.y
  %i.df = load i8, ptr %i.cf, align 1, !range !18, !noundef !19
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %intel_dp_has_dsc.exit.thread, label %intel_dp_has_dsc.exit

intel_dp_has_dsc.exit:                            ; preds = %bb.y, %bb.z
  %.val.i117 = load i8, ptr %i.cg, align 8
  %i.dh = trunc i8 %.val.i117 to i1
  br i1 %i.dh, label %bb.aa, label %intel_dp_has_dsc.exit.thread

bb.aa:                                            ; preds = %intel_dp_has_dsc.exit
  %i.di = load i16, ptr %i.br, align 4
  %i.dj = zext i16 %i.di to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false), !annotation !28
  %i.dk = call fastcc zeroext i1 @intel_dp_dsc_get_slice_config(ptr noundef %0, i32 noundef %2, i32 noundef %i.dj, i32 noundef %.083163, ptr noundef nonnull %4) #17, !srcloc !29
  br i1 %i.dk, label %bb.ab, label %intel_dp_dsc_get_slice_count.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dl = call i32 @intel_dsc_line_slice_count(ptr noundef nonnull %4) #15
  %i.dm = trunc i32 %i.dl to i8
  br label %intel_dp_dsc_get_slice_count.exit

intel_dp_dsc_get_slice_count.exit:                ; preds = %bb.aa, %bb.ab
  %.0.i118 = phi i8 [ %i.dm, %bb.ab ], [ 0, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.dn = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i119 = icmp eq ptr %i.dn, null
  br i1 %.not.i119, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %intel_dp_dsc_get_slice_count.exit
  %i.do = call ptr @__drm_to_display(ptr noundef nonnull %i.dn) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %intel_dp_dsc_get_slice_count.exit
  %i.dp = phi ptr [ %i.do, %bb.ac ], [ null, %intel_dp_dsc_get_slice_count.exit ]
  %i.dq = getelementptr i8, ptr %i.dp, i64 1168
  %i.dr = load i16, ptr %i.dq, align 8            ; 2 uses
  %i.ds = icmp ugt i16 %i.dr, 11
  %i.dt = icmp eq i16 %i.dr, 11
  %spec.select.i.i120 = select i1 %i.dt, i32 10, i32 8
  %.0.i.i121 = select i1 %i.ds, i32 12, i32 %spec.select.i.i120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, i8 0, i64 3, i1 false), !annotation !28
  %i.du = call i32 @drm_dp_dsc_sink_supported_input_bpcs(ptr noundef %i.cg, ptr noundef nonnull %i.a) #15 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph.preheader.i.i, label %intel_dp_dsc_compute_max_bpp.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.ad
  %wide.trip.count.i.i = zext nneg i32 %i.du to i64
  br label %.lr.ph.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %intel_dp_dsc_compute_max_bpp.exit, label %.lr.ph.i.i, !llvm.loop !33

.lr.ph.i.i:                                       ; preds = %bb.ae, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ae ] ; 2 uses
  %i.dw = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i32                    ; 2 uses
  %.not.i.i122 = icmp samesign ult i32 %.0.i.i121, %i.dy
  br i1 %.not.i.i122, label %bb.ae, label %align_max_sink_dsc_input_bpp.exit.loopexit.split.loop.exit.i

align_max_sink_dsc_input_bpp.exit.loopexit.split.loop.exit.i: ; preds = %.lr.ph.i.i
  %i.dz = mul nuw nsw i32 %i.dy, 3
  br label %intel_dp_dsc_compute_max_bpp.exit

intel_dp_dsc_compute_max_bpp.exit:                ; preds = %bb.ae, %bb.ad, %align_max_sink_dsc_input_bpp.exit.loopexit.split.loop.exit.i
  %.07.i.i = phi i32 [ 0, %bb.ad ], [ %i.dz, %align_max_sink_dsc_input_bpp.exit.loopexit.split.loop.exit.i ], [ 0, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ea = load i32, ptr %i.ch, align 8
  %i.eb = icmp eq i32 %i.ea, 8
  br i1 %i.eb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %intel_dp_dsc_compute_max_bpp.exit
  %.val = load i8, ptr %i.cj, align 1
  %.val105 = load i8, ptr %i.ck, align 8
  %i.ec = zext i8 %.val to i16
  %i.ed = and i8 %.val105, 3
  %i.ee = zext nneg i8 %i.ed to i16
  %i.ef = shl nuw nsw i16 %i.ee, 8
  %i.eg = or disjoint i16 %i.ef, %i.ec
  %i.eh = icmp samesign ugt i16 %i.eg, 15
  %i.ei = icmp ne i8 %.0.i118, 0
  %i.ej = select i1 %i.eh, i1 %i.ei, i1 false
  br label %intel_dp_has_dsc.exit.thread

bb.ag:                                            ; preds = %intel_dp_dsc_compute_max_bpp.exit
  %i.ek = load i8, ptr %i.ci, align 8
  %i.el = trunc i8 %i.ek to i1
  br i1 %i.el, label %bb.ah, label %intel_dp_has_dsc.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.em = load i16, ptr %i.br, align 4
  %i.en = zext i16 %i.em to i32
  %i.eo = call zeroext i1 @intel_dp_mode_valid_with_dsc(ptr noundef %0, i32 noundef %i.bc, i32 noundef %.0.i113, i32 noundef %2, i32 noundef %i.en, i32 noundef %.083163, i32 noundef %i.ad, i32 noundef %.07.i.i, i64 noundef %spec.select) #17
  br label %intel_dp_has_dsc.exit.thread

intel_dp_has_dsc.exit.thread:                     ; preds = %bb.v, %bb.z, %bb.x, %bb.af, %bb.ah, %bb.ag, %intel_dp_has_dsc.exit
  %.2 = phi i1 [ %.084162, %intel_dp_has_dsc.exit ], [ %i.ej, %bb.af ], [ %i.eo, %bb.ah ], [ %.084162, %bb.ag ], [ %.084162, %bb.x ], [ %.084162, %bb.z ], [ %.084162, %bb.v ] ; 4 uses
  %.081.shrunk = phi i8 [ 0, %intel_dp_has_dsc.exit ], [ %.0.i118, %bb.af ], [ %.0.i118, %bb.ah ], [ %.0.i118, %bb.ag ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.v ] ; 2 uses
  %.081 = zext i8 %.081.shrunk to i32
  %i.ep = load i16, ptr %i.cl, align 8
  %i.eq = icmp ugt i16 %i.ep, 12
  %i.er = icmp ne i32 %.083163, 2
  %or.cond.i.not153 = or i1 %i.er, %i.eq
  %i.es = icmp ne i32 %.083163, 4
  %spec.select.i123.not = and i1 %i.es, %or.cond.i.not153
  %i.et = select i1 %spec.select.i123.not, i1 %i.cm, i1 false
  %or.cond102 = select i1 %i.et, i1 true, i1 %.2
  br i1 %or.cond102, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %intel_dp_has_dsc.exit.thread
  %i.eu = call i32 @intel_mode_valid_max_plane_size(ptr noundef %i.d, ptr noundef %1, i32 noundef %.083163) #15 ; 2 uses
  %.not99 = icmp eq i32 %i.eu, 0
  br i1 %.not99, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %.not.i124154 = icmp ne i8 %.081.shrunk, 0
  %.not.i124.not = select i1 %.2, i1 %.not.i124154, i1 false
  br i1 %.not.i124.not, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ev = load i16, ptr %i.cn, align 2
  %i.ew = zext i16 %i.ev to i32
  %i.ex = load i32, ptr %i.co, align 4
  %i.ey = call i32 @intel_dsc_get_pixel_rate_with_dsc_bubbles(ptr noundef %i.d, i32 noundef %2, i32 noundef %i.ew, i32 noundef %.081) #15
  br label %intel_dp_dotclk_valid.exit

bb.al:                                            ; preds = %bb.aj
  %i.ez = call i32 @intel_max_uncompressed_dotclock(ptr noundef %i.d) #15
  br label %intel_dp_dotclk_valid.exit

intel_dp_dotclk_valid.exit:                       ; preds = %bb.ak, %bb.al
  %.011.i = phi i32 [ %i.ey, %bb.ak ], [ %2, %bb.al ]
  %.pn.i = phi i32 [ %i.ex, %bb.ak ], [ %i.ez, %bb.al ]
  %.0.i125 = mul i32 %.pn.i, %.083163
  %.not = icmp sgt i32 %.011.i, %.0.i125
  br i1 %.not, label %.thread, label %.thread188

.thread:                                          ; preds = %bb.ai, %intel_dp_has_dsc.exit.thread, %intel_dp_dotclk_valid.exit, %bb.s, %bb.r
  %.288 = phi i32 [ %.086161, %bb.r ], [ %i.eu, %bb.ai ], [ 15, %intel_dp_has_dsc.exit.thread ], [ 15, %intel_dp_dotclk_valid.exit ], [ %i.cs, %bb.s ] ; 3 uses
  %.4 = phi i1 [ %.084162, %bb.r ], [ %.2, %bb.ai ], [ false, %intel_dp_has_dsc.exit.thread ], [ %.2, %intel_dp_dotclk_valid.exit ], [ %.084162, %bb.s ]
  %i.fa = add nuw nsw i32 %.083163, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.fa, 5
  br i1 %exitcond.not, label %bb.am, label %bb.r, !llvm.loop !216

bb.am:                                            ; preds = %.thread
  %.not100 = icmp eq i32 %.288, 0
  br i1 %.not100, label %.thread188, label %intel_dp_mode_valid_downstream.exit

.thread188:                                       ; preds = %intel_dp_dotclk_valid.exit, %bb.am
  %i.fb = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i126, label %bb.an, label %intel_attached_dp.exit.i127

bb.an:                                            ; preds = %.thread188
  %i.fc = getelementptr i8, ptr %0, i64 2248
  %.val.i.i134 = load ptr, ptr %i.fc, align 8     ; 6 uses
  %i.fd = getelementptr i8, ptr %.val.i.i134, i64 152
  %.val.i.i.i.i135 = load i32, ptr %i.fd, align 8
  switch i32 %.val.i.i.i.i135, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i138 [
    i32 10, label %enc_to_intel_dp.exit.i.i136
    i32 7, label %enc_to_intel_dp.exit.i.i136
    i32 8, label %enc_to_intel_dp.exit.i.i136
    i32 6, label %enc_to_intel_dp.exit.i.i136
    i32 11, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.fe = getelementptr i8, ptr %.val.i.i134, i64 512
  %i.ff = load ptr, ptr %i.fe, align 8
  br label %enc_to_intel_dp.exit.i.i136

intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i138: ; preds = %bb.an
  br label %enc_to_intel_dp.exit.i.i136

enc_to_intel_dp.exit.i.i136:                      ; preds = %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i138, %bb.ao, %bb.an, %bb.an, %bb.an, %bb.an
  %.0.i.i.i.i137 = phi ptr [ %.val.i.i134, %bb.an ], [ %i.ff, %bb.ao ], [ %.val.i.i134, %bb.an ], [ %.val.i.i134, %bb.an ], [ %.val.i.i134, %bb.an ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i138 ]
  %i.fg = getelementptr i8, ptr %.0.i.i.i.i137, i64 504
  br label %intel_attached_dp.exit.i127

intel_attached_dp.exit.i127:                      ; preds = %enc_to_intel_dp.exit.i.i136, %.thread188
  %.0.i.i128 = phi ptr [ %i.fg, %enc_to_intel_dp.exit.i.i136 ], [ %i.fb, %.thread188 ] ; 5 uses
  %i.fh = getelementptr i8, ptr %.0.i.i128, i64 3204
  %i.fi = load i32, ptr %i.fh, align 4            ; 2 uses
  %.not.i129 = icmp eq i32 %i.fi, 0
  br i1 %.not.i129, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %intel_attached_dp.exit.i127
  %.not.i16.i = icmp eq i32 %3, 0
  %i.fj = sdiv i32 %2, 2
  %.0.i17.i = select i1 %.not.i16.i, i32 %2, i32 %i.fj
  %i.fk = mul i32 %.0.i17.i, 24
  %i.fl = mul i32 %i.fi, 1000000
  %i.fm = icmp sgt i32 %i.fk, %i.fl
  %..i = select i1 %i.fm, i32 15, i32 0
  br label %intel_dp_mode_valid_downstream.exit

bb.aq:                                            ; preds = %intel_attached_dp.exit.i127
  %i.fn = getelementptr i8, ptr %.0.i.i128, i64 3200
  %i.fo = load i32, ptr %i.fn, align 8            ; 2 uses
  %.not15.i = icmp ne i32 %i.fo, 0
  %i.fp = icmp sgt i32 %2, %i.fo
  %or.cond.i130 = and i1 %.not15.i, %i.fp
  br i1 %or.cond.i130, label %intel_dp_mode_valid_downstream.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fq = call i32 @intel_hdmi_tmds_clock(i32 noundef %2, i32 noundef 8, i32 noundef range(i32 0, 2) %3) #15 ; 2 uses
  %i.fr = getelementptr i8, ptr %.0.i.i128, i64 3192
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  %i.ft = getelementptr i8, ptr %.0.i.i128, i64 3196
  %i.fu = load i32, ptr %i.ft, align 4            ; 3 uses
  %.not.i.i.i131 = icmp eq i32 %i.fu, 0
  br i1 %.not.i.i.i131, label %intel_dp_max_tmds_clock.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fv = getelementptr i8, ptr %.0.i.i128, i64 1816
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr i8, ptr %i.fw, i64 232
  %i.fy = load i32, ptr %i.fx, align 8            ; 2 uses
  %.not18.i.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not18.i.i.i, label %intel_dp_max_tmds_clock.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fz = call i32 @llvm.smin.i32(i32 %i.fu, i32 %i.fy)
  br label %intel_dp_max_tmds_clock.exit.i.i

intel_dp_max_tmds_clock.exit.i.i:                 ; preds = %bb.at, %bb.as, %bb.ar
  %.0.i.i.i132 = phi i32 [ %i.fz, %bb.at ], [ %i.fu, %bb.as ], [ 0, %bb.ar ] ; 2 uses
  %.not.i18.i = icmp ne i32 %i.fs, 0
  %i.ga = icmp slt i32 %i.fq, %i.fs
  %or.cond.i.i = select i1 %.not.i18.i, i1 %i.ga, i1 false
  br i1 %or.cond.i.i, label %intel_dp_mode_valid_downstream.exit, label %bb.au

bb.au:                                            ; preds = %intel_dp_max_tmds_clock.exit.i.i
  %.not14.i.i = icmp ne i32 %.0.i.i.i132, 0
  %i.gb = icmp sgt i32 %i.fq, %.0.i.i.i132
  %or.cond15.i.i = select i1 %.not14.i.i, i1 %i.gb, i1 false
  %spec.select.i.i133 = select i1 %or.cond15.i.i, i32 15, i32 0
  br label %intel_dp_mode_valid_downstream.exit

intel_dp_mode_valid_downstream.exit:              ; preds = %bb.j, %bb.h, %bb.i, %bb.au, %intel_dp_max_tmds_clock.exit.i.i, %bb.aq, %bb.ap, %bb.am
  %.090 = phi i32 [ %.288, %bb.am ], [ 16, %intel_dp_max_tmds_clock.exit.i.i ], [ %..i, %bb.ap ], [ 15, %bb.aq ], [ %spec.select.i.i133, %bb.au ], [ 36, %bb.i ], [ 36, %bb.h ], [ 36, %bb.j ]
  ret i32 %.090
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_pfit_mode_valid(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_mode_valid_max_plane_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_digital_connector_atomic_check(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_root_conn_atomic_check(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_connector_needs_modeset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_connector_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_connectors(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_get_lvds_encoder(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_bios_init_panel_early(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_pps_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_hpd_enable_detection(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_alpm_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_bios_dp_has_shared_aux_ch(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_opregion_get_edid(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_bios_init_panel_late(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_panel_add_edid_fixed_modes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_panel_preferred_fixed_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_panel_add_vbt_lfp_fixed_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_panel_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_pps_init_late(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_bios_fini_panel(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_dp_read_dpcd_caps(ptr noundef, ptr noundef) local_unnamed_addr #4
end_hunk_0
