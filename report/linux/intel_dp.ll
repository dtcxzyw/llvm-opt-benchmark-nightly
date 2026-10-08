Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dp?download=true
inline.NumInlined: 1015
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@intel_dp_compute_output_format:bb.a
  %.val.i30.i.i.i.i = load ptr, ptr %i.eo, align 8
  br label %dev_name.exit31.i.i.i.i

dev_name.exit31.i.i.i.i:                          ; preds = %bb.ak, %__drm_to_dev.exit27.i.i.i.i
  %.0.i29.i.i.i.i = phi ptr [ %.val.i30.i.i.i.i, %bb.ak ], [ %i.eq, %__drm_to_dev.exit27.i.i.i.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ef, ptr noundef %i.ek, ptr noundef %.0.i29.i.i.i.i, ptr noundef nonnull @.str.1) #15
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !16
  br label %intel_dp_common_rate.exit.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.ag
  %i.er = getelementptr [4 x i8], ptr %i.di, i64 %indvars.iv.i.i.i
  %i.es = load i32, ptr %i.er, align 4
  br label %intel_dp_common_rate.exit.i.i.i

intel_dp_common_rate.exit.i.i.i:                  ; preds = %.critedge.i.i.i.i, %dev_name.exit31.i.i.i.i
  %.0.i54.i.i.i = phi i32 [ %i.es, %.critedge.i.i.i.i ], [ 162000, %dev_name.exit31.i.i.i.i ] ; 5 uses
  %i.et = load i32, ptr %5, align 4
  %i.eu = icmp slt i32 %.0.i54.i.i.i, %i.et
  %i.ev = load i32, ptr %i.bg, align 4
  %i.ew = icmp sgt i32 %.0.i54.i.i.i, %i.ev
  %or.cond.i.i = select i1 %i.eu, i1 true, i1 %i.ew
  br i1 %or.cond.i.i, label %.loopexit.i.i.i, label %bb.al

bb.al:                                            ; preds = %intel_dp_common_rate.exit.i.i.i
  %i.ex = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.ey = load i32, ptr %i.bi, align 4
  %.not474.i.i.i = icmp sgt i32 %i.ex, %i.ey
  br i1 %.not474.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.al
  %i.ez = icmp sgt i32 %.0.i54.i.i.i, 999999      ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.ez, i64 2, i64 0
  br label %bb.am

bb.am:                                            ; preds = %.critedge.i.i.i, %.lr.ph.i.i.i
  %.0415.i.i.i = phi i32 [ %i.ex, %.lr.ph.i.i.i ], [ %i.fk, %.critedge.i.i.i ] ; 4 uses
  %i.fa = load i16, ptr %i.ax, align 4
  %i.fb = zext i16 %i.fa to i32
  %i.fc = call i32 @drm_dp_bw_overhead(i32 noundef %.0415.i.i.i, i32 noundef %i.fb, i32 noundef 0, i32 noundef %i.dr, i64 noundef %spec.select.i.i.i.i.i) #15
  %i.fd = call range(i32 1000000, -2147483648) i32 @llvm.smax.i32(i32 %i.fc, i32 1000000)
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = mul nuw nsw i64 %i.fe, %i.dt
  %i.fg = add nuw nsw i64 %i.ff, 127999984
  %i.fh = udiv i64 %i.fg, 128000000
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = call i32 @drm_dp_max_dprx_data_rate(i32 noundef %.0.i54.i.i.i, i32 noundef %.0415.i.i.i) #15
  %.not48.i.i.i = icmp slt i32 %i.fj, %i.fi
  br i1 %.not48.i.i.i, label %.critedge.i.i.i, label %bb.an

.critedge.i.i.i:                                  ; preds = %bb.am
  %i.fk = shl i32 %.0415.i.i.i, 1                 ; 2 uses
  %i.fl = load i32, ptr %i.bi, align 4
  %.not47.i.i.i = icmp sgt i32 %i.fk, %i.fl
  br i1 %.not47.i.i.i, label %.loopexit.i.i.i, label %bb.am, !llvm.loop !175

