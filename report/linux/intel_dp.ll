inline.NumInlined: 1015
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@intel_dp_compute_output_format:bb.a
  %i.af = load ptr, ptr %i.ae, align 8
  br label %enc_to_intel_dp.exit.i

intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i: ; preds = %intel_dp_sink_format_valid.exit
  br label %enc_to_intel_dp.exit.i

enc_to_intel_dp.exit.i:                           ; preds = %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i, %bb.i, %intel_dp_sink_format_valid.exit, %intel_dp_sink_format_valid.exit, %intel_dp_sink_format_valid.exit, %intel_dp_sink_format_valid.exit
  %.0.i.i.i = phi ptr [ %0, %intel_dp_sink_format_valid.exit ], [ %i.af, %bb.i ], [ %0, %intel_dp_sink_format_valid.exit ], [ %0, %intel_dp_sink_format_valid.exit ], [ %0, %intel_dp_sink_format_valid.exit ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %1, i64 4581      ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !range !18, !noundef !19
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.j, label %bb.p

bb.j:                                             ; preds = %enc_to_intel_dp.exit.i
  %i.aj = load ptr, ptr %.0.i.i.i, align 8        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call ptr @__drm_to_display(ptr noundef nonnull %i.aj) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = phi ptr [ %i.ak, %bb.k ], [ null, %bb.j ]
  %i.am = getelementptr i8, ptr %i.al, i64 1168
  %i.an = load i16, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp ugt i16 %i.an, 11
  br i1 %i.ao, label %intel_dp_supports_fec.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp eq i16 %i.an, 11
  br i1 %i.ap, label %bb.n, label %intel_dp_compute_link_config.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr i8, ptr %.0.i.i.i, i64 156
  %i.ar = load i32, ptr %i.aq, align 4
  %.not9.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not9.i.i.i, label %intel_dp_compute_link_config.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr i8, ptr %1, i64 888
  %.val.i.i35.i = load i32, ptr %i.as, align 8
  %i.at = and i32 %.val.i.i35.i, 2048
  %.not10.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not10.i.i.i, label %intel_dp_supports_fec.exit.i, label %intel_dp_compute_link_config.exit

intel_dp_supports_fec.exit.i:                     ; preds = %bb.o, %bb.l
  %i.au = getelementptr i8, ptr %i.ad, i64 2744
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %bb.p, label %intel_dp_compute_link_config.exit

bb.p:                                             ; preds = %intel_dp_supports_fec.exit.i, %enc_to_intel_dp.exit.i
  %i.ax = getelementptr i8, ptr %1, i64 620       ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ac, i64 1664
  %i.az = getelementptr i8, ptr %1, i64 4403      ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 512
  %i.bb = getelementptr i8, ptr %1, i64 4405      ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 4408      ; 2 uses
  %i.bd = getelementptr i8, ptr %1, i64 644       ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 1329      ; 3 uses
  %i.bk = getelementptr i8, ptr %1, i64 1240      ; 2 uses
  %i.bl = getelementptr i8, ptr %1, i64 1320      ; 3 uses
  %i.bm = getelementptr i8, ptr %1, i64 658
  br label %bb.q

bb.q:                                             ; preds = %bb.az, %bb.p
  %.061.i = phi i32 [ -22, %bb.p ], [ %.1.i, %bb.az ]
  %.03259.i = phi i32 [ 1, %bb.p ], [ %i.il, %bb.az ] ; 4 uses
  %i.bn = load i16, ptr %i.ax, align 4
  %i.bo = zext i16 %i.bn to i32
  %i.bp = call zeroext i1 @intel_dp_joiner_candidate_valid(ptr noundef %i.ad, i32 noundef %i.bo, i32 noundef %.03259.i) #17
  br i1 %i.bp, label %bb.r, label %bb.az

bb.r:                                             ; preds = %bb.q
  %i.bq = icmp samesign ugt i32 %.03259.i, 1
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nsw i64 -1, %i.bs
  %i.bu = add nsw i32 %.03259.i, -1
  %i.bv = add i32 %i.bu, %i.br
  %i.bw = sext i32 %i.bv to i64
  %i.bx = sub nsw i64 63, %i.bw
  %i.by = lshr i64 -1, %i.bx
  %i.bz = and i64 %i.by, %i.bt
  %i.ca = trunc i64 %i.bz to i8
  store i8 %i.ca, ptr %i.az, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cb = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i17, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = call ptr @__drm_to_display(ptr noundef nonnull %i.cb) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cd = phi ptr [ %i.cc, %bb.u ], [ null, %bb.t ] ; 7 uses
  %i.ce = call i32 @intel_crtc_num_joined_pipes(ptr noundef %1) #15 ; 4 uses
  %i.cf = load ptr, ptr %2, align 8
  %.val.i.i.i.i18 = load i32, ptr %i.a, align 8
  switch i32 %.val.i.i.i.i18, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i22 [
    i32 10, label %enc_to_intel_dp.exit.i.i19
    i32 7, label %enc_to_intel_dp.exit.i.i19
    i32 8, label %enc_to_intel_dp.exit.i.i19
    i32 6, label %enc_to_intel_dp.exit.i.i19
    i32 11, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.cg = load ptr, ptr %i.ba, align 8
  br label %enc_to_intel_dp.exit.i.i19

intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i22: ; preds = %bb.v
  br label %enc_to_intel_dp.exit.i.i19

enc_to_intel_dp.exit.i.i19:                       ; preds = %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i22, %bb.w, %bb.v, %bb.v, %bb.v, %bb.v
  %.0.i.i.i.i20 = phi ptr [ %0, %bb.v ], [ %i.cg, %bb.w ], [ %0, %bb.v ], [ %0, %bb.v ], [ %0, %bb.v ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i22 ] ; 6 uses
  %i.ch = getelementptr i8, ptr %.0.i.i.i.i20, i64 504 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i64 32, i1 false), !annotation !28
  store i8 0, ptr %i.ag, align 1
  store i8 0, ptr %i.bb, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(150) %i.bc, i8 0, i64 150, i1 false)
  %i.ci = getelementptr i8, ptr %i.cd, i64 1168
  %i.cj = load i16, ptr %i.ci, align 8
  %i.ck = icmp ult i16 %i.cj, 13
  %i.cl = icmp eq i32 %i.ce, 2
  %or.cond.i.i.i = and i1 %i.cl, %i.ck
  %i.cm = icmp eq i32 %i.ce, 4
  %spec.select.i.i.i = or i1 %i.cm, %or.cond.i.i.i ; 2 uses
  br i1 %spec.select.i.i.i, label %.thread103.i.i, label %bb.x

