inline.NumInlined: 34
inline.NumDeleted: 21
begin_hunk_0_@dissect_tn5250_orders_and_data:bb.a
  %i.aea = load i32, ptr @ett_tn5250_soh_mask, align 4 ; 2 uses
  store i32 %i.aea, ptr %i.xs, align 8
  store i32 1, ptr %i.xt, align 4
  store ptr @dissect_start_of_field.byte, ptr %i.xu, align 16
  store i32 0, ptr %i.xv, align 8
  store i32 0, ptr %i.xw, align 4
  store ptr @hf_tn5250_ffw, ptr %i.xx, align 16
  store i32 %i.aea, ptr %i.xy, align 8
  store i32 1, ptr %i.xz, align 4
  store ptr @dissect_start_of_field.byte1, ptr %i.ya, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.yb, i8 0, i64 40, i1 false)
  %i.aeb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.adx)
  %i.aec = and i8 %i.aeb, 64
  %.not.i108 = icmp eq i8 %i.aec, 0
  br i1 %.not.i108, label %.critedge.i110, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aed = call fastcc i32 @tn5250_add_hf_items(ptr noundef %i.adz, ptr noundef %1, i32 noundef %i.adx, ptr noundef nonnull %20)
  %i.aee = add i32 %i.aed, %i.adx                 ; 3 uses
  %i.aef = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.aee)
  %.not3639.not.i = icmp eq i32 %i.aef, 0
  br i1 %.not3639.not.i, label %.critedge.i110, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %bb.t, %bb.u
  %.040.i = phi i32 [ %i.aek, %bb.u ], [ %i.aee, %bb.t ] ; 5 uses
  %i.aeg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.040.i)
  switch i8 %i.aeg, label %.thread.i111 [
    i8 -127, label %bb.u
    i8 -126, label %bb.u
    i8 -123, label %bb.u
    i8 -122, label %bb.u
    i8 -79, label %bb.u
    i8 -128, label %bb.u
    i8 -120, label %bb.u
    i8 -119, label %bb.u
    i8 -118, label %bb.u
    i8 -124, label %bb.u
  ]

.thread.i111:                                     ; preds = %.lr.ph.i109
  %i.aeh = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %.040.i) ; 0 uses
  br label %.critedge.i110

bb.u:                                             ; preds = %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109
  %i.aei = load i32, ptr @hf_tn5250_fcw, align 4
  %i.aej = tail call ptr @proto_tree_add_item(ptr noundef %i.adz, i32 noundef %i.aei, ptr noundef %1, i32 noundef %.040.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aek = add i32 %.040.i, 2                     ; 3 uses
  %i.ael = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.aek)
  %.not36.not.i = icmp eq i32 %i.ael, 0
  br i1 %.not36.not.i, label %.critedge.i110, label %.lr.ph.i109, !llvm.loop !12

.critedge.i110:                                   ; preds = %bb.u, %.thread.i111, %bb.t, %bb.s
  %.2.i = phi i32 [ %i.adx, %bb.s ], [ %i.aee, %bb.t ], [ %.040.i, %.thread.i111 ], [ %i.aek, %bb.u ] ; 5 uses
  %i.aem = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.2.i)
  %i.aen = and i8 %i.aem, 32
  %.not38.i = icmp eq i8 %i.aen, 0
  br i1 %.not38.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge.i110
  %i.aeo = load i32, ptr @hf_tn5250_fa, align 4
  %i.aep = load i32, ptr @ett_tn5250_wea_prim_attr, align 4
  %i.aeq = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.adz, ptr noundef %1, i32 noundef %.2.i, i32 noundef %i.aeo, i32 noundef %i.aep, ptr noundef nonnull @dissect_start_of_field.fabyte, i32 noundef 0) ; 0 uses
  br label %dissect_start_of_field.exit