.loopexit.i.i.i:                                  ; preds = %.critedge.i.i.i, %bb.al, %intel_dp_common_rate.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fm = load i32, ptr %i.dh, align 4            ; 3 uses
  %i.fn = sext i32 %i.fm to i64
  %.not49.i.i.i = icmp slt i64 %indvars.iv.next.i.i.i, %i.fn
  br i1 %.not49.i.i.i, label %bb.ae, label %.critedge51.loopexit.i.i.i, !llvm.loop !176

.critedge51.loopexit.i.i.i:                       ; preds = %.loopexit.i.i.i
  %.pre17.i.i.i = load i32, ptr %i.be, align 4
  br label %.critedge51.i.i.i

.critedge51.i.i.i:                                ; preds = %.critedge51.loopexit.i.i.i, %.lr.ph11.split.i.i.i
  %i.fo = phi i32 [ %.pre17.i.i.i, %.critedge51.loopexit.i.i.i ], [ %i.dl, %.lr.ph11.split.i.i.i ] ; 2 uses
  %i.fp = phi i32 [ %i.fm, %.critedge51.loopexit.i.i.i ], [ %i.dm, %.lr.ph11.split.i.i.i ]
  %i.fq = add nsw i32 %i.dn, -6                   ; 2 uses
  %i.fr = ashr i32 %i.fo, 4
  %.not.i.i37.i = icmp slt i32 %i.fq, %i.fr
  br i1 %.not.i.i37.i, label %.thread103.i.i, label %.lr.ph11.split.i.i.i, !llvm.loop !177

bb.an:                                            ; preds = %bb.am
  %i.fs = trunc i32 %.0415.i.i.i to i8
  store i8 %i.fs, ptr %i.bj, align 1
  store i32 %i.dn, ptr %i.bk, align 8
  store i32 %.0.i54.i.i.i, ptr %i.bl, align 8
  br i1 %i.ez, label %bb.ao, label %.thread94.i.i

bb.ao:                                            ; preds = %bb.an
  %i.ft = shl nsw i32 %i.dn, 4                    ; 2 uses
  %i.fu = call i32 @intel_dp_mtp_tu_compute_config(ptr noundef %i.ch, ptr noundef %1, ptr noundef %2, i32 noundef %i.ft, i32 noundef %i.ft, i32 noundef 0, i1 noundef zeroext false) #15
  %.not79.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not79.i.i, label %.thread94.i.i, label %.thread103.i.i

.thread94.i.i:                                    ; preds = %bb.ao, %bb.an
  %i.fv = load i32, ptr %i.bd, align 4
  %i.fw = call i32 @intel_max_uncompressed_dotclock(ptr noundef %i.cd) #15
  %.0.i.i38.i = mul i32 %i.fw, %i.ce
  %.not116.i.i = icmp sgt i32 %i.fv, %.0.i.i38.i
  br i1 %.not116.i.i, label %.thread103.i.i, label %.critedge.i.i

.thread103.i.i:                                   ; preds = %.critedge51.i.i.i, %.thread94.i.i, %bb.ao, %.lr.ph11.i.i.i, %intel_dp_mode_clock.exit.i.i.i, %bb.y, %bb.x, %enc_to_intel_dp.exit.i.i19
  %.1107.i.i = phi ptr [ @.str.63, %.lr.ph11.i.i.i ], [ @.str.64, %bb.y ], [ @.str.64, %enc_to_intel_dp.exit.i.i19 ], [ @.str.64, %bb.x ], [ @.str.64, %.thread94.i.i ], [ @.str.63, %bb.ao ], [ @.str.63, %intel_dp_mode_clock.exit.i.i.i ], [ @.str.63, %.critedge51.i.i.i ]
  %i.fx = call zeroext i1 @intel_dp_supports_dsc(ptr noundef %i.ch, ptr noundef %i.cf, ptr noundef %1) #17
  %i.fy = load ptr, ptr %i.cd, align 8            ; 3 uses
  %.not.i83.i.i = icmp eq ptr %i.fy, null         ; 2 uses
  br i1 %i.fx, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.thread103.i.i
  br i1 %.not.i83.i.i, label %__drm_to_dev.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fz = getelementptr i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.aq, %bb.ap
  %i.gb = phi ptr [ %i.ga, %bb.aq ], [ null, %bb.ap ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gb, i32 noundef 2, ptr noundef nonnull @.str.74) #15
  br label %intel_dp_compute_link_for_joined_pipes.exit.thread.i

