Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_cparse?download=true
inline.NumInlined: 196
inline.NumDeleted: 37
begin_hunk_0_@cp_decl_struct:bb.a
  %i.ed = phi i32 [ %i.bu, %bb.o ], [ %i.du, %cp_expr_sub.exit ]
  %.us-phi = phi i32 [ %i.x, %bb.o ], [ %i.cw, %cp_expr_sub.exit ] ; 2 uses
  %.us-phi112 = phi i32 [ %.4.us, %bb.o ], [ 0, %cp_expr_sub.exit ]
  %.not.i82 = icmp eq i32 %i.ed, 59
  br i1 %.not.i82, label %cp_check.exit, label %bb.x

bb.x:                                             ; preds = %.split111.us
  call fastcc void @cp_err_token(ptr noundef nonnull %0, i32 noundef 59) #15
  unreachable

cp_check.exit:                                    ; preds = %.split111.us
  %i.ee = call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ef = load i32, ptr %i.e, align 4, !tbaa !52
  %.not64 = icmp eq i32 %i.ef, 125
  br i1 %.not64, label %cp_check.exit84, label %bb.b, !llvm.loop !166

cp_check.exit84:                                  ; preds = %cp_check.exit, %cp_opt.exit
  %.058.lcssa = phi i32 [ %i.d, %cp_opt.exit ], [ %.us-phi, %cp_check.exit ]
  %i.eg = call fastcc i32 @cp_next(ptr noundef nonnull %0) ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !34
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !59
  %i.ek = zext i32 %.058.lcssa to i64
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i16 0, ptr %i.em, align 8, !tbaa !66
  call fastcc void @cp_decl_attributes(ptr noundef nonnull %0, ptr noundef %1)
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !83 ; 2 uses
  %i.ep = lshr i32 %i.eo, 16
  %i.eq = and i32 %i.ep, 15                       ; 2 uses
  %i.er = load ptr, ptr %i.eh, align 8, !tbaa !34
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !59
  %i.et = zext i32 %i.d to i64
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.et ; 4 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !58 ; 2 uses
  %.0112.in.in156.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.0112.in157.i = load i16, ptr %.0112.in.in156.i, align 8, !tbaa !66 ; 2 uses
  %.not158.i = icmp eq i16 %.0112.in157.i, 0
  br i1 %.not158.i, label %cp_struct_layout.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %cp_check.exit84
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 127
  br label %bb.y

bb.y:                                             ; preds = %bb.as, %.lr.ph.i
  %.0112.in163.i = phi i16 [ %.0112.in157.i, %.lr.ph.i ], [ %.0112.in.i, %bb.as ]
  %.0113162.i = phi i32 [ %i.ev, %.lr.ph.i ], [ %.1114.i, %bb.as ] ; 4 uses
  %.0115161.i = phi i32 [ %i.eq, %.lr.ph.i ], [ %.2.i, %bb.as ] ; 3 uses
  %.0117160.i = phi i32 [ 0, %.lr.ph.i ], [ %.2119.i, %bb.as ] ; 3 uses
  %.0120159.i = phi i32 [ 0, %.lr.ph.i ], [ %.4.i, %bb.as ] ; 7 uses
  %i.ey = load ptr, ptr %i.eh, align 8, !tbaa !34 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !59
  %i.fa = zext i16 %.0112.in163.i to i64
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %i.fa ; 8 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 4 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !64 ; 6 uses
  %i.fe = load i32, ptr %i.fb, align 8, !tbaa !58 ; 2 uses
  %.mask.i = and i32 %i.fe, -268435456
  %i.ff = icmp eq i32 %.mask.i, -1879048192
  br i1 %i.ff, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fg = and i32 %i.fe, -251723776
  %i.fh = icmp eq i32 %i.fg, -2147287040
  %i.fi = icmp ne i32 %i.fd, 0
  %or.cond.i85 = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %or.cond.i85, label %bb.aa, label %bb.as

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.fj = load i32, ptr %i.fb, align 8, !tbaa !58
  %i.fk = and i32 %i.fj, 65535
  %i.fl = call i32 @lj_ctype_info(ptr noundef nonnull %i.ey, i32 noundef %i.fk, ptr noundef nonnull %i.a) #14 ; 5 uses
  %i.fm = load i32, ptr %i.a, align 4, !tbaa !35  ; 4 uses
  %i.fn = shl i32 %i.fm, 3                        ; 2 uses
  %i.fo = and i32 %i.fl, 51380224
  %i.fp = or i32 %i.fo, %.0113162.i
  %i.fq = icmp ult i32 %i.fm, 536870912
  %i.fr = xor i32 %.0120159.i, -1
  %i.fs = icmp ule i32 %i.fn, %i.fr
  %or.cond139.not151.i = select i1 %i.fq, i1 %i.fs, i1 false
  %i.ft = and i32 %i.fl, 1048576
  %.not128.i = icmp eq i32 %i.ft, 0
  %or.cond140.i = select i1 %or.cond139.not151.i, i1 %.not128.i, i1 false
  br i1 %or.cond140.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = icmp eq i32 %i.fm, -1
  %.mask129.i = and i32 %i.fl, -268435456
  %i.fv = icmp eq i32 %.mask129.i, 805306368
  %or.cond141.i = select i1 %i.fu, i1 %i.fv, i1 false
  %i.fw = and i32 %.0113162.i, 8388608
  %.not130.i = icmp eq i32 %i.fw, 0
  %or.cond142.i = select i1 %or.cond141.i, i1 %.not130.i, i1 false
  br i1 %or.cond142.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @cp_err(ptr noundef nonnull %0, i32 noundef 3180) #15
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i32 0, ptr %i.a, align 4, !tbaa !35
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %i.fx = phi i32 [ 0, %bb.ad ], [ %i.fm, %bb.aa ]
  %.0.i87 = phi i32 [ 0, %bb.ad ], [ %i.fn, %bb.aa ] ; 7 uses
  %i.fy = lshr i32 %i.fl, 16
  %i.fz = and i32 %i.fy, 15                       ; 2 uses
  %i.ga = or i32 %i.fd, %i.eo
  %i.gb = and i32 %i.ga, 2
  %.not131.i = icmp eq i32 %i.gb, 0               ; 2 uses
  br i1 %.not131.i, label %bb.af, label %._crit_edge167.i