bb.x:                                             ; preds = %enc_to_intel_dp.exit.i.i19
  %i.cn = getelementptr i8, ptr %.0.i.i.i.i20, i64 3768
  %i.co = load i8, ptr %i.cn, align 8, !range !18, !noundef !19
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %.thread103.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = call zeroext i1 @intel_dp_compute_config_limits(ptr noundef %i.ch, ptr noundef %2, ptr noundef %1, i1 noundef zeroext %3, i1 noundef zeroext false, ptr noundef nonnull %5) #17
  br i1 %i.cq, label %bb.z, label %.thread103.i.i

bb.z:                                             ; preds = %bb.y
  %.val.i.i21 = load ptr, ptr %2, align 8         ; 3 uses
  %i.cr = load ptr, ptr %.val.i.i21, align 8      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = call ptr @__drm_to_display(ptr noundef nonnull %i.cr) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ct = phi ptr [ %i.cs, %bb.aa ], [ null, %bb.z ] ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 1168
  %i.cv = load i16, ptr %i.cu, align 8
  %i.cw = add i16 %i.cv, -9
  %or.cond.i.i.i.i.i = icmp ult i16 %i.cw, 6
  br i1 %or.cond.i.i.i.i.i, label %has_seamless_m_n.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = getelementptr i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = and i64 %i.cy, 16777216
  %.not7.i.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not7.i.i.i.i.i, label %intel_dp_mode_clock.exit.i.i.i, label %has_seamless_m_n.exit.i.i.i.i

has_seamless_m_n.exit.i.i.i.i:                    ; preds = %bb.ac, %bb.ab
  %i.da = call i32 @intel_panel_drrs_type(ptr noundef %.val.i.i21) #15
  %i.db = icmp eq i32 %i.da, 2
  br i1 %i.db, label %bb.ad, label %intel_dp_mode_clock.exit.i.i.i

bb.ad:                                            ; preds = %has_seamless_m_n.exit.i.i.i.i
  %i.dc = call ptr @intel_panel_highest_mode(ptr noundef %.val.i.i21, ptr noundef %i.f) #15
  br label %intel_dp_mode_clock.exit.i.i.i