bb.ar:                                            ; preds = %.thread103.i.i
  br i1 %.not.i83.i.i, label %__drm_to_dev.exit84.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gc = getelementptr i8, ptr %i.fy, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  br label %__drm_to_dev.exit84.i.i

__drm_to_dev.exit84.i.i:                          ; preds = %bb.as, %bb.ar
  %i.ge = phi ptr [ %i.gd, %bb.as ], [ null, %bb.ar ]
  %i.gf = select i1 %spec.select.i.i.i, ptr @.str.63, ptr @.str.64
  %i.gg = getelementptr i8, ptr %.0.i.i.i.i20, i64 3768
  %i.gh = load i8, ptr %i.gg, align 8, !range !22, !noundef !23
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = select i1 %i.gi, ptr @.str.63, ptr @.str.64
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ge, i32 noundef 2, ptr noundef nonnull @.str.75, ptr noundef nonnull %.1107.i.i, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gj) #15
  %i.gk = call zeroext i1 @intel_dp_compute_config_limits(ptr noundef %i.ch, ptr noundef %2, ptr noundef %1, i1 noundef zeroext %3, i1 noundef zeroext true, ptr noundef nonnull %5) #17
  br i1 %i.gk, label %bb.at, label %intel_dp_compute_link_for_joined_pipes.exit.thread.i

bb.at:                                            ; preds = %__drm_to_dev.exit84.i.i
  %i.gl = call i32 @intel_dp_dsc_compute_config(ptr noundef %i.ch, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, i32 poison) #17 ; 3 uses
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %intel_dp_compute_link_for_joined_pipes.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = call i32 @intel_dsc_line_slice_count(ptr noundef %i.bc) #15 ; 2 uses
  %i.go = load i32, ptr %i.bd, align 4            ; 2 uses
  %.not.i85.i.i = icmp eq i32 %i.gn, 0
  br i1 %.not.i85.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gp = load i16, ptr %i.bm, align 2
  %i.gq = zext i16 %i.gp to i32
  %i.gr = getelementptr i8, ptr %i.cd, i64 684
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = call i32 @intel_dsc_get_pixel_rate_with_dsc_bubbles(ptr noundef %i.cd, i32 noundef %i.go, i32 noundef %i.gq, i32 noundef %i.gn) #15
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.gu = call i32 @intel_max_uncompressed_dotclock(ptr noundef %i.cd) #15
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.011.i.i.i = phi i32 [ %i.gt, %bb.av ], [ %i.go, %bb.aw ]
  %.pn.i.i.i = phi i32 [ %i.gs, %bb.av ], [ %i.gu, %bb.aw ]
  %.0.i86.i.i = mul i32 %.pn.i.i.i, %i.ce
  %.not117.i.i = icmp sgt i32 %.011.i.i.i, %.0.i86.i.i
  br i1 %.not117.i.i, label %intel_dp_compute_link_for_joined_pipes.exit.thread.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ax, %.thread94.i.i
  %i.gv = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i87.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i87.i.i, label %__drm_to_dev.exit88.i.i, label %bb.ay

bb.ay:                                            ; preds = %.critedge.i.i
  %i.gw = getelementptr i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  br label %__drm_to_dev.exit88.i.i

__drm_to_dev.exit88.i.i:                          ; preds = %bb.ay, %.critedge.i.i
  %i.gy = phi ptr [ %i.gx, %bb.ay ], [ null, %.critedge.i.i ]
  %i.gz = load i8, ptr %i.bj, align 1
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  %i.hb = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.hc = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.hd = getelementptr i8, ptr %1, i64 4420
  %i.he = load i16, ptr %i.hd, align 4
  %i.hf = zext i16 %i.he to i32                   ; 3 uses
  %i.hg = lshr i32 %i.hf, 4
  %i.hh = and i32 %i.hf, 15
  %i.hi = mul nuw nsw i32 %i.hh, 625
  %i.hj = getelementptr i8, ptr %2, i64 152
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %.not.i89.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i89.i.i, label %.thread44.i, label %intel_dp_in_hdr_mode.exit.i.i

