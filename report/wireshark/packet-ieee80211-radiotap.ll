inline.NumInlined: 34
inline.NumDeleted: 25
begin_hunk_0_@dissect_radiotap:bb.a
bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.0740 = phi ptr [ %i.uk, %bb.dq ], [ null, %bb.dp ] ; 18 uses
  %i.vh = and i32 %i.ue, 1
  %.not789 = icmp eq i32 %i.vh, 0                 ; 2 uses
  br i1 %.not789, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.vi = load i16, ptr %i.bi, align 4
  %i.vj = and i8 %i.ug, 1
  %i.vk = zext nneg i8 %i.vj to i16
  %i.vl = shl nuw nsw i16 %i.vk, 10
  %i.vm = and i16 %i.vi, -1026
  %i.vn = or disjoint i16 %i.vm, %i.vl
  %i.vo = or disjoint i16 %i.vn, 1
  store i16 %i.vo, ptr %i.bi, align 4
  %.not790 = icmp eq ptr %.0740, null
  br i1 %.not790, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.vp = load i32, ptr @hf_radiotap_vht_stbc, align 4
  %i.vq = call ptr @proto_tree_add_item(ptr noundef nonnull %.0740, i32 noundef %i.vp, ptr noundef %0, i32 noundef %i.uf, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt, %bb.dr
  %i.vr = and i32 %i.ue, 2
  %.not791 = icmp eq i32 %i.vr, 0
  br i1 %.not791, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.vs = load i16, ptr %i.bi, align 4
  %i.vt = lshr i8 %i.ug, 1
  %.lobit = and i8 %i.vt, 1
  %i.vu = zext nneg i8 %.lobit to i16
  %i.vv = shl nuw nsw i16 %i.vu, 11
  %i.vw = and i16 %i.vs, -2051
  %i.vx = or disjoint i16 %i.vw, %i.vv
  %i.vy = or disjoint i16 %i.vx, 2
  store i16 %i.vy, ptr %i.bi, align 4
  %.not792 = icmp eq ptr %.0740, null
  br i1 %.not792, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.vz = load i32, ptr @hf_radiotap_vht_txop_ps, align 4
  %i.wa = call ptr @proto_tree_add_item(ptr noundef nonnull %.0740, i32 noundef %i.vz, ptr noundef %0, i32 noundef %i.uf, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %bb.dw, %bb.du
  %i.wb = and i32 %i.ue, 4
  %.not793 = icmp ne i32 %i.wb, 0                 ; 3 uses
  br i1 %.not793, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.wc = lshr i8 %i.ug, 2
  %.lobit795 = and i8 %i.wc, 1                    ; 3 uses
  %i.wd = load i16, ptr %i.bi, align 4
  %i.we = zext nneg i8 %.lobit795 to i16
  %i.wf = shl nuw nsw i16 %i.we, 12
  %i.wg = and i16 %i.wd, -4101
  %i.wh = or disjoint i16 %i.wg, %i.wf
  %i.wi = or disjoint i16 %i.wh, 4
  store i16 %i.wi, ptr %i.bi, align 4
  %.not796 = icmp eq ptr %.0740, null
  br i1 %.not796, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.wj = load i32, ptr @hf_radiotap_vht_gi, align 4
  %i.wk = call ptr @proto_tree_add_item(ptr noundef nonnull %.0740, i32 noundef %i.wj, ptr noundef %0, i32 noundef %i.uf, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dx, %bb.dy, %bb.dz
  %.0734.shrunk = phi i8 [ %.lobit795, %bb.dz ], [ %.lobit795, %bb.dy ], [ 0, %bb.dx ]
  %i.wl = and i32 %i.ue, 8
  %.not797 = icmp eq i32 %i.wl, 0
  br i1 %.not797, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.wm = load i16, ptr %i.bi, align 4
  %i.wn = zext i8 %i.ug to i32                    ; 2 uses
  %i.wo = and i32 %i.wn, 8                        ; 2 uses
  %.tr = trunc nuw nsw i32 %i.wo to i16
  %tr.sh.diff = shl nuw nsw i16 %.tr, 10
  %i.wp = and i16 %i.wm, -8201
  %i.wq = or disjoint i16 %i.wp, %tr.sh.diff
  %i.wr = or disjoint i16 %i.wq, 8
  store i16 %i.wr, ptr %i.bi, align 4
  %.not800 = icmp eq ptr %.0740, null
  br i1 %.not800, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.not799 = icmp ne i32 %i.wo, 0
  %i.ws = load i32, ptr @hf_radiotap_vht_sgi_nsym_da, align 4
  %i.wt = call ptr @proto_tree_add_item(ptr noundef nonnull %.0740, i32 noundef %i.ws, ptr noundef %0, i32 noundef %i.uf, i32 noundef 1, i32 noundef -2147483648)
  %brmerge.not913 = and i1 %.not793, %.not799
  %i.wu = and i32 %i.wn, 4
  %.not801 = icmp eq i32 %i.wu, 0
  %or.cond845 = select i1 %brmerge.not913, i1 %.not801, i1 false
  br i1 %or.cond845, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.wt, ptr noundef nonnull @.str.1275)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ec, %bb.eb, %bb.ed, %bb.ea
  %i.wv = and i32 %i.ue, 16
  %.not802 = icmp eq i32 %i.wv, 0
  br i1 %.not802, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ww = load i16, ptr %i.bi, align 4
  %i.wx = lshr i8 %i.ug, 4
  %.lobit803 = and i8 %i.wx, 1
  %i.wy = zext nneg i8 %.lobit803 to i16
  %i.wz = shl nuw nsw i16 %i.wy, 14
  %i.xa = and i16 %i.ww, -16401
  %i.xb = or disjoint i16 %i.xa, %i.wz
  %i.xc = or disjoint i16 %i.xb, 16
  store i16 %i.xc, ptr %i.bi, align 4
  %.not804 = icmp eq ptr %.0740, null
  br i1 %.not804, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.xd = load i32, ptr @hf_radiotap_vht_ldpc_extra, align 4
  %i.xe = call ptr @proto_tree_add_item(ptr noundef nonnull %.0740, i32 noundef %i.xd, ptr noundef %0, i32 noundef %i.uf, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.eg, %bb.ee
  %i.xf = and i32 %i.ue, 32
  %.not805 = icmp eq i32 %i.xf, 0
  br i1 %.not805, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xg = load i16, ptr %i.bi, align 4
  %i.xh = lshr i8 %i.ug, 5
  %.lobit806 = and i8 %i.xh, 1
  %i.xi = zext nneg i8 %.lobit806 to i16
  %i.xj = shl nuw i16 %i.xi, 15
  %i.xk = and i16 %i.xg, 32735
  %i.xl = or disjoint i16 %i.xk, %i.xj
  %i.xm = or disjoint i16 %i.xl, 32
  store i16 %i.xm, ptr %i.bi, align 4
  %.not807 = icmp eq ptr %.0740, null
  br i1 %.not807, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.xn = load i32, ptr @hf_radiotap_vht_bf, align 4
  %i.xo = call ptr @proto_tree_add_item(ptr noundef nonnull %.0740, i32 noundef %i.xn, ptr noundef %0, i32 noundef %i.uf, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ei, %bb.ej, %bb.eh
  %i.xp = and i32 %i.ue, 64
  %.not808 = icmp eq i32 %i.xp, 0
  br i1 %.not808, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.xq = add i32 %i.gp, 3                        ; 2 uses
  %i.xr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.xq)
  %i.xs = and i8 %i.xr, 31                        ; 3 uses
  %i.xt = load i16, ptr %i.bi, align 4
  %i.xu = or i16 %i.xt, 64
  store i16 %i.xu, ptr %i.bi, align 4
  store i8 %i.xs, ptr %i.bj, align 2
  %i.xv = icmp samesign ult i8 %i.xs, 26
  br i1 %i.xv, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.xw = zext nneg i8 %i.xs to i64
  %i.xx = getelementptr [4 x i8], ptr @ieee80211_vht_bw2rate_index, i64 %i.xw
  %i.xy = load i32, ptr %i.xx, align 4
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em
  %.0735 = phi i32 [ %i.xy, %bb.em ], [ 0, %bb.el ] ; 2 uses
  %.1 = phi i1 [ %.not793, %bb.em ], [ false, %bb.el ] ; 2 uses
  %.not809 = icmp eq ptr %.0740, null
  br i1 %.not809, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.xz = load i32, ptr @hf_radiotap_vht_bw, align 4
  %i.ya = call ptr @proto_tree_add_item(ptr noundef nonnull %.0740, i32 noundef %i.xz, ptr noundef %0, i32 noundef %i.xq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ek, %bb.en, %bb.eo
  %.1736 = phi i32 [ %.0735, %bb.eo ], [ %.0735, %bb.en ], [ 0, %bb.ek ]
  %.2 = phi i1 [ %.1, %bb.eo ], [ %.1, %bb.en ], [ false, %bb.ek ]
  %i.yb = load i16, ptr %i.bi, align 4
  %i.yc = or i16 %i.yb, 128
  store i16 %i.yc, ptr %i.bi, align 4
  %i.yd = add i32 %i.gp, 8                        ; 2 uses
  %i.ye = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.yd)
  store i8 %i.ye, ptr %i.cr, align 1
  %i.yf = add i32 %i.gp, 4                        ; 2 uses
  %.not816 = icmp eq ptr %.0740, null             ; 3 uses
  %i.yg = and i8 %i.ug, 1
  %i.yh = zext nneg i8 %i.yg to i32
  %i.yi = zext i32 %.1736 to i64                  ; 2 uses
  %i.yj = zext nneg i8 %.0734.shrunk to i64
  %invariant.gep = getelementptr [8 x i8], ptr @ieee80211_vhtvalid, i64 %i.yi
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.fh
  %indvars.iv936 = phi i64 [ 0, %bb.ep ], [ %indvars.iv.next937, %bb.fh ] ; 10 uses
  %.0737924 = phi ptr [ null, %bb.ep ], [ %.2739, %bb.fh ] ; 2 uses
  %i.yk = trunc i64 %indvars.iv936 to i32
  %i.yl = add i32 %i.yf, %i.yk                    ; 4 uses
  %i.ym = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.yl) ; 3 uses
  %i.yn = zext i8 %i.ym to i32                    ; 2 uses
  %i.yo = and i32 %i.yn, 15                       ; 6 uses
  %i.yp = lshr i32 %i.yn, 4                       ; 4 uses
  %i.yq = trunc nuw nsw i32 %i.yp to i8
  %i.yr = getelementptr i8, ptr %i.bk, i64 %indvars.iv936
  store i8 %i.yq, ptr %i.yr, align 1
  %i.ys = trunc nuw nsw i32 %i.yo to i8
  %i.yt = getelementptr i8, ptr %i.cs, i64 %indvars.iv936
  store i8 %i.ys, ptr %i.yt, align 1
  %.not814 = icmp eq i32 %i.yo, 0
  br i1 %.not814, label %bb.fh, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.yu = load i32, ptr %i.m, align 8
  %.not815 = icmp eq i32 %i.yu, 8
  br i1 %.not815, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  store i32 8, ptr %i.m, align 8
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  br i1 %.not816, label %bb.fb, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.yv = load i32, ptr @hf_radiotap_vht_user, align 4
  %i.yw = call ptr @proto_tree_add_item(ptr noundef nonnull %.0740, i32 noundef %i.yv, ptr noundef %0, i32 noundef %i.yf, i32 noundef 5, i32 noundef 0) ; 2 uses
  %6 = trunc nuw nsw i64 %indvars.iv936 to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.yw, ptr noundef nonnull @.str.1280, i32 noundef %6, i32 noundef %i.yp)
  %i.yx = load i32, ptr @ett_radiotap_vht_user, align 4
  %i.yy = call ptr @proto_item_add_subtree(ptr noundef %i.yw, i32 noundef %i.yx) ; 5 uses
  %i.yz = getelementptr [4 x i8], ptr @hf_radiotap_vht_mcs, i64 %indvars.iv936
  %i.za = load i32, ptr %i.yz, align 4
  %i.zb = call ptr @proto_tree_add_item(ptr noundef %i.yy, i32 noundef %i.za, ptr noundef %0, i32 noundef %i.yl, i32 noundef 1, i32 noundef -2147483648) ; 2 uses
  %i.zc = icmp ugt i8 %i.ym, -97
  br i1 %i.zc, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.zb, ptr noundef nonnull @.str.1275)
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.zd = zext nneg i32 %i.yp to i64
  %i.ze = getelementptr [48 x i8], ptr @ieee80211_vhtinfo, i64 %i.zd ; 2 uses
  %i.zf = load ptr, ptr %i.ze, align 16
  %i.zg = getelementptr i8, ptr %i.ze, i64 8
  %i.zh = load ptr, ptr %i.zg, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.zb, ptr noundef nonnull @.str.1281, ptr noundef %i.zf, ptr noundef %i.zh)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.zi = getelementptr [4 x i8], ptr @hf_radiotap_vht_nss, i64 %indvars.iv936
  %i.zj = load i32, ptr %i.zi, align 4
  %i.zk = call ptr @proto_tree_add_item(ptr noundef %i.yy, i32 noundef %i.zj, ptr noundef %0, i32 noundef %i.yl, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br i1 %.not789, label %proto_item_set_generated.exit857, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %.0731 = shl nuw nsw i32 %i.yo, %i.yh
  %i.zl = getelementptr [4 x i8], ptr @hf_radiotap_vht_nsts, i64 %indvars.iv936
  %i.zm = load i32, ptr %i.zl, align 4
  %i.zn = call ptr @proto_tree_add_uint(ptr noundef %i.yy, i32 noundef %i.zm, ptr noundef %0, i32 noundef %i.yl, i32 noundef 1, i32 noundef %.0731) ; 2 uses
  %.not.i855 = icmp eq ptr %i.zn, null
  br i1 %.not.i855, label %proto_item_set_generated.exit857, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.zo = getelementptr i8, ptr %i.zn, i64 40
  %i.zp = load ptr, ptr %i.zo, align 8            ; 2 uses
  %.not5.i856 = icmp eq ptr %i.zp, null
  br i1 %.not5.i856, label %proto_item_set_generated.exit857, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.zq = getelementptr i8, ptr %i.zp, i64 28     ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 4
  %i.zs = or i32 %i.zr, 2
  store i32 %i.zs, ptr %i.zq, align 4
  br label %proto_item_set_generated.exit857

proto_item_set_generated.exit857:                 ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.ex
  %i.zt = getelementptr [4 x i8], ptr @hf_radiotap_vht_coding, i64 %indvars.iv936
  %i.zu = load i32, ptr %i.zt, align 4
  %i.zv = call ptr @proto_tree_add_item(ptr noundef %i.yy, i32 noundef %i.zu, ptr noundef %0, i32 noundef %i.yd, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.fb

bb.fb:                                            ; preds = %proto_item_set_generated.exit857, %bb.et
  %.1738 = phi ptr [ %i.yy, %proto_item_set_generated.exit857 ], [ %.0737924, %bb.et ] ; 5 uses
  %i.zw = icmp ult i8 %i.ym, -96
  %or.cond7 = and i1 %.2, %i.zw
  %i.zx = icmp samesign ult i32 %i.yo, 9
  %or.cond9 = select i1 %or.cond7, i1 %i.zx, i1 false
  br i1 %or.cond9, label %bb.fc, label %bb.fh

bb.fc:                                            ; preds = %bb.fb
  %i.zy = zext nneg i32 %i.yp to i64              ; 2 uses
  %i.zz = getelementptr [48 x i8], ptr @ieee80211_vhtinfo, i64 %i.zy
  %i.aaa = getelementptr i8, ptr %i.zz, i64 16
  %i.aab = getelementptr [8 x i8], ptr %i.aaa, i64 %i.yi
  %i.aac = getelementptr [4 x i8], ptr %i.aab, i64 %i.yj
  %i.aad = load float, ptr %i.aac, align 4
  %i.aae = uitofp nneg i32 %i.yo to float
  %i.aaf = fmul float %i.aad, %i.aae              ; 3 uses
  %i.aag = fcmp une float %i.aaf, 0.000000e+00
  br i1 %i.aag, label %bb.fd, label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  %i.aah = getelementptr [4 x i8], ptr @hf_radiotap_vht_datarate, i64 %indvars.iv936
  %i.aai = load i32, ptr %i.aah, align 4
  %i.aaj = fpext float %i.aaf to double
  %i.aak = call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format(ptr noundef %.1738, i32 noundef %i.aai, ptr noundef %0, i32 noundef %i.gp, i32 noundef 12, float noundef %i.aaf, ptr noundef nonnull @.str.1279, double noundef %i.aaj) ; 3 uses
  %.not.i858 = icmp eq ptr %i.aak, null
  br i1 %.not.i858, label %proto_item_set_generated.exit860, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aal = getelementptr i8, ptr %i.aak, i64 40
  %i.aam = load ptr, ptr %i.aal, align 8          ; 2 uses
  %.not5.i859 = icmp eq ptr %i.aam, null
  br i1 %.not5.i859, label %proto_item_set_generated.exit860, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aan = getelementptr i8, ptr %i.aam, i64 28   ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 4
  %i.aap = or i32 %i.aao, 2
  store i32 %i.aap, ptr %i.aan, align 4
  br label %proto_item_set_generated.exit860

proto_item_set_generated.exit860:                 ; preds = %bb.fd, %bb.fe, %bb.ff
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.zy
  %i.aaq = zext nneg i32 %i.yo to i64
  %i.aar = getelementptr i8, ptr %gep, i64 %i.aaq
  %i.aas = getelementptr i8, ptr %i.aar, i64 -1
  %i.aat = load i8, ptr %i.aas, align 1, !range !6, !noundef !7
  %i.aau = icmp eq i8 %i.aat, 0
  br i1 %i.aau, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %proto_item_set_generated.exit860
  %i.aav = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aak, ptr noundef nonnull @ei_radiotap_invalid_data_rate) ; 0 uses
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fc, %bb.fg, %proto_item_set_generated.exit860, %bb.eq, %bb.fb
  %.2739 = phi ptr [ %.0737924, %bb.eq ], [ %.1738, %bb.fb ], [ %.1738, %proto_item_set_generated.exit860 ], [ %.1738, %bb.fg ], [ %.1738, %bb.fc ]
  %indvars.iv.next937 = add nuw nsw i64 %indvars.iv936, 1 ; 2 uses
  %exitcond939.not = icmp eq i64 %indvars.iv.next937, 4
  br i1 %exitcond939.not, label %bb.fi, label %bb.eq, !llvm.loop !11

bb.fi:                                            ; preds = %bb.fh
  %i.aaw = and i32 %i.ue, 128
  %.not810 = icmp eq i32 %i.aaw, 0
  br i1 %.not810, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aax = load i16, ptr %i.bi, align 4
  %i.aay = or i16 %i.aax, 256
  store i16 %i.aay, ptr %i.bi, align 4
  %i.aaz = add i32 %i.gp, 9                       ; 2 uses
  %i.aba = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aaz)
  store i8 %i.aba, ptr %i.ct, align 8
  br i1 %.not816, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.abb = load i32, ptr @hf_radiotap_vht_gid, align 4
  %i.abc = call ptr @proto_tree_add_item(ptr noundef nonnull %.0740, i32 noundef %i.abb, ptr noundef %0, i32 noundef %i.aaz, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fj, %bb.fk, %bb.fi
  %i.abd = and i32 %i.ue, 256
  %.not812 = icmp eq i32 %i.abd, 0
  br i1 %.not812, label %dissect_radiotap_rate.exit.backedge, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.abe = load i16, ptr %i.bi, align 4
  %i.abf = or i16 %i.abe, 512
  store i16 %i.abf, ptr %i.bi, align 4
  %i.abg = add i32 %i.gp, 10                      ; 2 uses
  %i.abh = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.abg)
  store i16 %i.abh, ptr %i.cu, align 2
  br i1 %.not816, label %dissect_radiotap_rate.exit.backedge, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.abi = load i32, ptr @hf_radiotap_vht_p_aid, align 4
  %i.abj = call ptr @proto_tree_add_item(ptr noundef nonnull %.0740, i32 noundef %i.abi, ptr noundef %0, i32 noundef %i.abg, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %dissect_radiotap_rate.exit.backedge

bb.fo:                                            ; preds = %bb.p
  %i.abk = load i32, ptr @hf_radiotap_timestamp, align 4
  %i.abl = call ptr @proto_tree_add_item(ptr noundef %.0768, i32 noundef %i.abk, ptr noundef %0, i32 noundef %i.gp, i32 noundef 12, i32 noundef 0)
  %i.abm = load i32, ptr @ett_radiotap_timestamp, align 4
  %i.abn = call ptr @proto_item_add_subtree(ptr noundef %i.abl, i32 noundef %i.abm) ; 5 uses
  %i.abo = load i32, ptr @hf_radiotap_timestamp_ts, align 4
  %i.abp = call ptr @proto_tree_add_item(ptr noundef %i.abn, i32 noundef %i.abo, ptr noundef %0, i32 noundef %i.gp, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.abq = add i32 %i.gp, 11                      ; 3 uses
  %i.abr = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.abq)
  %i.abs = and i16 %i.abr, 2
  %.not.i861 = icmp eq i16 %i.abs, 0
  br i1 %.not.i861, label %dissect_radiotap_timestamp.exit, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.abt = load i32, ptr @hf_radiotap_timestamp_accuracy, align 4
  %i.abu = add i32 %i.gp, 8
  %i.abv = call ptr @proto_tree_add_item(ptr noundef %i.abn, i32 noundef %i.abt, ptr noundef %0, i32 noundef %i.abu, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %dissect_radiotap_timestamp.exit

dissect_radiotap_timestamp.exit:                  ; preds = %bb.fo, %bb.fp
  %i.abw = load i32, ptr @hf_radiotap_timestamp_unit, align 4
  %i.abx = add i32 %i.gp, 10                      ; 2 uses
  %i.aby = call ptr @proto_tree_add_item(ptr noundef %i.abn, i32 noundef %i.abw, ptr noundef %0, i32 noundef %i.abx, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.abz = load i32, ptr @hf_radiotap_timestamp_spos, align 4
  %i.aca = call ptr @proto_tree_add_item(ptr noundef %i.abn, i32 noundef %i.abz, ptr noundef %0, i32 noundef %i.abx, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.acb = load i32, ptr @ett_radiotap_timestamp_flags, align 4
  %i.acc = call ptr @proto_item_add_subtree(ptr noundef %i.abn, i32 noundef %i.acb) ; 2 uses
  %i.acd = load i32, ptr @hf_radiotap_timestamp_flags_32bit, align 4
  %i.ace = call ptr @proto_tree_add_item(ptr noundef %i.acc, i32 noundef %i.acd, ptr noundef %0, i32 noundef %i.abq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.acf = load i32, ptr @hf_radiotap_timestamp_flags_accuracy, align 4
  %i.acg = call ptr @proto_tree_add_item(ptr noundef %i.acc, i32 noundef %i.acf, ptr noundef %0, i32 noundef %i.abq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %dissect_radiotap_rate.exit.backedge

bb.fq:                                            ; preds = %bb.p
  store i32 11, ptr %i.m, align 8
  %i.ach = load i32, ptr %i.bg, align 8
  %.not912 = icmp eq i32 %i.ach, 0
  %i.aci = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.gp)
  %i.acj = and i16 %i.aci, 3                      ; 2 uses
  %i.ack = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.gp) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.d, ptr noundef nonnull align 16 dereferenceable(72) @__const.dissect_radiotap_he_info.data3_headers, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.e, ptr noundef nonnull align 16 dereferenceable(40) @__const.dissect_radiotap_he_info.data4_he_trig_headers, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) @__const.dissect_radiotap_he_info.data4_he_su_and_he_ext_su_headers, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, ptr noundef nonnull align 16 dereferenceable(32) @__const.dissect_radiotap_he_info.data4_he_mu_headers, i64 32, i1 false)
end_hunk_0
