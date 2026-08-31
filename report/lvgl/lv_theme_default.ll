Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_theme_default?download=true
inline.NumInlined: 109
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@style_init:bb.a
  %i.uh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.ui = icmp eq ptr %i.uh, null
  br i1 %i.ui, label %lv_theme_default_is_inited.exit.thread.i1115, label %lv_theme_default_is_inited.exit.i1114

lv_theme_default_is_inited.exit.i1114:            ; preds = %style_init_reset.exit1113
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 92
  %i.uk = load i8, ptr %i.uj, align 4, !tbaa !11, !range !23, !noundef !24
  %i.ul = trunc nuw i8 %i.uk to i1
  br i1 %i.ul, label %bb.dw, label %lv_theme_default_is_inited.exit.thread.i1115

bb.dw:                                            ; preds = %lv_theme_default_is_inited.exit.i1114
  tail call void @lv_style_reset(ptr noundef nonnull %i.ug) #4
  br label %style_init_reset.exit1116

lv_theme_default_is_inited.exit.thread.i1115:     ; preds = %lv_theme_default_is_inited.exit.i1114, %style_init_reset.exit1113
  tail call void @lv_style_init(ptr noundef nonnull %i.ug) #4
  br label %style_init_reset.exit1116

style_init_reset.exit1116:                        ; preds = %bb.dw, %lv_theme_default_is_inited.exit.thread.i1115
  %.0.copyload64 = load i24, ptr %i.q, align 1
  tail call void @lv_style_set_arc_color(ptr noundef nonnull %i.ug, i24 %.0.copyload64) #4
  %i.um = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.un = icmp sgt i32 %i.um, 15
  br i1 %i.un, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %style_init_reset.exit1116
  %i.uo = mul nuw nsw i32 %i.um, 15
  %i.up = add nuw nsw i32 %i.uo, 80
  %i.uq = udiv i32 %i.up, 160
  br label %bb.dy

bb.dy:                                            ; preds = %style_init_reset.exit1116, %bb.dx
  %i.ur = phi i32 [ %i.uq, %bb.dx ], [ 1, %style_init_reset.exit1116 ]
  tail call void @lv_style_set_arc_width(ptr noundef nonnull %i.ug, i32 noundef %i.ur) #4
  tail call void @lv_style_set_arc_rounded(ptr noundef nonnull %i.ug, i1 noundef zeroext true) #4
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.ut = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.uu = icmp eq ptr %i.ut, null
  br i1 %i.uu, label %lv_theme_default_is_inited.exit.thread.i1118, label %lv_theme_default_is_inited.exit.i1117

lv_theme_default_is_inited.exit.i1117:            ; preds = %bb.dy
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 92
  %i.uw = load i8, ptr %i.uv, align 4, !tbaa !11, !range !23, !noundef !24
  %i.ux = trunc nuw i8 %i.uw to i1
  br i1 %i.ux, label %bb.dz, label %lv_theme_default_is_inited.exit.thread.i1118

bb.dz:                                            ; preds = %lv_theme_default_is_inited.exit.i1117
  tail call void @lv_style_reset(ptr noundef nonnull %i.us) #4
  br label %style_init_reset.exit1119

lv_theme_default_is_inited.exit.thread.i1118:     ; preds = %lv_theme_default_is_inited.exit.i1117, %bb.dy
  tail call void @lv_style_init(ptr noundef nonnull %i.us) #4
  br label %style_init_reset.exit1119

style_init_reset.exit1119:                        ; preds = %bb.dz, %lv_theme_default_is_inited.exit.thread.i1118
  %.0.copyload62 = load i24, ptr %i.fi, align 8
  tail call void @lv_style_set_arc_color(ptr noundef nonnull %i.us, i24 %.0.copyload62) #4
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.uz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.va = icmp eq ptr %i.uz, null
  br i1 %i.va, label %lv_theme_default_is_inited.exit.thread.i1121, label %lv_theme_default_is_inited.exit.i1120

lv_theme_default_is_inited.exit.i1120:            ; preds = %style_init_reset.exit1119
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 92
  %i.vc = load i8, ptr %i.vb, align 4, !tbaa !11, !range !23, !noundef !24
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %bb.ea, label %lv_theme_default_is_inited.exit.thread.i1121

bb.ea:                                            ; preds = %lv_theme_default_is_inited.exit.i1120
  tail call void @lv_style_reset(ptr noundef nonnull %i.uy) #4
  br label %style_init_reset.exit1122

lv_theme_default_is_inited.exit.thread.i1121:     ; preds = %lv_theme_default_is_inited.exit.i1120, %style_init_reset.exit1119
  tail call void @lv_style_init(ptr noundef nonnull %i.uy) #4
  br label %style_init_reset.exit1122

style_init_reset.exit1122:                        ; preds = %bb.ea, %lv_theme_default_is_inited.exit.thread.i1121
  tail call void @lv_style_set_max_height(ptr noundef nonnull %i.uy, i32 noundef 260) #4
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 13 uses
  %i.vf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.vg = icmp eq ptr %i.vf, null
  br i1 %i.vg, label %lv_theme_default_is_inited.exit.thread.i1124, label %lv_theme_default_is_inited.exit.i1123

lv_theme_default_is_inited.exit.i1123:            ; preds = %style_init_reset.exit1122
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 92
  %i.vi = load i8, ptr %i.vh, align 4, !tbaa !11, !range !23, !noundef !24
  %i.vj = trunc nuw i8 %i.vi to i1
  br i1 %i.vj, label %bb.eb, label %lv_theme_default_is_inited.exit.thread.i1124

bb.eb:                                            ; preds = %lv_theme_default_is_inited.exit.i1123
  tail call void @lv_style_reset(ptr noundef nonnull %i.ve) #4
  br label %style_init_reset.exit1125

lv_theme_default_is_inited.exit.thread.i1124:     ; preds = %lv_theme_default_is_inited.exit.i1123, %style_init_reset.exit1122
  tail call void @lv_style_init(ptr noundef nonnull %i.ve) #4
  br label %style_init_reset.exit1125

style_init_reset.exit1125:                        ; preds = %bb.eb, %lv_theme_default_is_inited.exit.thread.i1124
  %i.vk = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.vl = icmp sgt i32 %i.vk, 79
  br i1 %i.vl, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %style_init_reset.exit1125
  %i.vm = mul nuw nsw i32 %i.vk, 3
  %i.vn = add nuw nsw i32 %i.vm, 80
  %i.vo = udiv i32 %i.vn, 160
  br label %bb.ed

