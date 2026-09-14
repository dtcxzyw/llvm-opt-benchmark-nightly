Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vector_helper?download=true
inline.NumInlined: 5693
inline.NumDeleted: 634
loop-unroll.NumRuntimeUnrolled: 372
loop-unroll.NumUnrolled: 373
begin_hunk_0_@helper_vnclip_wx_h:bb.a
extract64.exit26.i.i.i:                           ; preds = %.lr.ph.split.i78.i
  %i.gy = sext i32 %i.gx to i64                   ; 2 uses
  %i.gz = and i64 %i.fs, %i.gy
  %i.ha = and i64 %i.ft, %i.gy
  %.not.i.i.i = icmp eq i64 %i.ha, 0
  %i.hb = icmp ne i64 %i.gz, 0
  %i.hc = and i1 %i.hb, %.not.i.i.i
  %i.hd = zext i1 %i.hc to i32
  br label %get_round.exit.i.i

get_round.exit.i.i:                               ; preds = %extract64.exit26.i.i.i, %.lr.ph.split.i78.i
  %.pre-phi.i.i = phi i32 [ %i.fp, %extract64.exit26.i.i.i ], [ 0, %.lr.ph.split.i78.i ]
  %.0.i.i.i = phi i32 [ %i.hd, %extract64.exit26.i.i.i ], [ 0, %.lr.ph.split.i78.i ]
  %i.he = ashr i32 %i.gx, %.pre-phi.i.i
  %i.hf = add i32 %.0.i.i.i, %i.he                ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, 32767
  br i1 %i.hg, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %get_round.exit.i.i
  store i8 1, ptr %i.fu, align 1
  br label %do_vnclip_wx_h.exit

bb.as:                                            ; preds = %get_round.exit.i.i
  %i.hh = icmp slt i32 %i.hf, -32768
  br i1 %i.hh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i8 1, ptr %i.fu, align 1
  br label %do_vnclip_wx_h.exit

bb.au:                                            ; preds = %bb.as
  %i.hi = trunc nsw i32 %i.hf to i16
  br label %do_vnclip_wx_h.exit

do_vnclip_wx_h.exit:                              ; preds = %bb.ar, %bb.at, %bb.au
  %.0.i.i = phi i16 [ 32767, %bb.ar ], [ -32768, %bb.at ], [ %i.hi, %bb.au ]
  %i.hj = getelementptr inbounds [2 x i8], ptr %0, i64 %i.gv
  store i16 %.0.i.i, ptr %i.hj, align 2
  %i.hk = add i32 %.021.i79.i, 1                  ; 2 uses
  %exitcond.not.i80.i = icmp eq i32 %i.hk, %i.b
  br i1 %exitcond.not.i80.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i78.i, !llvm.loop !12

vext_vx_rm_1.exit.i:                              ; preds = %do_vnclip_wx_h.exit17, %bb.af, %do_vnclip_wx_h.exit29, %bb.u, %do_vnclip_wx_h.exit43, %bb.i, %do_vnclip_wx_h.exit, %bb.aq
  store i32 0, ptr %i.t, align 4
  %i.hl = shl i32 %i.b, 1
  %.fr.i = freeze i32 %i.o
  %i.hm = and i32 %.fr.i, -2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.hl, i32 noundef %i.hm) #17
  br label %vext_vx_rm_2.exit

