Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sfprint?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sfprint:bb.a
  %i.vd = icmp eq i32 %i.vc, 0
  %spec.store.select36 = select i1 %i.vd, i32 3, i32 %i.vc
  %i.ve = getelementptr inbounds i8, ptr %i.uy, i64 -3
  br label %bb.gu

bb.gu:                                            ; preds = %.lr.ph1280, %bb.gy
  %.171279 = phi i32 [ %spec.store.select36, %.lr.ph1280 ], [ %.18, %bb.gy ]
  %.127791278 = phi ptr [ %.10777, %.lr.ph1280 ], [ %i.vf, %bb.gy ] ; 2 uses
  %.3788.idx1277 = phi i64 [ 1, %.lr.ph1280 ], [ %.4789.idx, %bb.gy ] ; 3 uses
  %.3788.ptr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.3788.idx1277
  %i.vf = getelementptr inbounds nuw i8, ptr %.127791278, i64 1 ; 5 uses
  %i.vg = load i8, ptr %.127791278, align 1, !tbaa !40 ; 2 uses
  %.3788.add = add nuw nsw i64 %.3788.idx1277, 1  ; 4 uses
  %.ptr952 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.3788.add
  store i8 %i.vg, ptr %.3788.ptr, align 1, !tbaa !40
  %.not951 = icmp eq i8 %i.vg, 0
  br i1 %.not951, label %.critedge38.thread, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.vh = add nsw i32 %.171279, -1                ; 2 uses
  %i.vi = icmp eq i32 %i.vh, 0
  br i1 %i.vi, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %bb.gv
  %.not956 = icmp ugt ptr %i.vf, %i.ve
  br i1 %.not956, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %.add = add nuw nsw i64 %.3788.idx1277, 2
  store i8 %.4693, ptr %.ptr952, align 1, !tbaa !40
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %bb.gv
  %.4789.idx = phi i64 [ %.add, %bb.gx ], [ %.3788.add, %bb.gw ], [ %.3788.add, %bb.gv ] ; 2 uses
  %.18 = phi i32 [ 3, %bb.gx ], [ 0, %bb.gw ], [ %i.vh, %bb.gv ]
  %i.vj = icmp ult ptr %i.vf, %i.uy
  br i1 %i.vj, label %bb.gu, label %.critedge38.thread1525, !llvm.loop !30

.critedge38.thread1525:                           ; preds = %bb.gy
  %.6791.ptr1528 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.4789.idx
  br label %bb.ha

.preheader1186:                                   ; preds = %.lr.ph1769
  %i.vk = icmp ult ptr %i.vl, %i.uy
  br i1 %i.vk, label %.lr.ph1769, label %.critedge38, !llvm.loop !31

.lr.ph1769:                                       ; preds = %.preheader1186.preheader, %.preheader1186
  %.137801768 = phi ptr [ %i.vl, %.preheader1186 ], [ %.10777, %.preheader1186.preheader ] ; 2 uses
  %.5790.idx1767 = phi i64 [ %.5790.add, %.preheader1186 ], [ 1, %.preheader1186.preheader ] ; 2 uses
  %.5790.ptr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.5790.idx1767
  %i.vl = getelementptr inbounds nuw i8, ptr %.137801768, i64 1 ; 4 uses
  %i.vm = load i8, ptr %.137801768, align 1, !tbaa !40 ; 2 uses
  %.5790.add = add nuw nsw i64 %.5790.idx1767, 1  ; 3 uses
  store i8 %i.vm, ptr %.5790.ptr, align 1, !tbaa !40
  %.not950 = icmp eq i8 %i.vm, 0
  br i1 %.not950, label %.critedge38.thread, label %.preheader1186, !llvm.loop !31

.critedge38.thread:                               ; preds = %bb.gu, %.lr.ph1769
  %.6791.idx.ph = phi i64 [ %.5790.add, %.lr.ph1769 ], [ %.3788.add, %bb.gu ]
  %.14781.ph = phi ptr [ %i.vl, %.lr.ph1769 ], [ %i.vf, %bb.gu ]
  %.6791.ptr1092 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.6791.idx.ph
  br label %bb.ha