bb.ed:                                            ; preds = %style_init_reset.exit1125, %bb.ec
  %i.vp = phi i32 [ %i.vo, %bb.ec ], [ 1, %style_init_reset.exit1125 ] ; 4 uses
  tail call void @lv_style_set_pad_left(ptr noundef nonnull %i.ve, i32 noundef range(i32 -13421772, 13421773) %i.vp) #4
  tail call void @lv_style_set_pad_right(ptr noundef nonnull %i.ve, i32 noundef range(i32 -13421772, 13421773) %i.vp) #4
  tail call void @lv_style_set_pad_top(ptr noundef nonnull %i.ve, i32 noundef range(i32 -13421772, 13421773) %i.vp) #4
  tail call void @lv_style_set_pad_bottom(ptr noundef nonnull %i.ve, i32 noundef range(i32 -13421772, 13421773) %i.vp) #4
  %i.vq = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.vr = icmp sgt i32 %i.vq, 119
  br i1 %i.vr, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.vs = shl nuw nsw i32 %i.vq, 1
  %i.vt = add nuw nsw i32 %i.vs, 80
  %i.vu = udiv i32 %i.vt, 160
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ed, %bb.ee
  %i.vv = phi i32 [ %i.vu, %bb.ee ], [ 1, %bb.ed ]
  tail call void @lv_style_set_border_width(ptr noundef nonnull %i.ve, i32 noundef %i.vv) #4
  %.0.copyload60 = load i24, ptr %i.fi, align 8
  tail call void @lv_style_set_border_color(ptr noundef nonnull %i.ve, i24 %.0.copyload60) #4
  %.0.copyload58 = load i24, ptr %i.l, align 2
  tail call void @lv_style_set_bg_color(ptr noundef nonnull %i.ve, i24 %.0.copyload58) #4
  tail call void @lv_style_set_bg_opa(ptr noundef nonnull %i.ve, i8 noundef zeroext -1) #4
  %i.vw = load i32, ptr %i.bu, align 8, !tbaa !26
  %i.vx = icmp eq i32 %i.vw, 1
  %i.vy = select i1 %i.vx, i32 12, i32 8
  %i.vz = load i32, ptr %i.au, align 4, !tbaa !25
  %i.wa = mul nsw i32 %i.vy, %i.vz                ; 2 uses
  %i.wb = icmp sgt i32 %i.wa, 239
  br i1 %i.wb, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.wc = add nuw nsw i32 %i.wa, 80
  %i.wd = udiv i32 %i.wc, 160
  %i.we = lshr i32 %i.wd, 1
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.wf = phi i32 [ 0, %bb.ef ], [ %i.we, %bb.eg ]
  tail call void @lv_style_set_radius(ptr noundef nonnull %i.ve, i32 noundef %i.wf) #4
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !28
  tail call void @lv_style_set_text_font(ptr noundef nonnull %i.ve, ptr noundef %i.wh) #4
  %i.wi = tail call i24 @lv_color_white() #4
  tail call void @lv_style_set_text_color(ptr noundef nonnull %i.ve, i24 %i.wi) #4
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.wk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.wl = icmp eq ptr %i.wk, null
  br i1 %i.wl, label %lv_theme_default_is_inited.exit.thread.i1127, label %lv_theme_default_is_inited.exit.i1126

lv_theme_default_is_inited.exit.i1126:            ; preds = %bb.eh
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 92
  %i.wn = load i8, ptr %i.wm, align 4, !tbaa !11, !range !23, !noundef !24
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %bb.ei, label %lv_theme_default_is_inited.exit.thread.i1127

bb.ei:                                            ; preds = %lv_theme_default_is_inited.exit.i1126
  tail call void @lv_style_reset(ptr noundef nonnull %i.wj) #4
  br label %style_init_reset.exit1128

lv_theme_default_is_inited.exit.thread.i1127:     ; preds = %lv_theme_default_is_inited.exit.i1126, %bb.eh
  tail call void @lv_style_init(ptr noundef nonnull %i.wj) #4
  br label %style_init_reset.exit1128

style_init_reset.exit1128:                        ; preds = %bb.ei, %lv_theme_default_is_inited.exit.thread.i1127
  tail call void @lv_style_set_bg_image_src(ptr noundef nonnull %i.wj, ptr noundef nonnull @.str) #4
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 7 uses
  %i.wq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.wr = icmp eq ptr %i.wq, null
  br i1 %i.wr, label %lv_theme_default_is_inited.exit.thread.i1130, label %lv_theme_default_is_inited.exit.i1129

lv_theme_default_is_inited.exit.i1129:            ; preds = %style_init_reset.exit1128
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 92
  %i.wt = load i8, ptr %i.ws, align 4, !tbaa !11, !range !23, !noundef !24
  %i.wu = trunc nuw i8 %i.wt to i1
  br i1 %i.wu, label %bb.ej, label %lv_theme_default_is_inited.exit.thread.i1130

bb.ej:                                            ; preds = %lv_theme_default_is_inited.exit.i1129
  tail call void @lv_style_reset(ptr noundef nonnull %i.wp) #4
  br label %style_init_reset.exit1131

lv_theme_default_is_inited.exit.thread.i1130:     ; preds = %lv_theme_default_is_inited.exit.i1129, %style_init_reset.exit1128
  tail call void @lv_style_init(ptr noundef nonnull %i.wp) #4
  br label %style_init_reset.exit1131

style_init_reset.exit1131:                        ; preds = %bb.ej, %lv_theme_default_is_inited.exit.thread.i1130
  %i.wv = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.ww = icmp sgt i32 %i.wv, 59
  br i1 %i.ww, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %style_init_reset.exit1131
  %i.wx = shl nsw i32 %i.wv, 2
  %i.wy = add nuw nsw i32 %i.wx, 80
  %.neg1219 = udiv i32 %i.wy, 160
  %.neg1219.neg = sub nsw i32 0, %.neg1219
  br label %bb.el

bb.el:                                            ; preds = %style_init_reset.exit1131, %bb.ek
  %.neg1015 = phi i32 [ %.neg1219.neg, %bb.ek ], [ -1, %style_init_reset.exit1131 ] ; 4 uses
  tail call void @lv_style_set_pad_left(ptr noundef nonnull %i.wp, i32 noundef range(i32 -13421772, 13421773) %.neg1015) #4
  tail call void @lv_style_set_pad_right(ptr noundef nonnull %i.wp, i32 noundef range(i32 -13421772, 13421773) %.neg1015) #4
  tail call void @lv_style_set_pad_top(ptr noundef nonnull %i.wp, i32 noundef range(i32 -13421772, 13421773) %.neg1015) #4
  tail call void @lv_style_set_pad_bottom(ptr noundef nonnull %i.wp, i32 noundef range(i32 -13421772, 13421773) %.neg1015) #4
  %i.wz = tail call i24 @lv_color_white() #4
  tail call void @lv_style_set_bg_color(ptr noundef nonnull %i.wp, i24 %i.wz) #4
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 4 uses
  %i.xb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.xc = icmp eq ptr %i.xb, null
  br i1 %i.xc, label %lv_theme_default_is_inited.exit.thread.i1133, label %lv_theme_default_is_inited.exit.i1132

lv_theme_default_is_inited.exit.i1132:            ; preds = %bb.el
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 92
  %i.xe = load i8, ptr %i.xd, align 4, !tbaa !11, !range !23, !noundef !24
  %i.xf = trunc nuw i8 %i.xe to i1
  br i1 %i.xf, label %bb.em, label %lv_theme_default_is_inited.exit.thread.i1133