vext_vx_rm_2.exit:                                ; preds = %bb.b, %vext_vx_rm_1.exit.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vnclip_wx_w(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 10 uses
  %i.c = getelementptr i8, ptr %4, i64 4608
  %.val.i = load i64, ptr %i.c, align 16
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040
  %i.f = add nuw nsw i32 %i.e, 8
  %i.g = trunc i64 %.val.i to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 7
  %i.j = shl i32 %5, 18
  %i.k = ashr i32 %i.j, 29
  %i.l = add nsw i32 %i.k, 2
  %i.m = sub nsw i32 %i.l, %i.i
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %i.o = shl nuw nsw i32 %i.f, %i.n
  %i.p = lshr i32 %5, 14
  %i.q = and i32 %i.p, 1
  %i.r = lshr i32 %5, 16
  %i.s = and i32 %i.r, 1                          ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4              ; 9 uses
  %.not.i = icmp ult i32 %i.u, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.t, align 4
  br label %vext_vx_rm_2.exit

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4624
  %i.w = load i8, ptr %i.v, align 16
  %i.x = and i32 %5, 1024
  %.not.i77.i = icmp eq i32 %i.x, 0               ; 4 uses
  switch i8 %i.w, label %.lr.ph.i76.i [
    i8 0, label %.lr.ph.i.i
    i8 1, label %.lr.ph.i56.i
    i8 2, label %.lr.ph.i66.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.y = and i64 %2, 63                           ; 4 uses
  %i.z = icmp eq i64 %i.y, 0                      ; 2 uses
  %i.aa = add nsw i64 %i.y, -1                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4625 ; 4 uses
  br i1 %.not.i77.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.i
  %.021.us.i.i = phi i32 [ %i.ak, %bb.i ], [ %i.u, %.lr.ph.i.i ] ; 5 uses
  %i.ac = sdiv i32 %.021.us.i.i, 64
  %i.ad = srem i32 %.021.us.i.i, 64
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = zext nneg i32 %i.ad to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.ag
  %.not20.us.i.i = icmp eq i64 %i.aj, 0
  %i.ak = add nuw i32 %.021.us.i.i, 1             ; 3 uses
  br i1 %.not20.us.i.i, label %bb.h, label %get_round.exit.i.i46

get_round.exit.i.i46:                             ; preds = %.lr.ph.split.us.i.i
  %i.al = sext i32 %.021.us.i.i to i64            ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %3, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = lshr i64 %i.an, %i.aa
  %i.ap = and i64 %i.ao, 1
  %.0.i.i.i47 = select i1 %i.z, i64 0, i64 %i.ap
  %i.aq = ashr i64 %i.an, %i.y
  %i.ar = add i64 %.0.i.i.i47, %i.aq              ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 2147483647
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %get_round.exit.i.i46
  store i8 1, ptr %i.ab, align 1
  br label %do_vnclip_wx_w.exit49

bb.e:                                             ; preds = %get_round.exit.i.i46
  %i.at = icmp slt i64 %i.ar, -2147483648
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.ab, align 1
  br label %do_vnclip_wx_w.exit49

bb.g:                                             ; preds = %bb.e
  %i.au = trunc nsw i64 %i.ar to i32
  br label %do_vnclip_wx_w.exit49

do_vnclip_wx_w.exit49:                            ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i48 = phi i32 [ 2147483647, %bb.d ], [ -2147483648, %bb.f ], [ %i.au, %bb.g ]
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al
  store i32 %.0.i.i48, ptr %i.av, align 4
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.i.i
  %i.aw = shl i32 %.021.us.i.i, 2
  %i.ax = shl i32 %i.ak, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.s, i32 noundef %i.aw, i32 noundef %i.ax) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %do_vnclip_wx_w.exit49
  %exitcond23.not.i.i = icmp eq i32 %i.ak, %i.b
  br i1 %exitcond23.not.i.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !12

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %do_vnclip_wx_w.exit43
  %.021.i.i = phi i32 [ %i.bj, %do_vnclip_wx_w.exit43 ], [ %i.u, %.lr.ph.i.i ] ; 2 uses
  %i.ay = sext i32 %.021.i.i to i64               ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = lshr i64 %i.ba, %i.aa
  %i.bc = and i64 %i.bb, 1
  %.0.i.i.i41 = select i1 %i.z, i64 0, i64 %i.bc
  %i.bd = ashr i64 %i.ba, %i.y
  %i.be = add i64 %.0.i.i.i41, %i.bd              ; 3 uses
  %i.bf = icmp sgt i64 %i.be, 2147483647
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.i.i
  store i8 1, ptr %i.ab, align 1
  br label %do_vnclip_wx_w.exit43

bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.bg = icmp slt i64 %i.be, -2147483648
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.ab, align 1
  br label %do_vnclip_wx_w.exit43

bb.m:                                             ; preds = %bb.k
  %i.bh = trunc nsw i64 %i.be to i32
  br label %do_vnclip_wx_w.exit43

do_vnclip_wx_w.exit43:                            ; preds = %bb.j, %bb.l, %bb.m
  %.0.i.i42 = phi i32 [ 2147483647, %bb.j ], [ -2147483648, %bb.l ], [ %i.bh, %bb.m ]
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ay
  store i32 %.0.i.i42, ptr %i.bi, align 4
  %i.bj = add i32 %.021.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bj, %i.b
  br i1 %exitcond.not.i.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i.i, !llvm.loop !12

.lr.ph.i56.i:                                     ; preds = %bb.c
  %i.bk = trunc i64 %2 to i8
  %i.bl = and i8 %i.bk, 63                        ; 2 uses
  %i.bm = and i64 %2, 63                          ; 4 uses
  %i.bn = icmp eq i8 %i.bl, 0                     ; 2 uses
  %6 = trunc i64 %2 to i32
  %.pre.i.i30 = and i32 %6, 63                    ; 2 uses
  %i.bo = add nsw i32 %.pre.i.i30, -1
  %i.bp = zext nneg i32 %i.bo to i64              ; 2 uses
  %.not24.i.i.i32 = icmp eq i8 %i.bl, 1           ; 2 uses
  %i.bq = sub nuw nsw i32 65, %.pre.i.i30
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 -1, %i.br                      ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 4625 ; 4 uses
  br i1 %.not.i77.i, label %.lr.ph.split.us.i61.i, label %.lr.ph.split.i58.i

.lr.ph.split.us.i61.i:                            ; preds = %.lr.ph.i56.i, %bb.u
  %.021.us.i62.i = phi i32 [ %i.cc, %bb.u ], [ %i.u, %.lr.ph.i56.i ] ; 5 uses
  %i.bu = sdiv i32 %.021.us.i62.i, 64
  %i.bv = srem i32 %.021.us.i62.i, 64
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = zext nneg i32 %i.bv to i64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = and i64 %i.ca, %i.by
  %.not20.us.i63.i = icmp eq i64 %i.cb, 0
  %i.cc = add nuw i32 %.021.us.i62.i, 1           ; 3 uses
  br i1 %.not20.us.i63.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us.i61.i
  %i.cd = sext i32 %.021.us.i62.i to i64          ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8            ; 4 uses
  %i.cg = lshr i64 %i.cf, %i.bm                   ; 2 uses
  br i1 %i.bn, label %get_round.exit.i.i34, label %extract64.exit26.i.i.i31

extract64.exit26.i.i.i31:                         ; preds = %bb.n
  %i.ch = lshr i64 %i.cf, %i.bp
  %i.ci = and i64 %i.ch, 1                        ; 2 uses
  br i1 %.not24.i.i.i32, label %bb.o, label %extract64.exit28.i.i.i33

extract64.exit28.i.i.i33:                         ; preds = %extract64.exit26.i.i.i31
  %i.cj = and i64 %i.cf, %i.bs
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = zext i1 %i.ck to i64
  %i.cm = or i64 %i.cg, %i.cl
  %i.cn = and i64 %i.cm, %i.ci
  br label %get_round.exit.i.i34

bb.o:                                             ; preds = %extract64.exit26.i.i.i31
  %i.co = and i64 %i.ci, %i.cg
  br label %get_round.exit.i.i34

get_round.exit.i.i34:                             ; preds = %bb.o, %extract64.exit28.i.i.i33, %bb.n
  %.0.i.i.i35 = phi i64 [ %i.co, %bb.o ], [ %i.cn, %extract64.exit28.i.i.i33 ], [ 0, %bb.n ]
  %i.cp = ashr i64 %i.cf, %i.bm
  %i.cq = add i64 %.0.i.i.i35, %i.cp              ; 3 uses
  %i.cr = icmp sgt i64 %i.cq, 2147483647
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %get_round.exit.i.i34
  store i8 1, ptr %i.bt, align 1
  br label %do_vnclip_wx_w.exit37

bb.q:                                             ; preds = %get_round.exit.i.i34
  %i.cs = icmp slt i64 %i.cq, -2147483648
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.bt, align 1
  br label %do_vnclip_wx_w.exit37

bb.s:                                             ; preds = %bb.q
  %i.ct = trunc nsw i64 %i.cq to i32
  br label %do_vnclip_wx_w.exit37

do_vnclip_wx_w.exit37:                            ; preds = %bb.p, %bb.r, %bb.s
  %.0.i.i36 = phi i32 [ 2147483647, %bb.p ], [ -2147483648, %bb.r ], [ %i.ct, %bb.s ]
  %i.cu = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cd
  store i32 %.0.i.i36, ptr %i.cu, align 4
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.us.i61.i
  %i.cv = shl i32 %.021.us.i62.i, 2
  %i.cw = shl i32 %i.cc, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.s, i32 noundef %i.cv, i32 noundef %i.cw) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %do_vnclip_wx_w.exit37
  %exitcond23.not.i64.i = icmp eq i32 %i.cc, %i.b
  br i1 %exitcond23.not.i64.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i61.i, !llvm.loop !12