._crit_edge167.i:                                 ; preds = %bb.ae
  %.pre.i = lshr i32 %i.fd, 16
  %.pre168.i = and i32 %.pre.i, 15
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.gc = and i32 %i.fd, 1
  %.not132.i = icmp eq i32 %i.gc, 0
  br i1 %.not132.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gd = lshr i32 %i.fd, 16
  %i.ge = and i32 %i.gd, 15
  %spec.select175.i = call i32 @llvm.umax.i32(i32 %i.ge, i32 %i.fz)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge167.i
  %.0110.i = phi i32 [ %i.fz, %bb.af ], [ %spec.select175.i, %bb.ag ], [ %.pre168.i, %._crit_edge167.i ]
  %i.gf = load i8, ptr %i.ex, align 1, !tbaa !48
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !17
  %i.gj = zext i8 %i.gi to i32
  %spec.select.i = call i32 @llvm.umin.i32(i32 %.0110.i, i32 %i.gj) ; 3 uses
  %i.gk = load i32, ptr %i.fb, align 8, !tbaa !58 ; 4 uses
  %i.gl = lshr i32 %i.gk, 16
  %i.gm = and i32 %i.gl, 127                      ; 7 uses
  %i.gn = icmp ne i32 %i.gm, 0                    ; 2 uses
  %i.go = call i32 @llvm.umax.i32(i32 %spec.select.i, i32 %.0115161.i)
  %.1116.i = select i1 %i.gn, i32 %i.go, i32 %.0115161.i
  %i.gp = shl nuw nsw i32 8, %spec.select.i       ; 5 uses
  %i.gq = add nsw i32 %i.gp, -1                   ; 4 uses
  %i.gr = icmp ne i32 %i.gm, 127
  %.mask133.i = and i32 %i.gk, -268435456
  %i.gs = icmp eq i32 %.mask133.i, -1879048192    ; 2 uses
  %or.cond148.i = and i1 %i.gs, %i.gr
  br i1 %or.cond148.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gt = add i32 %i.gq, %.0120159.i
  %i.gu = sub nsw i32 0, %i.gp
  %i.gv = and i32 %i.gt, %i.gu                    ; 3 uses
  %i.gw = lshr exact i32 %i.gv, 3
  store i32 %i.gw, ptr %i.fc, align 4, !tbaa !64
  br i1 %i.gs, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.gx = and i32 %i.gk, -1878982657
  %i.gy = shl nuw nsw i32 %spec.select.i, 16
  %i.gz = or disjoint i32 %i.gy, %i.gx
  store i32 %i.gz, ptr %i.fb, align 8, !tbaa !58
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ah
  %i.ha = and i32 %i.fd, 1
  %.not134.i = icmp eq i32 %i.ha, 0
  %or.cond143.i = select i1 %i.gn, i1 %.not134.i, i1 false
  br i1 %or.cond143.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  br i1 %.not131.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.hb = and i32 %i.gq, %.0120159.i
  %i.hc = add nuw nsw i32 %i.hb, %i.gm
  %i.hd = icmp ugt i32 %i.hc, %.0.i87
  br i1 %i.hd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.he = add i32 %i.gq, %.0120159.i
  %i.hf = sub nsw i32 0, %i.gp
  %i.hg = and i32 %i.he, %i.hf
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.1121.i = phi i32 [ %i.hg, %bb.an ], [ %.0120159.i, %bb.al ], [ %.0120159.i, %bb.am ] ; 6 uses
  %i.hh = icmp eq i32 %i.gm, %.0.i87
  %i.hi = and i32 %.1121.i, %i.gq
  %i.hj = icmp eq i32 %i.hi, 0
  %or.cond145.i = select i1 %i.hh, i1 %i.hj, i1 false
  br i1 %or.cond145.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hk = and i32 %i.gk, 65535
  %i.hl = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fx, i1 true)
  %i.hm = shl nuw nsw i32 %i.hl, 16
  %i.hn = or disjoint i32 %i.hk, %i.hm
  %i.ho = xor i32 %i.hn, -1877016576
  store i32 %i.ho, ptr %i.fb, align 8, !tbaa !58
  %i.hp = lshr i32 %.1121.i, 3
  store i32 %i.hp, ptr %i.fc, align 4, !tbaa !64
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %.not135.i = icmp samesign ugt i32 %i.gm, %i.gp
  %i.hq = call i32 @llvm.umin.i32(i32 %.0.i87, i32 %i.gp)
  %.1.i = select i1 %.not135.i, i32 %.0.i87, i32 %i.hq ; 3 uses
  %i.hr = and i32 %i.fl, 192937984
  %i.hs = shl i32 %.1.i, 13
  %i.ht = shl nuw nsw i32 %i.gm, 8
  %i.hu = add i32 %.1.i, -1
  %i.hv = and i32 %.1121.i, %i.hu
  %i.hw = or disjoint i32 %i.hr, %i.ht
  %i.hx = or disjoint i32 %i.hw, -1610612736
  %i.hy = add i32 %i.hx, %i.hs
  %i.hz = add i32 %i.hy, %i.hv
  store i32 %i.hz, ptr %i.fb, align 8, !tbaa !58
  %i.ia = sub i32 0, %.1.i
  %i.ib = and i32 %.1121.i, %i.ia
  %i.ic = lshr exact i32 %i.ib, 3
  store i32 %i.ic, ptr %i.fc, align 4, !tbaa !64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.aj, %bb.ai
  %.2122.i = phi i32 [ %i.gv, %bb.aj ], [ %i.gv, %bb.ai ], [ %.1121.i, %bb.ap ], [ %.1121.i, %bb.aq ]
  %.0109.i = phi i32 [ %.0.i87, %bb.aj ], [ %.0.i87, %bb.ai ], [ %.0.i87, %bb.ap ], [ %i.gm, %bb.aq ] ; 2 uses
  %i.id = and i32 %.0113162.i, 8388608
  %.not137.i = icmp eq i32 %i.id, 0               ; 2 uses
  %spec.select147.i = call i32 @llvm.umax.i32(i32 %.0109.i, i32 %.0117160.i)
  %i.ie = select i1 %.not137.i, i32 %.0109.i, i32 0
  %.3.i = add i32 %i.ie, %.2122.i
  %.1118.i = select i1 %.not137.i, i32 %.0117160.i, i32 %spec.select147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.z
  %.4.i = phi i32 [ %.3.i, %bb.ar ], [ %.0120159.i, %bb.z ] ; 2 uses
  %.2119.i = phi i32 [ %.1118.i, %bb.ar ], [ %.0117160.i, %bb.z ] ; 2 uses
  %.2.i = phi i32 [ %.1116.i, %bb.ar ], [ %.0115161.i, %bb.z ] ; 2 uses
  %.1114.i = phi i32 [ %i.fp, %bb.ar ], [ %.0113162.i, %bb.z ] ; 2 uses
  %.0112.in.in.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.0112.in.i = load i16, ptr %.0112.in.in.i, align 8, !tbaa !66 ; 2 uses
  %.not.i86 = icmp eq i16 %.0112.in.i, 0
  br i1 %.not.i86, label %cp_struct_layout.exit, label %bb.y, !llvm.loop !167