intel_dp_in_hdr_mode.exit.i.i:                    ; preds = %__drm_to_dev.exit88.i.i
  %i.hl = getelementptr i8, ptr %i.hk, i64 80
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = getelementptr i8, ptr %i.hm, i64 4
  %i.ho = load i8, ptr %i.hn, align 4
  %.fr.i.i = freeze i8 %i.ho
  %i.hp = icmp eq i8 %.fr.i.i, 2
  %spec.select.i.i = select i1 %i.hp, ptr @.str.63, ptr @.str.64
  br label %.thread44.i

intel_dp_compute_link_for_joined_pipes.exit.thread.i: ; preds = %bb.ax, %__drm_to_dev.exit84.i.i, %__drm_to_dev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %6

intel_dp_compute_link_for_joined_pipes.exit.i:    ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %cond.i = icmp eq i32 %i.gl, -35
  br i1 %cond.i, label %.thread.i, label %6

6:                                                ; preds = %intel_dp_compute_link_for_joined_pipes.exit.i, %intel_dp_compute_link_for_joined_pipes.exit.thread.i, %bb.q
  %.1.i = phi i32 [ %i.gl, %intel_dp_compute_link_for_joined_pipes.exit.i ], [ %.061.i, %bb.q ], [ -22, %intel_dp_compute_link_for_joined_pipes.exit.thread.i ] ; 2 uses
  %7 = add nuw nsw i32 %.03259.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %7, 5
  br i1 %exitcond.not.i, label %.thread.i, label %bb.q, !llvm.loop !178

.thread44.i:                                      ; preds = %intel_dp_in_hdr_mode.exit.i.i, %__drm_to_dev.exit88.i.i
  %i.hq = phi ptr [ @.str.64, %__drm_to_dev.exit88.i.i ], [ %spec.select.i.i, %intel_dp_in_hdr_mode.exit.i.i ]
  %i.hr = load i8, ptr %i.bb, align 1, !range !22, !noundef !23
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = shl i32 %i.hc, 4
  %spec.select115.i.i = select i1 %i.hs, i32 %i.hf, i32 %i.ht ; 2 uses
  %i.hu = load i32, ptr %i.bd, align 4
  %i.hv = load i16, ptr %i.ax, align 4
  %i.hw = zext i16 %i.hv to i32
  %i.hx = icmp sgt i32 %i.hb, 999999
  %spec.select.i.i.i91.i.i = select i1 %i.hx, i64 2, i64 0
  %i.hy = call i32 @drm_dp_bw_overhead(i32 noundef %i.ha, i32 noundef %i.hw, i32 noundef 0, i32 noundef %spec.select115.i.i, i64 noundef %spec.select.i.i.i91.i.i) #15
  %i.hz = call range(i32 1000000, -2147483648) i32 @llvm.smax.i32(i32 %i.hy, i32 1000000)
  %i.ia = mul i32 %spec.select115.i.i, %i.hu
  %i.ib = zext i32 %i.ia to i64
  %i.ic = zext nneg i32 %i.hz to i64
  %i.id = mul nuw nsw i64 %i.ic, %i.ib
  %i.ie = add nuw nsw i64 %i.id, 127999999
  %i.if = udiv i64 %i.ie, 128000000
  %i.ig = trunc i64 %i.if to i32
  %i.ih = load i32, ptr %i.bl, align 8
  %i.ii = load i8, ptr %i.bj, align 1
  %i.ij = zext i8 %i.ii to i32
  %i.ik = call i32 @drm_dp_max_dprx_data_rate(i32 noundef %i.ih, i32 noundef %i.ij) #15
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gy, i32 noundef 2, ptr noundef nonnull @.str.76, i32 noundef %i.ha, i32 noundef %i.hb, i32 noundef %i.hc, i32 noundef %i.hg, i32 noundef %i.hi, ptr noundef nonnull %i.hq, i32 noundef %i.ig, i32 noundef %i.ik) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %intel_dp_compute_link_config.exit

.thread.i:                                        ; preds = %6, %intel_dp_compute_link_for_joined_pipes.exit.i
  %.243.i = phi i32 [ -35, %intel_dp_compute_link_for_joined_pipes.exit.i ], [ %.1.i, %6 ]
  store i8 0, ptr %i.az, align 1
  br label %intel_dp_compute_link_config.exit