bb.em:                                            ; preds = %lv_theme_default_is_inited.exit.i1132
  tail call void @lv_style_reset(ptr noundef nonnull %i.xa) #4
  br label %style_init_reset.exit1134

lv_theme_default_is_inited.exit.thread.i1133:     ; preds = %lv_theme_default_is_inited.exit.i1132, %bb.el
  tail call void @lv_style_init(ptr noundef nonnull %i.xa) #4
  br label %style_init_reset.exit1134

style_init_reset.exit1134:                        ; preds = %bb.em, %lv_theme_default_is_inited.exit.thread.i1133
  tail call void @lv_style_set_line_width(ptr noundef nonnull %i.xa, i32 noundef 1) #4
  %.0.copyload50 = load i24, ptr %i.g, align 1
  tail call void @lv_style_set_line_color(ptr noundef nonnull %i.xa, i24 %.0.copyload50) #4
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 5 uses
  %i.xh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.xi = icmp eq ptr %i.xh, null
  br i1 %i.xi, label %lv_theme_default_is_inited.exit.thread.i1136, label %lv_theme_default_is_inited.exit.i1135

lv_theme_default_is_inited.exit.i1135:            ; preds = %style_init_reset.exit1134
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 92
  %i.xk = load i8, ptr %i.xj, align 4, !tbaa !11, !range !23, !noundef !24
  %i.xl = trunc nuw i8 %i.xk to i1
  br i1 %i.xl, label %bb.en, label %lv_theme_default_is_inited.exit.thread.i1136

bb.en:                                            ; preds = %lv_theme_default_is_inited.exit.i1135
  tail call void @lv_style_reset(ptr noundef nonnull %i.xg) #4
  br label %style_init_reset.exit1137

lv_theme_default_is_inited.exit.thread.i1136:     ; preds = %lv_theme_default_is_inited.exit.i1135, %style_init_reset.exit1134
  tail call void @lv_style_init(ptr noundef nonnull %i.xg) #4
  br label %style_init_reset.exit1137

style_init_reset.exit1137:                        ; preds = %bb.en, %lv_theme_default_is_inited.exit.thread.i1136
  tail call void @lv_style_set_border_post(ptr noundef nonnull %i.xg, i1 noundef zeroext false) #4
  %i.xm = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.xn = icmp sgt i32 %i.xm, 23
  br i1 %i.xn, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %style_init_reset.exit1137
  %i.xo = mul nuw nsw i32 %i.xm, 10
  %i.xp = add nuw nsw i32 %i.xo, 80
  %i.xq = udiv i32 %i.xp, 160
  br label %bb.ep

bb.ep:                                            ; preds = %style_init_reset.exit1137, %bb.eo
  %i.xr = phi i32 [ %i.xq, %bb.eo ], [ 1, %style_init_reset.exit1137 ]
  tail call void @lv_style_set_pad_column(ptr noundef nonnull %i.xg, i32 noundef %i.xr) #4
  %.0.copyload48 = load i24, ptr %i.q, align 1
  tail call void @lv_style_set_line_color(ptr noundef nonnull %i.xg, i24 %.0.copyload48) #4
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 7 uses
  %i.xt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.xu = icmp eq ptr %i.xt, null
  br i1 %i.xu, label %lv_theme_default_is_inited.exit.thread.i1139, label %lv_theme_default_is_inited.exit.i1138

lv_theme_default_is_inited.exit.i1138:            ; preds = %bb.ep
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 92
  %i.xw = load i8, ptr %i.xv, align 4, !tbaa !11, !range !23, !noundef !24
  %i.xx = trunc nuw i8 %i.xw to i1
  br i1 %i.xx, label %bb.eq, label %lv_theme_default_is_inited.exit.thread.i1139

bb.eq:                                            ; preds = %lv_theme_default_is_inited.exit.i1138
  tail call void @lv_style_reset(ptr noundef nonnull %i.xs) #4
  br label %style_init_reset.exit1140

lv_theme_default_is_inited.exit.thread.i1139:     ; preds = %lv_theme_default_is_inited.exit.i1138, %bb.ep
  tail call void @lv_style_init(ptr noundef nonnull %i.xs) #4
  br label %style_init_reset.exit1140

style_init_reset.exit1140:                        ; preds = %bb.eq, %lv_theme_default_is_inited.exit.thread.i1139
  %i.xy = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.xz = icmp sgt i32 %i.xy, 79
  br i1 %i.xz, label %bb.er, label %bb.es

bb.er:                                            ; preds = %style_init_reset.exit1140
  %i.ya = mul nuw nsw i32 %i.xy, 3
  %i.yb = add nuw nsw i32 %i.ya, 80
  %i.yc = udiv i32 %i.yb, 160
  br label %bb.es

bb.es:                                            ; preds = %style_init_reset.exit1140, %bb.er
  %i.yd = phi i32 [ %i.yc, %bb.er ], [ 1, %style_init_reset.exit1140 ]
  tail call void @lv_style_set_line_width(ptr noundef nonnull %i.xs, i32 noundef %i.yd) #4
  %i.ye = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.yf = icmp sgt i32 %i.ye, 79
  br i1 %i.yf, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.yg = mul nuw nsw i32 %i.ye, 3
  %i.yh = add nuw nsw i32 %i.yg, 80
  %i.yi = udiv i32 %i.yh, 160
  br label %bb.eu

bb.eu:                                            ; preds = %bb.es, %bb.et
  %i.yj = phi i32 [ %i.yi, %bb.et ], [ 1, %bb.es ]
  tail call void @lv_style_set_radius(ptr noundef nonnull %i.xs, i32 noundef %i.yj) #4
  %i.yk = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.yl = icmp sgt i32 %i.yk, 29
  br i1 %i.yl, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ym = shl nsw i32 %i.yk, 3
  %i.yn = add nuw nsw i32 %i.ym, 80
  %i.yo = udiv i32 %i.yn, 160
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %i.yp = phi i32 [ %i.yo, %bb.ev ], [ 1, %bb.eu ] ; 4 uses
  tail call void @lv_style_set_width(ptr noundef nonnull %i.xs, i32 noundef range(i32 1, 13421773) %i.yp) #4
  tail call void @lv_style_set_height(ptr noundef nonnull %i.xs, i32 noundef range(i32 1, 13421773) %i.yp) #4
  %i.yq = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.yr = icmp sgt i32 %i.yq, 119
  br i1 %i.yr, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ys = shl nuw nsw i32 %i.yq, 1
  %i.yt = add nuw nsw i32 %i.ys, 80
  %i.yu = udiv i32 %i.yt, 160
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ew, %bb.ex
  %i.yv = phi i32 [ %i.yu, %bb.ex ], [ 1, %bb.ew ]
  tail call void @lv_style_set_pad_column(ptr noundef nonnull %i.xs, i32 noundef %i.yv) #4
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 7 uses
  %i.yx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.yy = icmp eq ptr %i.yx, null
  br i1 %i.yy, label %lv_theme_default_is_inited.exit.thread.i1142, label %lv_theme_default_is_inited.exit.i1141