cp_struct_layout.exit:                            ; preds = %bb.as, %cp_check.exit84
  %.0120.lcssa.i = phi i32 [ 0, %cp_check.exit84 ], [ %.4.i, %bb.as ]
  %.0117.lcssa.i = phi i32 [ 0, %cp_check.exit84 ], [ %.2119.i, %bb.as ]
  %.0115.lcssa.i = phi i32 [ %i.eq, %cp_check.exit84 ], [ %.2.i, %bb.as ] ; 2 uses
  %.0113.lcssa.i = phi i32 [ %i.ev, %cp_check.exit84 ], [ %.1114.i, %bb.as ] ; 2 uses
  %i.if = shl nuw nsw i32 %.0115.lcssa.i, 16
  %i.ig = add i32 %.0113.lcssa.i, %i.if
  store i32 %i.ig, ptr %i.eu, align 8, !tbaa !58
  %i.ih = and i32 %.0113.lcssa.i, 8388608
  %.not127.i = icmp eq i32 %i.ih, 0
  %i.ii = select i1 %.not127.i, i32 %.0120.lcssa.i, i32 %.0117.lcssa.i
  %i.ij = shl nuw nsw i32 8, %.0115.lcssa.i       ; 2 uses
  %i.ik = add nsw i32 %i.ij, -1
  %i.il = add i32 %i.ik, %i.ii
  %i.im = sub nsw i32 0, %i.ij
  %i.in = and i32 %i.il, %i.im
  %i.io = lshr exact i32 %i.in, 3
  %i.ip = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !64
  br label %cp_opt.exit.thread