.critedge38:                                      ; preds = %.preheader1186, %.preheader1186.preheader
  %.5790.idx.lcssa = phi i64 [ 1, %.preheader1186.preheader ], [ %.5790.add, %.preheader1186 ] ; 2 uses
  %.13780.lcssa = phi ptr [ %.10777, %.preheader1186.preheader ], [ %i.vl, %.preheader1186 ] ; 2 uses
  %.6791.ptr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.5790.idx.lcssa ; 3 uses
  %i.vn = icmp eq i64 %.5790.idx.lcssa, 1
  br i1 %i.vn, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %.critedge38
  %i.vo = getelementptr inbounds nuw i8, ptr %.6791.ptr, i64 1
  store i8 48, ptr %.6791.ptr, align 1, !tbaa !40
  br label %bb.ha

bb.ha:                                            ; preds = %.critedge38.thread1525, %.critedge38.thread, %bb.gz, %.critedge38
  %.147811093 = phi ptr [ %.13780.lcssa, %bb.gz ], [ %.13780.lcssa, %.critedge38 ], [ %.14781.ph, %.critedge38.thread ], [ %i.vf, %.critedge38.thread1525 ] ; 2 uses
  %.7792 = phi ptr [ %i.vo, %bb.gz ], [ %.6791.ptr, %.critedge38 ], [ %.6791.ptr1092, %.critedge38.thread ], [ %.6791.ptr1528, %.critedge38.thread1525 ] ; 3 uses
  %i.vp = icmp slt i32 %.11751, 1
  %i.vq = and i32 %i.ge, 1024
  %.not955 = icmp eq i32 %i.vq, 0
  %or.cond1052 = select i1 %i.vp, i1 %.not955, i1 false
  br i1 %or.cond1052, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.vr = getelementptr inbounds nuw i8, ptr %.7792, i64 1
  store i8 %.7703, ptr %.7792, align 1, !tbaa !40
  br label %bb.hc

bb.hc:                                            ; preds = %bb.ha, %bb.hb
  %.8793 = phi ptr [ %i.vr, %bb.hb ], [ %.7792, %bb.ha ] ; 5 uses
  %.87931441 = ptrtoaddr ptr %.8793 to i64        ; 3 uses
  %i.vs = icmp slt i32 %i.uw, 0
  br i1 %i.vs, label %bb.hd, label %.loopexit1185

bb.hd:                                            ; preds = %bb.hc
  %i.vt = add nsw i32 %i.uw, %.11751              ; 2 uses
  %i.vu = icmp sgt i32 %.11751, 0
  br i1 %i.vu, label %.lr.ph1284.preheader, label %.loopexit1185

.lr.ph1284.preheader:                             ; preds = %bb.hd
  %i.vv = sub nsw i32 0, %i.uw
  %i.vw = call i32 @llvm.umin.i32(i32 %i.vv, i32 %.11751)
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = add i64 %.87931441, %i.vx
  %i.vz = add i64 %.87931441, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.vy, i64 %i.vz)
  %i.wa = sub i64 %umax, %.87931441               ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.8793, i8 48, i64 %i.wa, i1 false), !tbaa !40
  %scevgep = getelementptr i8, ptr %.8793, i64 %i.wa
  br label %.loopexit1185

.loopexit1185:                                    ; preds = %.lr.ph1284.preheader, %bb.hd, %bb.hc
  %.10795 = phi ptr [ %.8793, %bb.hc ], [ %.8793, %bb.hd ], [ %scevgep, %.lr.ph1284.preheader ] ; 2 uses
  %.12752 = phi i32 [ %.11751, %bb.hc ], [ %i.vt, %bb.hd ], [ %i.vt, %.lr.ph1284.preheader ] ; 2 uses
  %i.wb = sext i32 %.12752 to i64
  %i.wc = getelementptr inbounds i8, ptr %.147811093, i64 %i.wb ; 3 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.he, %.loopexit1185
  %.11796 = phi ptr [ %.10795, %.loopexit1185 ], [ %i.wf, %bb.he ] ; 4 uses
  %.15782 = phi ptr [ %.147811093, %.loopexit1185 ], [ %i.wd, %bb.he ] ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.15782, i64 1 ; 2 uses
  %i.we = load i8, ptr %.15782, align 1, !tbaa !40 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.11796, i64 1
  store i8 %i.we, ptr %.11796, align 1, !tbaa !40
  %i.wg = icmp ne i8 %i.we, 0
  %i.wh = icmp ule ptr %i.wd, %i.wc
  %i.wi = select i1 %i.wg, i1 %i.wh, i1 false
  br i1 %i.wi, label %bb.he, label %bb.hf, !llvm.loop !32