bb.w:                                             ; preds = %.critedge.i110
  %i.aer = load i32, ptr @hf_tn5250_fa_color, align 4
  %i.aes = tail call ptr @proto_tree_add_item(ptr noundef %i.adz, i32 noundef %i.aer, ptr noundef %1, i32 noundef %.2.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_start_of_field.exit

dissect_start_of_field.exit:                      ; preds = %bb.v, %bb.w
  %.3.i = add i32 %.2.i, 1
  %i.aet = load i32, ptr @hf_tn5250_length_twobyte, align 4
  %i.aeu = tail call ptr @proto_tree_add_item(ptr noundef %i.adz, i32 noundef %i.aet, ptr noundef %1, i32 noundef %.3.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  %i.aev = add i32 %.2.i, 3                       ; 8 uses
  %i.aew = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.aev)
  %.not20.not.i112 = icmp eq i32 %i.aew, 0
  br i1 %.not20.not.i112, label %.critedge._crit_edge.i118, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %dissect_start_of_field.exit, %bb.x
  %.021.i114 = phi i32 [ %i.aez, %bb.x ], [ %i.aev, %dissect_start_of_field.exit ] ; 4 uses
  %i.aex = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.021.i114)
  switch i8 %i.aex, label %bb.x [
    i8 19, label %.thread.i115
    i8 20, label %.thread.i115
    i8 17, label %.thread.i115
    i8 2, label %.thread.i115
    i8 3, label %.thread.i115
    i8 1, label %.thread.i115
    i8 16, label %.thread.i115
    i8 18, label %.thread.i115
    i8 29, label %.thread.i115
    i8 21, label %.thread.i115
    i8 4, label %.thread.i115
  ]

.thread.i115:                                     ; preds = %.lr.ph.i113, %.lr.ph.i113, %.lr.ph.i113, %.lr.ph.i113, %.lr.ph.i113, %.lr.ph.i113, %.lr.ph.i113, %.lr.ph.i113, %.lr.ph.i113, %.lr.ph.i113, %.lr.ph.i113
  %i.aey = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %.021.i114) ; 0 uses
  br label %.critedge.i116

bb.x:                                             ; preds = %.lr.ph.i113
  %i.aez = add i32 %.021.i114, 1                  ; 3 uses
  %i.afa = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.aez)
  %.not.not.i122 = icmp eq i32 %i.afa, 0
  br i1 %.not.not.i122, label %.critedge.i116, label %.lr.ph.i113, !llvm.loop !10

.critedge.i116:                                   ; preds = %bb.x, %.thread.i115
  %.0.lcssa.i117 = phi i32 [ %.021.i114, %.thread.i115 ], [ %i.aez, %bb.x ] ; 3 uses
  %i.afb = icmp sgt i32 %.0.lcssa.i117, %i.aev
  br i1 %i.afb, label %bb.y, label %.critedge._crit_edge.i118

.critedge._crit_edge.i118:                        ; preds = %.critedge.i116, %dissect_start_of_field.exit
  %.0.lcssa29.i119 = phi i32 [ %.0.lcssa.i117, %.critedge.i116 ], [ %i.aev, %dissect_start_of_field.exit ]
  %.pre.i120 = sub i32 %.0.lcssa29.i119, %i.aev
  br label %dissect_tn5250_ra_data.exit123

bb.y:                                             ; preds = %.critedge.i116
  %i.afc = load i32, ptr @hf_tn5250_repeated_character, align 4
  %i.afd = sub i32 %.0.lcssa.i117, %i.aev         ; 2 uses
  %i.afe = tail call ptr @proto_tree_add_item(ptr noundef %i.adz, i32 noundef %i.afc, ptr noundef %1, i32 noundef %i.aev, i32 noundef %i.afd, i32 noundef 46) ; 0 uses
  br label %dissect_tn5250_ra_data.exit123

dissect_tn5250_ra_data.exit123:                   ; preds = %.critedge._crit_edge.i118, %bb.y
  %.pre-phi.i121 = phi i32 [ %.pre.i120, %.critedge._crit_edge.i118 ], [ %i.afd, %bb.y ]
  %i.aff = add i32 %.pre-phi.i121, %i.aev
  br label %dissect_erase_to_address.exit