intel_dp_mode_clock.exit.i.i.i:                   ; preds = %bb.ad, %has_seamless_m_n.exit.i.i.i.i, %bb.ac
  %.0.in.i.i.i.i = phi ptr [ %i.dc, %bb.ad ], [ %i.bd, %has_seamless_m_n.exit.i.i.i.i ], [ %i.bd, %bb.ac ]
  %.0.i.i81.i.i = load i32, ptr %.0.in.i.i.i.i, align 4
  %i.dd = load i32, ptr %i.bf, align 4
  %i.de = ashr i32 %i.dd, 4                       ; 2 uses
  %i.df = load i32, ptr %i.be, align 4            ; 2 uses
  %i.dg = ashr i32 %i.df, 4
  %.not10.i.i36.i = icmp slt i32 %i.de, %i.dg
  br i1 %.not10.i.i36.i, label %.thread103.i.i, label %.lr.ph12.i.i.i

.lr.ph12.i.i.i:                                   ; preds = %intel_dp_mode_clock.exit.i.i.i
  %i.dh = getelementptr i8, ptr %.0.i.i.i.i20, i64 660 ; 3 uses
  %i.di = getelementptr i8, ptr %.0.i.i.i.i20, i64 664
  %i.dj = load i32, ptr %i.dh, align 4            ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph12.split.i.i.i, label %.thread103.i.i

.lr.ph12.split.i.i.i:                             ; preds = %.lr.ph12.i.i.i, %.critedge51.i.i.i
  %i.dl = phi i32 [ %i.fo, %.critedge51.i.i.i ], [ %i.df, %.lr.ph12.i.i.i ]
  %i.dm = phi i32 [ %i.fp, %.critedge51.i.i.i ], [ %i.dj, %.lr.ph12.i.i.i ] ; 3 uses
  %i.dn = phi i32 [ %i.fq, %.critedge51.i.i.i ], [ %i.de, %.lr.ph12.i.i.i ] ; 5 uses
  %i.do = load i32, ptr %i.ab, align 8
  %i.dp = icmp eq i32 %i.do, 1
  %i.dq = sdiv i32 %i.dn, 2
  %.0.i52.i.i.i = select i1 %i.dp, i32 %i.dq, i32 %i.dn
  %i.dr = shl nsw i32 %.0.i52.i.i.i, 4            ; 2 uses
  %.not496.i.i.i = icmp sgt i32 %i.dm, 0
  br i1 %.not496.i.i.i, label %.lr.ph9.i.i.i, label %.critedge51.i.i.i

.lr.ph9.i.i.i:                                    ; preds = %.lr.ph12.split.i.i.i
  %i.ds = mul i32 %i.dr, %.0.i.i81.i.i
  %i.dt = zext i32 %i.ds to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i.i.i, %.lr.ph9.i.i.i
  %i.du = phi i32 [ %i.dm, %.lr.ph9.i.i.i ], [ %i.fm, %.loopexit.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph9.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %i.dv = load ptr, ptr %.0.i.i.i.i20, align 8    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = call ptr @__drm_to_display(ptr noundef nonnull %i.dv) #15
  %.pre.i.i = load i32, ptr %i.dh, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dx = phi i32 [ %.pre.i.i, %bb.af ], [ %i.du, %bb.ae ]
  %i.dy = phi ptr [ %i.dw, %bb.af ], [ null, %bb.ae ] ; 3 uses
  %i.dz = sext i32 %i.dx to i64
  %.not32.i.i.i.i = icmp slt i64 %indvars.iv.i.i.i, %i.dz
  br i1 %.not32.i.i.i.i, label %.critedge.i.i.i.i, label %.critedge20.i.i.i.i, !prof !10

.critedge20.i.i.i.i:                              ; preds = %bb.ag
  %i.ea = load ptr, ptr %i.dy, align 8            ; 2 uses
  %.not.i.i53.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i53.i.i.i, label %__drm_to_dev.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.critedge20.i.i.i.i
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  br label %__drm_to_dev.exit.i.i.i.i

__drm_to_dev.exit.i.i.i.i:                        ; preds = %bb.ah, %.critedge20.i.i.i.i
  %i.ed = phi ptr [ %i.ec, %bb.ah ], [ null, %.critedge20.i.i.i.i ]
  %i.ee = call ptr @dev_driver_string(ptr noundef %i.ed) #15 ; 0 uses
  %i.ef = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 342, i32 2321, i64 16) #16, !srcloc !11
  %i.eg = load ptr, ptr %i.dy, align 8            ; 2 uses
  %.not.i24.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i24.i.i.i.i, label %__drm_to_dev.exit25.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %__drm_to_dev.exit.i.i.i.i
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  br label %__drm_to_dev.exit25.i.i.i.i