lv_theme_default_is_inited.exit.i1141:            ; preds = %bb.ey
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 92
  %i.za = load i8, ptr %i.yz, align 4, !tbaa !11, !range !23, !noundef !24
  %i.zb = trunc nuw i8 %i.za to i1
  br i1 %i.zb, label %bb.ez, label %lv_theme_default_is_inited.exit.thread.i1142

bb.ez:                                            ; preds = %lv_theme_default_is_inited.exit.i1141
  tail call void @lv_style_reset(ptr noundef nonnull %i.yw) #4
  br label %style_init_reset.exit1143

lv_theme_default_is_inited.exit.thread.i1142:     ; preds = %lv_theme_default_is_inited.exit.i1141, %bb.ey
  tail call void @lv_style_init(ptr noundef nonnull %i.yw) #4
  br label %style_init_reset.exit1143

style_init_reset.exit1143:                        ; preds = %bb.ez, %lv_theme_default_is_inited.exit.thread.i1142
  tail call void @lv_style_set_radius(ptr noundef nonnull %i.yw, i32 noundef 32767) #4
  tail call void @lv_style_set_width(ptr noundef nonnull %i.yw, i32 noundef range(i32 1, 13421773) %i.yp) #4
  tail call void @lv_style_set_height(ptr noundef nonnull %i.yw, i32 noundef range(i32 1, 13421773) %i.yp) #4
  %.0.copyload42 = load i24, ptr %i.fi, align 8
  tail call void @lv_style_set_bg_color(ptr noundef nonnull %i.yw, i24 %.0.copyload42) #4
  tail call void @lv_style_set_bg_opa(ptr noundef nonnull %i.yw, i8 noundef zeroext -1) #4
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 11 uses
  %i.zd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.ze = icmp eq ptr %i.zd, null
  br i1 %i.ze, label %lv_theme_default_is_inited.exit.thread.i1145, label %lv_theme_default_is_inited.exit.i1144

lv_theme_default_is_inited.exit.i1144:            ; preds = %style_init_reset.exit1143
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zd, i64 92
  %i.zg = load i8, ptr %i.zf, align 4, !tbaa !11, !range !23, !noundef !24
  %i.zh = trunc nuw i8 %i.zg to i1
  br i1 %i.zh, label %bb.fa, label %lv_theme_default_is_inited.exit.thread.i1145

bb.fa:                                            ; preds = %lv_theme_default_is_inited.exit.i1144
  tail call void @lv_style_reset(ptr noundef nonnull %i.zc) #4
  br label %style_init_reset.exit1146

lv_theme_default_is_inited.exit.thread.i1145:     ; preds = %lv_theme_default_is_inited.exit.i1144, %style_init_reset.exit1143
  tail call void @lv_style_init(ptr noundef nonnull %i.zc) #4
  br label %style_init_reset.exit1146

style_init_reset.exit1146:                        ; preds = %bb.fa, %lv_theme_default_is_inited.exit.thread.i1145
  tail call void @lv_style_set_pad_left(ptr noundef nonnull %i.zc, i32 noundef 0) #4
  tail call void @lv_style_set_pad_right(ptr noundef nonnull %i.zc, i32 noundef 0) #4
  tail call void @lv_style_set_pad_top(ptr noundef nonnull %i.zc, i32 noundef 0) #4
  tail call void @lv_style_set_pad_bottom(ptr noundef nonnull %i.zc, i32 noundef 0) #4
  tail call void @lv_style_set_pad_row(ptr noundef nonnull %i.zc, i32 noundef 0) #4
  tail call void @lv_style_set_pad_column(ptr noundef nonnull %i.zc, i32 noundef 0) #4
  tail call void @lv_style_set_radius(ptr noundef nonnull %i.zc, i32 noundef 0) #4
  tail call void @lv_style_set_clip_corner(ptr noundef nonnull %i.zc, i1 noundef zeroext true) #4
  tail call void @lv_style_set_border_side(ptr noundef nonnull %i.zc, i32 noundef 0) #4
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 7 uses
  %i.zj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.zk = icmp eq ptr %i.zj, null
  br i1 %i.zk, label %lv_theme_default_is_inited.exit.thread.i1148, label %lv_theme_default_is_inited.exit.i1147

lv_theme_default_is_inited.exit.i1147:            ; preds = %style_init_reset.exit1146
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 92
  %i.zm = load i8, ptr %i.zl, align 4, !tbaa !11, !range !23, !noundef !24
  %i.zn = trunc nuw i8 %i.zm to i1
  br i1 %i.zn, label %bb.fb, label %lv_theme_default_is_inited.exit.thread.i1148

bb.fb:                                            ; preds = %lv_theme_default_is_inited.exit.i1147
  tail call void @lv_style_reset(ptr noundef nonnull %i.zi) #4
  br label %style_init_reset.exit1149

lv_theme_default_is_inited.exit.thread.i1148:     ; preds = %lv_theme_default_is_inited.exit.i1147, %style_init_reset.exit1146
  tail call void @lv_style_init(ptr noundef nonnull %i.zi) #4
  br label %style_init_reset.exit1149

style_init_reset.exit1149:                        ; preds = %bb.fb, %lv_theme_default_is_inited.exit.thread.i1148
  %i.zo = load i32, ptr %i.bu, align 8, !tbaa !26
  %i.zp = icmp eq i32 %i.zo, 1
  %i.zq = select i1 %i.zp, i32 12, i32 8
  %i.zr = load i32, ptr %i.au, align 4, !tbaa !25
  %i.zs = mul nsw i32 %i.zq, %i.zr                ; 2 uses
  %i.zt = icmp sgt i32 %i.zs, 239
  br i1 %i.zt, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %style_init_reset.exit1149
  %i.zu = add nuw nsw i32 %i.zs, 80
  %i.zv = udiv i32 %i.zu, 160
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %style_init_reset.exit1149
  %i.zw = phi i32 [ 1, %style_init_reset.exit1149 ], [ %i.zv, %bb.fc ]
  tail call void @lv_style_set_radius(ptr noundef nonnull %i.zi, i32 noundef %i.zw) #4
  tail call void @lv_style_set_clip_corner(ptr noundef nonnull %i.zi, i1 noundef zeroext true) #4
  tail call void @lv_style_set_bg_opa(ptr noundef nonnull %i.zi, i8 noundef zeroext -1) #4
  %.0.copyload40 = load i24, ptr %i.l, align 2
  tail call void @lv_style_set_bg_color(ptr noundef nonnull %i.zi, i24 %.0.copyload40) #4
  %.0.copyload38 = load i24, ptr %i.g, align 1
  tail call void @lv_style_set_text_color(ptr noundef nonnull %i.zi, i24 %.0.copyload38) #4
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 12 uses
  %i.zy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.zz = icmp eq ptr %i.zy, null
  br i1 %i.zz, label %lv_theme_default_is_inited.exit.thread.i1151, label %lv_theme_default_is_inited.exit.i1150