.lr.ph.split.i58.i:                               ; preds = %.lr.ph.i56.i, %do_vnclip_wx_w.exit29
  %.021.i59.i = phi i32 [ %i.dp, %do_vnclip_wx_w.exit29 ], [ %i.u, %.lr.ph.i56.i ] ; 2 uses
  %i.cx = sext i32 %.021.i59.i to i64             ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8            ; 4 uses
  %i.da = lshr i64 %i.cz, %i.bm                   ; 2 uses
  br i1 %i.bn, label %get_round.exit.i.i26, label %extract64.exit26.i.i.i25

extract64.exit26.i.i.i25:                         ; preds = %.lr.ph.split.i58.i
  %i.db = lshr i64 %i.cz, %i.bp
  %i.dc = and i64 %i.db, 1                        ; 2 uses
  br i1 %.not24.i.i.i32, label %bb.v, label %extract64.exit28.i.i.i

extract64.exit28.i.i.i:                           ; preds = %extract64.exit26.i.i.i25
  %i.dd = and i64 %i.cz, %i.bs
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = zext i1 %i.de to i64
  %i.dg = or i64 %i.da, %i.df
  %i.dh = and i64 %i.dg, %i.dc
  br label %get_round.exit.i.i26

bb.v:                                             ; preds = %extract64.exit26.i.i.i25
  %i.di = and i64 %i.dc, %i.da
  br label %get_round.exit.i.i26