__drm_to_dev.exit25.i.i.i.i:                      ; preds = %bb.ai, %__drm_to_dev.exit.i.i.i.i
  %i.ej = phi ptr [ %i.ei, %bb.ai ], [ null, %__drm_to_dev.exit.i.i.i.i ]
  %i.ek = call ptr @dev_driver_string(ptr noundef %i.ej) #15
  %i.el = load ptr, ptr %i.dy, align 8            ; 2 uses
  %.not.i26.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i26.i.i.i.i, label %__drm_to_dev.exit27.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %__drm_to_dev.exit25.i.i.i.i
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  br label %__drm_to_dev.exit27.i.i.i.i

__drm_to_dev.exit27.i.i.i.i:                      ; preds = %bb.aj, %__drm_to_dev.exit25.i.i.i.i
  %i.eo = phi ptr [ %i.en, %bb.aj ], [ null, %__drm_to_dev.exit25.i.i.i.i ] ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 80
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %.not.i28.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i28.i.i.i.i, label %bb.ak, label %dev_name.exit31.i.i.i.i

bb.ak:                                            ; preds = %__drm_to_dev.exit27.i.i.i.i
  %.val.i30.i.i.i.i = load ptr, ptr %i.eo, align 8
  br label %dev_name.exit31.i.i.i.i

dev_name.exit31.i.i.i.i:                          ; preds = %bb.ak, %__drm_to_dev.exit27.i.i.i.i
  %.0.i29.i.i.i.i = phi ptr [ %.val.i30.i.i.i.i, %bb.ak ], [ %i.eq, %__drm_to_dev.exit27.i.i.i.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ef, ptr noundef %i.ek, ptr noundef %.0.i29.i.i.i.i, ptr noundef nonnull @.str.1) #15
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !12
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
  %.0455.i.i.i = phi i32 [ %i.ex, %.lr.ph.i.i.i ], [ %i.fk, %.critedge.i.i.i ] ; 4 uses
  %i.fa = load i16, ptr %i.ax, align 4
  %i.fb = zext i16 %i.fa to i32
  %i.fc = call i32 @drm_dp_bw_overhead(i32 noundef %.0455.i.i.i, i32 noundef %i.fb, i32 noundef 0, i32 noundef %i.dr, i64 noundef %spec.select.i.i.i.i.i) #15
  %i.fd = call range(i32 1000000, -2147483648) i32 @llvm.smax.i32(i32 %i.fc, i32 1000000)
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = mul nuw nsw i64 %i.fe, %i.dt
  %i.fg = add nuw nsw i64 %i.ff, 127999984
  %i.fh = udiv i64 %i.fg, 128000000
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = call i32 @drm_dp_max_dprx_data_rate(i32 noundef %.0.i54.i.i.i, i32 noundef %.0455.i.i.i) #15
  %.not48.i.i.i = icmp slt i32 %i.fj, %i.fi
  br i1 %.not48.i.i.i, label %.critedge.i.i.i, label %bb.an

.critedge.i.i.i:                                  ; preds = %bb.am
  %i.fk = shl i32 %.0455.i.i.i, 1                 ; 2 uses
  %i.fl = load i32, ptr %i.bi, align 4
  %.not47.i.i.i = icmp sgt i32 %i.fk, %i.fl
  br i1 %.not47.i.i.i, label %.loopexit.i.i.i, label %bb.am, !llvm.loop !176

.loopexit.i.i.i:                                  ; preds = %.critedge.i.i.i, %bb.al, %intel_dp_common_rate.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fm = load i32, ptr %i.dh, align 4            ; 3 uses
  %i.fn = sext i32 %i.fm to i64
  %.not49.i.i.i = icmp slt i64 %indvars.iv.next.i.i.i, %i.fn
  br i1 %.not49.i.i.i, label %bb.ae, label %.critedge51.loopexit.i.i.i, !llvm.loop !177

