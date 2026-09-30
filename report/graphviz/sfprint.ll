Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sfprint?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sfprint:bb.a

.critedge38:                                      ; preds = %.preheader1186, %.preheader1186.preheader
  %.5790.idx.lcssa = phi i64 [ 1, %.preheader1186.preheader ], [ %.5790.add, %.preheader1186 ] ; 2 uses
  %.13780.lcssa = phi ptr [ %.10777, %.preheader1186.preheader ], [ %i.vk, %.preheader1186 ] ; 2 uses
  %.6791.ptr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.5790.idx.lcssa ; 3 uses
  %i.vm = icmp eq i64 %.5790.idx.lcssa, 1
  br i1 %i.vm, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %.critedge38
  %i.vn = getelementptr inbounds nuw i8, ptr %.6791.ptr, i64 1
  store i8 48, ptr %.6791.ptr, align 1, !tbaa !40
  br label %bb.ha

bb.ha:                                            ; preds = %.critedge38.thread1525, %.critedge38.thread, %bb.gz, %.critedge38
  %.147811093 = phi ptr [ %.13780.lcssa, %bb.gz ], [ %.13780.lcssa, %.critedge38 ], [ %.14781.ph, %.critedge38.thread ], [ %i.ve, %.critedge38.thread1525 ] ; 2 uses
  %.7792 = phi ptr [ %i.vn, %bb.gz ], [ %.6791.ptr, %.critedge38 ], [ %.6791.ptr1092, %.critedge38.thread ], [ %.6791.ptr1528, %.critedge38.thread1525 ] ; 3 uses
  %i.vo = icmp slt i32 %.11751, 1
  %i.vp = and i32 %i.ge, 1024
  %.not955 = icmp eq i32 %i.vp, 0
  %or.cond1052 = select i1 %i.vo, i1 %.not955, i1 false
  br i1 %or.cond1052, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.vq = getelementptr inbounds nuw i8, ptr %.7792, i64 1
  store i8 %.7703, ptr %.7792, align 1, !tbaa !40
  br label %bb.hc

bb.hc:                                            ; preds = %bb.ha, %bb.hb
  %.8793 = phi ptr [ %i.vq, %bb.hb ], [ %.7792, %bb.ha ] ; 5 uses
  %.87931441 = ptrtoaddr ptr %.8793 to i64        ; 3 uses
  %i.vr = icmp slt i32 %i.uv, 0
  br i1 %i.vr, label %bb.hd, label %.loopexit1185

bb.hd:                                            ; preds = %bb.hc
  %i.vs = add nsw i32 %i.uv, %.11751              ; 2 uses
  %i.vt = icmp sgt i32 %.11751, 0
  br i1 %i.vt, label %.lr.ph1284.preheader, label %.loopexit1185

.lr.ph1284.preheader:                             ; preds = %bb.hd
  %i.vu = sub nsw i32 0, %i.uv
  %i.vv = call i32 @llvm.umin.i32(i32 %i.vu, i32 %.11751)
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = add i64 %.87931441, %i.vw
  %i.vy = add i64 %.87931441, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.vx, i64 %i.vy)
  %i.vz = sub i64 %umax, %.87931441               ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.8793, i8 48, i64 %i.vz, i1 false), !tbaa !40
  %scevgep = getelementptr i8, ptr %.8793, i64 %i.vz
  br label %.loopexit1185