lv_theme_default_is_inited.exit.i1150:            ; preds = %bb.fd
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 92
  %i.aab = load i8, ptr %i.aaa, align 4, !tbaa !11, !range !23, !noundef !24
  %i.aac = trunc nuw i8 %i.aab to i1
  br i1 %i.aac, label %bb.fe, label %lv_theme_default_is_inited.exit.thread.i1151

bb.fe:                                            ; preds = %lv_theme_default_is_inited.exit.i1150
  tail call void @lv_style_reset(ptr noundef nonnull %i.zx) #4
  br label %style_init_reset.exit1152

lv_theme_default_is_inited.exit.thread.i1151:     ; preds = %lv_theme_default_is_inited.exit.i1150, %bb.fd
  tail call void @lv_style_init(ptr noundef nonnull %i.zx) #4
  br label %style_init_reset.exit1152

style_init_reset.exit1152:                        ; preds = %bb.fe, %lv_theme_default_is_inited.exit.thread.i1151
  %i.aad = load i32, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.aae = load i32, ptr %i.au, align 4, !tbaa !25
  %i.aaf = icmp eq i32 %i.aad, 1
  %i.aag = icmp eq i32 %i.aad, 2
  %i.aah = select i1 %i.aag, i32 12, i32 10
  %i.aai = select i1 %i.aaf, i32 14, i32 %i.aah
  %i.aaj = mul nsw i32 %i.aai, %i.aae             ; 2 uses
  %i.aak = icmp sgt i32 %i.aaj, 239
  br i1 %i.aak, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %style_init_reset.exit1152
  %i.aal = add nuw nsw i32 %i.aaj, 80
  %i.aam = udiv i32 %i.aal, 160
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %style_init_reset.exit1152
  %i.aan = phi i32 [ 1, %style_init_reset.exit1152 ], [ %i.aam, %bb.ff ] ; 2 uses
  tail call void @lv_style_set_pad_left(ptr noundef nonnull %i.zx, i32 noundef range(i32 -13421772, 13421773) %i.aan) #4
  tail call void @lv_style_set_pad_right(ptr noundef nonnull %i.zx, i32 noundef range(i32 -13421772, 13421773) %i.aan) #4
  %i.aao = load i32, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.aap = load i32, ptr %i.au, align 4, !tbaa !25
  %i.aaq = icmp eq i32 %i.aao, 1
  %i.aar = icmp eq i32 %i.aao, 2
  %i.aas = select i1 %i.aar, i32 12, i32 10
  %i.aat = select i1 %i.aaq, i32 14, i32 %i.aas
  %i.aau = mul nsw i32 %i.aat, %i.aap             ; 2 uses
  %i.aav = icmp sgt i32 %i.aau, 239
  br i1 %i.aav, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.aaw = add nuw nsw i32 %i.aau, 80
  %i.aax = udiv i32 %i.aaw, 160
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.aay = phi i32 [ 1, %bb.fg ], [ %i.aax, %bb.fh ] ; 2 uses
  tail call void @lv_style_set_pad_top(ptr noundef nonnull %i.zx, i32 noundef range(i32 -13421772, 13421773) %i.aay) #4
  tail call void @lv_style_set_pad_bottom(ptr noundef nonnull %i.zx, i32 noundef range(i32 -13421772, 13421773) %i.aay) #4
  %i.aaz = load i32, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.aba = load i32, ptr %i.au, align 4, !tbaa !25
  %i.abb = icmp eq i32 %i.aaz, 1
  %i.abc = icmp eq i32 %i.aaz, 2
  %i.abd = select i1 %i.abc, i32 12, i32 10
  %i.abe = select i1 %i.abb, i32 14, i32 %i.abd
  %i.abf = mul nsw i32 %i.abe, %i.aba             ; 2 uses
  %i.abg = icmp sgt i32 %i.abf, 239
  br i1 %i.abg, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.abh = add nuw nsw i32 %i.abf, 80
  %i.abi = udiv i32 %i.abh, 160
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.abj = phi i32 [ 1, %bb.fi ], [ %i.abi, %bb.fj ] ; 2 uses
  tail call void @lv_style_set_pad_row(ptr noundef nonnull %i.zx, i32 noundef range(i32 -13421772, 13421773) %i.abj) #4
  tail call void @lv_style_set_pad_column(ptr noundef nonnull %i.zx, i32 noundef range(i32 -13421772, 13421773) %i.abj) #4
  %i.abk = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.abl = icmp sgt i32 %i.abk, 239
  br i1 %i.abl, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
end_hunk_0
begin_hunk_1_@style_init:bb.a
  %i.aie = select i1 %i.aid, i32 12, i32 10
  %i.aif = select i1 %i.aic, i32 14, i32 %i.aie
  %i.aig = mul nsw i32 %i.aif, %i.aib             ; 2 uses
  %i.aih = icmp sgt i32 %i.aig, 239
  br i1 %i.aih, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.aii = add nuw nsw i32 %i.aig, 80
  %i.aij = udiv i32 %i.aii, 320
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.aik = phi i32 [ 0, %bb.gw ], [ %i.aij, %bb.gx ] ; 2 uses
  tail call void @lv_style_set_pad_row(ptr noundef nonnull %i.ahj, i32 noundef range(i32 -13421772, 13421773) %i.aik) #4
  tail call void @lv_style_set_pad_column(ptr noundef nonnull %i.ahj, i32 noundef range(i32 -13421772, 13421773) %i.aik) #4
  %i.ail = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 6 uses
  %i.aim = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.ain = icmp eq ptr %i.aim, null
  br i1 %i.ain, label %lv_theme_default_is_inited.exit.thread.i1187, label %lv_theme_default_is_inited.exit.i1186

lv_theme_default_is_inited.exit.i1186:            ; preds = %bb.gy
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aim, i64 92
  %i.aip = load i8, ptr %i.aio, align 4, !tbaa !11, !range !23, !noundef !24
  %i.aiq = trunc nuw i8 %i.aip to i1
  br i1 %i.aiq, label %bb.gz, label %lv_theme_default_is_inited.exit.thread.i1187

bb.gz:                                            ; preds = %lv_theme_default_is_inited.exit.i1186
  tail call void @lv_style_reset(ptr noundef nonnull %i.ail) #4
  br label %style_init_reset.exit1188

lv_theme_default_is_inited.exit.thread.i1187:     ; preds = %lv_theme_default_is_inited.exit.i1186, %bb.gy
  tail call void @lv_style_init(ptr noundef nonnull %i.ail) #4
  br label %style_init_reset.exit1188

style_init_reset.exit1188:                        ; preds = %bb.gz, %lv_theme_default_is_inited.exit.thread.i1187
  %i.air = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.ais = icmp sgt i32 %i.air, 239
  br i1 %i.ais, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %style_init_reset.exit1188
  %i.ait = add nuw nsw i32 %i.air, 80
  %i.aiu = udiv i32 %i.ait, 160
  br label %bb.hb