bb.hf:                                            ; preds = %bb.he
  %i.wj = ptrtoint ptr %.11796 to i64
  %i.wk = ptrtoint ptr %.10795 to i64
  %.neg = sub i64 %i.wk, %i.wj
  %i.wl = trunc i64 %.neg to i32
  %i.wm = add i32 %.12752, %i.wl
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.gm, %bb.gk
  %.17819 = phi ptr [ %.11778, %bb.gm ], [ %.ptr953, %bb.gk ], [ %.ptr953, %bb.hf ]
  %.12797 = phi ptr [ %i.uo, %bb.gm ], [ %.2787, %bb.gk ], [ %.11796, %bb.hf ]
  %.16783 = phi ptr [ null, %bb.gm ], [ %i.uh, %bb.gk ], [ %i.wc, %bb.hf ]
  %.2765 = phi ptr [ null, %bb.gm ], [ %.ptr984, %bb.gk ], [ %i.wc, %bb.hf ]
  %.13753 = phi i32 [ 0, %bb.gm ], [ %i.tb, %bb.gk ], [ %i.wm, %bb.hf ]
  %.8704 = phi i8 [ %.1697, %bb.gm ], [ %.5701, %bb.gk ], [ %.7703, %bb.hf ]
  %.5694 = phi i8 [ %.1690, %bb.gm ], [ %.3692, %bb.gk ], [ %.4693, %bb.hf ]
  %i.wn = load i32, ptr %i.a, align 4, !tbaa !66
  %.not966 = icmp eq i32 %i.wn, 0
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
  %i.wo = icmp eq i32 %.14839, 0
  %i.wp = icmp slt i32 %i.gh, 1
  %or.cond42 = select i1 %i.wo, i1 %i.wp, i1 false
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
  %i.wq = and i32 %.148391108, 268435840          ; 2 uses
  %.not994 = icmp ne i32 %i.wq, 0                 ; 3 uses
  br i1 %.not994, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %.thread1095
  %i.wr = and i32 %.148391108, 268435456
  %.not995 = icmp eq i32 %i.wr, 0
  %i.ws = and i32 %.148391108, 128
  %.not996 = icmp eq i32 %i.ws, 0
  %i.wt = select i1 %.not996, i32 32, i32 43
  %i.wu = select i1 %.not995, i32 %i.wt, i32 45
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %.thread1095
  %.8851 = phi i32 [ %i.wu, %bb.hi ], [ %.78501107, %.thread1095 ] ; 3 uses
  %i.wv = ptrtoint ptr %.137981110 to i64         ; 3 uses
  %i.ww = ptrtoint ptr %.188201109 to i64
  %i.wx = ptrtoint ptr %.37661114 to i64
  %i.wy = ptrtoint ptr %.177841112 to i64
  %3 = add i64 %i.wx, %i.wv
  %4 = add i64 %i.wy, %i.ww
  %.neg1325 = sub i64 %4, %3
  %5 = call i32 @llvm.smax.i32(i32 %.147541116, i32 0)
  %.neg1327 = sext i1 %.not994 to i32
  %.neg1326 = trunc i64 %.neg1325 to i32
  %.neg1138 = sub i32 %i.gh, %5
  %.neg1140 = add i32 %.neg1138, %.neg1326
  %i.wz = add i32 %.neg1140, %.neg1327            ; 5 uses
  %i.xa = icmp slt i32 %i.wz, 1
  br i1 %i.xa, label %bb.hp, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.xb = and i32 %.148391108, 512
  %.not1003.a = icmp eq i32 %i.xb, 0
  br i1 %.not1003.a, label %bb.hl, label %bb.hp

bb.hl:                                            ; preds = %bb.hk
  %i.xc = and i32 %.148391108, 64
  %.not1004 = icmp eq i32 %i.xc, 0
  br i1 %.not1004, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.xd = sub nsw i32 0, %i.wz
  br label %bb.hp

bb.hn:                                            ; preds = %bb.hl
  br i1 %.not994, label %bb.ho, label %.thread1548

bb.ho:                                            ; preds = %bb.hn
  %i.xe = trunc i32 %.8851 to i8
  %i.xf = getelementptr inbounds i8, ptr %.188201109, i64 -1 ; 2 uses
  store i8 %i.xe, ptr %i.xf, align 1, !tbaa !40
  %i.xg = and i32 %.148391108, -268436417
  br label %.thread1548