.loopexit1185:                                    ; preds = %.lr.ph1284.preheader, %bb.hd, %bb.hc
  %.10795 = phi ptr [ %.8793, %bb.hc ], [ %.8793, %bb.hd ], [ %scevgep, %.lr.ph1284.preheader ] ; 2 uses
  %.12752 = phi i32 [ %.11751, %bb.hc ], [ %i.vs, %bb.hd ], [ %i.vs, %.lr.ph1284.preheader ] ; 2 uses
  %i.wa = sext i32 %.12752 to i64
  %i.wb = getelementptr inbounds i8, ptr %.147811093, i64 %i.wa ; 3 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.he, %.loopexit1185
  %.11796 = phi ptr [ %.10795, %.loopexit1185 ], [ %i.we, %bb.he ] ; 4 uses
  %.15782 = phi ptr [ %.147811093, %.loopexit1185 ], [ %i.wc, %bb.he ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.15782, i64 1 ; 2 uses
  %i.wd = load i8, ptr %.15782, align 1, !tbaa !40 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.11796, i64 1
  store i8 %i.wd, ptr %.11796, align 1, !tbaa !40
  %i.wf = icmp ne i8 %i.wd, 0
  %i.wg = icmp ule ptr %i.wc, %i.wb
  %i.wh = select i1 %i.wf, i1 %i.wg, i1 false
  br i1 %i.wh, label %bb.he, label %bb.hf, !llvm.loop !32

bb.hf:                                            ; preds = %bb.he
  %i.wi = ptrtoint ptr %.11796 to i64
  %i.wj = ptrtoint ptr %.10795 to i64
  %.neg = sub i64 %i.wj, %i.wi
  %i.wk = trunc i64 %.neg to i32
  %i.wl = add i32 %.12752, %i.wk
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.gm, %bb.gk
  %.17819 = phi ptr [ %.11778, %bb.gm ], [ %.ptr953, %bb.gk ], [ %.ptr953, %bb.hf ]
  %.12797 = phi ptr [ %i.un, %bb.gm ], [ %.2787, %bb.gk ], [ %.11796, %bb.hf ]
  %.16783 = phi ptr [ null, %bb.gm ], [ %i.ug, %bb.gk ], [ %i.wb, %bb.hf ]
  %.2765 = phi ptr [ null, %bb.gm ], [ %.ptr984, %bb.gk ], [ %i.wb, %bb.hf ]
  %.13753 = phi i32 [ 0, %bb.gm ], [ %i.tb, %bb.gk ], [ %i.wl, %bb.hf ]
  %.8704 = phi i8 [ %.1697, %bb.gm ], [ %.5701, %bb.gk ], [ %.7703, %bb.hf ]
  %.5694 = phi i8 [ %.1690, %bb.gm ], [ %.3692, %bb.gk ], [ %.4693, %bb.hf ]
  %i.wm = load i32, ptr %i.a, align 4, !tbaa !66
  %.not966 = icmp eq i32 %i.wm, 0
  %spec.select1053.v = select i1 %.not966, i32 4, i32 268435460
  %spec.select1053 = or i32 %spec.select1053.v, %i.gg
  br label %.thread1095

bb.hh:                                            ; preds = %.loopexit1175, %bb.eh, %bb.di
  %.7850 = phi i32 [ %.5848, %bb.di ], [ %.68491087, %.loopexit1175 ], [ %.4847, %bb.eh ]
  %.14839 = phi i32 [ %.10835, %bb.di ], [ %.138381088, %.loopexit1175 ], [ %.9834, %bb.eh ] ; 2 uses
  %.18820 = phi ptr [ %.ptr984, %bb.di ], [ %.14816, %.loopexit1175 ], [ %.ptr984, %bb.eh ] ; 2 uses
  %.13798 = phi ptr [ %.ptr984, %bb.di ], [ %.0785, %.loopexit1175 ], [ %.ptr984, %bb.eh ] ; 2 uses
  %.17784 = phi ptr [ null, %bb.di ], [ %.3770, %.loopexit1175 ], [ null, %bb.eh ] ; 2 uses
  %.3766 = phi ptr [ null, %bb.di ], [ %.1764, %.loopexit1175 ], [ null, %bb.eh ] ; 2 uses
  %.14754 = phi i32 [ 0, %bb.di ], [ %.9749, %.loopexit1175 ], [ 0, %bb.eh ] ; 2 uses
  %.13 = phi i32 [ 0, %bb.di ], [ %.91089, %.loopexit1175 ], [ 0, %bb.eh ]
  %i.wn = icmp eq i32 %.14839, 0
  %i.wo = icmp slt i32 %i.gh, 1
  %or.cond42 = select i1 %i.wn, i1 %i.wo, i1 false
  br i1 %or.cond42, label %..thread1123_crit_edge, label %.thread1095

..thread1123_crit_edge:                           ; preds = %bb.hh
  %.pre1468 = ptrtoint ptr %.13798 to i64
  br label %.thread1123

.thread1095:                                      ; preds = %bb.fg, %bb.fj, %bb.fi, %bb.ff, %bb.hg, %bb.ey, %bb.ez, %bb.hh
  %.66951119 = phi i8 [ %.1690, %bb.hh ], [ %.5694, %bb.hg ], [ %.1690, %bb.ey ], [ %.1690, %bb.ez ], [ %.1690, %bb.ff ], [ %.1690, %bb.fi ], [ %.1690, %bb.fj ], [ %.1690, %bb.fg ] ; 2 uses
  %.97051117 = phi i8 [ %.1697, %bb.hh ], [ %.8704, %bb.hg ], [ %.1697, %bb.ey ], [ %.1697, %bb.ez ], [ %.1697, %bb.ff ], [ %.1697, %bb.fi ], [ %.1697, %bb.fj ], [ %.1697, %bb.fg ] ; 2 uses
  %.147541116 = phi i32 [ %.14754, %bb.hh ], [ %.13753, %bb.hg ], [ %.9749, %bb.ey ], [ %.9749, %bb.ez ], [ %.9749, %bb.ff ], [ %.9749, %bb.fi ], [ %.9749, %bb.fj ], [ %.9749, %bb.fg ] ; 4 uses
  %.37661114 = phi ptr [ %.3766, %bb.hh ], [ %.2765, %bb.hg ], [ %.1764, %bb.ey ], [ %.1764, %bb.ez ], [ %.1764, %bb.ff ], [ %.1764, %bb.fi ], [ %.1764, %bb.fj ], [ %.1764, %bb.fg ] ; 3 uses
  %.177841112 = phi ptr [ %.17784, %bb.hh ], [ %.16783, %bb.hg ], [ %.3770, %bb.ey ], [ %.3770, %bb.ez ], [ %.3770, %bb.ff ], [ %.3770, %bb.fi ], [ %.3770, %bb.fj ], [ %.3770, %bb.fg ] ; 3 uses
  %.137981110 = phi ptr [ %.13798, %bb.hh ], [ %.12797, %bb.hg ], [ %.0785, %bb.ey ], [ %.0785, %bb.ez ], [ %.0785, %bb.ff ], [ %.0785, %bb.fi ], [ %.0785, %bb.fj ], [ %.0785, %bb.fg ]
  %.188201109 = phi ptr [ %.18820, %bb.hh ], [ %.17819, %bb.hg ], [ %.14816, %bb.ey ], [ %i.pa, %bb.ez ], [ %i.px, %bb.ff ], [ %i.qd, %bb.fi ], [ %i.ql, %bb.fj ], [ %.16818, %bb.fg ] ; 5 uses
  %.148391108 = phi i32 [ %.14839, %bb.hh ], [ %spec.select1053, %bb.hg ], [ %.138381088, %bb.ey ], [ %.138381088, %bb.ez ], [ %.138381088, %bb.ff ], [ %.138381088, %bb.fi ], [ %.138381088, %bb.fj ], [ %.138381088, %bb.fg ] ; 10 uses
  %.78501107 = phi i32 [ %.7850, %bb.hh ], [ %i.gb, %bb.hg ], [ 111, %bb.ey ], [ 111, %bb.ez ], [ %.68491087, %bb.ff ], [ %.68491087, %bb.fi ], [ %.68491087, %bb.fj ], [ %.68491087, %bb.fg ]
  %i.wp = and i32 %.148391108, 268435840          ; 2 uses
  %.not994 = icmp ne i32 %i.wp, 0                 ; 3 uses
  br i1 %.not994, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %.thread1095
  %i.wq = and i32 %.148391108, 268435456
  %.not995 = icmp eq i32 %i.wq, 0
  %i.wr = and i32 %.148391108, 128
  %.not996 = icmp eq i32 %i.wr, 0
  %i.ws = select i1 %.not996, i32 32, i32 43
  %i.wt = select i1 %.not995, i32 %i.ws, i32 45
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %.thread1095
  %.8851 = phi i32 [ %i.wt, %bb.hi ], [ %.78501107, %.thread1095 ] ; 3 uses
  %i.wu = ptrtoint ptr %.137981110 to i64         ; 3 uses
  %i.wv = ptrtoint ptr %.188201109 to i64
  %i.ww = ptrtoint ptr %.37661114 to i64
  %i.wx = ptrtoint ptr %.177841112 to i64
  %i.wy = call i32 @llvm.smax.i32(i32 %.147541116, i32 0)
  %i.wz = zext nneg i32 %i.wy to i64
  %.neg1330 = sext i1 %.not994 to i64
  %i.xa = add i64 %i.wz, %i.ww
  %i.xb = add i64 %i.xa, %i.wu
  %i.xc = add i64 %i.wx, %i.wv
  %.neg1329 = sub i64 %i.xc, %i.xb
  %.neg1331 = add i64 %.neg1329, %.neg1330
  %.neg1332 = trunc i64 %.neg1331 to i32
  %i.xd = add i32 %i.gh, %.neg1332                ; 5 uses
  %i.xe = icmp slt i32 %i.xd, 1
  br i1 %i.xe, label %bb.hp, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.xf = and i32 %.148391108, 512
  %.not1003 = icmp eq i32 %i.xf, 0
  br i1 %.not1003, label %bb.hl, label %bb.hp

bb.hl:                                            ; preds = %bb.hk
  %i.xg = and i32 %.148391108, 64
  %.not1004 = icmp eq i32 %i.xg, 0
  br i1 %.not1004, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.xh = sub nsw i32 0, %i.xd
  br label %bb.hp

bb.hn:                                            ; preds = %bb.hl
  br i1 %.not994, label %bb.ho, label %.thread1548

bb.ho:                                            ; preds = %bb.hn
  %i.xi = trunc i32 %.8851 to i8
  %i.xj = getelementptr inbounds i8, ptr %.188201109, i64 -1 ; 2 uses
  store i8 %i.xi, ptr %i.xj, align 1, !tbaa !40
  %i.xk = and i32 %.148391108, -268436417
  br label %.thread1548

bb.hp:                                            ; preds = %bb.hj, %bb.hk, %bb.hm
  %.14 = phi i32 [ 0, %bb.hj ], [ %i.xd, %bb.hk ], [ %i.xh, %bb.hm ] ; 3 uses
  %.not1005 = icmp eq i32 %i.wp, 0
  br i1 %.not1005, label %bb.hs, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.xl = call i32 @putc(i32 noundef %.8851, ptr noundef %0)
  %i.xm = icmp eq i32 %i.xl, -1
  br i1 %i.xm, label %.thread, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %.not1006 = icmp eq i32 %.8851, 32
  %i.xn = or i32 %.148391108, 512
  %spec.select1054 = select i1 %.not1006, i32 %.148391108, i32 %i.xn
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hp
  %.16841 = phi i32 [ %.148391108, %bb.hp ], [ %spec.select1054, %bb.hr ] ; 2 uses
  %i.xo = icmp sgt i32 %.14, 0
  br i1 %i.xo, label %.thread1548, label %.thread1121

.thread1548:                                      ; preds = %bb.hn, %bb.ho, %bb.hs
  %.168411555 = phi i32 [ %.16841, %bb.hs ], [ %i.xk, %bb.ho ], [ %.148391108, %bb.hn ] ; 2 uses
  %.1915461554 = phi ptr [ %.188201109, %bb.hs ], [ %i.xj, %bb.ho ], [ %.188201109, %bb.hn ]
  %.1415471552 = phi i32 [ %.14, %bb.hs ], [ %i.xd, %bb.ho ], [ %i.xd, %bb.hn ]
  %3 = and i32 %.168411555, 512
  %.not1007 = icmp eq i32 %3, 0
  %4 = select i1 %.not1007, i32 32, i32 48        ; 2 uses
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hu
  %i.xp = add nuw nsw i32 %.06551305, 1           ; 2 uses
  %exitcond1454.not = icmp eq i32 %i.xp, %.1415471552
  br i1 %exitcond1454.not, label %.thread1121, label %bb.hu, !llvm.loop !33

bb.hu:                                            ; preds = %.thread1548, %bb.ht
  %.06551305 = phi i32 [ 0, %.thread1548 ], [ %i.xp, %bb.ht ]
  %i.xq = call i32 @putc(i32 noundef %4, ptr noundef %0)
  %i.xr = icmp eq i32 %i.xq, -1
  br i1 %i.xr, label %.thread, label %bb.ht

.thread1121:                                      ; preds = %bb.ht, %bb.hs
  %.168411556 = phi i32 [ %.16841, %bb.hs ], [ %.168411555, %bb.ht ] ; 3 uses
  %.1915461553 = phi ptr [ %.188201109, %bb.hs ], [ %.1915461554, %bb.ht ] ; 2 uses
  %.15 = phi i32 [ %.14, %bb.hs ], [ %4, %bb.ht ] ; 2 uses
  %i.xs = icmp sgt i32 %.147541116, 0
  %i.xt = and i32 %.168411556, 4
  %.not1008 = icmp eq i32 %i.xt, 0
  %or.cond1056 = and i1 %i.xs, %.not1008
  br i1 %or.cond1056, label %.preheader1170, label %.thread1123

bb.hv:                                            ; preds = %.preheader1170
  %i.xu = add nuw nsw i32 %.06541306, 1           ; 2 uses
  %exitcond1455.not = icmp eq i32 %i.xu, %.147541116
  br i1 %exitcond1455.not, label %.thread1123, label %.preheader1170, !llvm.loop !34

.preheader1170:                                   ; preds = %.thread1121, %bb.hv
  %.06541306 = phi i32 [ %i.xu, %bb.hv ], [ 0, %.thread1121 ]
  %i.xv = call i32 @putc(i32 noundef 48, ptr noundef %0)
  %i.xw = icmp eq i32 %i.xv, -1
  br i1 %i.xw, label %.thread, label %bb.hv

.thread1123:                                      ; preds = %bb.hv, %..thread1123_crit_edge, %.thread1121
  %.pre-phi1469 = phi i64 [ %.pre1468, %..thread1123_crit_edge ], [ %i.wu, %.thread1121 ], [ %i.wu, %bb.hv ]
  %.66951120 = phi i8 [ %.1690, %..thread1123_crit_edge ], [ %.66951119, %.thread1121 ], [ %.66951119, %bb.hv ] ; 3 uses
  %.97051118 = phi i8 [ %.1697, %..thread1123_crit_edge ], [ %.97051117, %.thread1121 ], [ %.97051117, %bb.hv ] ; 3 uses
  %.37661115 = phi ptr [ %.3766, %..thread1123_crit_edge ], [ %.37661114, %.thread1121 ], [ %.37661114, %bb.hv ]
  %.177841113 = phi ptr [ %.17784, %..thread1123_crit_edge ], [ %.177841112, %.thread1121 ], [ %.177841112, %bb.hv ] ; 2 uses
  %.17842 = phi i32 [ 0, %..thread1123_crit_edge ], [ %.168411556, %.thread1121 ], [ %.168411556, %bb.hv ]
  %.20 = phi ptr [ %.18820, %..thread1123_crit_edge ], [ %.1915461553, %.thread1121 ], [ %.1915461553, %bb.hv ] ; 2 uses
  %.15755 = phi i32 [ %.14754, %..thread1123_crit_edge ], [ %.147541116, %.thread1121 ], [ 0, %bb.hv ] ; 2 uses
  %.16 = phi i32 [ %.13, %..thread1123_crit_edge ], [ %.15, %.thread1121 ], [ %.15, %bb.hv ] ; 2 uses
  %i.xx = ptrtoint ptr %.20 to i64
  %i.xy = sub i64 %.pre-phi1469, %i.xx            ; 2 uses
  %i.xz = trunc i64 %i.xy to i32
  %i.ya = icmp sgt i32 %i.xz, 0
  br i1 %i.ya, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %.thread1123
  %i.yb = and i64 %i.xy, 2147483647
  %i.yc = call i64 @fwrite(ptr noundef %.20, i64 noundef %i.yb, i64 noundef 1, ptr noundef %0)
  %i.yd = icmp eq i64 %i.yc, 0
  br i1 %i.yd, label %.thread, label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %.thread1123
  %i.ye = and i32 %.17842, 68
  %.not1009 = icmp eq i32 %i.ye, 0
  br i1 %.not1009, label %.backedge1191, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.yf = icmp sgt i32 %.15755, 0
  br i1 %i.yf, label %.preheader1168, label %.thread1125

bb.hz:                                            ; preds = %.preheader1168
  %i.yg = add nuw nsw i32 %.06531307, 1           ; 2 uses
  %exitcond1456.not = icmp eq i32 %i.yg, %.15755
  br i1 %exitcond1456.not, label %.thread1125, label %.preheader1168, !llvm.loop !35

.preheader1168:                                   ; preds = %bb.hy, %bb.hz
  %.06531307 = phi i32 [ %i.yg, %bb.hz ], [ 0, %bb.hy ]
  %i.yh = call i32 @putc(i32 noundef 48, ptr noundef %0)
  %i.yi = icmp eq i32 %i.yh, -1
  br i1 %i.yi, label %.thread, label %bb.hz

.thread1125:                                      ; preds = %bb.hz, %bb.hy
  %i.yj = ptrtoint ptr %.37661115 to i64
  %i.yk = ptrtoint ptr %.177841113 to i64
  %i.yl = sub i64 %i.yj, %i.yk                    ; 2 uses
  %i.ym = trunc i64 %i.yl to i32
  %i.yn = icmp sgt i32 %i.ym, 0
  br i1 %i.yn, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %.thread1125
  %i.yo = and i64 %i.yl, 2147483647
  %i.yp = call i64 @fwrite(ptr noundef %.177841113, i64 noundef %i.yo, i64 noundef 1, ptr noundef %0)
  %i.yq = icmp eq i64 %i.yp, 0
  br i1 %i.yq, label %.thread, label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %.thread1125
  %i.yr = icmp slt i32 %.16, 0
  br i1 %i.yr, label %.preheader1166.preheader, label %.backedge1191

.preheader1166.preheader:                         ; preds = %bb.ib
  %i.ys = sub i32 0, %.16
  %smax = call i32 @llvm.smax.i32(i32 %i.ys, i32 1)
  br label %.preheader1166

bb.ic:                                            ; preds = %.preheader1166
  %i.yt = add nuw nsw i32 %.01308, 1              ; 2 uses
  %exitcond1457.not = icmp eq i32 %i.yt, %smax
  br i1 %exitcond1457.not, label %.backedge1191, label %.preheader1166, !llvm.loop !36

.preheader1166:                                   ; preds = %.preheader1166.preheader, %bb.ic
  %.01308 = phi i32 [ %i.yt, %bb.ic ], [ 0, %.preheader1166.preheader ]
  %i.yu = call i32 @putc(i32 noundef 32, ptr noundef %0)
  %i.yv = icmp eq i32 %i.yu, -1
  br i1 %i.yv, label %.thread, label %bb.ic

.thread:                                          ; preds = %bb.d, %bb.g, %bb.bk, %bb.hq, %bb.hw, %bb.ia, %bb.b, %bb.m, %bb.al, %bb.at, %bb.hu, %.preheader1170, %.preheader1168, %.preheader1166, %bb.ct, %bb.cc, %bb.cg, %.preheader1154, %bb.cp, %.preheader1151, %.lr.ph1318, %.lr.ph1320, %.preheader, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0722
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @_sfcvt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @sfslen() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !44}
!9 = distinct !{!9, !44}
!10 = distinct !{!10, !44}
!11 = distinct !{!11, !44}
!12 = distinct !{!12, !44}
!13 = distinct !{!13, !44}
!14 = distinct !{!14, !44}
!15 = distinct !{!15, !44}
!16 = distinct !{!16, !44}
!17 = distinct !{!17, !44}
!18 = distinct !{!18, !44}
!19 = distinct !{!19, !44}
!20 = distinct !{!20, !44}
!21 = distinct !{!21, !44}
!22 = distinct !{!22, !44}
!23 = distinct !{!23, !44, !60, !61}
!24 = distinct !{!24, !44, !60, !61}
!25 = distinct !{!25, !63}
!26 = distinct !{!26, !44, !60}
!27 = distinct !{!27, !44}
!28 = distinct !{!28, !44}
!29 = distinct !{!29, !44}
!30 = distinct !{!30, !44}
!31 = distinct !{!31, !44}
!32 = distinct !{!32, !44}
end_hunk_0