bb.hb:                                            ; preds = %style_init_reset.exit1188, %bb.ha
  %i.aiv = phi i32 [ %i.aiu, %bb.ha ], [ 1, %style_init_reset.exit1188 ]
  tail call void @lv_style_set_border_width(ptr noundef nonnull %i.ail, i32 noundef %i.aiv) #4
  %.0.copyload20 = load i24, ptr %i.q, align 1
  tail call void @lv_style_set_border_color(ptr noundef nonnull %i.ail, i24 %.0.copyload20) #4
  %.0.copyload18 = load i24, ptr %i.l, align 2
  tail call void @lv_style_set_bg_color(ptr noundef nonnull %i.ail, i24 %.0.copyload18) #4
  tail call void @lv_style_set_bg_opa(ptr noundef nonnull %i.ail, i8 noundef zeroext 51) #4
  %i.aiw = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 8 uses
  %i.aix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.aiy = icmp eq ptr %i.aix, null
  br i1 %i.aiy, label %lv_theme_default_is_inited.exit.thread.i1190, label %lv_theme_default_is_inited.exit.i1189

lv_theme_default_is_inited.exit.i1189:            ; preds = %bb.hb
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aix, i64 92
  %i.aja = load i8, ptr %i.aiz, align 4, !tbaa !11, !range !23, !noundef !24
  %i.ajb = trunc nuw i8 %i.aja to i1
  br i1 %i.ajb, label %bb.hc, label %lv_theme_default_is_inited.exit.thread.i1190

bb.hc:                                            ; preds = %lv_theme_default_is_inited.exit.i1189
  tail call void @lv_style_reset(ptr noundef nonnull %i.aiw) #4
  br label %style_init_reset.exit1191

lv_theme_default_is_inited.exit.thread.i1190:     ; preds = %lv_theme_default_is_inited.exit.i1189, %bb.hb
  tail call void @lv_style_init(ptr noundef nonnull %i.aiw) #4
  br label %style_init_reset.exit1191

style_init_reset.exit1191:                        ; preds = %bb.hc, %lv_theme_default_is_inited.exit.thread.i1190
  %i.ajc = load i32, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.ajd = load i32, ptr %i.au, align 4, !tbaa !25
  %i.aje = icmp eq i32 %i.ajc, 1
  %i.ajf = icmp eq i32 %i.ajc, 2
  %i.ajg = select i1 %i.ajf, i32 12, i32 10
  %i.ajh = select i1 %i.aje, i32 14, i32 %i.ajg
  %i.aji = mul nsw i32 %i.ajh, %i.ajd             ; 2 uses
  %i.ajj = icmp sgt i32 %i.aji, 239
  br i1 %i.ajj, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %style_init_reset.exit1191
  %i.ajk = add nuw nsw i32 %i.aji, 80
  %i.ajl = udiv i32 %i.ajk, 160
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %style_init_reset.exit1191
  %i.ajm = phi i32 [ 1, %style_init_reset.exit1191 ], [ %i.ajl, %bb.hd ] ; 2 uses
  tail call void @lv_style_set_pad_left(ptr noundef nonnull %i.aiw, i32 noundef range(i32 -13421772, 13421773) %i.ajm) #4
  tail call void @lv_style_set_pad_right(ptr noundef nonnull %i.aiw, i32 noundef range(i32 -13421772, 13421773) %i.ajm) #4
  %i.ajn = load i32, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.ajo = load i32, ptr %i.au, align 4, !tbaa !25
  %i.ajp = icmp eq i32 %i.ajn, 1
  %i.ajq = icmp eq i32 %i.ajn, 2
  %i.ajr = select i1 %i.ajq, i32 12, i32 10
  %i.ajs = select i1 %i.ajp, i32 14, i32 %i.ajr
  %i.ajt = mul nsw i32 %i.ajs, %i.ajo             ; 2 uses
  %i.aju = icmp sgt i32 %i.ajt, 239
  br i1 %i.aju, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.ajv = add nuw nsw i32 %i.ajt, 80
  %i.ajw = udiv i32 %i.ajv, 160
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.ajx = phi i32 [ 1, %bb.he ], [ %i.ajw, %bb.hf ]
  tail call void @lv_style_set_pad_top(ptr noundef nonnull %i.aiw, i32 noundef %i.ajx) #4
  %i.ajy = load i32, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.ajz = load i32, ptr %i.au, align 4, !tbaa !25
  %i.aka = icmp eq i32 %i.ajy, 1
  %i.akb = icmp eq i32 %i.ajy, 2
  %i.akc = select i1 %i.akb, i32 6, i32 2
  %i.akd = select i1 %i.aka, i32 8, i32 %i.akc
  %i.ake = mul nsw i32 %i.akd, %i.ajz             ; 2 uses
  %i.akf = icmp sgt i32 %i.ake, 239
  br i1 %i.akf, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.akg = add nuw nsw i32 %i.ake, 80
  %i.akh = udiv i32 %i.akg, 160
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.aki = phi i32 [ 1, %bb.hg ], [ %i.akh, %bb.hh ]
  tail call void @lv_style_set_pad_bottom(ptr noundef nonnull %i.aiw, i32 noundef %i.aki) #4
  %i.akj = load i32, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.akk = load i32, ptr %i.au, align 4, !tbaa !25
  %i.akl = icmp eq i32 %i.akj, 1
  %i.akm = icmp eq i32 %i.akj, 2
  %i.akn = select i1 %i.akm, i32 12, i32 10
  %i.ako = select i1 %i.akl, i32 14, i32 %i.akn
  %i.akp = mul nsw i32 %i.ako, %i.akk             ; 2 uses
  %i.akq = icmp sgt i32 %i.akp, 239
  br i1 %i.akq, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.akr = add nuw nsw i32 %i.akp, 80
  %i.aks = udiv i32 %i.akr, 160
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.akt = phi i32 [ 1, %bb.hi ], [ %i.aks, %bb.hj ] ; 2 uses
  tail call void @lv_style_set_pad_row(ptr noundef nonnull %i.aiw, i32 noundef range(i32 -13421772, 13421773) %i.akt) #4
  tail call void @lv_style_set_pad_column(ptr noundef nonnull %i.aiw, i32 noundef range(i32 -13421772, 13421773) %i.akt) #4
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.akv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.akw = icmp eq ptr %i.akv, null
  br i1 %i.akw, label %lv_theme_default_is_inited.exit.thread.i1193, label %lv_theme_default_is_inited.exit.i1192

lv_theme_default_is_inited.exit.i1192:            ; preds = %bb.hk
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akv, i64 92
  %i.aky = load i8, ptr %i.akx, align 4, !tbaa !11, !range !23, !noundef !24
  %i.akz = trunc nuw i8 %i.aky to i1
  br i1 %i.akz, label %bb.hl, label %lv_theme_default_is_inited.exit.thread.i1193

bb.hl:                                            ; preds = %lv_theme_default_is_inited.exit.i1192
  tail call void @lv_style_reset(ptr noundef nonnull %i.aku) #4
  br label %style_init_reset.exit1194

lv_theme_default_is_inited.exit.thread.i1193:     ; preds = %lv_theme_default_is_inited.exit.i1192, %bb.hk
  tail call void @lv_style_init(ptr noundef nonnull %i.aku) #4
  br label %style_init_reset.exit1194