cp_opt.exit.thread:                               ; preds = %bb.a, %cp_struct_layout.exit
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cp_push_type(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58   ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !64   ; 5 uses
  %i.k = lshr i32 %i.h, 28
  switch i32 %i.k, label %bb.p [
    i32 1, label %bb.b
    i32 5, label %bb.b
    i32 8, label %bb.f
    i32 3, label %bb.j
    i32 6, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.l = load i32, ptr %0, align 8, !tbaa !71     ; 7 uses
  %i.m = icmp ugt i32 %i.l, 99
  br i1 %i.m, label %bb.c, label %cp_push.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @cp_err(ptr noundef nonnull %i.b, i32 noundef 2216) #15
  unreachable

cp_push.exit:                                     ; preds = %bb.b
  %i.n = add i32 %1, 1879048192
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.p = zext nneg i32 %i.l to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.p ; 5 uses
  store i32 %i.n, ptr %i.q, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 0, ptr %i.s, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.t, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !70
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 10 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 10 ; 3 uses
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !72
  %i.ab = trunc nuw nsw i32 %i.l to i16
  store i16 %i.ab, ptr %i.y, align 2, !tbaa !72
  %i.ac = add nuw nsw i32 %i.l, 1                 ; 4 uses
  store i32 %i.ac, ptr %0, align 8, !tbaa !71
  store i32 %i.l, ptr %i.u, align 4, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !83 ; 2 uses
  %i.af = and i32 %i.ae, 50331648                 ; 2 uses
  %.not40 = icmp eq i32 %i.af, 0
  br i1 %.not40, label %bb.r, label %bb.d

bb.d:                                             ; preds = %cp_push.exit
  %i.ag = icmp eq i32 %i.l, 99
  br i1 %i.ag, label %bb.e, label %cp_push.exit41

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @cp_err(ptr noundef nonnull %i.b, i32 noundef 2216) #15
  unreachable

cp_push.exit41:                                   ; preds = %bb.d
  %i.ah = zext nneg i32 %i.ac to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.ah ; 5 uses
  store i32 -2147418112, ptr %i.ai, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.af, ptr %i.aj, align 4, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i16 0, ptr %i.ak, align 8, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.al, align 8, !tbaa !68
  %i.am = load i16, ptr %i.aa, align 2, !tbaa !72
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  store i16 %i.am, ptr %i.an, align 2, !tbaa !72
  %i.ao = trunc nuw nsw i32 %i.ac to i16
  store i16 %i.ao, ptr %i.aa, align 2, !tbaa !72
  %i.ap = add nuw nsw i32 %i.l, 2
  store i32 %i.ap, ptr %0, align 8, !tbaa !71
  store i32 %i.ac, ptr %i.u, align 4, !tbaa !70
  %i.aq = and i32 %i.ae, -50331649
  store i32 %i.aq, ptr %i.ad, align 4, !tbaa !83
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.ar = and i32 %i.h, -251723776
  %i.as = icmp eq i32 %i.ar, -2147418112
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = xor i32 %i.j, -1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !83
  %i.aw = and i32 %i.av, %i.at
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !83
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = and i32 %i.h, 65535
  tail call fastcc void @cp_push_type(ptr noundef %0, i32 noundef %i.ax)
  %i.ay = load i32, ptr %0, align 8, !tbaa !71    ; 5 uses
  %i.az = icmp ugt i32 %i.ay, 99
  br i1 %i.az, label %bb.i, label %cp_push.exit42

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !81
  tail call fastcc void @cp_err(ptr noundef %i.ba, i32 noundef 2216) #15
  unreachable

cp_push.exit42:                                   ; preds = %bb.h
  %i.bb = and i32 %i.h, -65536
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bd = zext nneg i32 %i.ay to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bd ; 5 uses
  store i32 %i.bb, ptr %i.be, align 8, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i16 0, ptr %i.bg, align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
end_hunk_0