bb.z:                                             ; preds = %bb.b
  %i.afg = load i32, ptr @hf_tn5250_order_code, align 4
  %i.afh = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.afg, ptr noundef %1, i32 noundef %.0145, i32 noundef 1, i32 noundef 0)
  %i.afi = add i32 %.0145, 1                      ; 5 uses
  %i.afj = load i32, ptr @ett_cc, align 4
  %i.afk = tail call ptr @proto_item_add_subtree(ptr noundef %i.afh, i32 noundef %i.afj) ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  store ptr @hf_tn5250_wdsf_rgw_flag1, ptr %16, align 16
  %i.afl = load i32, ptr @ett_tn5250_wdsf_rgw_mask, align 4
  store i32 %i.afl, ptr %i.b, align 8
  store i32 1, ptr %i.c, align 4
  store ptr @dissect_wdsf_structured_field.rgw_byte, ptr %i.d, align 16
  store i32 0, ptr %i.e, align 8
  store i32 0, ptr %i.f, align 4
  store ptr @hf_tn5250_reserved, ptr %i.g, align 16
  store i32 0, ptr %i.h, align 8
  store i32 1, ptr %i.i, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_reserved, ptr %i.k, align 16
  store i32 0, ptr %i.l, align 8
  store i32 1, ptr %i.m, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #7
  store ptr @hf_tn5250_wdsf_ragc_flag1, ptr %17, align 16
  %i.afm = load i32, ptr @ett_tn5250_wdsf_ragc_mask, align 4
  store i32 %i.afm, ptr %i.o, align 8
  store i32 1, ptr %i.p, align 4
  store ptr @dissect_wdsf_structured_field.ragc_byte, ptr %i.q, align 16
  store i32 0, ptr %i.r, align 8
  store i32 0, ptr %i.s, align 4
  store ptr @hf_tn5250_reserved, ptr %i.t, align 16
  store i32 0, ptr %i.u, align 8
  store i32 1, ptr %i.v, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_reserved, ptr %i.x, align 16
  store i32 0, ptr %i.y, align 8
  store i32 1, ptr %i.z, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aa, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #7
  store ptr @hf_tn5250_wdsf_wdf_flag1, ptr %18, align 16
  %i.afn = load i32, ptr @ett_tn5250_wdsf_wdf_mask, align 4
  store i32 %i.afn, ptr %i.ab, align 8
  store i32 1, ptr %i.ac, align 4
  store ptr @dissect_wdsf_structured_field.wdf_byte, ptr %i.ad, align 16
  store i32 0, ptr %i.ae, align 8
  store i32 0, ptr %i.af, align 4
  store ptr @hf_tn5250_reserved, ptr %i.ag, align 16
  store i32 0, ptr %i.ah, align 8
  store i32 1, ptr %i.ai, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #7
  store ptr @hf_tn5250_wdsf_pmb_flag1, ptr %19, align 16
  %i.afo = load i32, ptr @ett_tn5250_wdsf_pmb_mask, align 4
  store i32 %i.afo, ptr %i.ak, align 8
  store i32 1, ptr %i.al, align 4
  store ptr @dissect_wdsf_structured_field.pmb_byte, ptr %i.am, align 16
  store i32 0, ptr %i.an, align 8
  store i32 0, ptr %i.ao, align 4
  store ptr @hf_tn5250_wdsf_pmb_first_mouse_event, ptr %i.ap, align 16
  store i32 0, ptr %i.aq, align 8
  store i32 1, ptr %i.ar, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_wdsf_pmb_second_mouse_event, ptr %i.at, align 16
  store i32 0, ptr %i.au, align 8
  store i32 1, ptr %i.av, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_aid, ptr %i.ax, align 16
  store i32 0, ptr %i.ay, align 8
  store i32 1, ptr %i.az, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ba, i8 0, i64 48, i1 false)
  %i.afp = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.afi) ; 2 uses
  %i.afq = zext i16 %i.afp to i32                 ; 4 uses
  %i.afr = add i32 %.0145, 4
  %i.afs = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.afr) ; 2 uses
  %i.aft = tail call fastcc i32 @tn5250_add_hf_items(ptr noundef %i.afk, ptr noundef %1, i32 noundef %i.afi, ptr noundef nonnull @__const.dissect_write_structured_field.standard_fields)
  %i.afu = add i32 %i.aft, %i.afi                 ; 5 uses
  %i.afv = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.afu)
  %.not113.not.i = icmp eq i32 %i.afv, 0
  br i1 %.not113.not.i, label %.critedge.i126, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %bb.z
  %i.afw = icmp ult i16 %i.afp, 6
  %i.afx = add nsw i32 %i.afq, -6                 ; 2 uses
  switch i8 %i.afs, label %.loopexit.thread.i [
    i8 81, label %.lr.ph116.i.split.preheader
    i8 82, label %.lr.ph116.i.split.preheader
    i8 88, label %.lr.ph116.i.split.preheader
    i8 91, label %.lr.ph116.i.split.preheader
    i8 89, label %.lr.ph116.i.split.preheader
    i8 95, label %.lr.ph116.i.split.preheader
    i8 80, label %.lr.ph116.i.split.preheader
    i8 83, label %.lr.ph116.i.split.preheader
    i8 84, label %.lr.ph116.i.split.preheader
    i8 85, label %.lr.ph116.i.split.preheader
    i8 96, label %.lr.ph116.i.split.preheader
    i8 97, label %.lr.ph116.i.split.preheader
  ]