intel_dp_compute_link_config.exit:                ; preds = %bb.h, %bb.f, %bb.g, %.thread.i, %.thread44.i, %intel_dp_supports_fec.exit.i, %bb.o, %bb.n, %bb.m
  %.0 = phi i32 [ -22, %bb.o ], [ -22, %intel_dp_supports_fec.exit.i ], [ %.243.i, %.thread.i ], [ 0, %.thread44.i ], [ -22, %bb.m ], [ -22, %bb.n ], [ -22, %bb.g ], [ -22, %bb.f ], [ -22, %bb.h ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_is_420_also(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 3) i32 @intel_dp_output_format(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 2800
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %intel_attached_dp.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 2248
  %.val.i = load ptr, ptr %i.f, align 8           ; 6 uses
  %i.g = getelementptr i8, ptr %.val.i, i64 152
  %.val.i.i.i = load i32, ptr %i.g, align 8
  switch i32 %.val.i.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i [
    i32 10, label %enc_to_intel_dp.exit.i
    i32 7, label %enc_to_intel_dp.exit.i
    i32 8, label %enc_to_intel_dp.exit.i
    i32 6, label %enc_to_intel_dp.exit.i
    i32 11, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %.val.i, i64 512
  %i.i = load ptr, ptr %i.h, align 8
  br label %enc_to_intel_dp.exit.i

intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i: ; preds = %bb.d
  br label %enc_to_intel_dp.exit.i

enc_to_intel_dp.exit.i:                           ; preds = %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d
  %.0.i.i.i = phi ptr [ %.val.i, %bb.d ], [ %i.i, %bb.e ], [ %.val.i, %bb.d ], [ %.val.i, %bb.d ], [ %.val.i, %bb.d ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i ]
  %i.j = getelementptr i8, ptr %.0.i.i.i, i64 504
  br label %intel_attached_dp.exit

intel_attached_dp.exit:                           ; preds = %bb.c, %enc_to_intel_dp.exit.i
  %.0.i = phi ptr [ %i.j, %enc_to_intel_dp.exit.i ], [ %i.e, %bb.c ] ; 7 uses
  %i.k = getelementptr i8, ptr %.0.i, i64 3268
  %i.l = load i32, ptr %i.k, align 4              ; 5 uses
  %.not38 = icmp eq i32 %i.l, 0
  br i1 %.not38, label %bb.m, label %bb.f

bb.f:                                             ; preds = %intel_attached_dp.exit
  %i.m = getelementptr i8, ptr %.0.i, i64 -504
  %.val40 = load ptr, ptr %i.m, align 8           ; 2 uses
  %.not.i42 = icmp eq ptr %.val40, null
  br i1 %.not.i42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @__drm_to_display(ptr noundef nonnull %.val40) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi ptr [ %i.n, %bb.g ], [ null, %bb.f ] ; 3 uses
  switch i32 %i.l, label %bb.j [
    i32 1, label %source_can_output.exit
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %i.o, i64 1160
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 46
  %i.s = load i16, ptr %i.r, align 2
  %i.t = and i16 %i.s, 128
  %.not14.i = icmp eq i16 %i.t, 0
  br i1 %.not14.i, label %.split, label %source_can_output.exit.thread

.split:                                           ; preds = %bb.i
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 131072
  %.not15.i = icmp eq i64 %i.w, 0
  br i1 %.not15.i, label %source_can_output.exit.thread70, label %source_can_output.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.x = zext i32 %i.l to i64
  %i.y = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.2, i32 1166, i32 2321, i64 16) #16, !srcloc !181
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.y, ptr noundef nonnull @.str.73, i64 noundef %i.x) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !182
  br label %source_can_output.exit.thread

source_can_output.exit:                           ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.o, i64 1168
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = icmp ugt i16 %i.aa, 10
  br i1 %i.ab, label %source_can_output.exit.thread70, label %source_can_output.exit.thread

source_can_output.exit.thread70:                  ; preds = %.split, %source_can_output.exit
  %i.ac = getelementptr i8, ptr %.0.i, i64 22
  %.val41 = load i8, ptr %i.ac, align 2
  %i.ad = trunc i8 %.val41 to i1
  %.not39 = icmp eq i32 %1, %i.l
  %or.cond = and i1 %.not39, %i.ad
  br i1 %or.cond, label %bb.k, label %source_can_output.exit53.thread77

bb.k:                                             ; preds = %source_can_output.exit.thread70
  %i.ae = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.2, i32 1212, i32 2321, i64 16) #16, !srcloc !183
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ae, ptr noundef nonnull @.str.60, i64 noundef 1) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !184
  br label %source_can_output.exit.thread