style_init_reset.exit1194:                        ; preds = %bb.hl, %lv_theme_default_is_inited.exit.thread.i1193
  %i.ala = tail call i24 @lv_palette_main(i32 noundef 18) #4
  tail call void @lv_style_set_bg_color(ptr noundef nonnull %i.aku, i24 %i.ala) #4
  tail call void @lv_style_set_bg_opa(ptr noundef nonnull %i.aku, i8 noundef zeroext 127) #4
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 4 uses
  %i.alc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.ald = icmp eq ptr %i.alc, null
  br i1 %i.ald, label %lv_theme_default_is_inited.exit.thread.i1196, label %lv_theme_default_is_inited.exit.i1195

lv_theme_default_is_inited.exit.i1195:            ; preds = %style_init_reset.exit1194
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alc, i64 92
  %i.alf = load i8, ptr %i.ale, align 4, !tbaa !11, !range !23, !noundef !24
  %i.alg = trunc nuw i8 %i.alf to i1
  br i1 %i.alg, label %bb.hm, label %lv_theme_default_is_inited.exit.thread.i1196

bb.hm:                                            ; preds = %lv_theme_default_is_inited.exit.i1195
  tail call void @lv_style_reset(ptr noundef nonnull %i.alb) #4
  br label %style_init_reset.exit1197

lv_theme_default_is_inited.exit.thread.i1196:     ; preds = %lv_theme_default_is_inited.exit.i1195, %style_init_reset.exit1194
  tail call void @lv_style_init(ptr noundef nonnull %i.alb) #4
  br label %style_init_reset.exit1197

style_init_reset.exit1197:                        ; preds = %bb.hm, %lv_theme_default_is_inited.exit.thread.i1196
  tail call void @lv_style_set_shadow_width(ptr noundef nonnull %i.alb, i32 noundef 0) #4
  %i.alh = load i32, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.ali = icmp eq i32 %i.alh, 3
  br i1 %i.ali, label %bb.hn, label %bb.hp

bb.hn:                                            ; preds = %style_init_reset.exit1197
  %i.alj = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.alk = icmp sgt i32 %i.alj, 29
  br i1 %i.alk, label %bb.ho, label %bb.hr

bb.ho:                                            ; preds = %bb.hn
  %i.all = shl nsw i32 %i.alj, 3
  %i.alm = add nuw nsw i32 %i.all, 80
  %i.aln = udiv i32 %i.alm, 160
  %i.alo = lshr i32 %i.aln, 1
  br label %bb.hr

bb.hp:                                            ; preds = %style_init_reset.exit1197
  %i.alp = icmp eq i32 %i.alh, 1
  %i.alq = select i1 %i.alp, i32 12, i32 8
  %i.alr = load i32, ptr %i.au, align 4, !tbaa !25
  %i.als = mul nsw i32 %i.alr, %i.alq             ; 2 uses
  %i.alt = icmp sgt i32 %i.als, 239
  br i1 %i.alt, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.alu = add nuw nsw i32 %i.als, 80
  %i.alv = udiv i32 %i.alu, 160
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hn, %bb.ho, %bb.hp, %bb.hq
  %i.alw = phi i32 [ %i.alv, %bb.hq ], [ 1, %bb.hp ], [ 0, %bb.hn ], [ %i.alo, %bb.ho ]
  tail call void @lv_style_set_radius(ptr noundef nonnull %i.alb, i32 noundef %i.alw) #4
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 6 uses
  %i.aly = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.alz = icmp eq ptr %i.aly, null
  br i1 %i.alz, label %lv_theme_default_is_inited.exit.thread.i1199, label %lv_theme_default_is_inited.exit.i1198

lv_theme_default_is_inited.exit.i1198:            ; preds = %bb.hr
  %i.ama = getelementptr inbounds nuw i8, ptr %i.aly, i64 92
  %i.amb = load i8, ptr %i.ama, align 4, !tbaa !11, !range !23, !noundef !24
  %i.amc = trunc nuw i8 %i.amb to i1
  br i1 %i.amc, label %bb.hs, label %lv_theme_default_is_inited.exit.thread.i1199

bb.hs:                                            ; preds = %lv_theme_default_is_inited.exit.i1198
  tail call void @lv_style_reset(ptr noundef nonnull %i.alx) #4
  br label %style_init_reset.exit1200

lv_theme_default_is_inited.exit.thread.i1199:     ; preds = %lv_theme_default_is_inited.exit.i1198, %bb.hr
  tail call void @lv_style_init(ptr noundef nonnull %i.alx) #4
  br label %style_init_reset.exit1200

style_init_reset.exit1200:                        ; preds = %bb.hs, %lv_theme_default_is_inited.exit.thread.i1199
  %.0.copyload13 = load i24, ptr %i.fi, align 8
  tail call void @lv_style_set_border_color(ptr noundef nonnull %i.alx, i24 %.0.copyload13) #4
  %i.amd = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.ame = icmp sgt i32 %i.amd, 119
  br i1 %i.ame, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %style_init_reset.exit1200
  %i.amf = shl nuw nsw i32 %i.amd, 1
  %i.amg = add nuw nsw i32 %i.amf, 80
  %i.amh = udiv i32 %i.amg, 160
  %i.ami = shl nuw nsw i32 %i.amh, 1
  br label %bb.hu

bb.hu:                                            ; preds = %style_init_reset.exit1200, %bb.ht
  %i.amj = phi i32 [ %i.ami, %bb.ht ], [ 2, %style_init_reset.exit1200 ]
  tail call void @lv_style_set_border_width(ptr noundef nonnull %i.alx, i32 noundef %i.amj) #4
  tail call void @lv_style_set_border_side(ptr noundef nonnull %i.alx, i32 noundef 1) #4
  %i.amk = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.aml = icmp sgt i32 %i.amk, 119
  br i1 %i.aml, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.amm = shl nuw nsw i32 %i.amk, 1
  %i.amn = add nuw nsw i32 %i.amm, 80
  %i.amo = udiv i32 %i.amn, 160
  %i.amp = shl nuw nsw i32 %i.amo, 1
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hu, %bb.hv
  %i.amq = phi i32 [ %i.amp, %bb.hv ], [ 2, %bb.hu ]
  tail call void @lv_style_set_pad_top(ptr noundef nonnull %i.alx, i32 noundef %i.amq) #4
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.ams = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.amt = icmp eq ptr %i.ams, null
  br i1 %i.amt, label %lv_theme_default_is_inited.exit.thread.i1202, label %lv_theme_default_is_inited.exit.i1201

lv_theme_default_is_inited.exit.i1201:            ; preds = %bb.hw
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ams, i64 92
  %i.amv = load i8, ptr %i.amu, align 4, !tbaa !11, !range !23, !noundef !24
  %i.amw = trunc nuw i8 %i.amv to i1
  br i1 %i.amw, label %bb.hx, label %lv_theme_default_is_inited.exit.thread.i1202

bb.hx:                                            ; preds = %lv_theme_default_is_inited.exit.i1201
  tail call void @lv_style_reset(ptr noundef nonnull %i.amr) #4
  br label %style_init_reset.exit1203