.lr.ph116.i.split.preheader:                      ; preds = %.lr.ph116.i, %.lr.ph116.i, %.lr.ph116.i, %.lr.ph116.i, %.lr.ph116.i, %.lr.ph116.i, %.lr.ph116.i, %.lr.ph116.i, %.lr.ph116.i, %.lr.ph116.i, %.lr.ph116.i, %.lr.ph116.i
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph116.i.split.preheader, %.loopexit.i
  %.088114.i = phi i32 [ %.2.i124, %.loopexit.i ], [ %i.afu, %.lr.ph116.i.split.preheader ] ; 22 uses
  switch i8 %i.afs, label %bb.bb [
    i8 81, label %bb.ab
    i8 82, label %bb.ag
    i8 88, label %bb.ag
    i8 91, label %bb.ag
    i8 89, label %bb.ah
    i8 95, label %bb.ai
    i8 80, label %bb.aj
    i8 83, label %bb.at
    i8 84, label %bb.av
    i8 85, label %bb.ax
    i8 96, label %bb.az
  ]

.loopexit.thread.i:                               ; preds = %.lr.ph116.i
  %i.afy = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.afu) ; 0 uses
  br label %.critedge.i126

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  store ptr @hf_tn5250_wdsf_cw_flag1, ptr %13, align 16
  %i.afz = load i32, ptr @ett_tn5250_wdsf_cw_mask, align 4
  store i32 %i.afz, ptr %i.th, align 8
  store i32 1, ptr %i.ti, align 4
  store ptr @dissect_create_window.byte, ptr %i.tj, align 16
  store i32 0, ptr %i.tk, align 8
  store i32 0, ptr %i.tl, align 4
  store ptr @hf_tn5250_reserved, ptr %i.tm, align 16
  store i32 0, ptr %i.tn, align 8
  store i32 1, ptr %i.to, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tp, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_reserved, ptr %i.tq, align 16
  store i32 0, ptr %i.tr, align 8
  store i32 1, ptr %i.ts, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tt, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_wdsf_cw_wd, ptr %i.tu, align 16
  store i32 0, ptr %i.tv, align 8
  store i32 1, ptr %i.tw, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tx, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_wdsf_cw_ww, ptr %i.ty, align 16
  store i32 0, ptr %i.tz, align 8
  store i32 1, ptr %i.ua, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ub, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  store ptr @hf_tn5250_length, ptr %14, align 16
  store i32 0, ptr %i.uc, align 8
  store i32 1, ptr %i.ud, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ue, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_wdsf_cw_minor_type, ptr %i.uf, align 16
  store i32 0, ptr %i.ug, align 8
  store i32 1, ptr %i.uh, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ui, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_wdsf_cw_bp_flag1, ptr %i.uj, align 16
  %i.aga = load i32, ptr @ett_tn5250_wdsf_cw_bp_mask, align 4
  store i32 %i.aga, ptr %i.uk, align 8
  store i32 1, ptr %i.ul, align 4
  store ptr @dissect_create_window.cw_bp_flag1, ptr %i.um, align 16
  store i32 0, ptr %i.un, align 8
  store i32 0, ptr %i.uo, align 4
  store ptr @hf_tn5250_wdsf_cw_bp_mba, ptr %i.up, align 16
  store i32 0, ptr %i.uq, align 8
  store i32 1, ptr %i.ur, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.us, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_wdsf_cw_bp_cba, ptr %i.ut, align 16
  store i32 0, ptr %i.uu, align 8
  store i32 1, ptr %i.uv, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.uw, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_wdsf_cw_bp_ulbc, ptr %i.ux, align 16
  store i32 0, ptr %i.uy, align 8
  store i32 1, ptr %i.uz, align 4
  store ptr null, ptr %i.va, align 16
  store i32 46, ptr %i.vb, align 8
  store i32 0, ptr %i.vc, align 4
  store ptr @hf_tn5250_wdsf_cw_bp_tbc, ptr %i.vd, align 16
  store i32 0, ptr %i.ve, align 8
  store i32 1, ptr %i.vf, align 4
  store ptr null, ptr %i.vg, align 16
  store i32 46, ptr %i.vh, align 8
  store i32 0, ptr %i.vi, align 4
  store ptr @hf_tn5250_wdsf_cw_bp_urbc, ptr %i.vj, align 16
  store i32 0, ptr %i.vk, align 8
  store i32 1, ptr %i.vl, align 4
  store ptr null, ptr %i.vm, align 16
  store i32 46, ptr %i.vn, align 8
  store i32 0, ptr %i.vo, align 4
  store ptr @hf_tn5250_wdsf_cw_bp_lbc, ptr %i.vp, align 16
  store i32 0, ptr %i.vq, align 8
  store i32 1, ptr %i.vr, align 4
  store ptr null, ptr %i.vs, align 16
  store i32 46, ptr %i.vt, align 8
  store i32 0, ptr %i.vu, align 4
  store ptr @hf_tn5250_wdsf_cw_bp_rbc, ptr %i.vv, align 16
  store i32 0, ptr %i.vw, align 8
  store i32 1, ptr %i.vx, align 4
  store ptr null, ptr %i.vy, align 16
  store i32 46, ptr %i.vz, align 8
  store i32 0, ptr %i.wa, align 4
  store ptr @hf_tn5250_wdsf_cw_bp_llbc, ptr %i.wb, align 16
  store i32 0, ptr %i.wc, align 8
  store i32 1, ptr %i.wd, align 4
  store ptr null, ptr %i.we, align 16
  store i32 46, ptr %i.wf, align 8
  store i32 0, ptr %i.wg, align 4
  store ptr @hf_tn5250_wdsf_cw_bp_bbc, ptr %i.wh, align 16
  store i32 0, ptr %i.wi, align 8
  store i32 1, ptr %i.wj, align 4
  store ptr null, ptr %i.wk, align 16
  store i32 46, ptr %i.wl, align 8
  store i32 0, ptr %i.wm, align 4
  store ptr @hf_tn5250_wdsf_cw_bp_lrbc, ptr %i.wn, align 16
  store i32 0, ptr %i.wo, align 8
  store i32 1, ptr %i.wp, align 4
  store ptr null, ptr %i.wq, align 16
  store i32 46, ptr %i.wr, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ws, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  store ptr @hf_tn5250_length, ptr %15, align 16
  store i32 0, ptr %i.wt, align 8
  store i32 1, ptr %i.wu, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.wv, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_wdsf_cw_minor_type, ptr %i.ww, align 16
  store i32 0, ptr %i.wx, align 8
  store i32 1, ptr %i.wy, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.wz, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_wdsf_cw_tf_flag, ptr %i.xa, align 16
  %i.agb = load i32, ptr @ett_tn5250_wdsf_cw_tf_mask, align 4
  store i32 %i.agb, ptr %i.xb, align 8
  store i32 1, ptr %i.xc, align 4
  store ptr @dissect_create_window.cw_tf_flag1, ptr %i.xd, align 16
  store i32 0, ptr %i.xe, align 8
  store i32 0, ptr %i.xf, align 4
  store ptr @hf_tn5250_wdsf_cw_tf_mba, ptr %i.xg, align 16
  store i32 0, ptr %i.xh, align 8
  store i32 1, ptr %i.xi, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.xj, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_wdsf_cw_tf_cba, ptr %i.xk, align 16
  store i32 0, ptr %i.xl, align 8
  store i32 1, ptr %i.xm, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.xn, i8 0, i64 16, i1 false)
  store ptr @hf_tn5250_reserved, ptr %i.xo, align 16
  store i32 0, ptr %i.xp, align 8
  store i32 1, ptr %i.xq, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.xr, i8 0, i64 48, i1 false)
  %i.agc = call fastcc i32 @tn5250_add_hf_items(ptr noundef %i.afk, ptr noundef %1, i32 noundef %.088114.i, ptr noundef nonnull %13)
  %i.agd = add i32 %i.agc, %.088114.i             ; 3 uses
  %i.age = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.agd)
  %.not33.not.i.i = icmp eq i32 %i.age, 0
  br i1 %.not33.not.i.i, label %dissect_create_window.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %bb.af
  %.02934.i.i = phi i32 [ %.130.i.i, %bb.af ], [ %i.agd, %bb.ab ] ; 8 uses
  %i.agf = add i32 %.02934.i.i, 1
  %i.agg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.agf)
  switch i8 %i.agg, label %.thread.i.i [
    i8 1, label %bb.ac
    i8 16, label %bb.ad
  ]

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.agh = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %.02934.i.i) ; 0 uses
  br label %dissect_create_window.exit.i

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.agi = call fastcc i32 @tn5250_add_hf_items(ptr noundef %i.afk, ptr noundef %1, i32 noundef %.02934.i.i, ptr noundef nonnull %14)
  %i.agj = add i32 %i.agi, %.02934.i.i
  br label %bb.af

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.agk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.02934.i.i) ; 2 uses
  %i.agl = call fastcc i32 @tn5250_add_hf_items(ptr noundef %i.afk, ptr noundef %1, i32 noundef %.02934.i.i, ptr noundef nonnull %15)
  %i.agm = add i32 %i.agl, %.02934.i.i            ; 3 uses
  %i.agn = icmp ult i8 %i.agk, 6
  br i1 %i.agn, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ago = zext i8 %i.agk to i32
  %i.agp = load i32, ptr @hf_tn5250_wdsf_cw_tf_text, align 4
  %i.agq = add nsw i32 %i.ago, -6                 ; 2 uses
  %i.agr = tail call ptr @proto_tree_add_item(ptr noundef %i.afk, i32 noundef %i.agp, ptr noundef %1, i32 noundef %i.agm, i32 noundef %i.agq, i32 noundef 46) ; 0 uses
  %i.ags = add i32 %i.agm, %i.agq
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.130.i.i = phi i32 [ %i.ags, %bb.ae ], [ %i.agj, %bb.ac ], [ %i.agm, %bb.ad ] ; 3 uses
  %i.agt = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %.130.i.i)
  %.not.not.i.i = icmp eq i32 %i.agt, 0
  br i1 %.not.not.i.i, label %dissect_create_window.exit.i, label %.lr.ph.i.i, !llvm.loop !13