get_round.exit.i.i26:                             ; preds = %bb.v, %extract64.exit28.i.i.i, %.lr.ph.split.i58.i
  %.0.i.i.i27 = phi i64 [ %i.di, %bb.v ], [ %i.dh, %extract64.exit28.i.i.i ], [ 0, %.lr.ph.split.i58.i ]
  %i.dj = ashr i64 %i.cz, %i.bm
  %i.dk = add i64 %.0.i.i.i27, %i.dj              ; 3 uses
  %i.dl = icmp sgt i64 %i.dk, 2147483647
  br i1 %i.dl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %get_round.exit.i.i26
  store i8 1, ptr %i.bt, align 1
  br label %do_vnclip_wx_w.exit29

bb.x:                                             ; preds = %get_round.exit.i.i26
  %i.dm = icmp slt i64 %i.dk, -2147483648
  br i1 %i.dm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.bt, align 1
  br label %do_vnclip_wx_w.exit29

bb.z:                                             ; preds = %bb.x
  %i.dn = trunc nsw i64 %i.dk to i32
  br label %do_vnclip_wx_w.exit29

do_vnclip_wx_w.exit29:                            ; preds = %bb.w, %bb.y, %bb.z
  %.0.i.i28 = phi i32 [ 2147483647, %bb.w ], [ -2147483648, %bb.y ], [ %i.dn, %bb.z ]
  %i.do = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cx
  store i32 %.0.i.i28, ptr %i.do, align 4
  %i.dp = add i32 %.021.i59.i, 1                  ; 2 uses
  %exitcond.not.i60.i = icmp eq i32 %i.dp, %i.b
  br i1 %exitcond.not.i60.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i58.i, !llvm.loop !12

.lr.ph.i66.i:                                     ; preds = %bb.c
  %i.dq = and i64 %2, 63                          ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 4625 ; 4 uses
  br i1 %.not.i77.i, label %.lr.ph.split.us.i71.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.af
  %.021.us.i72.i = phi i32 [ %i.ea, %bb.af ], [ %i.u, %.lr.ph.i66.i ] ; 5 uses
  %i.ds = sdiv i32 %.021.us.i72.i, 64
  %i.dt = srem i32 %.021.us.i72.i, 64
  %i.du = sext i32 %i.ds to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = zext nneg i32 %i.dt to i64
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = and i64 %i.dy, %i.dw
  %.not20.us.i73.i = icmp eq i64 %i.dz, 0
  %i.ea = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.ae, label %get_round.exit.i.i20

get_round.exit.i.i20:                             ; preds = %.lr.ph.split.us.i71.i
  %i.eb = sext i32 %.021.us.i72.i to i64          ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %3, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = ashr i64 %i.ed, %i.dq                   ; 3 uses
  %i.ef = icmp sgt i64 %i.ee, 2147483647
  br i1 %i.ef, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %get_round.exit.i.i20
  store i8 1, ptr %i.dr, align 1
  br label %do_vnclip_wx_w.exit23

bb.ab:                                            ; preds = %get_round.exit.i.i20
  %i.eg = icmp slt i64 %i.ee, -2147483648
  br i1 %i.eg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.dr, align 1
  br label %do_vnclip_wx_w.exit23

bb.ad:                                            ; preds = %bb.ab
  %i.eh = trunc nsw i64 %i.ee to i32
  br label %do_vnclip_wx_w.exit23

do_vnclip_wx_w.exit23:                            ; preds = %bb.aa, %bb.ac, %bb.ad
  %.0.i.i22 = phi i32 [ 2147483647, %bb.aa ], [ -2147483648, %bb.ac ], [ %i.eh, %bb.ad ]
  %i.ei = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eb
  store i32 %.0.i.i22, ptr %i.ei, align 4
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.split.us.i71.i
  %i.ej = shl i32 %.021.us.i72.i, 2
  %i.ek = shl i32 %i.ea, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.s, i32 noundef %i.ej, i32 noundef %i.ek) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %do_vnclip_wx_w.exit23
  %exitcond23.not.i74.i = icmp eq i32 %i.ea, %i.b
end_hunk_0
begin_hunk_1_@helper_vnclipu_wx_h:bb.a

do_vnclipu_wx_h.exit11:                           ; preds = %bb.ah, %bb.ai
  %.0.i.i10 = phi i16 [ -1, %bb.ah ], [ %i.ji, %bb.ai ]
  %i.jj = getelementptr inbounds [2 x i8], ptr %0, i64 %i.iw
  store i16 %.0.i.i10, ptr %i.jj, align 2
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.split.us.i81.i
  %i.jk = shl i32 %.021.us.i82.i, 1
  %i.jl = shl i32 %i.iv, 1
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.s, i32 noundef %i.jk, i32 noundef %i.jl) #17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %do_vnclipu_wx_h.exit11
  %exitcond23.not.i84.i = icmp eq i32 %i.iv, %i.b
  br i1 %exitcond23.not.i84.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i81.i, !llvm.loop !12