lv_theme_default_is_inited.exit.thread.i1202:     ; preds = %lv_theme_default_is_inited.exit.i1201, %bb.hw
  tail call void @lv_style_init(ptr noundef nonnull %i.amr) #4
  br label %style_init_reset.exit1203

style_init_reset.exit1203:                        ; preds = %bb.hx, %lv_theme_default_is_inited.exit.thread.i1202
  %i.amx = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.amy = icmp sgt i32 %i.amx, 119
  br i1 %i.amy, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %style_init_reset.exit1203
  %i.amz = shl nuw nsw i32 %i.amx, 1
  %i.ana = add nuw nsw i32 %i.amz, 80
  %.neg10191223 = udiv i32 %i.ana, 160
  %.neg10191223.neg = sub nsw i32 0, %.neg10191223
  br label %bb.hz

bb.hz:                                            ; preds = %style_init_reset.exit1203, %bb.hy
  %.neg1020 = phi i32 [ %.neg10191223.neg, %bb.hy ], [ -1, %style_init_reset.exit1203 ]
  tail call void @lv_style_set_outline_pad(ptr noundef nonnull %i.amr, i32 noundef %.neg1020) #4
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 9 uses
  %i.anc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.and = icmp eq ptr %i.anc, null
  br i1 %i.and, label %lv_theme_default_is_inited.exit.thread.i1205, label %lv_theme_default_is_inited.exit.i1204

lv_theme_default_is_inited.exit.i1204:            ; preds = %bb.hz
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anc, i64 92
  %i.anf = load i8, ptr %i.ane, align 4, !tbaa !11, !range !23, !noundef !24
  %i.ang = trunc nuw i8 %i.anf to i1
  br i1 %i.ang, label %bb.ia, label %lv_theme_default_is_inited.exit.thread.i1205

bb.ia:                                            ; preds = %lv_theme_default_is_inited.exit.i1204
  tail call void @lv_style_reset(ptr noundef nonnull %i.anb) #4
  br label %style_init_reset.exit1206

lv_theme_default_is_inited.exit.thread.i1205:     ; preds = %lv_theme_default_is_inited.exit.i1204, %bb.hz
  tail call void @lv_style_init(ptr noundef nonnull %i.anb) #4
  br label %style_init_reset.exit1206

style_init_reset.exit1206:                        ; preds = %bb.ia, %lv_theme_default_is_inited.exit.thread.i1205
  %i.anh = load i32, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.ani = load i32, ptr %i.au, align 4, !tbaa !25
  %i.anj = icmp eq i32 %i.anh, 1
  %i.ank = icmp eq i32 %i.anh, 2
  %i.anl = select i1 %i.ank, i32 20, i32 16
  %i.anm = select i1 %i.anj, i32 24, i32 %i.anl
  %i.ann = mul nsw i32 %i.anm, %i.ani             ; 2 uses
  %i.ano = icmp sgt i32 %i.ann, 239
  br i1 %i.ano, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %style_init_reset.exit1206
  %i.anp = add nuw nsw i32 %i.ann, 80
  %i.anq = udiv i32 %i.anp, 160
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %style_init_reset.exit1206
  %i.anr = phi i32 [ 1, %style_init_reset.exit1206 ], [ %i.anq, %bb.ib ] ; 2 uses
  tail call void @lv_style_set_pad_left(ptr noundef nonnull %i.anb, i32 noundef range(i32 -13421772, 13421773) %i.anr) #4
  tail call void @lv_style_set_pad_right(ptr noundef nonnull %i.anb, i32 noundef range(i32 -13421772, 13421773) %i.anr) #4
  tail call void @lv_style_set_pad_top(ptr noundef nonnull %i.anb, i32 noundef 0) #4
  tail call void @lv_style_set_pad_bottom(ptr noundef nonnull %i.anb, i32 noundef 0) #4
  tail call void @lv_style_set_pad_row(ptr noundef nonnull %i.anb, i32 noundef 0) #4
  tail call void @lv_style_set_pad_column(ptr noundef nonnull %i.anb, i32 noundef 0) #4
  tail call void @lv_style_set_clip_corner(ptr noundef nonnull %i.anb, i1 noundef zeroext true) #4
  %i.ans = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 10 uses
  %i.ant = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 824), align 8, !tbaa !8 ; 2 uses
  %i.anu = icmp eq ptr %i.ant, null
  br i1 %i.anu, label %lv_theme_default_is_inited.exit.thread.i1208, label %lv_theme_default_is_inited.exit.i1207

lv_theme_default_is_inited.exit.i1207:            ; preds = %bb.ic
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ant, i64 92
  %i.anw = load i8, ptr %i.anv, align 4, !tbaa !11, !range !23, !noundef !24
  %i.anx = trunc nuw i8 %i.anw to i1
  br i1 %i.anx, label %bb.id, label %lv_theme_default_is_inited.exit.thread.i1208

bb.id:                                            ; preds = %lv_theme_default_is_inited.exit.i1207
  tail call void @lv_style_reset(ptr noundef nonnull %i.ans) #4
  br label %style_init_reset.exit1209

lv_theme_default_is_inited.exit.thread.i1208:     ; preds = %lv_theme_default_is_inited.exit.i1207, %bb.ic
  tail call void @lv_style_init(ptr noundef nonnull %i.ans) #4
  br label %style_init_reset.exit1209

style_init_reset.exit1209:                        ; preds = %bb.id, %lv_theme_default_is_inited.exit.thread.i1208
  %i.any = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %i.anz = icmp sgt i32 %i.any, 239
  br i1 %i.anz, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %style_init_reset.exit1209
  %i.aoa = add nuw nsw i32 %i.any, 80
  %i.aob = udiv i32 %i.aoa, 160
  br label %bb.if

bb.if:                                            ; preds = %style_init_reset.exit1209, %bb.ie
  %i.aoc = phi i32 [ %i.aob, %bb.ie ], [ 1, %style_init_reset.exit1209 ]
  tail call void @lv_style_set_border_width(ptr noundef nonnull %i.ans, i32 noundef %i.aoc) #4
  %.0.copyload11 = load i24, ptr %i.q, align 1
  tail call void @lv_style_set_border_color(ptr noundef nonnull %i.ans, i24 %.0.copyload11) #4
  tail call void @lv_style_set_border_side(ptr noundef nonnull %i.ans, i32 noundef 1) #4
  %i.aod = load i32, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.aoe = load i32, ptr %i.au, align 4, !tbaa !25
  %i.aof = icmp eq i32 %i.aod, 1
  %i.aog = icmp eq i32 %i.aod, 2
  %i.aoh = select i1 %i.aog, i32 12, i32 10
  %i.aoi = select i1 %i.aof, i32 14, i32 %i.aoh
  %i.aoj = mul nsw i32 %i.aoi, %i.aoe             ; 2 uses
  %i.aok = icmp sgt i32 %i.aoj, 239
  br i1 %i.aok, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.aol = add nuw nsw i32 %i.aoj, 80
  %i.aom = udiv i32 %i.aol, 160
  br label %bb.ih

end_hunk_1