dissect_create_window.exit.i:                     ; preds = %bb.af, %.thread.i.i, %bb.ab
  %.029.lcssa.i.i = phi i32 [ %i.agd, %bb.ab ], [ %.02934.i.i, %.thread.i.i ], [ %.130.i.i, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  br label %.loopexit.i

bb.ag:                                            ; preds = %bb.aa, %bb.aa, %bb.aa
  %i.agu = load i32, ptr @hf_tn5250_reserved, align 4
  %i.agv = tail call ptr @proto_tree_add_item(ptr noundef %i.afk, i32 noundef %i.agu, ptr noundef %1, i32 noundef %.088114.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agw = load i32, ptr @hf_tn5250_reserved, align 4
  %i.agx = tail call ptr @proto_tree_add_item(ptr noundef %i.afk, i32 noundef %i.agw, ptr noundef %1, i32 noundef %.088114.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agy = add i32 %.088114.i, 2
  br label %.loopexit.i

bb.ah:                                            ; preds = %bb.aa
  %i.agz = call fastcc i32 @tn5250_add_hf_items(ptr noundef %i.afk, ptr noundef %1, i32 noundef %.088114.i, ptr noundef nonnull %16)
  %i.aha = add i32 %i.agz, %.088114.i
  br label %.loopexit.i

bb.ai:                                            ; preds = %bb.aa
  %i.ahb = call fastcc i32 @tn5250_add_hf_items(ptr noundef %i.afk, ptr noundef %1, i32 noundef %.088114.i, ptr noundef nonnull %17)
  %i.ahc = add i32 %i.ahb, %.088114.i
  br label %.loopexit.i

bb.aj:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
end_hunk_0