.lr.ph.split.i78.i:                               ; preds = %.lr.ph.i76.i, %do_vnclipu_wx_h.exit
  %.021.i79.i = phi i32 [ %i.ka, %do_vnclipu_wx_h.exit ], [ %i.u, %.lr.ph.i76.i ] ; 2 uses
  %i.jm = sext i32 %.021.i79.i to i64             ; 2 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %3, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4            ; 2 uses
  br i1 %i.if, label %get_round.exit.i.i, label %extract64.exit26.i.i.i

extract64.exit26.i.i.i:                           ; preds = %.lr.ph.split.i78.i
  %i.jp = zext i32 %i.jo to i64                   ; 2 uses
  %i.jq = and i64 %i.ik, %i.jp
  %i.jr = and i64 %i.il, %i.jp
  %.not.i.i.i = icmp eq i64 %i.jr, 0
  %i.js = icmp ne i64 %i.jq, 0
  %i.jt = and i1 %i.js, %.not.i.i.i
  %i.ju = zext i1 %i.jt to i32
  br label %get_round.exit.i.i

get_round.exit.i.i:                               ; preds = %extract64.exit26.i.i.i, %.lr.ph.split.i78.i
  %.pre-phi.i.i = phi i32 [ %i.ih, %extract64.exit26.i.i.i ], [ 0, %.lr.ph.split.i78.i ]
  %.0.i.i.i = phi i32 [ %i.ju, %extract64.exit26.i.i.i ], [ 0, %.lr.ph.split.i78.i ]
  %i.jv = lshr i32 %i.jo, %.pre-phi.i.i
  %i.jw = add i32 %.0.i.i.i, %i.jv                ; 2 uses
  %i.jx = icmp ugt i32 %i.jw, 65535
  br i1 %i.jx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %get_round.exit.i.i
  store i8 1, ptr %i.im, align 1
  br label %do_vnclipu_wx_h.exit

bb.am:                                            ; preds = %get_round.exit.i.i
  %i.jy = trunc nuw i32 %i.jw to i16
  br label %do_vnclipu_wx_h.exit

do_vnclipu_wx_h.exit:                             ; preds = %bb.al, %bb.am
  %.0.i.i = phi i16 [ -1, %bb.al ], [ %i.jy, %bb.am ]
  %i.jz = getelementptr inbounds [2 x i8], ptr %0, i64 %i.jm
  store i16 %.0.i.i, ptr %i.jz, align 2
  %i.ka = add i32 %.021.i79.i, 1                  ; 2 uses
  %exitcond.not.i80.i = icmp eq i32 %i.ka, %i.b
  br i1 %exitcond.not.i80.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i78.i, !llvm.loop !12

vext_vx_rm_1.exit.i:                              ; preds = %.lr.ph.split.i68.i.prol.loopexit, %do_vnclipu_wx_h.exit17.1, %bb.ab, %do_vnclipu_wx_h.exit29, %bb.q, %do_vnclipu_wx_h.exit43, %bb.i, %do_vnclipu_wx_h.exit, %bb.ak, %middle.block, %middle.block162
  store i32 0, ptr %i.t, align 4
  %i.kb = shl i32 %i.b, 1
  %.fr.i = freeze i32 %i.o
  %i.kc = and i32 %.fr.i, -2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.kb, i32 noundef %i.kc) #17
  br label %vext_vx_rm_2.exit