bb.hp:                                            ; preds = %bb.hj, %bb.hk, %bb.hm
  %.14 = phi i32 [ 0, %bb.hj ], [ %i.wz, %bb.hk ], [ %i.xd, %bb.hm ] ; 3 uses
  %.not1005 = icmp eq i32 %i.wq, 0
  br i1 %.not1005, label %bb.hs, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.xh = call i32 @putc(i32 noundef %.8851, ptr noundef %0)
  %i.xi = icmp eq i32 %i.xh, -1
  br i1 %i.xi, label %.thread, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %.not1006 = icmp eq i32 %.8851, 32
  %i.xj = or i32 %.148391108, 512
  %spec.select1054 = select i1 %.not1006, i32 %.148391108, i32 %i.xj
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hp
  %.16841 = phi i32 [ %.148391108, %bb.hp ], [ %spec.select1054, %bb.hr ] ; 2 uses
  %i.xk = icmp sgt i32 %.14, 0
  br i1 %i.xk, label %.thread1548, label %.thread1121

.thread1548:                                      ; preds = %bb.hn, %bb.ho, %bb.hs
  %.168411555 = phi i32 [ %.16841, %bb.hs ], [ %i.xg, %bb.ho ], [ %.148391108, %bb.hn ] ; 2 uses
  %.1915461554 = phi ptr [ %.188201109, %bb.hs ], [ %i.xf, %bb.ho ], [ %.188201109, %bb.hn ]
  %.1415471552 = phi i32 [ %.14, %bb.hs ], [ %i.wz, %bb.ho ], [ %i.wz, %bb.hn ]
  %i.xl = and i32 %.168411555, 512
  %.not1007 = icmp eq i32 %i.xl, 0
  %i.xm = select i1 %.not1007, i32 32, i32 48     ; 2 uses
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hu
  %i.xn = add nuw nsw i32 %.06551305, 1           ; 2 uses
  %exitcond1454.not = icmp eq i32 %i.xn, %.1415471552
  br i1 %exitcond1454.not, label %.thread1121, label %bb.hu, !llvm.loop !33

bb.hu:                                            ; preds = %.thread1548, %bb.ht
  %.06551305 = phi i32 [ 0, %.thread1548 ], [ %i.xn, %bb.ht ]
  %i.xo = call i32 @putc(i32 noundef %i.xm, ptr noundef %0)
  %i.xp = icmp eq i32 %i.xo, -1
  br i1 %i.xp, label %.thread, label %bb.ht

.thread1121:                                      ; preds = %bb.ht, %bb.hs
  %.168411556 = phi i32 [ %.16841, %bb.hs ], [ %.168411555, %bb.ht ] ; 3 uses
  %.1915461553 = phi ptr [ %.188201109, %bb.hs ], [ %.1915461554, %bb.ht ] ; 2 uses
  %.15 = phi i32 [ %.14, %bb.hs ], [ %i.xm, %bb.ht ] ; 2 uses
  %i.xq = icmp sgt i32 %.147541116, 0
  %i.xr = and i32 %.168411556, 4
  %.not1008 = icmp eq i32 %i.xr, 0
  %or.cond1056 = and i1 %i.xq, %.not1008
  br i1 %or.cond1056, label %.preheader1170, label %.thread1123

bb.hv:                                            ; preds = %.preheader1170
  %i.xs = add nuw nsw i32 %.06541306, 1           ; 2 uses
  %exitcond1455.not = icmp eq i32 %i.xs, %.147541116
  br i1 %exitcond1455.not, label %.thread1123, label %.preheader1170, !llvm.loop !34

.preheader1170:                                   ; preds = %.thread1121, %bb.hv
  %.06541306 = phi i32 [ %i.xs, %bb.hv ], [ 0, %.thread1121 ]
  %i.xt = call i32 @putc(i32 noundef 48, ptr noundef %0)
  %i.xu = icmp eq i32 %i.xt, -1
  br i1 %i.xu, label %.thread, label %bb.hv