source_can_output.exit.thread:                    ; preds = %bb.i, %bb.j, %.split, %bb.k, %source_can_output.exit
  %i.af = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i44 = icmp eq ptr %i.af, null
  br i1 %.not.i44, label %__drm_to_dev.exit, label %bb.l

bb.l:                                             ; preds = %source_can_output.exit.thread
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %source_can_output.exit.thread, %bb.l
  %i.ai = phi ptr [ %i.ah, %bb.l ], [ null, %source_can_output.exit.thread ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ai, i32 noundef 2, ptr noundef nonnull @.str.71) #15
  br label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit, %intel_attached_dp.exit
  %i.aj = icmp eq i32 %1, 0
  br i1 %i.aj, label %dfp_can_convert_from_ycbcr444.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %.0.i, i64 22
  %.val.i45 = load i8, ptr %i.ak, align 2
  %i.al = trunc i8 %.val.i45 to i1
  br i1 %i.al, label %bb.o, label %dfp_can_convert_from_ycbcr444.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr i8, ptr %.0.i, i64 3211
  %i.an = load i8, ptr %i.am, align 1, !range !22, !noundef !23
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr i8, ptr %.0.i, i64 3209
  %i.aq = load i8, ptr %i.ap, align 1, !range !22
  %i.ar = trunc nuw i8 %i.aq to i1                ; 2 uses
  br i1 %i.ao, label %dfp_can_convert_from_rgb.exit, label %.dfp_can_convert_from_ycbcr444.exit_crit_edge

.dfp_can_convert_from_ycbcr444.exit_crit_edge:    ; preds = %bb.o
  %i.as = select i1 %i.ar, i32 2, i32 1
  br label %dfp_can_convert_from_ycbcr444.exit.thread

dfp_can_convert_from_rgb.exit:                    ; preds = %bb.o
  %not. = xor i1 %i.ar, true
  %spec.select = zext i1 %not. to i32
  br label %dfp_can_convert_from_ycbcr444.exit.thread

dfp_can_convert_from_ycbcr444.exit.thread:        ; preds = %dfp_can_convert_from_rgb.exit, %.dfp_can_convert_from_ycbcr444.exit_crit_edge, %bb.n, %bb.m
  %.034 = phi i32 [ 0, %bb.m ], [ %spec.select, %dfp_can_convert_from_rgb.exit ], [ 1, %bb.n ], [ %i.as, %.dfp_can_convert_from_ycbcr444.exit_crit_edge ] ; 3 uses
  %i.at = getelementptr i8, ptr %.0.i, i64 -504
  %.val = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i49 = icmp eq ptr %.val, null
  br i1 %.not.i49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %dfp_can_convert_from_ycbcr444.exit.thread
  %i.au = tail call ptr @__drm_to_display(ptr noundef nonnull %.val) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %dfp_can_convert_from_ycbcr444.exit.thread
  %i.av = phi ptr [ %i.au, %bb.p ], [ null, %dfp_can_convert_from_ycbcr444.exit.thread ] ; 3 uses
  switch i32 %.034, label %default.unreachable88 [
    i32 0, label %source_can_output.exit53.thread77
    i32 2, label %bb.r
    i32 1, label %source_can_output.exit53
  ]

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %i.av, i64 1160
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 46
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = and i16 %i.az, 128
  %.not14.i51 = icmp eq i16 %i.ba, 0
  br i1 %.not14.i51, label %.split79, label %source_can_output.exit53.thread

.split79:                                         ; preds = %bb.r
  %i.bb = getelementptr i8, ptr %i.av, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, 131072
  %.not15.i52 = icmp eq i64 %i.bd, 0
  br i1 %.not15.i52, label %source_can_output.exit53.thread77, label %source_can_output.exit53.thread, !prof !26

default.unreachable88:                            ; preds = %bb.q
  unreachable

source_can_output.exit53:                         ; preds = %bb.q
  %i.be = getelementptr i8, ptr %i.av, i64 1168
end_hunk_0