vext_vx_rm_2.exit:                                ; preds = %bb.b, %vext_vx_rm_1.exit.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vnclipu_wx_w(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 12 uses
  %i.c = getelementptr i8, ptr %4, i64 4608
  %.val.i = load i64, ptr %i.c, align 16
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040
  %i.f = add nuw nsw i32 %i.e, 8
  %i.g = trunc i64 %.val.i to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 7
  %i.j = shl i32 %5, 18
  %i.k = ashr i32 %i.j, 29
  %i.l = add nsw i32 %i.k, 2
  %i.m = sub nsw i32 %i.l, %i.i
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %i.o = shl nuw nsw i32 %i.f, %i.n
  %i.p = lshr i32 %5, 14
  %i.q = and i32 %i.p, 1
  %i.r = lshr i32 %5, 16
  %i.s = and i32 %i.r, 1                          ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4              ; 13 uses
  %.not.i = icmp ult i32 %i.u, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.t, align 4
  br label %vext_vx_rm_2.exit

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4624
  %i.w = load i8, ptr %i.v, align 16
  %i.x = and i32 %5, 1024
  %.not.i77.i = icmp eq i32 %i.x, 0               ; 4 uses
  switch i8 %i.w, label %.lr.ph.i76.i [
    i8 0, label %.lr.ph.i.i
    i8 1, label %.lr.ph.i56.i
    i8 2, label %.lr.ph.i66.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.y = and i64 %2, 63                           ; 4 uses
  %i.z = icmp eq i64 %i.y, 0                      ; 2 uses
  %i.aa = add nsw i64 %i.y, -1                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4625 ; 2 uses
  br i1 %.not.i77.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.g
  %.021.us.i.i = phi i32 [ %i.ak, %bb.g ], [ %i.u, %.lr.ph.i.i ] ; 5 uses
  %i.ac = sdiv i32 %.021.us.i.i, 64
  %i.ad = srem i32 %.021.us.i.i, 64
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = zext nneg i32 %i.ad to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.ag
  %.not20.us.i.i = icmp eq i64 %i.aj, 0
  %i.ak = add nuw i32 %.021.us.i.i, 1             ; 3 uses
  br i1 %.not20.us.i.i, label %bb.f, label %get_round.exit.i.i46

get_round.exit.i.i46:                             ; preds = %.lr.ph.split.us.i.i
  %i.al = sext i32 %.021.us.i.i to i64            ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %3, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = lshr i64 %i.an, %i.y
  %i.ap = lshr i64 %i.an, %i.aa
  %i.aq = and i64 %i.ap, 1
  %.0.i.i.i47 = select i1 %i.z, i64 0, i64 %i.aq
  %i.ar = add i64 %.0.i.i.i47, %i.ao              ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 4294967295
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %get_round.exit.i.i46
  store i8 1, ptr %i.ab, align 1
  br label %do_vnclipu_wx_w.exit49

bb.e:                                             ; preds = %get_round.exit.i.i46
  %i.at = trunc nuw i64 %i.ar to i32
  br label %do_vnclipu_wx_w.exit49

do_vnclipu_wx_w.exit49:                           ; preds = %bb.d, %bb.e
  %.0.i.i48 = phi i32 [ -1, %bb.d ], [ %i.at, %bb.e ]
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al
  store i32 %.0.i.i48, ptr %i.au, align 4
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us.i.i
  %i.av = shl i32 %.021.us.i.i, 2
  %i.aw = shl i32 %i.ak, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.s, i32 noundef %i.av, i32 noundef %i.aw) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %do_vnclipu_wx_w.exit49
  %exitcond23.not.i.i = icmp eq i32 %i.ak, %i.b
  br i1 %exitcond23.not.i.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !12

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %do_vnclipu_wx_w.exit43
  %.021.i.i = phi i32 [ %i.bh, %do_vnclipu_wx_w.exit43 ], [ %i.u, %.lr.ph.i.i ] ; 2 uses
  %i.ax = sext i32 %.021.i.i to i64               ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = lshr i64 %i.az, %i.y
  %i.bb = lshr i64 %i.az, %i.aa
  %i.bc = and i64 %i.bb, 1
  %.0.i.i.i41 = select i1 %i.z, i64 0, i64 %i.bc
  %i.bd = add i64 %.0.i.i.i41, %i.ba              ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 4294967295
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.i.i
  store i8 1, ptr %i.ab, align 1
  br label %do_vnclipu_wx_w.exit43

bb.i:                                             ; preds = %.lr.ph.split.i.i
  %i.bf = trunc nuw i64 %i.bd to i32
  br label %do_vnclipu_wx_w.exit43

do_vnclipu_wx_w.exit43:                           ; preds = %bb.h, %bb.i
  %.0.i.i42 = phi i32 [ -1, %bb.h ], [ %i.bf, %bb.i ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ax
  store i32 %.0.i.i42, ptr %i.bg, align 4
  %i.bh = add i32 %.021.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bh, %i.b
  br i1 %exitcond.not.i.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i.i, !llvm.loop !12

.lr.ph.i56.i:                                     ; preds = %bb.c
  %i.bi = trunc i64 %2 to i8
  %i.bj = and i8 %i.bi, 63                        ; 2 uses
  %i.bk = and i64 %2, 63                          ; 2 uses
  %i.bl = icmp eq i8 %i.bj, 0                     ; 2 uses
  %6 = trunc i64 %2 to i32
  %.pre.i.i30 = and i32 %6, 63                    ; 2 uses
  %i.bm = add nsw i32 %.pre.i.i30, -1
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %.not24.i.i.i32 = icmp eq i8 %i.bj, 1           ; 2 uses
  %i.bo = sub nuw nsw i32 65, %.pre.i.i30
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = lshr i64 -1, %i.bp                      ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4625 ; 2 uses
  br i1 %.not.i77.i, label %.lr.ph.split.us.i61.i, label %.lr.ph.split.i58.i

.lr.ph.split.us.i61.i:                            ; preds = %.lr.ph.i56.i, %bb.o
  %.021.us.i62.i = phi i32 [ %i.ca, %bb.o ], [ %i.u, %.lr.ph.i56.i ] ; 5 uses
  %i.bs = sdiv i32 %.021.us.i62.i, 64
  %i.bt = srem i32 %.021.us.i62.i, 64
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = zext nneg i32 %i.bt to i64
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = and i64 %i.by, %i.bw
  %.not20.us.i63.i = icmp eq i64 %i.bz, 0
  %i.ca = add nuw i32 %.021.us.i62.i, 1           ; 3 uses
  br i1 %.not20.us.i63.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i61.i
  %i.cb = sext i32 %.021.us.i62.i to i64          ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8            ; 3 uses
  %i.ce = lshr i64 %i.cd, %i.bk                   ; 3 uses
  br i1 %i.bl, label %get_round.exit.i.i34, label %extract64.exit26.i.i.i31

extract64.exit26.i.i.i31:                         ; preds = %bb.j
  %i.cf = lshr i64 %i.cd, %i.bn
  %i.cg = and i64 %i.cf, 1                        ; 2 uses
  br i1 %.not24.i.i.i32, label %bb.k, label %extract64.exit28.i.i.i33

extract64.exit28.i.i.i33:                         ; preds = %extract64.exit26.i.i.i31
  %i.ch = and i64 %i.cd, %i.bq
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = zext i1 %i.ci to i64
  %i.ck = or i64 %i.ce, %i.cj
  %i.cl = and i64 %i.ck, %i.cg
  br label %get_round.exit.i.i34

bb.k:                                             ; preds = %extract64.exit26.i.i.i31
  %i.cm = and i64 %i.cg, %i.ce
  br label %get_round.exit.i.i34

get_round.exit.i.i34:                             ; preds = %bb.k, %extract64.exit28.i.i.i33, %bb.j
  %.0.i.i.i35 = phi i64 [ %i.cm, %bb.k ], [ %i.cl, %extract64.exit28.i.i.i33 ], [ 0, %bb.j ]
  %i.cn = add i64 %.0.i.i.i35, %i.ce              ; 2 uses
  %i.co = icmp ugt i64 %i.cn, 4294967295
  br i1 %i.co, label %bb.l, label %bb.m

bb.l:                                             ; preds = %get_round.exit.i.i34
  store i8 1, ptr %i.br, align 1
  br label %do_vnclipu_wx_w.exit37

bb.m:                                             ; preds = %get_round.exit.i.i34
  %i.cp = trunc nuw i64 %i.cn to i32
  br label %do_vnclipu_wx_w.exit37

do_vnclipu_wx_w.exit37:                           ; preds = %bb.l, %bb.m
  %.0.i.i36 = phi i32 [ -1, %bb.l ], [ %i.cp, %bb.m ]
  %i.cq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cb
  store i32 %.0.i.i36, ptr %i.cq, align 4
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us.i61.i
  %i.cr = shl i32 %.021.us.i62.i, 2
  %i.cs = shl i32 %i.ca, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.s, i32 noundef %i.cr, i32 noundef %i.cs) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %do_vnclipu_wx_w.exit37
  %exitcond23.not.i64.i = icmp eq i32 %i.ca, %i.b
  br i1 %exitcond23.not.i64.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i61.i, !llvm.loop !12

.lr.ph.split.i58.i:                               ; preds = %.lr.ph.i56.i, %do_vnclipu_wx_w.exit29
  %.021.i59.i = phi i32 [ %i.dj, %do_vnclipu_wx_w.exit29 ], [ %i.u, %.lr.ph.i56.i ] ; 2 uses
  %i.ct = sext i32 %.021.i59.i to i64             ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8            ; 3 uses
  %i.cw = lshr i64 %i.cv, %i.bk                   ; 3 uses
  br i1 %i.bl, label %get_round.exit.i.i26, label %extract64.exit26.i.i.i25

extract64.exit26.i.i.i25:                         ; preds = %.lr.ph.split.i58.i
  %i.cx = lshr i64 %i.cv, %i.bn
  %i.cy = and i64 %i.cx, 1                        ; 2 uses
  br i1 %.not24.i.i.i32, label %bb.p, label %extract64.exit28.i.i.i

extract64.exit28.i.i.i:                           ; preds = %extract64.exit26.i.i.i25
  %i.cz = and i64 %i.cv, %i.bq
  %i.da = icmp ne i64 %i.cz, 0
  %i.db = zext i1 %i.da to i64
  %i.dc = or i64 %i.cw, %i.db
  %i.dd = and i64 %i.dc, %i.cy
  br label %get_round.exit.i.i26

bb.p:                                             ; preds = %extract64.exit26.i.i.i25
  %i.de = and i64 %i.cy, %i.cw
  br label %get_round.exit.i.i26

get_round.exit.i.i26:                             ; preds = %bb.p, %extract64.exit28.i.i.i, %.lr.ph.split.i58.i
  %.0.i.i.i27 = phi i64 [ %i.de, %bb.p ], [ %i.dd, %extract64.exit28.i.i.i ], [ 0, %.lr.ph.split.i58.i ]
  %i.df = add i64 %.0.i.i.i27, %i.cw              ; 2 uses
  %i.dg = icmp ugt i64 %i.df, 4294967295
  br i1 %i.dg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %get_round.exit.i.i26
  store i8 1, ptr %i.br, align 1
  br label %do_vnclipu_wx_w.exit29

bb.r:                                             ; preds = %get_round.exit.i.i26
  %i.dh = trunc nuw i64 %i.df to i32
  br label %do_vnclipu_wx_w.exit29

do_vnclipu_wx_w.exit29:                           ; preds = %bb.q, %bb.r
  %.0.i.i28 = phi i32 [ -1, %bb.q ], [ %i.dh, %bb.r ]
  %i.di = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ct
  store i32 %.0.i.i28, ptr %i.di, align 4
  %i.dj = add i32 %.021.i59.i, 1                  ; 2 uses
  %exitcond.not.i60.i = icmp eq i32 %i.dj, %i.b
  br i1 %exitcond.not.i60.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i58.i, !llvm.loop !12

.lr.ph.i66.i:                                     ; preds = %bb.c
  %i.dk = and i64 %2, 63                          ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 4625 ; 4 uses
  br i1 %.not.i77.i, label %.lr.ph.split.us.i71.i, label %.lr.ph.split.i68.i.preheader

.lr.ph.split.i68.i.preheader:                     ; preds = %.lr.ph.i66.i
  %i.dm = sub i32 %i.b, %i.u
  %.neg = add i32 %i.u, 1
  %xtraiter = and i32 %i.dm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i68.i.prol.loopexit, label %.lr.ph.split.i68.i.prol

.lr.ph.split.i68.i.prol:                          ; preds = %.lr.ph.split.i68.i.preheader
  %i.dn = sext i32 %i.u to i64                    ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = lshr i64 %i.dp, %i.dk                   ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, 4294967295
  br i1 %i.dr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.i68.i.prol
  %i.ds = trunc nuw i64 %i.dq to i32
  br label %do_vnclipu_wx_w.exit17.prol

bb.t:                                             ; preds = %.lr.ph.split.i68.i.prol
  store i8 1, ptr %i.dl, align 1
  br label %do_vnclipu_wx_w.exit17.prol

do_vnclipu_wx_w.exit17.prol:                      ; preds = %bb.t, %bb.s
  %.0.i.i16.prol = phi i32 [ -1, %bb.t ], [ %i.ds, %bb.s ]
  %i.dt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dn
  store i32 %.0.i.i16.prol, ptr %i.dt, align 4
  %i.du = add i32 %i.u, 1
  br label %.lr.ph.split.i68.i.prol.loopexit

.lr.ph.split.i68.i.prol.loopexit:                 ; preds = %do_vnclipu_wx_w.exit17.prol, %.lr.ph.split.i68.i.preheader
  %.021.i69.i.unr = phi i32 [ %i.u, %.lr.ph.split.i68.i.preheader ], [ %i.du, %do_vnclipu_wx_w.exit17.prol ]
  %i.dv = icmp eq i32 %i.b, %.neg
  br i1 %i.dv, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.x
  %.021.us.i72.i = phi i32 [ %i.ee, %bb.x ], [ %i.u, %.lr.ph.i66.i ] ; 5 uses
  %i.dw = sdiv i32 %.021.us.i72.i, 64
  %i.dx = srem i32 %.021.us.i72.i, 64
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = zext nneg i32 %i.dx to i64
  %i.ec = shl nuw i64 1, %i.eb
  %i.ed = and i64 %i.ec, %i.ea
  %.not20.us.i73.i = icmp eq i64 %i.ed, 0
  %i.ee = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.w, label %get_round.exit.i.i20

get_round.exit.i.i20:                             ; preds = %.lr.ph.split.us.i71.i
  %i.ef = sext i32 %.021.us.i72.i to i64          ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = lshr i64 %i.eh, %i.dk                   ; 2 uses
  %i.ej = icmp ugt i64 %i.ei, 4294967295
  br i1 %i.ej, label %bb.u, label %bb.v

bb.u:                                             ; preds = %get_round.exit.i.i20
  store i8 1, ptr %i.dl, align 1
  br label %do_vnclipu_wx_w.exit23

bb.v:                                             ; preds = %get_round.exit.i.i20
  %i.ek = trunc nuw i64 %i.ei to i32
  br label %do_vnclipu_wx_w.exit23

do_vnclipu_wx_w.exit23:                           ; preds = %bb.u, %bb.v
  %.0.i.i22 = phi i32 [ -1, %bb.u ], [ %i.ek, %bb.v ]
  %i.el = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ef
  store i32 %.0.i.i22, ptr %i.el, align 4
  br label %bb.x
end_hunk_1