.thread1123:                                      ; preds = %bb.hv, %..thread1123_crit_edge, %.thread1121
  %.pre-phi1469 = phi i64 [ %.pre1468, %..thread1123_crit_edge ], [ %i.wv, %.thread1121 ], [ %i.wv, %bb.hv ]
  %.66951120 = phi i8 [ %.1690, %..thread1123_crit_edge ], [ %.66951119, %.thread1121 ], [ %.66951119, %bb.hv ] ; 3 uses
  %.97051118 = phi i8 [ %.1697, %..thread1123_crit_edge ], [ %.97051117, %.thread1121 ], [ %.97051117, %bb.hv ] ; 3 uses
  %.37661115 = phi ptr [ %.3766, %..thread1123_crit_edge ], [ %.37661114, %.thread1121 ], [ %.37661114, %bb.hv ]
  %.177841113 = phi ptr [ %.17784, %..thread1123_crit_edge ], [ %.177841112, %.thread1121 ], [ %.177841112, %bb.hv ] ; 2 uses
  %.17842 = phi i32 [ 0, %..thread1123_crit_edge ], [ %.168411556, %.thread1121 ], [ %.168411556, %bb.hv ]
  %.20 = phi ptr [ %.18820, %..thread1123_crit_edge ], [ %.1915461553, %.thread1121 ], [ %.1915461553, %bb.hv ] ; 2 uses
  %.15755 = phi i32 [ %.14754, %..thread1123_crit_edge ], [ %.147541116, %.thread1121 ], [ 0, %bb.hv ] ; 2 uses
  %.16 = phi i32 [ %.13, %..thread1123_crit_edge ], [ %.15, %.thread1121 ], [ %.15, %bb.hv ] ; 2 uses
  %i.xv = ptrtoint ptr %.20 to i64
  %i.xw = sub i64 %.pre-phi1469, %i.xv            ; 2 uses
  %i.xx = trunc i64 %i.xw to i32
  %i.xy = icmp sgt i32 %i.xx, 0
  br i1 %i.xy, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %.thread1123
  %i.xz = and i64 %i.xw, 2147483647
  %i.ya = call i64 @fwrite(ptr noundef %.20, i64 noundef %i.xz, i64 noundef 1, ptr noundef %0)
  %i.yb = icmp eq i64 %i.ya, 0
  br i1 %i.yb, label %.thread, label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %.thread1123
  %i.yc = and i32 %.17842, 68
  %.not1009 = icmp eq i32 %i.yc, 0
  br i1 %.not1009, label %.backedge1191, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.yd = icmp sgt i32 %.15755, 0
  br i1 %i.yd, label %.preheader1168, label %.thread1125

bb.hz:                                            ; preds = %.preheader1168
  %i.ye = add nuw nsw i32 %.06531307, 1           ; 2 uses
  %exitcond1456.not = icmp eq i32 %i.ye, %.15755
  br i1 %exitcond1456.not, label %.thread1125, label %.preheader1168, !llvm.loop !35

.preheader1168:                                   ; preds = %bb.hy, %bb.hz
  %.06531307 = phi i32 [ %i.ye, %bb.hz ], [ 0, %bb.hy ]
  %i.yf = call i32 @putc(i32 noundef 48, ptr noundef %0)
  %i.yg = icmp eq i32 %i.yf, -1
  br i1 %i.yg, label %.thread, label %bb.hz

.thread1125:                                      ; preds = %bb.hz, %bb.hy
  %i.yh = ptrtoint ptr %.37661115 to i64
  %i.yi = ptrtoint ptr %.177841113 to i64
  %i.yj = sub i64 %i.yh, %i.yi                    ; 2 uses
  %i.yk = trunc i64 %i.yj to i32
  %i.yl = icmp sgt i32 %i.yk, 0
  br i1 %i.yl, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %.thread1125
  %i.ym = and i64 %i.yj, 2147483647
  %i.yn = call i64 @fwrite(ptr noundef %.177841113, i64 noundef %i.ym, i64 noundef 1, ptr noundef %0)
  %i.yo = icmp eq i64 %i.yn, 0
  br i1 %i.yo, label %.thread, label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %.thread1125
  %i.yp = icmp slt i32 %.16, 0
  br i1 %i.yp, label %.preheader1166.preheader, label %.backedge1191

.preheader1166.preheader:                         ; preds = %bb.ib
  %i.yq = sub i32 0, %.16
  %smax = call i32 @llvm.smax.i32(i32 %i.yq, i32 1)
  br label %.preheader1166

bb.ic:                                            ; preds = %.preheader1166
  %i.yr = add nuw nsw i32 %.01308, 1              ; 2 uses
  %exitcond1457.not = icmp eq i32 %i.yr, %smax
  br i1 %exitcond1457.not, label %.backedge1191, label %.preheader1166, !llvm.loop !36

.preheader1166:                                   ; preds = %.preheader1166.preheader, %bb.ic
  %.01308 = phi i32 [ %i.yr, %bb.ic ], [ 0, %.preheader1166.preheader ]
  %i.ys = call i32 @putc(i32 noundef 32, ptr noundef %0)
  %i.yt = icmp eq i32 %i.ys, -1
  br i1 %i.yt, label %.thread, label %bb.ic

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
end_hunk_0