.critedge51.loopexit.i.i.i:                       ; preds = %.loopexit.i.i.i
  %.pre.i.i.i = load i32, ptr %i.be, align 4
  br label %.critedge51.i.i.i

.critedge51.i.i.i:                                ; preds = %.critedge51.loopexit.i.i.i, %.lr.ph12.split.i.i.i
  %i.fo = phi i32 [ %.pre.i.i.i, %.critedge51.loopexit.i.i.i ], [ %i.dl, %.lr.ph12.split.i.i.i ] ; 2 uses
  %i.fp = phi i32 [ %i.fm, %.critedge51.loopexit.i.i.i ], [ %i.dm, %.lr.ph12.split.i.i.i ]
  %i.fq = add nsw i32 %i.dn, -6                   ; 2 uses
  %i.fr = ashr i32 %i.fo, 4
  %.not.i.i37.i = icmp slt i32 %i.fq, %i.fr
  br i1 %.not.i.i37.i, label %.thread103.i.i, label %.lr.ph12.split.i.i.i, !llvm.loop !178

bb.an:                                            ; preds = %bb.am
  %i.fs = trunc i32 %.0455.i.i.i to i8
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

.thread103.i.i:                                   ; preds = %.critedge51.i.i.i, %.thread94.i.i, %bb.ao, %.lr.ph12.i.i.i, %intel_dp_mode_clock.exit.i.i.i, %bb.y, %bb.x, %enc_to_intel_dp.exit.i.i19
  %.1107.i.i = phi ptr [ @.str.63, %.lr.ph12.i.i.i ], [ @.str.64, %bb.y ], [ @.str.64, %enc_to_intel_dp.exit.i.i19 ], [ @.str.64, %bb.x ], [ @.str.64, %.thread94.i.i ], [ @.str.63, %bb.ao ], [ @.str.63, %intel_dp_mode_clock.exit.i.i.i ], [ @.str.63, %.critedge51.i.i.i ]
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
  %i.gh = load i8, ptr %i.gg, align 8, !range !18, !noundef !19
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

.thread44.i:                                      ; preds = %intel_dp_in_hdr_mode.exit.i.i, %__drm_to_dev.exit88.i.i
  %i.hq = phi ptr [ @.str.64, %__drm_to_dev.exit88.i.i ], [ %spec.select.i.i, %intel_dp_in_hdr_mode.exit.i.i ]
  %i.hr = load i8, ptr %i.bb, align 1, !range !18, !noundef !19
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

intel_dp_compute_link_for_joined_pipes.exit.thread.i: ; preds = %bb.ax, %__drm_to_dev.exit84.i.i, %__drm_to_dev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.az

intel_dp_compute_link_for_joined_pipes.exit.i:    ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %cond.i = icmp eq i32 %i.gl, -35
  br i1 %cond.i, label %.thread.i, label %bb.az

bb.az:                                            ; preds = %intel_dp_compute_link_for_joined_pipes.exit.i, %intel_dp_compute_link_for_joined_pipes.exit.thread.i, %bb.q
  %.1.i = phi i32 [ %i.gl, %intel_dp_compute_link_for_joined_pipes.exit.i ], [ %.061.i, %bb.q ], [ -22, %intel_dp_compute_link_for_joined_pipes.exit.thread.i ] ; 2 uses
  %i.il = add nuw nsw i32 %.03259.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.il, 5
  br i1 %exitcond.not.i, label %.thread.i, label %bb.q, !llvm.loop !180

.thread.i:                                        ; preds = %bb.az, %intel_dp_compute_link_for_joined_pipes.exit.i
  %.243.i = phi i32 [ %.1.i, %bb.az ], [ -35, %intel_dp_compute_link_for_joined_pipes.exit.i ]
  store i8 0, ptr %i.az, align 1
  br label %intel_dp_compute_link_config.exit

intel_dp_compute_link_config.exit:                ; preds = %bb.h, %bb.f, %bb.g, %.thread.i, %.thread44.i, %intel_dp_supports_fec.exit.i, %bb.o, %bb.n, %bb.m
  %.0 = phi i32 [ -22, %bb.n ], [ -22, %intel_dp_supports_fec.exit.i ], [ %.243.i, %.thread.i ], [ -22, %bb.o ], [ 0, %.thread44.i ], [ -22, %bb.m ], [ -22, %bb.g ], [ -22, %bb.f ], [ -22, %bb.h ]
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

end_hunk_0
