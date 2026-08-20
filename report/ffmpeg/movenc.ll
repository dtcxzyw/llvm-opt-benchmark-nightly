inline.NumInlined: 471
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 29
begin_hunk_0_@ff_mov_write_packet:bb.a
bb.dw:                                            ; preds = %bb.du
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rz, i64 7
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !144
  %i.so = load i16, ptr %i.rq, align 2, !tbaa !152
  %i.sp = zext i8 %i.sn to i16
  %i.sq = or i16 %i.so, %i.sp
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %storemerge.i = phi i16 [ %i.sl, %bb.dv ], [ %i.sq, %bb.dw ]
  store i16 %storemerge.i, ptr %i.rq, align 2, !tbaa !152
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rz, i64 46
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !148
  %i.st = zext i16 %i.ss to i32
  %i.su = add nuw nsw i32 %.0119.i, %i.st         ; 2 uses
  %i.sv = load i32, ptr %i.l, align 8, !tbaa !32  ; 2 uses
  %.not109.i = icmp eq i32 %i.su, %i.sv
  br i1 %.not109.i, label %.loopexit.i, label %bb.ds, !llvm.loop !153

.loopexit.sink.split.i:                           ; preds = %bb.dq, %bb.dn, %bb.dl
  store i8 1, ptr %i.pt, align 8, !tbaa !133
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.dx, %.loopexit.sink.split.i, %bb.dr, %bb.df
  %i.sw = getelementptr inbounds nuw i8, ptr %i.oo, i64 9 ; 5 uses
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !154 ; 2 uses
  %i.sy = icmp eq i8 %i.sx, 0                     ; 2 uses
  %i.sz = icmp eq i32 %i.ps, 6
  %or.cond.i709 = select i1 %i.sy, i1 %i.sz, i1 false
  br i1 %or.cond.i709, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %.loopexit.i
  %i.ta = load i32, ptr %i.l, align 8, !tbaa !32
  br label %handle_eac3.exit

bb.dz:                                            ; preds = %.loopexit.i
  %i.tb = zext i8 %i.sx to i32
  %i.tc = add nsw i32 %i.ps, %i.tb
  %i.td = icmp sgt i32 %i.tc, 6
  br i1 %i.td, label %handle_eac3.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.te = load ptr, ptr %i.oo, align 8, !tbaa !124 ; 2 uses
  br i1 %i.sy, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.tf = call i32 @av_packet_ref(ptr noundef %i.te, ptr noundef nonnull %1) #18 ; 2 uses
  %.not113.i = icmp eq i32 %i.tf, 0
  br i1 %.not113.i, label %bb.ec, label %handle_eac3.exit

bb.ec:                                            ; preds = %bb.eb
  %i.tg = trunc i32 %i.ps to i8
  store i8 %i.tg, ptr %i.sw, align 1, !tbaa !154
  br label %handle_eac3.exit

bb.ed:                                            ; preds = %bb.ea
  %i.th = load i32, ptr %i.l, align 8, !tbaa !32
  %i.ti = call i32 @av_grow_packet(ptr noundef %i.te, i32 noundef %i.th) #18 ; 3 uses
  %i.tj = icmp slt i32 %i.ti, 0
  br i1 %i.tj, label %handle_eac3.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.tk = load ptr, ptr %i.oo, align 8, !tbaa !124 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !93
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !32
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds i8, ptr %i.tm, i64 %i.tp
  %i.tr = load i32, ptr %i.l, align 8, !tbaa !32
  %i.ts = sext i32 %i.tr to i64                   ; 2 uses
  %i.tt = sub nsw i64 0, %i.ts
  %i.tu = getelementptr inbounds i8, ptr %i.tq, i64 %i.tt
  %i.tv = load ptr, ptr %i.or, align 8, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tu, ptr align 1 %i.tv, i64 %i.ts, i1 false)
  %i.tw = load i8, ptr %i.sw, align 1, !tbaa !154
  %i.tx = trunc i32 %i.ps to i8
  %i.ty = add i8 %i.tw, %i.tx                     ; 2 uses
  store i8 %i.ty, ptr %i.sw, align 1, !tbaa !154
  %i.tz = load i64, ptr %i.j, align 8, !tbaa !27
  %i.ua = load ptr, ptr %i.oo, align 8, !tbaa !124
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 64 ; 2 uses
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !27
  %i.ud = add nsw i64 %i.uc, %i.tz
  store i64 %i.ud, ptr %i.ub, align 8, !tbaa !27
  %.not114.i = icmp eq i8 %i.ty, 6
  br i1 %.not114.i, label %bb.ef, label %handle_eac3.exit

bb.ef:                                            ; preds = %bb.ee
  call void @av_packet_unref(ptr noundef nonnull %1) #18
  %i.ue = load ptr, ptr %i.oo, align 8, !tbaa !124
  call void @av_packet_move_ref(ptr noundef nonnull %1, ptr noundef %i.ue) #18
  store i8 0, ptr %i.sw, align 1, !tbaa !154
  %i.uf = load i32, ptr %i.l, align 8, !tbaa !32
  br label %handle_eac3.exit

handle_eac3.exit.thread:                          ; preds = %bb.da, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread

handle_eac3.exit:                                 ; preds = %bb.ds, %bb.dt, %bb.dc, %bb.dd, %bb.de, %bb.dh, %bb.di, %bb.dk, %bb.dp, %bb.dy, %bb.dz, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ef
  %.2.i = phi i32 [ -12, %bb.dc ], [ -1163346256, %bb.dp ], [ 0, %bb.de ], [ %i.ta, %bb.dy ], [ -22, %bb.di ], [ %i.ti, %bb.ed ], [ %i.ti, %bb.ee ], [ %i.uf, %bb.ef ], [ %i.tf, %bb.eb ], [ 0, %bb.ec ], [ -1094995529, %bb.dd ], [ -22, %bb.dh ], [ -1163346256, %bb.dk ], [ -1094995529, %bb.dz ], [ %i.rx, %bb.ds ], [ -22, %bb.dt ] ; 5 uses
  %i.ug = load ptr, ptr %i.a, align 8, !tbaa !119
  call void @av_free(ptr noundef %i.ug) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %.2.i, ptr %i.b, align 4, !tbaa !33
  %i.uh = icmp slt i32 %.2.i, 0
  br i1 %i.uh, label %.thread, label %bb.eg

bb.eg:                                            ; preds = %handle_eac3.exit
  %.not674 = icmp eq i32 %.2.i, 0
  br i1 %.not674, label %.thread750, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ui = load ptr, ptr %i.or, align 8, !tbaa !93
  call void @avio_write(ptr noundef %.2557, ptr noundef %i.ui, i32 noundef %.2.i) #18
  br label %.thread733

bb.ei:                                            ; preds = %thread-pre-split725
  store i32 8, ptr %i.b, align 4, !tbaa !33
  %i.uj = load i32, ptr %i.l, align 8, !tbaa !32  ; 3 uses
  %i.uk = icmp sgt i32 %i.uj, 0
  br i1 %i.uk, label %.lr.ph782, label %._crit_edge783

.lr.ph782:                                        ; preds = %bb.ei
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !93 ; 3 uses
  %i.un = zext nneg i32 %i.uj to i64
  %i.uo = add nsw i64 %i.un, -1
  %i.up = udiv i64 %i.uo, 3                       ; 2 uses
  %i.uq = add nuw nsw i64 %i.up, 1                ; 2 uses
  %i.ur = icmp ult i32 %i.uj, 4
  br i1 %i.ur, label %.epil.preheader, label %.lr.ph782.new

.lr.ph782.new:                                    ; preds = %.lr.ph782
  %unroll_iter = and i64 %i.uq, 9223372036854775806
  br label %bb.ek

._crit_edge783.loopexit.unr-lcssa:                ; preds = %bb.eo
  %i.us = and i64 %i.up, 1
  %lcmp.mod.not.not = icmp eq i64 %i.us, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge783

.epil.preheader:                                  ; preds = %._crit_edge783.loopexit.unr-lcssa, %.lr.ph782
  %indvars.iv789.epil.init = phi i64 [ 0, %.lr.ph782 ], [ %indvars.iv.next790.1, %._crit_edge783.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ 8, %.lr.ph782 ], [ %i.vm, %._crit_edge783.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod891 = trunc i64 %i.uq to i1
  tail call void @llvm.assume(i1 %lcmp.mod891)
  %i.ut = getelementptr inbounds nuw i8, ptr %i.um, i64 %indvars.iv789.epil.init
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !94
  %i.uv = icmp eq i8 %i.uu, -4
  br i1 %i.uv, label %bb.ej, label %._crit_edge783

bb.ej:                                            ; preds = %.epil.preheader
  %i.uw = add nsw i32 %.epil.init, 2              ; 2 uses
  store i32 %i.uw, ptr %i.b, align 4, !tbaa !33
  br label %._crit_edge783

._crit_edge783:                                   ; preds = %._crit_edge783.loopexit.unr-lcssa, %bb.ej, %.epil.preheader, %bb.ei
  %i.ux = phi i32 [ 8, %bb.ei ], [ %i.vm, %._crit_edge783.loopexit.unr-lcssa ], [ %.epil.init, %.epil.preheader ], [ %i.uw, %bb.ej ]
  tail call void @avio_wb32(ptr noundef %.2557, i32 noundef %i.ux) #18
  tail call void @avio_wl32(ptr noundef %.2557, i32 noundef 1952539747) #18
  %i.uy = load i32, ptr %i.l, align 8, !tbaa !32  ; 2 uses
  %i.uz = icmp sgt i32 %i.uy, 0
  br i1 %i.uz, label %.lr.ph786, label %.thread733

.lr.ph786:                                        ; preds = %._crit_edge783
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.ep

bb.ek:                                            ; preds = %bb.eo, %.lr.ph782.new
  %indvars.iv789 = phi i64 [ 0, %.lr.ph782.new ], [ %indvars.iv.next790.1, %bb.eo ] ; 3 uses
  %i.vb = phi i32 [ 8, %.lr.ph782.new ], [ %i.vm, %bb.eo ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph782.new ], [ %niter.next.1, %bb.eo ]
  %i.vc = getelementptr inbounds nuw i8, ptr %i.um, i64 %indvars.iv789
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !94
  %i.ve = icmp eq i8 %i.vd, -4
  br i1 %i.ve, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.vf = add nsw i32 %i.vb, 2                    ; 2 uses
  store i32 %i.vf, ptr %i.b, align 4, !tbaa !33
  br label %bb.em

bb.em:                                            ; preds = %bb.ek, %bb.el
  %i.vg = phi i32 [ %i.vb, %bb.ek ], [ %i.vf, %bb.el ] ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.um, i64 %indvars.iv789
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 3
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !94
  %i.vk = icmp eq i8 %i.vj, -4
  br i1 %i.vk, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.vl = add nsw i32 %i.vg, 2                    ; 2 uses
  store i32 %i.vl, ptr %i.b, align 4, !tbaa !33
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.vm = phi i32 [ %i.vg, %bb.em ], [ %i.vl, %bb.en ] ; 3 uses
  %indvars.iv.next790.1 = add nuw nsw i64 %indvars.iv789, 6 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge783.loopexit.unr-lcssa, label %bb.ek, !llvm.loop !155

bb.ep:                                            ; preds = %.lr.ph786, %bb.er
  %i.vn = phi i32 [ %i.uy, %.lr.ph786 ], [ %i.wa, %bb.er ]
  %indvars.iv792 = phi i64 [ 0, %.lr.ph786 ], [ %indvars.iv.next793, %bb.er ] ; 3 uses
  %i.vo = load ptr, ptr %i.va, align 8, !tbaa !93
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 %indvars.iv792 ; 2 uses
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !94
  %i.vr = icmp eq i8 %i.vq, -4
  br i1 %i.vr, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 1
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !94
  %i.vu = zext i8 %i.vt to i32
  tail call void @avio_w8(ptr noundef %.2557, i32 noundef %i.vu) #18
  %i.vv = load ptr, ptr %i.va, align 8, !tbaa !93
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 %indvars.iv792
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 2
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !94
  %i.vz = zext i8 %i.vy to i32
  tail call void @avio_w8(ptr noundef %.2557, i32 noundef %i.vz) #18
  %.pre797 = load i32, ptr %i.l, align 8, !tbaa !32
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq
  %i.wa = phi i32 [ %i.vn, %bb.ep ], [ %.pre797, %bb.eq ] ; 2 uses
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 3 ; 2 uses
  %i.wb = trunc nuw i64 %indvars.iv.next793 to i32
  %i.wc = icmp sgt i32 %i.wa, %i.wb
  br i1 %i.wc, label %bb.ep, label %.thread733, !llvm.loop !156

bb.es:                                            ; preds = %thread-pre-split725
  %i.wd = getelementptr inbounds nuw i8, ptr %.0558, i64 1632
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !157
  %i.wf = tail call i32 @ff_isom_parse_apvc(ptr noundef %i.we, ptr noundef %1, ptr noundef %0) #18 ; 0 uses
  %i.wg = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.wh = load i32, ptr %i.l, align 8, !tbaa !32
  tail call void @avio_wb32(ptr noundef %i.wg, i32 noundef %i.wh) #18
  %i.wi = load i32, ptr %i.b, align 4, !tbaa !33
  %i.wj = add nsw i32 %i.wi, 4
  store i32 %i.wj, ptr %i.b, align 4, !tbaa !33
  %i.wk = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !93
  %i.wn = load i32, ptr %i.l, align 8, !tbaa !32
  tail call void @avio_write(ptr noundef %i.wk, ptr noundef %i.wm, i32 noundef %i.wn) #18
  br label %.thread733

.thread745:                                       ; preds = %thread-pre-split725, %bb.az, %bb.bd, %bb.be, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.ay, %bb.bn, %bb.bp, %bb.cg, %bb.cf, %bb.bz, %bb.bx, %bb.co
  %i.wo = phi i1 [ false, %bb.co ], [ false, %thread-pre-split725 ], [ false, %bb.cg ], [ false, %bb.cf ], [ false, %bb.bz ], [ false, %bb.bx ], [ false, %bb.bp ], [ true, %bb.bd ], [ true, %bb.be ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ true, %bb.bf ], [ false, %bb.ay ], [ false, %bb.bn ], [ false, %bb.az ]
  %i.wp = phi i32 [ 222, %bb.co ], [ %i.hf, %thread-pre-split725 ], [ 98316, %bb.cg ], [ 98316, %bb.cf ], [ 195, %bb.bz ], [ 195, %bb.bx ], [ 172, %bb.bp ], [ 27, %bb.bd ], [ 27, %bb.be ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 27, %bb.bf ], [ 86018, %bb.ay ], [ 172, %bb.bn ], [ 86018, %bb.az ]
  %i.wq = phi i1 [ false, %bb.co ], [ false, %thread-pre-split725 ], [ false, %bb.cg ], [ false, %bb.cf ], [ false, %bb.bz ], [ false, %bb.bx ], [ true, %bb.bp ], [ false, %bb.bd ], [ false, %bb.be ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.bf ], [ false, %bb.ay ], [ true, %bb.bn ], [ false, %bb.az ]
  %i.wr = getelementptr inbounds nuw i8, ptr %.0558, i64 408 ; 5 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !117
  %.not671 = icmp eq ptr %i.ws, null
  br i1 %.not671, label %bb.fd, label %bb.et

bb.et:                                            ; preds = %.thread745
  %i.wt = getelementptr inbounds nuw i8, ptr %.0558, i64 56
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !104
  %i.wv = getelementptr inbounds nuw i8, ptr %.0558, i64 48
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !112
  %i.wx = sext i32 %i.ww to i64                   ; 2 uses
  %i.wy = getelementptr inbounds [8 x i8], ptr %i.wu, i64 %i.wx
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !34 ; 2 uses
  %i.xa = load ptr, ptr %i.dr, align 8, !tbaa !100
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.xa, i64 %i.wx
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !33 ; 2 uses
  %i.xd = icmp sgt i32 %i.xc, 4
  %or.cond6 = select i1 %i.wo, i1 %i.xd, i1 false
  br i1 %or.cond6, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !94
  %i.xg = and i8 %i.xf, 3
  %narrow672 = add nuw nsw i8 %i.xg, 1
  %i.xh = zext nneg i8 %narrow672 to i32
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !93
  %i.xk = load i32, ptr %i.b, align 4, !tbaa !33
  %i.xl = tail call i32 @ff_mov_cenc_avc_write_nal_units(ptr noundef %0, ptr noundef nonnull %i.wr, i32 noundef %i.xh, ptr noundef %.2557, ptr noundef %i.xj, i32 noundef %i.xk) #18
  br label %bb.fc

bb.ev:                                            ; preds = %bb.et
  %i.xm = icmp sgt i32 %i.xc, 21
  %or.cond8 = select i1 %i.wq, i1 %i.xm, i1 false
  br i1 %or.cond8, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wz, i64 21
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !94
  %i.xp = and i8 %i.xo, 3
  %narrow = add nuw nsw i8 %i.xp, 1
  %i.xq = zext nneg i8 %narrow to i32
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !93
  %i.xt = load i32, ptr %i.b, align 4, !tbaa !33
  %i.xu = tail call i32 @ff_mov_cenc_avc_write_nal_units(ptr noundef %0, ptr noundef nonnull %i.wr, i32 noundef %i.xq, ptr noundef %.2557, ptr noundef %i.xs, i32 noundef %i.xt) #18
  br label %bb.fc

bb.ex:                                            ; preds = %bb.ev
  switch i32 %i.wp, label %bb.fb [
    i32 195, label %.thread750
    i32 222, label %bb.ey
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.xv = load i32, ptr %i.b, align 4, !tbaa !33
  %i.xw = load i32, ptr %i.l, align 8, !tbaa !32
  %i.xx = icmp eq i32 %i.xv, %i.xw
  br i1 %i.xx, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 7217) #18
  tail call void @abort() #19
  unreachable

bb.fa:                                            ; preds = %bb.ey
  %i.xy = tail call i32 @ff_mov_cenc_av1_write_obus(ptr noundef %0, ptr noundef nonnull %i.wr, ptr noundef %.2557, ptr noundef nonnull %1) #18 ; 3 uses
  %i.xz = icmp sgt i32 %i.xy, 0
  br i1 %i.xz, label %.thread747, label %bb.fc

.thread747:                                       ; preds = %bb.fa
  store i32 %i.xy, ptr %i.b, align 4, !tbaa !33
  br label %.thread733

bb.fb:                                            ; preds = %bb.ex
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !93
  %i.yc = load i32, ptr %i.b, align 4, !tbaa !33
  %i.yd = tail call i32 @ff_mov_cenc_write_packet(ptr noundef nonnull %i.wr, ptr noundef %.2557, ptr noundef %i.yb, i32 noundef %i.yc) #18
  br label %bb.fc

bb.fc:                                            ; preds = %bb.ew, %bb.fb, %bb.fa, %bb.eu
  %.2576 = phi i32 [ %i.xl, %bb.eu ], [ %i.xu, %bb.ew ], [ %i.yd, %bb.fb ], [ %i.xy, %bb.fa ] ; 2 uses
  %.not673 = icmp eq i32 %.2576, 0
  br i1 %.not673, label %.thread733, label %.thread750

bb.fd:                                            ; preds = %.thread745
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !93
  %i.yg = load i32, ptr %i.b, align 4, !tbaa !33
  tail call void @avio_write(ptr noundef %.2557, ptr noundef %i.yf, i32 noundef %i.yg) #18
  br label %.thread733

.thread733:                                       ; preds = %bb.er, %._crit_edge783, %bb.bt, %bb.bw, %bb.bv, %.thread747, %bb.fc, %bb.cn, %bb.cm, %bb.ck, %bb.eh, %bb.es, %bb.fd, %bb.cs, %bb.cv, %bb.cu, %bb.ct, %bb.cd, %bb.ce, %bb.bj, %bb.bl, %bb.bm
  %.3577 = phi i32 [ 0, %.thread747 ], [ %i.lw, %bb.cd ], [ 0, %bb.ce ], [ %i.my, %bb.ck ], [ 0, %bb.cm ], [ 0, %bb.cn ], [ 0, %bb.eh ], [ 0, %bb.bm ], [ 0, %bb.es ], [ 0, %bb.fc ], [ 0, %bb.fd ], [ %i.nv, %bb.cs ], [ 0, %bb.cu ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ %i.ic, %bb.bj ], [ 0, %bb.bl ], [ 0, %bb.bv ], [ 0, %bb.bw ], [ %i.kb, %bb.bt ], [ 0, %._crit_edge783 ], [ 0, %bb.er ] ; 3 uses
  %i.yh = load i32, ptr %i.ae, align 8, !tbaa !70 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.0558, i64 168 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !158
  %.not677 = icmp ult i32 %i.yh, %i.yj
  br i1 %.not677, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.thread733
  %i.yk = add nsw i32 %i.yh, 1024                 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.0558, i64 152 ; 2 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !71
  %i.yn = zext i32 %i.yk to i64
  %i.yo = call ptr @av_realloc_array(ptr noundef %i.ym, i64 noundef %i.yn, i64 noundef 72) #18 ; 2 uses
  %.not678 = icmp eq ptr %i.yo, null
  br i1 %.not678, label %.thread750, label %.thread753

.thread753:                                       ; preds = %bb.fe
  store ptr %i.yo, ptr %i.yl, align 8, !tbaa !71
  store i32 %i.yk, ptr %i.yi, align 8, !tbaa !158
  br label %bb.ff

bb.ff:                                            ; preds = %.thread753, %.thread733
  %i.yp = call i64 @avio_seek(ptr noundef %.2557, i64 noundef 0, i32 noundef 1) #18
  %i.yq = load i32, ptr %i.b, align 4, !tbaa !33
  %i.yr = sext i32 %i.yq to i64
  %i.ys = sub nsw i64 %i.yp, %i.yr
  %i.yt = getelementptr inbounds nuw i8, ptr %.0558, i64 152 ; 5 uses
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !71 ; 2 uses
  %i.yv = load i32, ptr %i.ae, align 8, !tbaa !70 ; 2 uses
  %i.yw = sext i32 %i.yv to i64
  %i.yx = getelementptr inbounds [72 x i8], ptr %i.yu, i64 %i.yw ; 8 uses
  store i64 %i.ys, ptr %i.yx, align 8, !tbaa !159
  %i.yy = getelementptr inbounds nuw i8, ptr %.0558, i64 48
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !112
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 28
  store i32 %i.yz, ptr %i.za, align 4, !tbaa !160
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 32
  store i32 %.1560718, ptr %i.zb, align 8, !tbaa !161
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yx, i64 36
  store i32 0, ptr %i.zc, align 4, !tbaa !162
  %i.zd = load i32, ptr %i.b, align 4, !tbaa !33
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  store i32 %i.zd, ptr %i.ze, align 8, !tbaa !163
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yx, i64 40
  store i32 %.1560718, ptr %i.zf, align 8, !tbaa !164
  %i.zg = load i64, ptr %i.ay, align 8, !tbaa !78 ; 6 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yx, i64 8 ; 3 uses
  store i64 %i.zg, ptr %i.zh, align 8, !tbaa !72
  %i.zi = load i64, ptr %i.bi, align 8, !tbaa !80 ; 9 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  store i64 %i.zi, ptr %i.zj, align 8, !tbaa !165
end_hunk_0
begin_hunk_1_@ff_vvc_annexb2mp4

declare i32 @ff_av1_filter_obus_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_av1_filter_obus(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_wb32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_w8(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_isom_parse_apvc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_mov_cenc_avc_write_nal_units(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare i32 @ff_mov_cenc_av1_write_obus(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_mov_cenc_write_packet(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_parse_vc1_frame(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !177
  %i.k = and i32 %i.j, 1
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = icmp sgt i32 %i.f, 3
  br i1 %i.m, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 -1, ptr %i.a, align 4, !tbaa !33
  %i.n = call ptr @avpriv_find_start_code(ptr noundef %i.d, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #18
  %i.o = load i32, ptr %i.a, align 4, !tbaa !33
  %i.p = and i32 %i.o, -256
  %.not82 = icmp eq i32 %i.p, 256
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.r = icmp ult ptr %i.q, %i.h
  %or.cond = select i1 %.not82, i1 %i.r, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 396
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.05686 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.i ] ; 3 uses
  %.05785 = phi i32 [ 0, %.lr.ph ], [ %.158, %bb.i ] ; 3 uses
  %.05984 = phi ptr [ %i.q, %.lr.ph ], [ %.1.i, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05984, i64 4 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.l, %i.u
  %i.w = icmp sgt i64 %i.v, 3
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 -1, ptr %i.b, align 4, !tbaa !33
  %i.x = call ptr @avpriv_find_start_code(ptr noundef nonnull %i.t, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b) #18
  %i.y = load i32, ptr %i.b, align 4, !tbaa !33
  %i.z = and i32 %i.y, -256
  %.not83 = icmp eq i32 %i.z, 256
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br i1 %.not83, label %find_next_marker.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %find_next_marker.exit

find_next_marker.exit:                            ; preds = %bb.d, %bb.e
  %.1.i = phi ptr [ %i.h, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ab = load i32, ptr %.05984, align 1, !tbaa !94
  %i.ac = call i32 @llvm.bswap.i32(i32 %i.ab)
  switch i32 %i.ac, label %bb.i [
    i32 271, label %bb.f
    i32 270, label %bb.g
    i32 267, label %bb.h
  ]

bb.f:                                             ; preds = %find_next_marker.exit
  br label %bb.i

bb.g:                                             ; preds = %find_next_marker.exit
  br label %bb.i

bb.h:                                             ; preds = %find_next_marker.exit
  store i32 1, ptr %i.s, align 4, !tbaa !185
  br label %bb.i

bb.i:                                             ; preds = %find_next_marker.exit, %bb.f, %bb.g, %bb.h
  %.158 = phi i32 [ %.05785, %find_next_marker.exit ], [ 1, %bb.f ], [ %.05785, %bb.g ], [ %.05785, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %.05686, %find_next_marker.exit ], [ %.05686, %bb.f ], [ 1, %bb.g ], [ %.05686, %bb.h ] ; 2 uses
  %i.ad = icmp ult ptr %.1.i, %i.h
  br i1 %i.ad, label %bb.c, label %._crit_edge, !llvm.loop !186

._crit_edge:                                      ; preds = %bb.i, %bb.b, %bb.a
  %.057.lcssa = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.158, %bb.i ] ; 4 uses
  %.056.lcssa = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1, %bb.i ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !70 ; 5 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 380 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !187
  %.not62 = icmp eq i32 %i.ah, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  br i1 %.not62, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  store i32 1, ptr %.phi.trans.insert, align 8, !tbaa !188
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !188
  %i.ai = icmp eq i32 %.pre, 0
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 372
  store i32 %.057.lcssa, ptr %i.aj, align 4, !tbaa !189
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i32 %.056.lcssa, ptr %i.ak, align 8, !tbaa !190
  store i32 1, ptr %i.ag, align 4, !tbaa !187
  br label %bb.ac

bb.m:                                             ; preds = %.thread, %._crit_edge, %bb.k
  %.not65 = icmp eq i32 %.057.lcssa, 0            ; 3 uses
  br i1 %.not65, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.am = load i32, ptr %i.al, align 4, !tbaa !191
  %.not66 = icmp eq i32 %i.am, 0
  br i1 %.not66, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not67 = icmp eq i32 %.056.lcssa, 0
  br i1 %.not67, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !192
  %.not68 = icmp eq i32 %i.ao, 0
  br i1 %.not68, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.ap = icmp sgt i32 %i.af, 0
  br i1 %i.ap, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !71 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.af to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.as = icmp ult i32 %i.af, 4
  br i1 %i.as, label %.epil.preheader, label %.lr.ph90.new

.lr.ph90.new:                                     ; preds = %.lr.ph90
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph90.new
  %indvars.iv = phi i64 [ 0, %.lr.ph90.new ], [ %indvars.iv.next.3, %bb.r ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph90.new ], [ %niter.next.3, %bb.r ]
  %i.at = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !175
  %i.aw = and i32 %i.av, -2
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !175
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !175
  %i.ba = and i32 %i.az, -2
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !175
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 192 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !175
  %i.be = and i32 %i.bd, -2
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !175
  %i.bf = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 264 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !175
  %i.bi = and i32 %i.bh, -2
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !175
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge91.loopexit.unr-lcssa, label %bb.r, !llvm.loop !193

._crit_edge91.loopexit.unr-lcssa:                 ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge91, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge91.loopexit.unr-lcssa, %.lr.ph90
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next.3, %._crit_edge91.loopexit.unr-lcssa ]
  %lcmp.mod97 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod97)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.bj = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %indvars.iv.epil
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !175
  %i.bm = and i32 %i.bl, -2
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !175
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge91, label %bb.s, !llvm.loop !194

._crit_edge91:                                    ; preds = %._crit_edge91.loopexit.unr-lcssa, %bb.s, %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !178
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge91
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 388
  store i32 1, ptr %i.bo, align 4, !tbaa !191
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge91
  %.not69 = icmp eq i32 %.056.lcssa, 0            ; 2 uses
  br i1 %.not69, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i32 1, ptr %i.bp, align 8, !tbaa !192
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 372
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !188
  %.not70 = icmp eq i32 %i.bs, 0
  br i1 %.not70, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  br i1 %.not65, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !189
  %.not71 = icmp eq i32 %i.bt, 0
  br i1 %.not71, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %.not69, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !190
  %.not72 = icmp eq i32 %i.bv, 0
  br i1 %.not72, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !71
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !175
  %i.ca = or i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !175
  store i32 1, ptr %i.bn, align 8, !tbaa !178
  br label %bb.ac

bb.ac:                                            ; preds = %bb.w, %bb.ab, %bb.aa, %bb.y, %bb.o, %bb.p, %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !191
  %.not73 = icmp eq i32 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !192
  %.not76 = icmp eq i32 %i.ce, 0                  ; 2 uses
  br i1 %.not73, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not76, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = icmp ne i32 %.057.lcssa, 0
  %i.cg = icmp ne i32 %.056.lcssa, 0
  %i.ch = select i1 %i.cf, i1 %i.cg, i1 false
  %i.ci = zext i1 %i.ch to i32
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %spec.select = select i1 %.not76, i32 %i.k, i32 %.056.lcssa
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af, %bb.ae
  %.055 = phi i32 [ %i.ci, %bb.ae ], [ %spec.select, %bb.af ], [ %.057.lcssa, %bb.ad ]
  %.not77 = icmp eq i32 %.055, 0
  br i1 %.not77, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !71
  %i.cl = sext i32 %i.af to i64
  %i.cm = getelementptr inbounds [72 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !175
  %i.cp = or i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !175
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !178
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !178
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mov_parse_truehd_frame(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = icmp slt i32 %i.b, 8
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93   ; 2 uses
  %i.f = load i16, ptr %i.e, align 1, !tbaa !94
  %i.g = tail call i16 @llvm.bswap.i16(i16 %i.f)
  %i.h = shl i16 %i.g, 1
  %i.i = and i16 %i.h, 8190                       ; 2 uses
  %i.j = icmp samesign ult i16 %i.i, 8
  %i.k = zext nneg i16 %i.i to i32
  %i.l = icmp samesign ult i32 %i.b, %i.k
  %or.cond = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.n = load i32, ptr %i.m, align 1, !tbaa !94
  %i.o = icmp eq i32 %i.n, -1167101192
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !70
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [72 x i8], ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !175
  %i.x = or i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !175
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !178
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !178
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mov_parse_mpeg2_frame(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 4
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.024 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 2 uses
  %.01922 = phi i32 [ -1, %.lr.ph ], [ %i.k, %bb.e ]
  %i.g = shl i32 %.01922, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !94
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j               ; 2 uses
  switch i32 %i.k, label %bb.e [
    i32 440, label %bb.c
end_hunk_1
begin_hunk_2_@mov_write_trailer:bb.a
  br i1 %i.bv, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %mov_auto_flush_fragment.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph162, %bb.p
  %indvars.iv168 = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next169, %bb.p ] ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !43
  %i.by = getelementptr inbounds nuw [1640 x i8], ptr %i.bx, i64 %indvars.iv168 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 336
  store i64 0, ptr %i.bz, align 8, !tbaa !262
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 152 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !71
  call void @av_free(ptr noundef %i.cb) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 160 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !263
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !71
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 12 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !264
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !70
  store ptr null, ptr %i.cc, align 8, !tbaa !263
  store i32 0, ptr %i.ce, align 4, !tbaa !264
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  store i64 0, ptr %i.ch, align 8, !tbaa !265
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.ci = load i32, ptr %i.h, align 4, !tbaa !116
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.next169, %i.cj
  br i1 %i.ck, label %bb.p, label %._crit_edge163, !llvm.loop !266

._crit_edge163:                                   ; preds = %bb.p, %mov_auto_flush_fragment.exit
  %i.cl = load i32, ptr %i.bb, align 8, !tbaa !81
  %i.cm = and i32 %i.cl, -5
  store i32 %i.cm, ptr %i.bb, align 8, !tbaa !81
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge163, %bb.l
  %i.cn = call i64 @avio_seek(ptr noundef %i.g, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.co = load i32, ptr %i.bb, align 8, !tbaa !81
  %i.cp = and i32 %i.co, 16777216
  %.not143 = icmp eq i32 %i.cp, 0
  br i1 %.not143, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.val148 = load ptr, ptr %i.d, align 8, !tbaa !9
  %.val149 = load ptr, ptr %i.f, align 8, !tbaa !26
  call fastcc void @mov_write_mdat_size(ptr %.val148, ptr %.val149)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !219
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !220
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cv = phi i64 [ %i.cu, %bb.t ], [ %i.cn, %bb.s ]
  %i.cw = call i64 @avio_seek(ptr noundef %i.g, i64 noundef %i.cv, i32 noundef 0) #18 ; 0 uses
  %i.cx = load i32, ptr %i.bb, align 8, !tbaa !81
  %i.cy = and i32 %i.cx, 128
  %.not144 = icmp eq i32 %i.cy, 0
  br i1 %.not144, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.597) #18
  %i.cz = call fastcc i32 @shift_data(ptr noundef %0) ; 2 uses
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !220
  %i.dd = call i64 @avio_seek(ptr noundef %i.g, i64 noundef %i.dc, i32 noundef 0) #18 ; 0 uses
  %i.de = call fastcc i32 @mov_write_moov_tag(ptr noundef %i.g, ptr noundef nonnull %i.e, ptr noundef %0) ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %.critedge, label %bb.ad

bb.x:                                             ; preds = %bb.u
  %i.dg = load i32, ptr %i.cq, align 8, !tbaa !219
  %i.dh = icmp sgt i32 %i.dg, 0
  %i.di = call fastcc i32 @mov_write_moov_tag(ptr noundef %i.g, ptr noundef nonnull %i.e, ptr noundef %0) ; 3 uses
  %i.dj = icmp slt i32 %i.di, 0                   ; 2 uses
  br i1 %i.dh, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  br i1 %i.dj, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = load i32, ptr %i.cq, align 8, !tbaa !219
  %i.dl = sext i32 %i.dk to i64
  %i.dm = call i64 @avio_seek(ptr noundef %i.g, i64 noundef 0, i32 noundef 1) #18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !220
  %.neg = sub i64 %i.do, %i.dm
  %i.dp = add i64 %.neg, %i.dl                    ; 4 uses
  %i.dq = icmp slt i64 %i.dp, 8
  br i1 %i.dq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = sub nsw i64 8, %i.dp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.598, i64 noundef %i.dr) #18
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  %i.ds = trunc i64 %i.dp to i32
  call void @avio_wb32(ptr noundef %i.g, i32 noundef %i.ds) #18
  call void @avio_wl32(ptr noundef %i.g, i32 noundef 1701147238) #18
  %i.dt = add nsw i64 %i.dp, -8
  call void @ffio_fill(ptr noundef %i.g, i32 noundef 0, i64 noundef %i.dt) #18
  %i.du = call i64 @avio_seek(ptr noundef %i.g, i64 noundef %i.cn, i32 noundef 0) #18 ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  br i1 %i.dj, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.w
  %i.dv = load i32, ptr %i.bb, align 8, !tbaa !81
  %i.dw = and i32 %i.dv, 16777216
  %.not145 = icmp eq i32 %i.dw, 0
  br i1 %.not145, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val = load ptr, ptr %i.d, align 8, !tbaa !9
  %.val147 = load ptr, ptr %i.f, align 8, !tbaa !26
  call fastcc void @mov_write_mdat_size(ptr %.val, ptr %.val147)
  br label %.critedge

bb.af:                                            ; preds = %bb.k
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !9   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 84
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !83
  %i.ea = call fastcc i32 @mov_flush_fragment(ptr noundef %0, i32 noundef 1), !inline_history !261
  %i.eb = icmp sgt i32 %i.ea, -1
  %.not.i150 = icmp eq i32 %i.dz, 0
  %or.cond158 = select i1 %i.eb, i1 %.not.i150, i1 false
  br i1 %or.cond158, label %bb.ag, label %mov_auto_flush_fragment.exit153

bb.ag:                                            ; preds = %bb.af
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !81
  %i.ee = and i32 %i.ed, 8192
  %.not13.i152 = icmp eq i32 %i.ee, 0
  br i1 %.not13.i152, label %mov_auto_flush_fragment.exit153, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ef = call fastcc i32 @mov_flush_fragment(ptr noundef nonnull %0, i32 noundef 1), !inline_history !261 ; 0 uses
  br label %mov_auto_flush_fragment.exit153

mov_auto_flush_fragment.exit153:                  ; preds = %bb.af, %bb.ag, %bb.ah
  %i.eg = load i32, ptr %i.h, align 4, !tbaa !116 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph165, label %._crit_edge166

.lr.ph165:                                        ; preds = %mov_auto_flush_fragment.exit153
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !43 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.eg to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.ek = icmp ult i32 %i.eg, 8
  br i1 %i.ek, label %.epil.preheader, label %.lr.ph165.new

.lr.ph165.new:                                    ; preds = %.lr.ph165
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph165.new
  %indvars.iv171 = phi i64 [ 0, %.lr.ph165.new ], [ %indvars.iv.next172.7, %bb.ai ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph165.new ], [ %niter.next.7, %bb.ai ]
  %i.el = getelementptr inbounds nuw [1640 x i8], ptr %i.ej, i64 %indvars.iv171
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 336
  store i64 0, ptr %i.em, align 8, !tbaa !262
  %i.en = getelementptr inbounds nuw [1640 x i8], ptr %i.ej, i64 %indvars.iv171
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1976
  store i64 0, ptr %i.eo, align 8, !tbaa !262
  %i.ep = getelementptr inbounds nuw [1640 x i8], ptr %i.ej, i64 %indvars.iv171
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 3616
  store i64 0, ptr %i.eq, align 8, !tbaa !262
  %i.er = getelementptr inbounds nuw [1640 x i8], ptr %i.ej, i64 %indvars.iv171
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 5256
  store i64 0, ptr %i.es, align 8, !tbaa !262
  %i.et = getelementptr inbounds nuw [1640 x i8], ptr %i.ej, i64 %indvars.iv171
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 6896
  store i64 0, ptr %i.eu, align 8, !tbaa !262
  %i.ev = getelementptr inbounds nuw [1640 x i8], ptr %i.ej, i64 %indvars.iv171
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8536
  store i64 0, ptr %i.ew, align 8, !tbaa !262
  %i.ex = getelementptr inbounds nuw [1640 x i8], ptr %i.ej, i64 %indvars.iv171
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 10176
  store i64 0, ptr %i.ey, align 8, !tbaa !262
  %i.ez = getelementptr inbounds nuw [1640 x i8], ptr %i.ej, i64 %indvars.iv171
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 11816
  store i64 0, ptr %i.fa, align 8, !tbaa !262
  %indvars.iv.next172.7 = add nuw nsw i64 %indvars.iv171, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge166.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !267

._crit_edge166.loopexit.unr-lcssa:                ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge166, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge166.loopexit.unr-lcssa, %.lr.ph165
  %indvars.iv171.epil.init = phi i64 [ 0, %.lr.ph165 ], [ %indvars.iv.next172.7, %._crit_edge166.loopexit.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod187)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader
  %indvars.iv171.epil = phi i64 [ %indvars.iv171.epil.init, %.epil.preheader ], [ %indvars.iv.next172.epil, %bb.aj ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aj ]
  %i.fb = getelementptr inbounds nuw [1640 x i8], ptr %i.ej, i64 %indvars.iv171.epil
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 336
  store i64 0, ptr %i.fc, align 8, !tbaa !262
  %indvars.iv.next172.epil = add nuw nsw i64 %indvars.iv171.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge166, label %bb.aj, !llvm.loop !268

._crit_edge166:                                   ; preds = %._crit_edge166.loopexit.unr-lcssa, %bb.aj, %mov_auto_flush_fragment.exit153
  %i.fd = load i32, ptr %i.bb, align 8, !tbaa !81 ; 2 uses
  %i.fe = and i32 %i.fd, 16384
  %.not140 = icmp eq i32 %i.fe, 0
  br i1 %.not140, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge166
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.599) #18
  %i.ff = call fastcc i32 @shift_data(ptr noundef nonnull %0) ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, -1
  br i1 %i.fg, label %bb.al, label %.critedge

bb.al:                                            ; preds = %bb.ak
  %i.fh = call i64 @avio_seek(ptr noundef %i.g, i64 noundef 0, i32 noundef 1) #18
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !220
  %i.fk = call i64 @avio_seek(ptr noundef %i.g, i64 noundef %i.fj, i32 noundef 0) #18 ; 0 uses
  call fastcc void @mov_write_sidx_tags(ptr noundef %i.g, ptr noundef nonnull %i.e, i32 noundef -1, i32 noundef 0)
  %i.fl = call i64 @avio_seek(ptr noundef %i.g, i64 noundef %i.fh, i32 noundef 0) #18 ; 0 uses
  %.pre174 = load i32, ptr %i.bb, align 8, !tbaa !81
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge166
  %i.fm = phi i32 [ %.pre174, %bb.al ], [ %i.fd, %._crit_edge166 ]
  %.1122 = phi i32 [ %i.ff, %bb.al ], [ 0, %._crit_edge166 ]
  %i.fn = and i32 %i.fm, 262144
  %.not141 = icmp eq i32 %i.fn, 0
  br i1 %.not141, label %bb.an, label %.critedge

bb.an:                                            ; preds = %bb.am
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !26
  call void @avio_write_marker(ptr noundef %i.fo, i64 noundef -9223372036854775808, i32 noundef 4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.fp = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %mov_write_mfra_tag.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !89
  call void @avio_wb32(ptr noundef %i.fr, i32 noundef 0) #18
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !89
  call void @avio_wl32(ptr noundef %i.fs, i32 noundef 1634887277) #18
  %i.ft = load i32, ptr %i.bb, align 8, !tbaa !81
  %i.fu = and i32 %i.ft, 64
  %.not.i154 = icmp eq i32 %i.fu, 0
  br i1 %.not.i154, label %.preheader.i, label %bb.at

.preheader.i:                                     ; preds = %bb.ao
  %i.fv = load i32, ptr %i.h, align 4, !tbaa !116 ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %.lr.ph.i
  %i.fy = phi i32 [ %i.fv, %.lr.ph.i ], [ %i.hd, %bb.as ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.as ] ; 2 uses
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !43
  %i.ga = getelementptr inbounds nuw [1640 x i8], ptr %i.fz, i64 %indvars.iv.i ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 352 ; 4 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !269
  %.not15.i = icmp eq i32 %i.gc, 0
  br i1 %.not15.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !89  ; 17 uses
  %i.ge = call i64 @avio_seek(ptr noundef %i.gd, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  call void @avio_wb32(ptr noundef %i.gd, i32 noundef 0) #18
  call void @avio_wl32(ptr noundef %i.gd, i32 noundef 1634887284) #18
  call void @avio_w8(ptr noundef %i.gd, i32 noundef 1) #18
  call void @avio_wb24(ptr noundef %i.gd, i32 noundef 0) #18
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 116
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !239
  call void @avio_wb32(ptr noundef %i.gd, i32 noundef %i.gg) #18
  call void @avio_wb32(ptr noundef %i.gd, i32 noundef 0) #18
  %i.gh = load i32, ptr %i.gb, align 8, !tbaa !269
  call void @avio_wb32(ptr noundef %i.gd, i32 noundef %i.gh) #18
  %i.gi = load i32, ptr %i.gb, align 8, !tbaa !269
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph.i.i, label %mov_write_tfra_tag.exit.i

.lr.ph.i.i:                                       ; preds = %bb.aq
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 360 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 336
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ar ] ; 3 uses
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !270
  %i.gn = getelementptr inbounds nuw [40 x i8], ptr %i.gm, i64 %indvars.iv.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !271
  call void @avio_wb64(ptr noundef %i.gd, i64 noundef %i.gp) #18
  %i.gq = load ptr, ptr %i.gk, align 8, !tbaa !270
  %i.gr = getelementptr inbounds nuw [40 x i8], ptr %i.gq, i64 %indvars.iv.i.i
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !273
  %i.gt = load i64, ptr %i.gl, align 8, !tbaa !262
  %i.gu = add nsw i64 %i.gt, %i.gs
  call void @avio_wb64(ptr noundef %i.gd, i64 noundef %i.gu) #18
  call void @avio_w8(ptr noundef %i.gd, i32 noundef 1) #18
  call void @avio_w8(ptr noundef %i.gd, i32 noundef 1) #18
  call void @avio_w8(ptr noundef %i.gd, i32 noundef 1) #18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gv = load i32, ptr %i.gb, align 8, !tbaa !269
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i.i, %i.gw
  br i1 %i.gx, label %bb.ar, label %mov_write_tfra_tag.exit.i, !llvm.loop !274

mov_write_tfra_tag.exit.i:                        ; preds = %bb.ar, %bb.aq
  %i.gy = call i64 @avio_seek(ptr noundef %i.gd, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.gz = call i64 @avio_seek(ptr noundef %i.gd, i64 noundef %i.ge, i32 noundef 0) #18 ; 0 uses
  %i.ha = sub nsw i64 %i.gy, %i.ge
  %i.hb = trunc i64 %i.ha to i32
  call void @avio_wb32(ptr noundef %i.gd, i32 noundef %i.hb) #18
  %i.hc = call i64 @avio_seek(ptr noundef %i.gd, i64 noundef %i.gy, i32 noundef 0) #18 ; 0 uses
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !116
  br label %bb.as

bb.as:                                            ; preds = %mov_write_tfra_tag.exit.i, %bb.ap
  %i.hd = phi i32 [ %.pre.i, %mov_write_tfra_tag.exit.i ], [ %i.fy, %bb.ap ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp slt i64 %indvars.iv.next.i, %i.he
  br i1 %i.hf, label %bb.ap, label %._crit_edge.i, !llvm.loop !275

._crit_edge.i:                                    ; preds = %bb.as, %.preheader.i
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !89
  call void @avio_wb32(ptr noundef %i.hg, i32 noundef 16) #18
  %i.hh = load ptr, ptr %i.a, align 8, !tbaa !89
  call void @avio_wl32(ptr noundef %i.hh, i32 noundef 1869768301) #18
  %i.hi = load ptr, ptr %i.a, align 8, !tbaa !89
  call void @avio_wb32(ptr noundef %i.hi, i32 noundef 0) #18
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.hk = call i64 @avio_seek(ptr noundef %i.hj, i64 noundef 0, i32 noundef 1) #18
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = add i32 %i.hl, 4
  call void @avio_wb32(ptr noundef %i.hj, i32 noundef %i.hm) #18
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i, %bb.ao
  %i.hn = load ptr, ptr %i.a, align 8, !tbaa !89  ; 4 uses
  %i.ho = call i64 @avio_seek(ptr noundef %i.hn, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.hp = call i64 @avio_seek(ptr noundef %i.hn, i64 noundef 0, i32 noundef 0) #18 ; 0 uses
  %i.hq = trunc i64 %i.ho to i32                  ; 2 uses
  call void @avio_wb32(ptr noundef %i.hn, i32 noundef %i.hq) #18
  %i.hr = call i64 @avio_seek(ptr noundef %i.hn, i64 noundef %i.ho, i32 noundef 0) #18 ; 0 uses
  %i.hs = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.ht = call i32 @avio_get_dyn_buf(ptr noundef %i.hs, ptr noundef nonnull %i.b) #18
  %i.hu = load ptr, ptr %i.b, align 8, !tbaa !34
  call void @avio_write(ptr noundef %i.g, ptr noundef %i.hu, i32 noundef %i.ht) #18
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.a) #18
  br label %mov_write_mfra_tag.exit

mov_write_mfra_tag.exit:                          ; preds = %bb.an, %bb.at
  %.013.i = phi i32 [ %i.hq, %bb.at ], [ %i.fp, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.aa, %mov_write_mfra_tag.exit, %bb.ak, %bb.am, %bb.ae, %bb.ad, %bb.ac, %bb.w, %bb.v, %bb.j, %._crit_edge
  %.2 = phi i32 [ %i.al, %._crit_edge ], [ %i.az, %bb.j ], [ %i.cz, %bb.v ], [ 0, %bb.ae ], [ %.1122, %bb.am ], [ %i.de, %bb.w ], [ 0, %bb.ad ], [ %i.ff, %bb.ak ], [ %i.di, %bb.ac ], [ %.013.i, %mov_write_mfra_tag.exit ], [ %i.di, %bb.y ], [ -22, %bb.aa ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @mov_init(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.AVTimecode, align 4         ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 29 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %0, ptr %i.c, align 8, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 520
end_hunk_2
begin_hunk_3_@mov_init:bb.a
  %i.ij = phi i32 [ 0, %bb.cb ], [ %i.hz, %bb.ca ] ; 2 uses
  %i.ik = phi i32 [ %.pre1098, %bb.cb ], [ %i.ia, %bb.ca ] ; 2 uses
  %indvars.iv.next1057 = add nuw nsw i64 %indvars.iv1056, 1 ; 2 uses
  %i.il = zext i32 %i.ik to i64
  %i.im = icmp samesign ult i64 %indvars.iv.next1057, %i.il
  br i1 %i.im, label %bb.ca, label %.loopexit822, !llvm.loop !302

.loopexit822:                                     ; preds = %bb.cc, %._crit_edge917.thread, %.preheader821, %._crit_edge917
  %i.in = phi i32 [ %i.hx, %._crit_edge917.thread ], [ %i.hv, %.preheader821 ], [ 0, %._crit_edge917 ], [ %i.ij, %bb.cc ]
  %i.io = load i32, ptr %i.fo, align 4, !tbaa !116
  %i.ip = add nsw i32 %i.io, %i.in                ; 2 uses
  store i32 %i.ip, ptr %i.fo, align 4, !tbaa !116
  br label %.thread731

.thread731:                                       ; preds = %bb.bq, %bb.br, %.loopexit822
  %i.iq = phi i32 [ %i.gm, %bb.bq ], [ %i.gm, %bb.br ], [ %i.ip, %.loopexit822 ]
  %i.ir = add nsw i32 %i.iq, 1
  %i.is = sext i32 %i.ir to i64
  %i.it = call noalias ptr @av_calloc(i64 noundef %i.is, i64 noundef 1640) #18 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 7 uses
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !43
  %.not636 = icmp eq ptr %i.it, null
  br i1 %.not636, label %.critedge700.thread, label %.preheader819

.preheader819:                                    ; preds = %.thread731
  %i.iv = load i32, ptr %i.fo, align 4, !tbaa !116
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %.lr.ph922, label %._crit_edge923

bb.cd:                                            ; preds = %.lr.ph922
  %indvars.iv.next1060 = add nuw nsw i64 %indvars.iv1059, 1 ; 2 uses
  %i.ix = load i32, ptr %i.fo, align 4, !tbaa !116
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp slt i64 %indvars.iv.next1060, %i.iy
  br i1 %i.iz, label %.lr.ph922, label %._crit_edge923, !llvm.loop !303

.lr.ph922:                                        ; preds = %.preheader819, %bb.cd
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %bb.cd ], [ 0, %.preheader819 ] ; 2 uses
  %i.ja = load ptr, ptr %i.iu, align 8, !tbaa !43
  %i.jb = getelementptr inbounds nuw [1640 x i8], ptr %i.ja, i64 %indvars.iv1059 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 44 ; 2 uses
  store i32 1, ptr %i.jc, align 4, !tbaa !109
  %i.jd = call noalias ptr @av_calloc(i64 noundef 1, i64 noundef 8) #18
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 56 ; 2 uses
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !104
  %i.jf = load i32, ptr %i.jc, align 4, !tbaa !109
  %i.jg = sext i32 %i.jf to i64
  %i.jh = call noalias ptr @av_calloc(i64 noundef %i.jg, i64 noundef 4) #18 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 64
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !100
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !104
  %.not681 = icmp ne ptr %i.jj, null
  %.not682 = icmp ne ptr %i.jh, null
  %or.cond703.not = select i1 %.not681, i1 %.not682, i1 false
  br i1 %or.cond703.not, label %bb.cd, label %.critedge700.thread

._crit_edge923:                                   ; preds = %bb.cd, %.preheader819
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !304 ; 4 uses
  %.not637 = icmp eq ptr %i.jl, null
  br i1 %.not637, label %bb.cl, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge923
  %i.jm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jl, ptr noundef nonnull dereferenceable(5) @.str.616) #21
  %.not638 = icmp eq i32 %i.jm, 0
  br i1 %.not638, label %bb.cl, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jl, ptr noundef nonnull dereferenceable(13) @.str.617) #21
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i32 1, ptr %i.jp, align 8, !tbaa !305
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !306 ; 2 uses
  %.not639 = icmp eq i32 %i.jr, 16
  br i1 %.not639, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.618, i32 noundef %i.jr, i32 noundef 16) #18
  br label %.critedge700.thread

bb.ci:                                            ; preds = %bb.cg
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !307 ; 2 uses
  %.not640 = icmp eq i32 %i.jt, 16
  br i1 %.not640, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.619, i32 noundef %i.jt, i32 noundef 16) #18
  br label %.critedge700.thread

bb.ck:                                            ; preds = %bb.cf
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.620, ptr noundef nonnull %i.jl) #18
  br label %.critedge700.thread

bb.cl:                                            ; preds = %bb.ci, %bb.ce, %._crit_edge923
  %i.ju = call fastcc i32 @mov_init_iamf_track(ptr noundef %0) ; 2 uses
  %i.jv = icmp slt i32 %i.ju, 0
  br i1 %i.jv, label %.critedge700.thread, label %.preheader818

.preheader818:                                    ; preds = %bb.cl
  %i.jw = load i32, ptr %i.du, align 4, !tbaa !36 ; 5 uses
  %.not957 = icmp eq i32 %i.jw, 0
  br i1 %.not957, label %._crit_edge932, label %.lr.ph927

.lr.ph927:                                        ; preds = %.preheader818
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !37 ; 3 uses
  %wide.trip.count1065 = zext i32 %i.jw to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count1065, 1
  %i.jz = icmp eq i32 %i.jw, 1
  br i1 %i.jz, label %.epil.preheader, label %.lr.ph927.new

.lr.ph927.new:                                    ; preds = %.lr.ph927
  %unroll_iter = and i64 %wide.trip.count1065, 4294967294
  br label %bb.cn

.lr.ph931.unr-lcssa:                              ; preds = %bb.ct
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph931, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph931.unr-lcssa, %.lr.ph927
  %indvars.iv1062.epil.init = phi i64 [ 0, %.lr.ph927 ], [ %indvars.iv.next1063.1, %.lr.ph931.unr-lcssa ]
  %.0533925.epil.init = phi i32 [ 0, %.lr.ph927 ], [ %.2535.1, %.lr.ph931.unr-lcssa ]
  %lcmp.mod1457 = trunc i32 %i.jw to i1
  call void @llvm.assume(i1 %lcmp.mod1457)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv1062.epil.init
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !38 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !40
  %.not679.epil = icmp eq ptr %i.kb, %i.kd
  br i1 %.not679.epil, label %bb.cm, label %.lr.ph931

bb.cm:                                            ; preds = %.epil.preheader
  %i.ke = load ptr, ptr %i.iu, align 8, !tbaa !43
  %i.kf = zext nneg i32 %.0533925.epil.init to i64
  %i.kg = getelementptr inbounds nuw [1640 x i8], ptr %i.ke, i64 %i.kf
  store ptr %i.kg, ptr %i.kc, align 8, !tbaa !40
  br label %.lr.ph931

.lr.ph931:                                        ; preds = %bb.cm, %.epil.preheader, %.lr.ph931.unr-lcssa
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.cu

bb.cn:                                            ; preds = %bb.ct, %.lr.ph927.new
  %indvars.iv1062 = phi i64 [ 0, %.lr.ph927.new ], [ %indvars.iv.next1063.1, %bb.ct ] ; 3 uses
  %.2520926 = phi i32 [ %.0518.lcssa, %.lr.ph927.new ], [ %.4522.1, %bb.ct ] ; 2 uses
  %.0533925 = phi i32 [ 0, %.lr.ph927.new ], [ %.2535.1, %bb.ct ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph927.new ], [ %niter.next.1, %bb.ct ]
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv1062
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !38 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !40
  %.not679 = icmp eq ptr %i.kj, %i.kl
  br i1 %.not679, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.not680 = icmp ne i32 %.2520926, 0
  %i.km = zext i1 %.not680 to i32
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.kn = load ptr, ptr %i.iu, align 8, !tbaa !43
  %i.ko = zext nneg i32 %.0533925 to i64
  %i.kp = getelementptr inbounds nuw [1640 x i8], ptr %i.kn, i64 %i.ko
  store ptr %i.kp, ptr %i.kk, align 8, !tbaa !40
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn = phi i32 [ %i.km, %bb.co ], [ 1, %bb.cp ]
  %.4522 = phi i32 [ 0, %bb.co ], [ %.2520926, %bb.cp ] ; 2 uses
  %.2535 = add nuw nsw i32 %.pn, %.0533925        ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv1062
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !38 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !40
  %.not679.1 = icmp eq ptr %i.ks, %i.ku
  br i1 %.not679.1, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.not680.1 = icmp ne i32 %.4522, 0
  %i.kv = zext i1 %.not680.1 to i32
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.kw = load ptr, ptr %i.iu, align 8, !tbaa !43
  %i.kx = zext nneg i32 %.2535 to i64
  %i.ky = getelementptr inbounds nuw [1640 x i8], ptr %i.kw, i64 %i.kx
  store ptr %i.ky, ptr %i.kt, align 8, !tbaa !40
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn.1 = phi i32 [ %i.kv, %bb.cr ], [ 1, %bb.cs ]
  %.4522.1 = phi i32 [ 0, %bb.cr ], [ %.4522, %bb.cs ]
  %.2535.1 = add nuw nsw i32 %.pn.1, %.2535       ; 2 uses
  %indvars.iv.next1063.1 = add nuw nsw i64 %indvars.iv1062, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph931.unr-lcssa, label %bb.cn, !llvm.loop !308

bb.cu:                                            ; preds = %.lr.ph931, %bb.cy
  %i.kz = phi i32 [ %i.jw, %.lr.ph931 ], [ %i.ln, %bb.cy ]
  %indvars.iv1067 = phi i64 [ 0, %.lr.ph931 ], [ %indvars.iv.next1068, %bb.cy ] ; 2 uses
  %.sroa.0207.0929 = phi i32 [ 0, %.lr.ph931 ], [ %.sroa.0207.1, %bb.cy ] ; 2 uses
  %.sroa.6.0928 = phi i32 [ 1, %.lr.ph931 ], [ %.sroa.6.1, %bb.cy ] ; 2 uses
  %i.la = load ptr, ptr %i.kh, align 8, !tbaa !37
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv1067
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !38 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !40 ; 3 uses
  %.not677 = icmp eq ptr %i.le, null
  br i1 %.not677, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 128 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !113
  %.not678 = icmp eq ptr %i.lg, null
  br i1 %.not678, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store ptr %i.lc, ptr %i.lf, align 8, !tbaa !113
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !200
  %i.lj = getelementptr inbounds nuw i8, ptr %i.le, i64 136
  store ptr %i.li, ptr %i.lj, align 8, !tbaa !49
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0928 to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0207.0.insert.ext = zext i32 %.sroa.0207.0929 to i64
  %.sroa.0207.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0207.0.insert.ext
  %i.ll = load i64, ptr %i.lk, align 8
  %i.lm = call i64 @av_gcd_q(i64 %.sroa.0207.0.insert.insert, i64 %i.ll, i32 noundef 2147483647, i64 1) #18 ; 2 uses
  %.sroa.0207.0.extract.trunc = trunc i64 %i.lm to i32
  %.sroa.6.0.extract.shift = lshr i64 %i.lm, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %.pre1099 = load i32, ptr %i.du, align 4, !tbaa !36
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cu, %bb.cx
  %i.ln = phi i32 [ %.pre1099, %bb.cx ], [ %i.kz, %bb.cu ] ; 3 uses
  %.sroa.6.1 = phi i32 [ %.sroa.6.0.extract.trunc, %bb.cx ], [ %.sroa.6.0928, %bb.cu ] ; 2 uses
  %.sroa.0207.1 = phi i32 [ %.sroa.0207.0.extract.trunc, %bb.cx ], [ %.sroa.0207.0929, %bb.cu ]
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 1 ; 2 uses
  %i.lo = zext i32 %i.ln to i64
  %i.lp = icmp samesign ult i64 %indvars.iv.next1068, %i.lo
  br i1 %i.lp, label %bb.cu, label %._crit_edge932.loopexit, !llvm.loop !309

._crit_edge932.loopexit:                          ; preds = %bb.cy
  %i.lq = call i32 @llvm.smax.i32(i32 %.sroa.6.1, i32 1000)
  %i.lr = icmp eq i32 %i.ln, 0
  br label %._crit_edge932

._crit_edge932:                                   ; preds = %.preheader818, %._crit_edge932.loopexit
  %.not959 = phi i1 [ true, %.preheader818 ], [ %i.lr, %._crit_edge932.loopexit ]
  %.sroa.6.0.lcssa = phi i32 [ 1000, %.preheader818 ], [ %i.lq, %._crit_edge932.loopexit ]
  %i.ls = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 3 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !310
  %.not642 = icmp eq i32 %i.lt, 0
  br i1 %.not642, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %._crit_edge932
  store i32 %.sroa.6.0.lcssa, ptr %i.ls, align 4, !tbaa !310
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %._crit_edge932
  br i1 %.not959, label %.preheader810, label %.lr.ph938

.lr.ph938:                                        ; preds = %bb.da
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.lz = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.db

.preheader810:                                    ; preds = %bb.jv, %bb.da
  %i.mb = phi i32 [ 0, %bb.da ], [ %i.abp, %bb.jv ]
  %i.mc = load i32, ptr %i.dp, align 8, !tbaa !287
  %.not960 = icmp eq i32 %i.mc, 0
  br i1 %.not960, label %.preheader, label %.lr.ph948

.lr.ph948:                                        ; preds = %.preheader810
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.jw

bb.db:                                            ; preds = %.lr.ph938, %bb.jv
  %indvars.iv1070 = phi i64 [ 0, %.lr.ph938 ], [ %indvars.iv.next1071, %bb.jv ] ; 7 uses
  %i.me = load ptr, ptr %i.lu, align 8, !tbaa !37
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv1070
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !38 ; 9 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !40 ; 45 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 80
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !228
  %i.ml = call ptr @av_dict_get(ptr noundef %i.mk, ptr noundef nonnull @.str.214, ptr noundef null, i32 noundef 0) #18 ; 2 uses
  %.not652 = icmp eq ptr %i.mi, null
  br i1 %.not652, label %bb.jv, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not653 = icmp eq ptr %i.ml, null
  br i1 %.not653, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !229
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %i.mo = phi ptr [ %i.mn, %bb.dd ], [ @.str.221, %bb.dc ]
  %i.mp = load i32, ptr %i.g, align 8, !tbaa !82
  %i.mq = icmp ne i32 %i.mp, 2
  %i.mr = zext i1 %i.mq to i32
  %i.ms = call i32 @ff_mov_iso639_to_lang(ptr noundef %i.mo, i32 noundef %i.mr) #18 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mi, i64 112
  %i.mu = icmp slt i32 %i.ms, 0
  %spec.select705 = select i1 %i.mu, i32 32767, i32 %i.ms
  store i32 %spec.select705, ptr %i.mt, align 8, !tbaa !215
  %i.mv = load i32, ptr %i.g, align 8, !tbaa !82  ; 3 uses
  store i32 %i.mv, ptr %i.mi, align 8, !tbaa !118
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mi, i64 120 ; 5 uses
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !102 ; 2 uses
  %.not654 = icmp eq i32 %i.mx, 0
  br i1 %.not654, label %bb.df, label %.thread732

bb.df:                                            ; preds = %bb.de
  %i.my = getelementptr inbounds nuw i8, ptr %i.mi, i64 128 ; 5 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !113 ; 2 uses
  %.not.i.i710 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i710, label %is_cover_image.exit.thread.i713, label %is_cover_image.exit.i711

is_cover_image.exit.i711:                         ; preds = %bb.df
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 64
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !199
  %.not.i712 = icmp eq i32 %i.nb, 1024
  br i1 %.not.i712, label %bb.dg, label %is_cover_image.exit.thread.i713

bb.dg:                                            ; preds = %is_cover_image.exit.i711
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mi, i64 136
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !49
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !90
  %i.ng = call i32 @ff_codec_get_tag(ptr noundef nonnull @codec_cover_image_tags, i32 noundef %i.nf) #18
  br label %bb.hi

is_cover_image.exit.thread.i713:                  ; preds = %is_cover_image.exit.i711, %bb.df
  %i.nh = icmp eq i32 %i.mv, 32
  br i1 %i.nh, label %bb.dh, label %bb.dl

bb.dh:                                            ; preds = %is_cover_image.exit.thread.i713
  %i.ni = load ptr, ptr %i.lv, align 8, !tbaa !311
  %i.nj = call i32 @av_match_ext(ptr noundef %i.ni, ptr noundef nonnull @.str.636) #18
  %.not13.i = icmp eq i32 %i.nj, 0
  br i1 %.not13.i, label %bb.di, label %thread-pre-split.i

bb.di:                                            ; preds = %bb.dh
  %i.nk = load ptr, ptr %i.lv, align 8, !tbaa !311
  %i.nl = call i32 @av_match_ext(ptr noundef %i.nk, ptr noundef nonnull @.str.637) #18
  %.not14.i = icmp eq i32 %i.nl, 0
  br i1 %.not14.i, label %bb.dj, label %thread-pre-split.i

bb.dj:                                            ; preds = %bb.di
  %i.nm = load ptr, ptr %i.lv, align 8, !tbaa !311
  %i.nn = call i32 @av_match_ext(ptr noundef %i.nm, ptr noundef nonnull @.str.638) #18
  %.not15.i = icmp eq i32 %i.nn, 0
  br i1 %.not15.i, label %bb.dk, label %thread-pre-split.i

bb.dk:                                            ; preds = %bb.dj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.639) #18
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh
  %.pr.i = load i32, ptr %i.mi, align 8, !tbaa !118
  br label %bb.dl

bb.dl:                                            ; preds = %thread-pre-split.i, %is_cover_image.exit.thread.i713
  %i.no = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.mv, %is_cover_image.exit.thread.i713 ]
  %i.np = icmp eq i32 %i.no, 2
  br i1 %i.np, label %bb.dm, label %bb.hf

bb.dm:                                            ; preds = %bb.dl
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mi, i64 136 ; 5 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !49 ; 9 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !236 ; 4 uses
  %i.nu = icmp eq i32 %i.nt, 544240754
  %spec.store.select.i.i = select i1 %i.nu, i32 0, i32 %i.nt ; 2 uses
  %.not.i16.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i16.i, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nv = load i32, ptr %i.lw, align 8, !tbaa !312
  %i.nw = icmp sgt i32 %i.nv, -1
end_hunk_3
begin_hunk_4_@mov_init:bb.a
  br i1 %i.aec, label %.lr.ph940, label %.critedge700.thread

.lr.ph940:                                        ; preds = %.preheader807
  %i.aed = load ptr, ptr %i.iu, align 8, !tbaa !43
  %wide.trip.count1076 = zext nneg i32 %i.aeb to i64
  br label %bb.kd

bb.kd:                                            ; preds = %.lr.ph940, %bb.ke
  %indvars.iv1073 = phi i64 [ 0, %.lr.ph940 ], [ %indvars.iv.next1074, %bb.ke ] ; 3 uses
  %i.aee = getelementptr inbounds nuw [1640 x i8], ptr %i.aed, i64 %indvars.iv1073
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 128
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !113
  %.not647 = icmp eq ptr %i.aeg, %i.adx
  br i1 %.not647, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %indvars.iv.next1074 = add nuw nsw i64 %indvars.iv1073, 1 ; 2 uses
  %exitcond1077.not = icmp eq i64 %indvars.iv.next1074, %wide.trip.count1076
  br i1 %exitcond1077.not, label %.critedge700.thread, label %bb.kd, !llvm.loop !331

bb.kf:                                            ; preds = %bb.kd
  %i.aeh = load ptr, ptr %i.ads, align 8, !tbaa !232
  %i.aei = load i32, ptr %i.adt, align 4, !tbaa !233
  %i.aej = add nsw i32 %i.aei, 1
  %i.aek = sext i32 %i.aej to i64
  %i.ael = shl nsw i64 %i.aek, 2
  %i.aem = call ptr @av_realloc(ptr noundef %i.aeh, i64 noundef %i.ael) #18 ; 3 uses
  %.not648 = icmp eq ptr %i.aem, null
  br i1 %.not648, label %.critedge700.thread, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.aen = trunc nuw nsw i64 %indvars.iv1073 to i32
  store ptr %i.aem, ptr %i.ads, align 8, !tbaa !232
  %i.aeo = load i32, ptr %i.adt, align 4, !tbaa !233 ; 2 uses
  %i.aep = add nsw i32 %i.aeo, 1
  store i32 %i.aep, ptr %i.adt, align 4, !tbaa !233
  %i.aeq = sext i32 %i.aeo to i64
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.aeq
  store i32 %i.aen, ptr %i.aer, align 4, !tbaa !33
  %.pre1108 = load i32, ptr %i.adj, align 8, !tbaa !293
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kc, %bb.kg
  %i.aes = phi i32 [ %i.adu, %bb.kc ], [ %.pre1108, %bb.kg ] ; 2 uses
  %indvars.iv.next1079 = add nuw nsw i64 %indvars.iv1078, 1 ; 2 uses
  %i.aet = zext i32 %i.aes to i64
  %i.aeu = icmp samesign ult i64 %indvars.iv.next1079, %i.aet
  br i1 %i.aeu, label %bb.kc, label %.loopexit, !llvm.loop !332

.loopexit:                                        ; preds = %bb.kh, %.thread772, %bb.jw
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 1 ; 2 uses
  %i.aev = load i32, ptr %i.dp, align 8, !tbaa !287
  %i.aew = zext i32 %i.aev to i64
  %i.aex = icmp samesign ult i64 %indvars.iv.next1087, %i.aew
  br i1 %i.aex, label %bb.jw, label %.preheader.loopexit, !llvm.loop !333

bb.ki:                                            ; preds = %.lr.ph950, %bb.km
  %i.aey = phi i32 [ %i.abs, %.lr.ph950 ], [ %i.afm, %bb.km ] ; 2 uses
  %indvars.iv1089 = phi i64 [ 0, %.lr.ph950 ], [ %indvars.iv.next1090, %bb.km ] ; 2 uses
  %i.aez = load ptr, ptr %i.abt, align 8, !tbaa !37
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %indvars.iv1089
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !38 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !40 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !200
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !236
  %.not643 = icmp eq i32 %i.afh, 1684237684
  br i1 %.not643, label %bb.kj, label %bb.km

bb.kj:                                            ; preds = %bb.ki
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afd, i64 244 ; 2 uses
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !233
  %.not644 = icmp eq i32 %i.afj, 0
  br i1 %.not644, label %bb.kk, label %bb.km

bb.kk:                                            ; preds = %bb.kj
  %i.afk = call noalias ptr @av_malloc(i64 noundef 4) #18 ; 3 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afd, i64 248
  store ptr %i.afk, ptr %i.afl, align 8, !tbaa !232
  %.not645 = icmp eq ptr %i.afk, null
  br i1 %.not645, label %.critedge700.thread, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  store i32 0, ptr %i.afk, align 4, !tbaa !33
  store i32 1, ptr %i.afi, align 4, !tbaa !233
  %.pre1110 = load i32, ptr %i.du, align 4, !tbaa !36
  br label %bb.km

bb.km:                                            ; preds = %bb.ki, %bb.kl, %bb.kj
  %i.afm = phi i32 [ %i.aey, %bb.ki ], [ %.pre1110, %bb.kl ], [ %i.aey, %bb.kj ] ; 2 uses
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 1 ; 2 uses
  %i.afn = zext i32 %i.afm to i64
  %i.afo = icmp samesign ult i64 %indvars.iv.next1090, %i.afn
  br i1 %i.afo, label %bb.ki, label %._crit_edge951, !llvm.loop !334

._crit_edge951:                                   ; preds = %bb.km, %.preheader
  %.val709 = load ptr, ptr %i.a, align 8, !tbaa !9
  call fastcc void @enable_tracks(ptr %.val709)
  br label %.critedge700.thread

.critedge700.thread:                              ; preds = %bb.ba, %.lr.ph922, %bb.ju, %bb.if, %bb.ig, %bb.kb, %bb.jz, %bb.kf, %.preheader807, %bb.ke, %bb.kk, %.loopexit814, %bb.jj, %bb.im, %bb.je, %bb.jb, %bb.ix, %bb.ie, %bb.id, %bb.ib, %split, %bb.hm, %bb.bc, %.thread725, %bb.az, %bb.aw, %._crit_edge951, %bb.cl, %.thread731, %bb.ck, %bb.cj, %bb.ch, %bb.au, %bb.ar, %bb.ao, %bb.aj, %bb.o
  %.29 = phi i32 [ -22, %bb.o ], [ -22, %bb.aj ], [ -22, %bb.ar ], [ -22, %bb.au ], [ -12, %bb.kk ], [ -12, %bb.ig ], [ -22, %bb.ch ], [ -22, %bb.cj ], [ -12, %.thread731 ], [ %i.ju, %bb.cl ], [ -22, %bb.ck ], [ -22, %bb.ao ], [ -22, %bb.aw ], [ -22, %bb.ke ], [ 0, %._crit_edge951 ], [ -22, %bb.hm ], [ -12, %bb.jz ], [ -22, %bb.az ], [ -22, %.thread725 ], [ -22, %bb.bc ], [ -22, %split ], [ -22, %.loopexit814 ], [ -733130664, %bb.jj ], [ -22, %bb.im ], [ -733130664, %bb.je ], [ -22, %bb.jb ], [ -22, %bb.ix ], [ -12, %.lr.ph922 ], [ -22, %.preheader807 ], [ -1163346256, %bb.ie ], [ -22, %bb.id ], [ -22, %bb.ib ], [ -12, %bb.kf ], [ -22, %bb.kb ], [ %i.abo, %bb.ju ], [ %i.xi, %bb.if ], [ -22, %bb.ba ]
  ret i32 %.29
}

; Function Attrs: nounwind uwtable
define internal void @mov_free(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 3 uses
  %.not76 = icmp eq i32 %i.d, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 9 uses
  %wide.trip.count = zext i32 %i.d to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.g = icmp ult i32 %i.d, 8
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod91 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod91)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.j, align 8, !tbaa !40
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !335

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.r, label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.c ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr null, ptr %i.o, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr null, ptr %i.s, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr null, ptr %i.w, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr null, ptr %i.aa, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr null, ptr %i.ae, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr null, ptr %i.ai, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr null, ptr %i.am, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr null, ptr %i.aq, align 8, !tbaa !40
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !336

bb.d:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !225 ; 2 uses
  %.not59 = icmp eq i32 %i.as, 0
  br i1 %.not59, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [1640 x i8], ptr %i.l, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  tail call void @avcodec_parameters_free(ptr noundef nonnull %i.av) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !116
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.g

._crit_edge75:                                    ; preds = %bb.q, %bb.f
  tail call void @av_freep(ptr noundef nonnull %i.k) #18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @ffio_free_dyn_buf(ptr noundef nonnull %i.ba) #18
  br label %bb.r

bb.g:                                             ; preds = %.lr.ph74, %bb.q
  %indvars.iv84 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next85, %bb.q ] ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.bc = getelementptr inbounds nuw [1640 x i8], ptr %i.bb, i64 %indvars.iv84 ; 22 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !102
  switch i32 %i.be, label %bb.k [
    i32 544240754, label %bb.h
    i32 1684237684, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @ff_mov_close_hinting(ptr noundef nonnull %i.bc) #18
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !198
  %.not60 = icmp eq i32 %i.bf, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  tail call void @av_freep(ptr noundef nonnull %i.bg) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j, %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 152
  tail call void @av_freep(ptr noundef nonnull %i.bh) #18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 160
  tail call void @av_freep(ptr noundef nonnull %i.bi) #18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 360
  tail call void @av_freep(ptr noundef nonnull %i.bj) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 320
  tail call void @av_packet_free(ptr noundef nonnull %i.bk) #18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 400 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !121 ; 2 uses
  %.not61 = icmp eq ptr %i.bm, null
  br i1 %.not61, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @av_packet_free(ptr noundef nonnull %i.bm) #18
  tail call void @av_freep(ptr noundef nonnull %i.bl) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 44 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !109
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  br label %bb.n

._crit_edge67:                                    ; preds = %bb.n, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  tail call void @av_freep(ptr noundef nonnull %i.br) #18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  tail call void @av_freep(ptr noundef nonnull %i.bs) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 180 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !337
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %._crit_edge67
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 184
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph66, %bb.n
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %bb.n ] ; 2 uses
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !104
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv78
  tail call void @av_freep(ptr noundef %i.by) #18
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.bz = load i32, ptr %i.bn, align 4, !tbaa !109
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next79, %i.ca
  br i1 %i.cb, label %bb.n, label %._crit_edge67, !llvm.loop !338

._crit_edge71:                                    ; preds = %bb.o, %._crit_edge67
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 184
  tail call void @av_freep(ptr noundef nonnull %i.cc) #18
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 248
  tail call void @av_freep(ptr noundef nonnull %i.cd) #18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bc, i64 408
  tail call void @ff_mov_cenc_free(ptr noundef nonnull %i.ce) #18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 328
  tail call void @ffio_free_dyn_buf(ptr noundef nonnull %i.cf) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bc, i64 1624
  tail call void @ffio_free_dyn_buf(ptr noundef nonnull %i.cg) #18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 1608 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !246 ; 2 uses
  %.not62 = icmp eq ptr %i.ci, null
  br i1 %.not62, label %bb.q, label %bb.p

bb.o:                                             ; preds = %.lr.ph70, %bb.o
  %indvars.iv81 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next82, %bb.o ] ; 2 uses
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !339
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv81
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.cl) #18
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.cm = load i32, ptr %i.bt, align 4, !tbaa !337
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next82, %i.cn
  br i1 %i.co, label %bb.o, label %._crit_edge71, !llvm.loop !340

bb.p:                                             ; preds = %._crit_edge71
  tail call void @ff_iamf_uninit_context(ptr noundef nonnull %i.ci) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge71
  tail call void @av_freep(ptr noundef nonnull %i.ch) #18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 1632
  tail call void @ff_isom_close_apvc(ptr noundef nonnull %i.cp) #18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 1592
  tail call void @ff_packet_list_free(ptr noundef nonnull %i.cq) #18
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.cr = load i32, ptr %i.aw, align 4, !tbaa !116
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next85, %i.cs
  br i1 %i.ct, label %bb.g, label %._crit_edge75, !llvm.loop !341

bb.r:                                             ; preds = %._crit_edge, %._crit_edge75
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mov_check_bitstream(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !90
  switch i32 %i.d, label %bb.d [
    i32 86018, label %bb.b
    i32 166, label %.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp sgt i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.j = load i16, ptr %i.i, align 1, !tbaa !94
  %i.k = tail call i16 @llvm.bswap.i16(i16 %i.j)
  %i.l = icmp ugt i16 %i.k, -17
  br i1 %i.l, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.a, %bb.c
  %.str.646.sink = phi ptr [ @.str.645, %bb.c ], [ @.str.646, %bb.a ]
  %i.m = tail call i32 @ff_stream_add_bitstream_filter(ptr noundef nonnull %1, ptr noundef nonnull %.str.646.sink, ptr noundef null) #18
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ], [ %i.m, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @avif_write_trailer(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
end_hunk_4
begin_hunk_5_@mov_write_ftyp_tag_internal:bb.a
  %i.s = and i32 %i.q, 1024
  %.not46 = icmp eq i32 %i.s, 0
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 896496489) #18
  br label %bb.u

bb.n:                                             ; preds = %.thread
  %i.t = and i32 %i.q, 524288
  %.not47 = icmp eq i32 %i.t, 0
  br i1 %.not47, label %.thread1, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 879719273) #18
  br label %bb.u

.thread1:                                         ; preds = %bb.i, %bb.n
  %i.u = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.g)
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %.split, label %bb.t

.split:                                           ; preds = %.thread1
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.g, i1 true)
  switch i32 %i.w, label %bb.t [
    i32 0, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.r
    i32 7, label %bb.s
  ]

bb.p:                                             ; preds = %.split
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1836020585) #18
  br label %bb.u

bb.q:                                             ; preds = %.split
  %.not48 = icmp eq i32 %2, 0
  %i.x = select i1 %.not48, i32 541144141, i32 542520397
  tail call void @avio_wl32(ptr noundef %0, i32 noundef %i.x) #18
  br label %bb.u

bb.r:                                             ; preds = %.split
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1819112297) #18
  br label %bb.u

bb.s:                                             ; preds = %.split
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 544617574) #18
  br label %bb.u

bb.t:                                             ; preds = %.thread1, %.split
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 538997873) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %bb.h, %bb.l, %bb.o, %bb.q, %bb.s, %bb.t, %bb.r, %bb.p, %bb.m, %bb.j, %bb.f, %bb.c
  %.0 = phi i32 [ 512, %bb.c ], [ %i.i, %bb.e ], [ 0, %bb.f ], [ %i.o, %bb.h ], [ 512, %bb.j ], [ 512, %bb.l ], [ 512, %bb.m ], [ 512, %bb.o ], [ 512, %bb.p ], [ 512, %bb.q ], [ 512, %bb.r ], [ 512, %bb.s ], [ 512, %bb.t ]
  %.not52 = icmp eq i32 %3, 0
  br i1 %.not52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %.0) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  ret void
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare void @avio_wb16(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @avcodec_parameters_alloc() local_unnamed_addr #2

declare i32 @ff_alloc_extradata(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare i32 @av_timecode_init_from_string(ptr noundef, i64, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avio_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mov_setup_track_ids(ptr nofree noundef captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !387
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.d = load i32, ptr %i.c, align 4, !tbaa !388
  %.not53 = icmp eq i32 %i.d, 0
  br i1 %.not53, label %.preheader, label %.preheader3

.preheader3:                                      ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !196  ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.preheader1

.lr.ph:                                           ; preds = %.preheader3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.j = icmp ult i32 %i.f, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !116  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph13, label %.loopexit

.lr.ph13:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.trip.count24 = zext nneg i32 %i.l to i64
  br label %bb.l

.preheader1.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader1, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader1.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader1.loopexit.unr-lcssa ]
  %.0445.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.3, %.preheader1.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.0445.epil = phi i32 [ %.0445.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.q = getelementptr inbounds nuw [1640 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !249
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %.0445.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader1, label %bb.c, !llvm.loop !389

.preheader1:                                      ; preds = %.preheader1.loopexit.unr-lcssa, %bb.c, %.preheader3
  %.044.lcssa = phi i32 [ 0, %.preheader3 ], [ %spec.select.3, %.preheader1.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !116  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %.preheader1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = sext i32 %i.f to i64
  %wide.trip.count19 = zext nneg i32 %i.w to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.d ] ; 5 uses
  %.0445 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.3, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.ac = getelementptr inbounds nuw [1640 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !249
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %.0445)
  %i.ah = getelementptr inbounds nuw [1640 x i8], ptr %i.i, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1768
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !113
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !249
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %spec.select)
  %i.am = getelementptr inbounds nuw [1640 x i8], ptr %i.i, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3408
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !113
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !249
  %spec.select.2 = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %spec.select.1)
  %i.ar = getelementptr inbounds nuw [1640 x i8], ptr %i.i, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 5048
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !113
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !249
  %spec.select.3 = tail call i32 @llvm.smax.i32(i32 %i.av, i32 %spec.select.2) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader1.loopexit.unr-lcssa, label %bb.d, !llvm.loop !390

bb.e:                                             ; preds = %.lr.ph9, %bb.k
  %indvars.iv16 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next17, %bb.k ] ; 3 uses
  %.28 = phi i32 [ %.044.lcssa, %.lr.ph9 ], [ %.4, %bb.k ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [1640 x i8], ptr %i.z, i64 %indvars.iv16 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !70
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.aa, align 8, !tbaa !81
  %i.bb = and i32 %i.ba, 2
  %.not56 = icmp eq i32 %i.bb, 0
  br i1 %.not56, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not57 = icmp slt i64 %indvars.iv16, %i.ab
  br i1 %.not57, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = add nuw nsw i32 %.28, 1                 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !113
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !249
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3 = phi i32 [ %i.bc, %bb.h ], [ %.28, %bb.i ]
  %i.bh = phi i32 [ %i.bc, %bb.h ], [ %i.bg, %bb.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 116
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !239
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j
  %.4 = phi i32 [ %.3, %bb.j ], [ %.28, %bb.f ]
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1 ; 2 uses
  %exitcond20.not = icmp eq i64 %indvars.iv.next17, %wide.trip.count19
  br i1 %exitcond20.not, label %.loopexit, label %bb.e, !llvm.loop !391

bb.l:                                             ; preds = %.lr.ph13, %bb.r
  %indvars.iv21 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next22, %bb.r ] ; 3 uses
  %.012 = phi i32 [ 0, %.lr.ph13 ], [ %.1, %bb.r ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [1640 x i8], ptr %i.o, i64 %indvars.iv21 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !70
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = load i32, ptr %i.p, align 8, !tbaa !81
  %i.bo = and i32 %i.bn, 2
  %.not54 = icmp eq i32 %i.bo, 0
  br i1 %.not54, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !113 ; 2 uses
  %.not55 = icmp eq ptr %i.bq, null
  br i1 %.not55, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !252
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bt = trunc nuw nsw i64 %indvars.iv21 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink = phi i32 [ %i.bs, %bb.o ], [ %i.bt, %bb.p ]
  %..0 = tail call i32 @llvm.smax.i32(i32 %.sink, i32 %.012)
  %i.bu = add nuw nsw i32 %..0, 1                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 116
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !239
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q
  %.1 = phi i32 [ %i.bu, %bb.q ], [ %.012, %bb.m ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %.loopexit, label %bb.l, !llvm.loop !392

.loopexit:                                        ; preds = %bb.k, %bb.r, %.preheader1, %.preheader
  store i32 1, ptr %i.a, align 8, !tbaa !387
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i32 } @calculate_mpeg4_bit_rates(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !354
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !355
  %i.i = tail call ptr @av_packet_side_data_get(ptr noundef %i.f, i32 noundef %i.h, i32 noundef 10) #18 ; 2 uses
  %.not44 = icmp eq ptr %i.i, null
  br i1 %.not44, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.k = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %compute_avg_bitrate.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !70   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %compute_avg_bitrate.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71   ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.o to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.s = icmp ult i32 %i.o, 4
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.d ] ; 5 uses
  %.01012.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.am, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !163
  %i.w = zext i32 %i.v to i64
  %i.x = add i64 %.01012.i, %i.w
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !163
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !163
  %i.ag = zext i32 %i.af to i64
  %i.ah = add i64 %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !163
  %i.al = zext i32 %i.ak to i64
  %i.am = add i64 %i.ah, %i.al                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.d, !llvm.loop !393

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01012.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.am, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod81)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.e ] ; 2 uses
  %.01012.i.epil = phi i64 [ %.01012.i.epil.init, %.epil.preheader ], [ %i.ar, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %indvars.iv.i.epil
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !163
  %i.aq = zext i32 %i.ap to i64
  %i.ar = add i64 %.01012.i.epil, %i.aq           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.e, !llvm.loop !394

._crit_edge.loopexit.i:                           ; preds = %bb.e, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.am, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ar, %bb.e ]
  %i.as = shl i64 %.lcssa, 3
  br label %compute_avg_bitrate.exit

compute_avg_bitrate.exit:                         ; preds = %.preheader.i, %._crit_edge.loopexit.i
  %.010.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.as, %._crit_edge.loopexit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !234
  %i.av = zext i32 %i.au to i64
  %i.aw = mul i64 %.010.lcssa.i, %i.av
  %i.ax = udiv i64 %i.aw, %i.m
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %.not45 = icmp eq i32 %i.ay, 0
  br i1 %.not45, label %compute_avg_bitrate.exit.thread, label %compute_avg_bitrate.exit._crit_edge

compute_avg_bitrate.exit._crit_edge:              ; preds = %compute_avg_bitrate.exit
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre66 = load ptr, ptr %.phi.trans.insert65, align 8, !tbaa !49
  br label %bb.j

compute_avg_bitrate.exit.thread:                  ; preds = %.thread, %compute_avg_bitrate.exit
  %.not46 = icmp eq ptr %i.k, null
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %compute_avg_bitrate.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !395 ; 3 uses
  %.not47 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !49 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !364 ; 3 uses
  br i1 %.not47, label %.thread56, label %.thread59

bb.g:                                             ; preds = %compute_avg_bitrate.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !364 ; 2 uses
  %.not48 = icmp eq i64 %i.bi, 0
  br i1 %.not48, label %.thread77, label %bb.h

.thread77:                                        ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !364
  %i.bl = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 0)
  br label %bb.l

.thread56:                                        ; preds = %bb.f
  %.not4857 = icmp eq i64 %i.be, 0
  br i1 %.not4857, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread56, %bb.g
  %i.bm = phi ptr [ %i.bc, %.thread56 ], [ %i.bg, %bb.g ]
  %i.bn = phi i64 [ %i.be, %.thread56 ], [ %i.bi, %bb.g ]
  %i.bo = trunc i64 %i.bn to i32
  br label %bb.j

bb.i:                                             ; preds = %.thread56
  %i.bp = load i64, ptr %i.k, align 8, !tbaa !397
  br label %.thread59

.thread59:                                        ; preds = %bb.f, %bb.i
  %i.bq = phi i64 [ 0, %bb.i ], [ %i.be, %bb.f ]  ; 2 uses
  %.sroa.7.0.ph.in = phi i64 [ %i.bp, %bb.i ], [ %i.ba, %bb.f ] ; 3 uses
  %.sroa.7.0.ph = trunc i64 %.sroa.7.0.ph.in to i32
  %i.br = and i64 %.sroa.7.0.ph.in, 4294967295
  %i.bs = icmp sgt i64 %i.bq, %i.br
  %i.bt = select i1 %i.bs, i64 %i.bq, i64 %.sroa.7.0.ph.in
  br label %bb.k

bb.j:                                             ; preds = %compute_avg_bitrate.exit._crit_edge, %bb.h
  %i.bu = phi ptr [ %.pre66, %compute_avg_bitrate.exit._crit_edge ], [ %i.bm, %bb.h ]
  %.sroa.7.0 = phi i32 [ %i.ay, %compute_avg_bitrate.exit._crit_edge ], [ %i.bo, %bb.h ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !364
  %i.bx = zext i32 %.sroa.7.0 to i64
  %i.by = tail call i64 @llvm.smax.i64(i64 %i.bw, i64 %i.bx) ; 2 uses
  %.not50 = icmp eq ptr %i.k, null
  br i1 %.not50, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert67 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.pre68 = load i64, ptr %.phi.trans.insert67, align 8, !tbaa !395
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.thread59
  %i.bz = phi i64 [ %i.ba, %.thread59 ], [ %.pre68, %._crit_edge ]
  %i.ca = phi i64 [ %i.bt, %.thread59 ], [ %i.by, %._crit_edge ]
  %.sroa.7.062 = phi i32 [ %.sroa.7.0.ph, %.thread59 ], [ %.sroa.7.0, %._crit_edge ]
  %.not51 = icmp eq i64 %i.bz, 0
  %spec.select52 = select i1 %.not51, i32 0, i32 %.sroa.7.062
  %i.cb = and i64 %i.ca, 4294967295
  %i.cc = load i64, ptr %i.k, align 8, !tbaa !397
  %i.cd = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 %i.cb)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !398
  %i.cg = sdiv i64 %i.cf, 8
  %i.ch = and i64 %i.cg, 4294967295
  br label %bb.l

bb.l:                                             ; preds = %.thread77, %bb.k, %bb.j
  %.sroa.7.2 = phi i32 [ %spec.select52, %bb.k ], [ %.sroa.7.0, %bb.j ], [ 0, %.thread77 ]
  %.sroa.022.sroa.3.0.in = phi i64 [ %i.cd, %bb.k ], [ %i.by, %bb.j ], [ %i.bl, %.thread77 ]
  %.sroa.022.sroa.0.0 = phi i64 [ %i.ch, %bb.k ], [ 0, %bb.j ], [ 0, %.thread77 ]
  %.sroa.022.sroa.3.0.insert.ext = shl i64 %.sroa.022.sroa.3.0.in, 32
  %.sroa.022.sroa.0.0.insert.insert = or disjoint i64 %.sroa.022.sroa.3.0.insert.ext, %.sroa.022.sroa.0.0
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.022.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.7.2, 1
  ret { i64, i32 } %.fca.1.insert
}

declare i64 @av_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @av_strlcatf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_avc_write_annexb_extradata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_codec_get_tag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ff_data_to_hex(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mov_write_trak_tag(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [1000 x i8], align 16             ; 7 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !265
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !81
  %i.p = and i32 %i.o, 4
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.j, align 8, !tbaa !70
  store i64 0, ptr %i.l, align 8, !tbaa !265
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %1, i32 noundef 1801548404) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  call fastcc void @get_pts_range(ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %3, ptr noundef %i.g, ptr noundef %i.h, i32 noundef 0, i32 noundef 0)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !169
  %.not.i.i = icmp eq i32 %i.r, 0
  %.pre.i.i = load i64, ptr %i.g, align 8
  %i.s = select i1 %.not.i.i, i64 %.pre.i.i, i64 0
  %i.t = load i64, ptr %i.h, align 8, !tbaa !351
  %i.u = sub nsw i64 %i.t, %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.w = load i32, ptr %i.v, align 4, !tbaa !310
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_5
begin_hunk_6_@mov_write_trak_tag:bb.a
bb.dt:                                            ; preds = %.lr.ph.i72.i.i.i
  %i.mm = load i32, ptr %i.mi, align 4, !tbaa !412
  %i.mn = add i32 %i.mm, 1
  store i32 %i.mn, ptr %i.mi, align 4, !tbaa !412
  br label %bb.dv

bb.du:                                            ; preds = %.lr.ph.i72.i.i.i
  %i.mo = add i32 %.0441.i.i.i.i, 1               ; 2 uses
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.mp ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i32 %i.mg, ptr %i.mr, align 4, !tbaa !414
  store i32 1, ptr %i.mq, align 4, !tbaa !412
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.145.i.i.i.i = phi i32 [ %.0441.i.i.i.i, %bb.dt ], [ %i.mo, %bb.du ] ; 2 uses
  %indvars.iv.next.i74.i.i.i = add nuw nsw i64 %indvars.iv.i73.i.i.i, 1 ; 2 uses
  %exitcond.not.i75.i.i.i = icmp eq i64 %indvars.iv.next.i74.i.i.i, %wide.trip.count.i71.i.i.i
  br i1 %exitcond.not.i75.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i72.i.i.i, !llvm.loop !415

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.dv
  %i.ms = add i32 %.145.i.i.i.i, 1
  br label %._crit_edge.i70.i.i.i

._crit_edge.i70.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.ds
  %.044.lcssa.i.i.i.i = phi i32 [ 1, %bb.ds ], [ %i.ms, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %i.mt = shl i32 %.044.lcssa.i.i.i.i, 3
  %i.mu = add i32 %i.mt, 16                       ; 3 uses
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.mu) #18
  tail call void @avio_wl32(ptr noundef %1, i32 noundef 1937011811) #18
  %i.mv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 64
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !81
  %i.mx = lshr i32 %i.mw, 19
  %.lobit.i.i.i.i = and i32 %i.mx, 1
  tail call void @avio_w8(ptr noundef %1, i32 noundef %.lobit.i.i.i.i) #18
  tail call void @avio_wb24(ptr noundef %1, i32 noundef 0) #18
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %.044.lcssa.i.i.i.i) #18
  %.not7.i.i.i.i = icmp eq i32 %.044.lcssa.i.i.i.i, 0
  br i1 %.not7.i.i.i.i, label %mov_write_ctts_tag.exit.i.i.i, label %.lr.ph5.preheader.i.i.i.i

.lr.ph5.preheader.i.i.i.i:                        ; preds = %._crit_edge.i70.i.i.i
  %wide.trip.count12.i.i.i.i = zext i32 %.044.lcssa.i.i.i.i to i64
  br label %.lr.ph5.i.i.i.i

.lr.ph5.i.i.i.i:                                  ; preds = %.lr.ph5.i.i.i.i, %.lr.ph5.preheader.i.i.i.i
  %indvars.iv9.i.i.i.i = phi i64 [ 0, %.lr.ph5.preheader.i.i.i.i ], [ %indvars.iv.next10.i.i.i.i, %.lr.ph5.i.i.i.i ] ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv9.i.i.i.i ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !412
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.mz) #18
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !414
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.nb) #18
  %indvars.iv.next10.i.i.i.i = add nuw nsw i64 %indvars.iv9.i.i.i.i, 1 ; 2 uses
  %exitcond13.not.i.i.i.i = icmp eq i64 %indvars.iv.next10.i.i.i.i, %wide.trip.count12.i.i.i.i
  br i1 %exitcond13.not.i.i.i.i, label %mov_write_ctts_tag.exit.i.i.i, label %.lr.ph5.i.i.i.i, !llvm.loop !416

mov_write_ctts_tag.exit.i.i.i:                    ; preds = %.lr.ph5.i.i.i.i, %._crit_edge.i70.i.i.i
  tail call void @av_free(ptr noundef nonnull %i.lw) #18
  %i.nc = icmp slt i32 %i.mu, 0
  br i1 %i.nc, label %mov_write_mdia_tag.exit.thread, label %bb.dw

bb.dw:                                            ; preds = %mov_write_ctts_tag.exit.i.i.i, %bb.dq, %bb.dp, %bb.do
  %i.nd = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %1, i32 noundef 1668510835) #18
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  %i.ne = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18
  %i.nf = load i64, ptr %i.l, align 8, !tbaa !265
  %i.ng = trunc i64 %i.nf to i32
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.ng) #18
  %i.nh = load i32, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.ni = icmp sgt i32 %i.nh, 0
  br i1 %i.ni, label %.lr.ph.i77.i.i.i, label %mov_write_stsc_tag.exit.i.i.i

.lr.ph.i77.i.i.i:                                 ; preds = %bb.dw
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 4 uses
  %.pre.i78.i.i.i = load ptr, ptr %i.nj, align 8, !tbaa !71
  br label %bb.dx

bb.dx:                                            ; preds = %bb.eb, %.lr.ph.i77.i.i.i
  %i.nk = phi i32 [ %i.nh, %.lr.ph.i77.i.i.i ], [ %i.oj, %bb.eb ] ; 2 uses
  %i.nl = phi ptr [ %.pre.i78.i.i.i, %.lr.ph.i77.i.i.i ], [ %i.ok, %bb.eb ] ; 3 uses
  %indvars.iv.i79.i.i.i = phi i64 [ 0, %.lr.ph.i77.i.i.i ], [ %indvars.iv.next.i81.i.i.i, %bb.eb ] ; 5 uses
  %.04050.i.i.i.i = phi i32 [ -1, %.lr.ph.i77.i.i.i ], [ %.1.i.i.i.i, %bb.eb ] ; 3 uses
  %.04149.i.i.i.i = phi i32 [ -1, %.lr.ph.i77.i.i.i ], [ %.142.i.i.i.i, %bb.eb ] ; 3 uses
  %.04348.i.i.i.i = phi i32 [ 0, %.lr.ph.i77.i.i.i ], [ %.144.i.i.i.i, %bb.eb ] ; 3 uses
  %i.nm = getelementptr inbounds nuw [72 x i8], ptr %i.nl, i64 %indvars.iv.i79.i.i.i ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !161
  %.not.i80.i.i.i = icmp eq i32 %.04050.i.i.i.i, %i.no
  br i1 %.not.i80.i.i.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 28
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !160
  %.not46.i.i.i.i = icmp eq i32 %.04149.i.i.i.i, %i.nq
  br i1 %.not46.i.i.i.i, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 36
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !162 ; 2 uses
  %.not47.i.i.i.i = icmp eq i32 %i.ns, 0
  br i1 %.not47.i.i.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.ns) #18
  %i.nt = load ptr, ptr %i.nj, align 8, !tbaa !71
  %i.nu = getelementptr inbounds nuw [72 x i8], ptr %i.nt, i64 %indvars.iv.i79.i.i.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !161
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.nw) #18
  %i.nx = load ptr, ptr %i.nj, align 8, !tbaa !71
  %i.ny = getelementptr inbounds nuw [72 x i8], ptr %i.nx, i64 %indvars.iv.i79.i.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 28
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !160
  %i.ob = add i32 %i.oa, 1
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.ob) #18
  %i.oc = load ptr, ptr %i.nj, align 8, !tbaa !71 ; 2 uses
  %i.od = getelementptr inbounds nuw [72 x i8], ptr %i.oc, i64 %indvars.iv.i79.i.i.i ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 32
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !161
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 28
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !160
  %i.oi = add nsw i32 %.04348.i.i.i.i, 1
  %.pre53.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !70
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.dy
  %i.oj = phi i32 [ %.pre53.i.i.i.i, %bb.ea ], [ %i.nk, %bb.dz ], [ %i.nk, %bb.dy ] ; 2 uses
  %i.ok = phi ptr [ %i.oc, %bb.ea ], [ %i.nl, %bb.dz ], [ %i.nl, %bb.dy ]
  %.144.i.i.i.i = phi i32 [ %i.oi, %bb.ea ], [ %.04348.i.i.i.i, %bb.dz ], [ %.04348.i.i.i.i, %bb.dy ] ; 2 uses
  %.142.i.i.i.i = phi i32 [ %i.oh, %bb.ea ], [ %.04149.i.i.i.i, %bb.dz ], [ %.04149.i.i.i.i, %bb.dy ]
  %.1.i.i.i.i = phi i32 [ %i.of, %bb.ea ], [ %.04050.i.i.i.i, %bb.dz ], [ %.04050.i.i.i.i, %bb.dy ]
  %indvars.iv.next.i81.i.i.i = add nuw nsw i64 %indvars.iv.i79.i.i.i, 1 ; 2 uses
  %i.ol = sext i32 %i.oj to i64
  %i.om = icmp slt i64 %indvars.iv.next.i81.i.i.i, %i.ol
  br i1 %i.om, label %bb.dx, label %mov_write_stsc_tag.exit.i.i.i, !llvm.loop !417

mov_write_stsc_tag.exit.i.i.i:                    ; preds = %bb.eb, %bb.dw
  %.043.lcssa.i.i.i.i = phi i32 [ 0, %bb.dw ], [ %.144.i.i.i.i, %bb.eb ]
  %i.on = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18
  %i.oo = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.ne, i32 noundef 0) #18 ; 0 uses
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %.043.lcssa.i.i.i.i) #18
  %i.op = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.on, i32 noundef 0) #18 ; 0 uses
  %i.oq = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.or = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.nd, i32 noundef 0) #18 ; 0 uses
  %i.os = sub nsw i64 %i.oq, %i.nd
  %i.ot = trunc i64 %i.os to i32
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.ot) #18
  %i.ou = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.oq, i32 noundef 0) #18 ; 0 uses
  %i.ov = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %1, i32 noundef 2054386803) #18
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  %i.ow = load i32, ptr %i.j, align 8, !tbaa !70  ; 5 uses
  %i.ox = icmp sgt i32 %i.ow, 0
  br i1 %i.ox, label %.lr.ph.i84.i.i.i, label %._crit_edge.i82.i.i.i

.lr.ph.i84.i.i.i:                                 ; preds = %mov_write_stsc_tag.exit.i.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !71 ; 3 uses
  %wide.trip.count.i85.i.i.i = zext nneg i32 %i.ow to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i85.i.i.i, 1
  %i.pa = icmp eq i32 %i.ow, 1
  br i1 %i.pa, label %.epil.preheader, label %.lr.ph.i84.i.i.i.new

.lr.ph.i84.i.i.i.new:                             ; preds = %.lr.ph.i84.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i85.i.i.i, 2147483646
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.lr.ph.i84.i.i.i.new
  %indvars.iv.i86.i.i.i = phi i64 [ 0, %.lr.ph.i84.i.i.i.new ], [ %indvars.iv.next.i87.i.i.i.1, %bb.ec ] ; 3 uses
  %.060.i.i.i.i = phi i32 [ -1, %.lr.ph.i84.i.i.i.new ], [ %i.pn, %bb.ec ] ; 2 uses
  %.04559.i.i.i.i = phi i32 [ 0, %.lr.ph.i84.i.i.i.new ], [ %i.pp, %bb.ec ]
  %.04857.i.i.i.i = phi i32 [ 1, %.lr.ph.i84.i.i.i.new ], [ %.149.i.i.i.i.1, %bb.ec ]
  %niter = phi i64 [ 0, %.lr.ph.i84.i.i.i.new ], [ %niter.next.1, %bb.ec ]
  %i.pb = getelementptr inbounds nuw [72 x i8], ptr %i.oz, i64 %indvars.iv.i86.i.i.i ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !163
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !164 ; 2 uses
  %i.pg = udiv i32 %i.pd, %i.pf                   ; 3 uses
  %.not53.i.i.i.i = icmp eq i32 %.060.i.i.i.i, -1
  %.not54.i.i.i.i = icmp eq i32 %i.pg, %.060.i.i.i.i
  %or.cond.i.i.i.i = select i1 %.not53.i.i.i.i, i1 true, i1 %.not54.i.i.i.i
  %i.ph = add i32 %i.pf, %.04559.i.i.i.i
  %i.pi = getelementptr inbounds nuw [72 x i8], ptr %i.oz, i64 %indvars.iv.i86.i.i.i ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 96
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !163
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 112
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !164 ; 2 uses
  %i.pn = udiv i32 %i.pk, %i.pm                   ; 3 uses
  %.not53.i.i.i.i.1 = icmp eq i32 %i.pg, -1
  %.not54.i.i.i.i.1 = icmp eq i32 %i.pn, %i.pg
  %or.cond.i.i.i.i.1 = select i1 %.not53.i.i.i.i.1, i1 true, i1 %.not54.i.i.i.i.1
  %i.po = select i1 %or.cond.i.i.i.i.1, i1 %or.cond.i.i.i.i, i1 false
  %.149.i.i.i.i.1 = select i1 %i.po, i32 %.04857.i.i.i.i, i32 0 ; 3 uses
  %i.pp = add i32 %i.pm, %i.ph                    ; 3 uses
  %indvars.iv.next.i87.i.i.i.1 = add nuw nsw i64 %indvars.iv.i86.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i89.i.i.i.unr-lcssa, label %bb.ec, !llvm.loop !418

._crit_edge.loopexit.i89.i.i.i.unr-lcssa:         ; preds = %bb.ec
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i89.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i89.i.i.i.unr-lcssa, %.lr.ph.i84.i.i.i
  %indvars.iv.i86.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i84.i.i.i ], [ %indvars.iv.next.i87.i.i.i.1, %._crit_edge.loopexit.i89.i.i.i.unr-lcssa ]
  %.060.i.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i84.i.i.i ], [ %i.pn, %._crit_edge.loopexit.i89.i.i.i.unr-lcssa ] ; 2 uses
  %.04559.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i84.i.i.i ], [ %i.pp, %._crit_edge.loopexit.i89.i.i.i.unr-lcssa ]
  %.04857.i.i.i.i.epil.init = phi i32 [ 1, %.lr.ph.i84.i.i.i ], [ %.149.i.i.i.i.1, %._crit_edge.loopexit.i89.i.i.i.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.ow to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.pq = getelementptr inbounds nuw [72 x i8], ptr %i.oz, i64 %indvars.iv.i86.i.i.i.epil.init ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !163
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 40
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !164 ; 2 uses
  %i.pv = udiv i32 %i.ps, %i.pu
  %.not53.i.i.i.i.epil = icmp eq i32 %.060.i.i.i.i.epil.init, -1
  %.not54.i.i.i.i.epil = icmp eq i32 %i.pv, %.060.i.i.i.i.epil.init
  %or.cond.i.i.i.i.epil = select i1 %.not53.i.i.i.i.epil, i1 true, i1 %.not54.i.i.i.i.epil
  %.149.i.i.i.i.epil = select i1 %or.cond.i.i.i.i.epil, i32 %.04857.i.i.i.i.epil.init, i32 0
  %i.pw = add i32 %i.pu, %.04559.i.i.i.i.epil.init
  br label %._crit_edge.loopexit.i89.i.i.i

._crit_edge.loopexit.i89.i.i.i:                   ; preds = %._crit_edge.loopexit.i89.i.i.i.unr-lcssa, %.epil.preheader
  %.149.i.i.i.i.lcssa = phi i32 [ %.149.i.i.i.i.1, %._crit_edge.loopexit.i89.i.i.i.unr-lcssa ], [ %.149.i.i.i.i.epil, %.epil.preheader ]
  %.lcssa160 = phi i32 [ %i.pp, %._crit_edge.loopexit.i89.i.i.i.unr-lcssa ], [ %i.pw, %.epil.preheader ]
  %i.px = icmp eq i32 %.149.i.i.i.i.lcssa, 0
  br label %._crit_edge.i82.i.i.i

._crit_edge.i82.i.i.i:                            ; preds = %._crit_edge.loopexit.i89.i.i.i, %mov_write_stsc_tag.exit.i.i.i
  %.048.lcssa.i.i.i.i = phi i1 [ false, %mov_write_stsc_tag.exit.i.i.i ], [ %i.px, %._crit_edge.loopexit.i89.i.i.i ]
  %.045.lcssa.i.i.i.i = phi i32 [ 0, %mov_write_stsc_tag.exit.i.i.i ], [ %.lcssa160, %._crit_edge.loopexit.i89.i.i.i ] ; 2 uses
  %.not52.i.i.i.i = icmp eq i32 %i.ow, 0
  %or.cond55.i.i.i.i = or i1 %.not52.i.i.i.i, %.048.lcssa.i.i.i.i
  br i1 %or.cond55.i.i.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %._crit_edge.i82.i.i.i
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !71 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !163
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 40
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !164
  %i.qe = udiv i32 %i.qb, %i.qd
  %i.qf = tail call i32 @llvm.smax.i32(i32 %i.qe, i32 1)
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.qf) #18
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %.045.lcssa.i.i.i.i) #18
  br label %mov_write_stsz_tag.exit.i.i.i

bb.ee:                                            ; preds = %._crit_edge.i82.i.i.i
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %.045.lcssa.i.i.i.i) #18
  %i.qg = load i32, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.qh = icmp sgt i32 %i.qg, 0
  br i1 %i.qh, label %.preheader.lr.ph.i.i.i.i, label %mov_write_stsz_tag.exit.i.i.i

.preheader.lr.ph.i.i.i.i:                         ; preds = %bb.ee
  %i.qi = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %.pre.i83.i.i.i = load ptr, ptr %i.qi, align 8, !tbaa !71
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge65.i.i.i.i, %.preheader.lr.ph.i.i.i.i
  %i.qj = phi i32 [ %i.qg, %.preheader.lr.ph.i.i.i.i ], [ %i.ra, %._crit_edge65.i.i.i.i ]
  %i.qk = phi ptr [ %.pre.i83.i.i.i, %.preheader.lr.ph.i.i.i.i ], [ %i.rb, %._crit_edge65.i.i.i.i ] ; 3 uses
  %indvars.iv69.i.i.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i.i.i ], [ %indvars.iv.next70.i.i.i.i, %._crit_edge65.i.i.i.i ] ; 4 uses
  %i.ql = getelementptr inbounds nuw [72 x i8], ptr %i.qk, i64 %indvars.iv69.i.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 40
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !164 ; 2 uses
  %.not67.i.i.i.i = icmp eq i32 %i.qn, 0
  br i1 %.not67.i.i.i.i, label %._crit_edge65.i.i.i.i, label %.lr.ph64.i.i.i.i

.lr.ph64.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph64.i.i.i.i
  %i.qo = phi i32 [ %i.qy, %.lr.ph64.i.i.i.i ], [ %i.qn, %.preheader.i.i.i.i ]
  %i.qp = phi ptr [ %i.qv, %.lr.ph64.i.i.i.i ], [ %i.qk, %.preheader.i.i.i.i ]
  %.04663.i.i.i.i = phi i32 [ %i.qu, %.lr.ph64.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %i.qq = getelementptr inbounds nuw [72 x i8], ptr %i.qp, i64 %indvars.iv69.i.i.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !163
  %i.qt = udiv i32 %i.qs, %i.qo
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.qt) #18
  %i.qu = add nuw nsw i32 %.04663.i.i.i.i, 1      ; 2 uses
  %i.qv = load ptr, ptr %i.qi, align 8, !tbaa !71 ; 3 uses
  %i.qw = getelementptr inbounds nuw [72 x i8], ptr %i.qv, i64 %indvars.iv69.i.i.i.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 40
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !164 ; 2 uses
  %i.qz = icmp ult i32 %i.qu, %i.qy
  br i1 %i.qz, label %.lr.ph64.i.i.i.i, label %._crit_edge65.loopexit.i.i.i.i, !llvm.loop !419

._crit_edge65.loopexit.i.i.i.i:                   ; preds = %.lr.ph64.i.i.i.i
  %.pre72.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !70
  br label %._crit_edge65.i.i.i.i

._crit_edge65.i.i.i.i:                            ; preds = %._crit_edge65.loopexit.i.i.i.i, %.preheader.i.i.i.i
  %i.ra = phi i32 [ %.pre72.i.i.i.i, %._crit_edge65.loopexit.i.i.i.i ], [ %i.qj, %.preheader.i.i.i.i ] ; 2 uses
  %i.rb = phi ptr [ %i.qv, %._crit_edge65.loopexit.i.i.i.i ], [ %i.qk, %.preheader.i.i.i.i ]
  %indvars.iv.next70.i.i.i.i = add nuw nsw i64 %indvars.iv69.i.i.i.i, 1 ; 2 uses
  %i.rc = sext i32 %i.ra to i64
  %i.rd = icmp slt i64 %indvars.iv.next70.i.i.i.i, %i.rc
  br i1 %i.rd, label %.preheader.i.i.i.i, label %mov_write_stsz_tag.exit.i.i.i, !llvm.loop !420

mov_write_stsz_tag.exit.i.i.i:                    ; preds = %._crit_edge65.i.i.i.i, %bb.ee, %bb.ed
  %i.re = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.rf = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.ov, i32 noundef 0) #18 ; 0 uses
  %i.rg = sub nsw i64 %i.re, %i.ov
  %i.rh = trunc i64 %i.rg to i32
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.rh) #18
  %i.ri = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.re, i32 noundef 0) #18 ; 0 uses
  %i.rj = load i32, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.rk = icmp sgt i32 %i.rj, 0
  br i1 %i.rk, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %mov_write_stsz_tag.exit.i.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !71
  %i.rn = zext nneg i32 %i.rj to i64
  %i.ro = getelementptr [72 x i8], ptr %i.rm, i64 %i.rn
  %i.rp = getelementptr i8, ptr %i.ro, i64 -72
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !159
  %i.rr = getelementptr inbounds nuw i8, ptr %3, i64 336
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !262
  %i.rt = add i64 %i.rs, %i.rq
  %i.ru = icmp ugt i64 %i.rt, 4294967295
  br i1 %i.ru, label %co64_required.exit.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %mov_write_stsz_tag.exit.i.i.i
  br label %co64_required.exit.i.i.i.i

co64_required.exit.i.i.i.i:                       ; preds = %bb.eg, %bb.ef
  %.not.i90.i.i.i = phi i1 [ true, %bb.eg ], [ false, %bb.ef ] ; 2 uses
  %i.rv = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  %spec.select = select i1 %.not.i90.i.i.i, i32 1868788851, i32 875982691
  tail call void @avio_wl32(ptr noundef %1, i32 noundef %spec.select) #18
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  %i.rw = load i64, ptr %i.l, align 8, !tbaa !265
  %i.rx = trunc i64 %i.rw to i32
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.rx) #18
  %i.ry = load i32, ptr %i.j, align 8, !tbaa !70  ; 3 uses
  %i.rz = icmp sgt i32 %i.ry, 0
  br i1 %i.rz, label %.lr.ph.i92.i.i.i, label %mov_write_stco_tag.exit.i.i.i

.lr.ph.i92.i.i.i:                                 ; preds = %co64_required.exit.i.i.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 2 uses
  br i1 %.not.i90.i.i.i, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i92.i.i.i, %bb.ei
  %i.sc = phi i32 [ %i.sl, %bb.ei ], [ %i.ry, %.lr.ph.i92.i.i.i ]
  %indvars.iv29.i.i.i.i = phi i64 [ %indvars.iv.next30.i.i.i.i, %bb.ei ], [ 0, %.lr.ph.i92.i.i.i ] ; 2 uses
  %i.sd = load ptr, ptr %i.sa, align 8, !tbaa !71
  %i.se = getelementptr inbounds nuw [72 x i8], ptr %i.sd, i64 %indvars.iv29.i.i.i.i ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 36
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !162
  %.not24.us.i.i.i.i = icmp eq i32 %i.sg, 0
  br i1 %.not24.us.i.i.i.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.sh = load i64, ptr %i.se, align 8, !tbaa !159
  %i.si = load i64, ptr %i.sb, align 8, !tbaa !262
  %i.sj = add i64 %i.si, %i.sh
  %i.sk = trunc i64 %i.sj to i32
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.sk) #18
  %.pre32.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !70
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph.split.us.i.i.i.i
  %i.sl = phi i32 [ %.pre32.i.i.i.i, %bb.eh ], [ %i.sc, %.lr.ph.split.us.i.i.i.i ] ; 2 uses
  %indvars.iv.next30.i.i.i.i = add nuw nsw i64 %indvars.iv29.i.i.i.i, 1 ; 2 uses
  %i.sm = sext i32 %i.sl to i64
  %i.sn = icmp slt i64 %indvars.iv.next30.i.i.i.i, %i.sm
  br i1 %i.sn, label %.lr.ph.split.us.i.i.i.i, label %mov_write_stco_tag.exit.i.i.i, !llvm.loop !421

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i92.i.i.i, %bb.ek
  %i.so = phi i32 [ %i.sw, %bb.ek ], [ %i.ry, %.lr.ph.i92.i.i.i ]
  %indvars.iv.i93.i.i.i = phi i64 [ %indvars.iv.next.i95.i.i.i, %bb.ek ], [ 0, %.lr.ph.i92.i.i.i ] ; 2 uses
  %i.sp = load ptr, ptr %i.sa, align 8, !tbaa !71
  %i.sq = getelementptr inbounds nuw [72 x i8], ptr %i.sp, i64 %indvars.iv.i93.i.i.i ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 36
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !162
  %.not24.i.i.i.i = icmp eq i32 %i.ss, 0
  br i1 %.not24.i.i.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.st = load i64, ptr %i.sq, align 8, !tbaa !159
  %i.su = load i64, ptr %i.sb, align 8, !tbaa !262
  %i.sv = add i64 %i.su, %i.st
  tail call void @avio_wb64(ptr noundef %1, i64 noundef %i.sv) #18
  %.pre.i94.i.i.i = load i32, ptr %i.j, align 8, !tbaa !70
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.lr.ph.split.i.i.i.i
  %i.sw = phi i32 [ %.pre.i94.i.i.i, %bb.ej ], [ %i.so, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i95.i.i.i = add nuw nsw i64 %indvars.iv.i93.i.i.i, 1 ; 2 uses
  %i.sx = sext i32 %i.sw to i64
  %i.sy = icmp slt i64 %indvars.iv.next.i95.i.i.i, %i.sx
  br i1 %i.sy, label %.lr.ph.split.i.i.i.i, label %mov_write_stco_tag.exit.i.i.i, !llvm.loop !421
end_hunk_6
begin_hunk_7_@mov_write_apvc_tag:bb.a
  tail call void @avio_wl32(ptr noundef %1, i32 noundef 1131835489) #18
  tail call void @avio_w8(ptr noundef %1, i32 noundef 0) #18
  tail call void @avio_wb24(ptr noundef %1, i32 noundef 0) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1632
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !157
  tail call void @ff_isom_write_apvc(ptr noundef %1, ptr noundef %i.c, ptr noundef %0) #18
  %i.d = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.e = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.a, i32 noundef 0) #18 ; 0 uses
  %i.f = sub nsw i64 %i.d, %i.a
  %i.g = trunc i64 %i.f to i32
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.g) #18
  %i.h = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.d, i32 noundef 0) #18 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_write_vpcc_tag(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %1, i32 noundef 1130590326) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !112
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.f
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = tail call i32 @ff_isom_write_vpcc(ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.l, ptr noundef %i.n) #18 ; 0 uses
  %i.p = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.q = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.a, i32 noundef 0) #18 ; 0 uses
  %i.r = sub nsw i64 %i.p, %i.a
  %i.s = trunc i64 %i.r to i32
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.s) #18
  %i.t = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.p, i32 noundef 0) #18 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_write_av1c_tag(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1127315041) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !112
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.f
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33
  %i.m = load i32, ptr %1, align 8, !tbaa !118
  %i.n = icmp ne i32 %i.m, 256
  %i.o = zext i1 %i.n to i32
  %i.p = tail call i32 @ff_isom_write_av1c(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.l, i32 noundef %i.o) #18 ; 0 uses
  %i.q = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.r = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %i.a, i32 noundef 0) #18 ; 0 uses
  %i.s = sub nsw i64 %i.q, %i.a
  %i.t = trunc i64 %i.s to i32
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %i.t) #18
  %i.u = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %i.q, i32 noundef 0) #18 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_write_dvc1_tag(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [7 x i8], align 4                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.c, i8 0, i64 7, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !112
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.h
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %i.o ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.r = load i32, ptr %i.q, align 4, !tbaa !191
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.t = load i32, ptr %i.s, align 8, !tbaa !192
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.v = load i32, ptr %i.u, align 4, !tbaa !185
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.x = load i64, ptr %i.w, align 8, !tbaa !75
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.345) #18
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !100
  %.pre251.i = load i32, ptr %i.f, align 8, !tbaa !112
  %.phi.trans.insert.i = sext i32 %.pre251.i to i64
  %.phi.trans.insert252.i = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %.phi.trans.insert.i
  %.pre253.i = load i32, ptr %.phi.trans.insert252.i, align 4, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = phi i32 [ %.pre253.i, %bb.b ], [ %i.n, %bb.a ]
  %.048.i = phi i32 [ 1, %bb.b ], [ %i.r, %bb.a ]
  %.047.i = phi i32 [ 1, %bb.b ], [ %i.t, %bb.a ]
  %i.aa = add nsw i32 %i.z, 64
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call noalias ptr @av_mallocz(i64 noundef %i.ab) #18 ; 9 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %mov_write_dvc1_structs.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.ae = load i32, ptr %i.f, align 8, !tbaa !112
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 2 uses
  %i.ai = ptrtoint ptr %i.p to i64                ; 4 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp sgt i64 %i.ak, 3
  br i1 %i.al, label %bb.e, label %mov_write_dvc1_structs.exit.thread14

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 -1, ptr %i.a, align 4, !tbaa !33
  %i.am = call ptr @avpriv_find_start_code(ptr noundef %i.ah, ptr noundef %i.p, ptr noundef nonnull %i.a) #18
  %i.an = load i32, ptr %i.a, align 4, !tbaa !33
  %i.ao = and i32 %i.an, -256
  %.not228.i = icmp eq i32 %i.ao, 256
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.aq = icmp ult ptr %i.ap, %i.p
  %or.cond.i = select i1 %.not228.i, i1 %i.aq, i1 false
  br i1 %or.cond.i, label %.lr.ph.outer.i, label %mov_write_dvc1_structs.exit.thread14

.lr.ph.outer.i:                                   ; preds = %bb.e, %.thread.i
  %.049245.ph.i = phi i32 [ %i.ea, %.thread.i ], [ 0, %bb.e ]
  %.051244.ph.i = phi i32 [ %i.do, %.thread.i ], [ 0, %bb.e ]
  %i.ar = phi i1 [ false, %.thread.i ], [ true, %bb.e ]
  %.059242.ph.i = phi ptr [ %.1.i.i, %.thread.i ], [ %i.ap, %bb.e ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.outer.i
  %.059242.i = phi ptr [ %.1.i.i, %bb.p ], [ %.059242.ph.i, %.lr.ph.outer.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.059242.i, i64 4 ; 5 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.ai, %i.at
  %i.av = icmp sgt i64 %i.au, 3
  br i1 %i.av, label %bb.f, label %find_next_marker.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 -1, ptr %i.b, align 4, !tbaa !33
  %i.aw = call ptr @avpriv_find_start_code(ptr noundef nonnull %i.as, ptr noundef nonnull %i.p, ptr noundef nonnull %i.b) #18
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !33
  %i.ay = and i32 %i.ax, -256
  %.not229.i = icmp eq i32 %i.ay, 256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br i1 %.not229.i, label %.find_next_marker.exit_crit_edge.i, label %find_next_marker.exit.i

.find_next_marker.exit_crit_edge.i:               ; preds = %bb.f
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 2 uses
  %.pre254.i = ptrtoint ptr %i.az to i64
  br label %find_next_marker.exit.i

find_next_marker.exit.i:                          ; preds = %.find_next_marker.exit_crit_edge.i, %bb.f, %.lr.ph.i
  %.pre-phi255.i = phi i64 [ %.pre254.i, %.find_next_marker.exit_crit_edge.i ], [ %i.ai, %bb.f ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.az, %.find_next_marker.exit_crit_edge.i ], [ %i.p, %bb.f ], [ %i.p, %.lr.ph.i ] ; 4 uses
  %i.ba = ptrtoint ptr %.059242.i to i64          ; 2 uses
  %i.bb = sub i64 %.pre-phi255.i, %i.ba
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = add i32 %i.bc, -4                       ; 5 uses
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %bb.p, label %bb.g

bb.g:                                             ; preds = %find_next_marker.exit.i
  %i.bf = icmp samesign ult i32 %i.bd, 4
  br i1 %i.bf, label %.preheader.i.preheader, label %.preheader230.i

.preheader.i.preheader:                           ; preds = %bb.g
  %i.bg = trunc i64 %.pre-phi255.i to i32
  %i.bh = add i32 %i.bg, -5
  %i.bi = trunc i64 %i.ba to i32
  %i.bj = sub i32 %i.bh, %i.bi
  %i.bk = icmp ult i32 %i.bj, 7
  br i1 %i.bk, label %.preheader.i.epil, label %.preheader.i

.preheader230.i:                                  ; preds = %bb.g
  %i.bl = add i32 %i.bc, -5
  br label %bb.h

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.030.i240.i = phi ptr [ %i.cj, %.preheader.i ], [ %i.ac, %.preheader.i.preheader ] ; 9 uses
  %.032.i239.i = phi ptr [ %i.ch, %.preheader.i ], [ %i.as, %.preheader.i.preheader ] ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.032.i239.i, i64 1
  %i.bn = load i8, ptr %.032.i239.i, align 1, !tbaa !94
  %i.bo = getelementptr inbounds nuw i8, ptr %.030.i240.i, i64 1
  store i8 %i.bn, ptr %.030.i240.i, align 1, !tbaa !94
  %i.bp = getelementptr inbounds nuw i8, ptr %.032.i239.i, i64 2
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !94
  %i.br = getelementptr inbounds nuw i8, ptr %.030.i240.i, i64 2
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !94
  %i.bs = getelementptr inbounds nuw i8, ptr %.032.i239.i, i64 3
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !94
  %i.bu = getelementptr inbounds nuw i8, ptr %.030.i240.i, i64 3
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !94
  %i.bv = getelementptr inbounds nuw i8, ptr %.032.i239.i, i64 4
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !94
  %i.bx = getelementptr inbounds nuw i8, ptr %.030.i240.i, i64 4
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !94
  %i.by = getelementptr inbounds nuw i8, ptr %.032.i239.i, i64 5
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !94
  %i.ca = getelementptr inbounds nuw i8, ptr %.030.i240.i, i64 5
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !94
  %i.cb = getelementptr inbounds nuw i8, ptr %.032.i239.i, i64 6
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !94
  %i.cd = getelementptr inbounds nuw i8, ptr %.030.i240.i, i64 6
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !94
  %i.ce = getelementptr inbounds nuw i8, ptr %.032.i239.i, i64 7
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !94
  %i.cg = getelementptr inbounds nuw i8, ptr %.030.i240.i, i64 7
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !94
  %i.ch = getelementptr inbounds nuw i8, ptr %.032.i239.i, i64 8
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !94
  %i.cj = getelementptr inbounds nuw i8, ptr %.030.i240.i, i64 8
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !94
  br label %.preheader.i, !llvm.loop !506

bb.h:                                             ; preds = %bb.n, %.preheader230.i
  %indvars.iv.i = phi i64 [ 0, %.preheader230.i ], [ %indvars.iv.next.i, %bb.n ] ; 3 uses
  %.0.i238.i = phi i32 [ 0, %.preheader230.i ], [ %i.cy, %bb.n ] ; 4 uses
  %.133.i235.i = phi ptr [ %i.as, %.preheader230.i ], [ %i.cz, %bb.n ] ; 5 uses
  %i.ck = load i8, ptr %.133.i235.i, align 1, !tbaa !94 ; 2 uses
  %i.cl = icmp eq i8 %i.ck, 3
  %i.cm = icmp sgt i32 %.0.i238.i, 1
  %or.cond.i.i = and i1 %i.cm, %i.cl
  br i1 %or.cond.i.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.cn = getelementptr inbounds i8, ptr %.133.i235.i, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !94
  %.not.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds i8, ptr %.133.i235.i, i64 -2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !94
  %.not37.i.i = icmp eq i8 %i.cq, 0
  %i.cr = icmp slt i32 %.0.i238.i, %i.bl
  %or.cond39.i.i = and i1 %i.cr, %.not37.i.i
  br i1 %or.cond39.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %.133.i235.i, i64 1 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !94  ; 2 uses
  %i.cu = icmp ult i8 %i.ct, 4
  br i1 %i.cu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.i
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !94
  %i.cw = add nuw nsw i32 %.0.i238.i, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.i
  store i8 %i.ck, ptr %i.cx, align 1, !tbaa !94
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.234.i.i = phi ptr [ %.133.i235.i, %bb.m ], [ %i.cs, %bb.l ]
  %.1.i79.i = phi i32 [ %.0.i238.i, %bb.m ], [ %i.cw, %bb.l ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cy = add nsw i32 %.1.i79.i, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.234.i.i, i64 1
  %i.da = icmp slt i32 %i.cy, %i.bd
  br i1 %i.da, label %bb.h, label %vc1_unescape_buffer.exit.loopexit248.i, !llvm.loop !507

vc1_unescape_buffer.exit.loopexit248.i:           ; preds = %bb.n
  %i.db = trunc nuw i64 %indvars.iv.next.i to i32
  br label %vc1_unescape_buffer.exit.i

.preheader.i.epil:                                ; preds = %.preheader.i.preheader, %.preheader.i.epil
  %.030.i240.i.epil = phi ptr [ %i.de, %.preheader.i.epil ], [ %i.ac, %.preheader.i.preheader ] ; 2 uses
  %.032.i239.i.epil = phi ptr [ %i.dc, %.preheader.i.epil ], [ %i.as, %.preheader.i.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.preheader ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.032.i239.i.epil, i64 1
  %i.dd = load i8, ptr %.032.i239.i.epil, align 1, !tbaa !94
  %i.de = getelementptr inbounds nuw i8, ptr %.030.i240.i.epil, i64 1
  store i8 %i.dd, ptr %.030.i240.i.epil, align 1, !tbaa !94
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.bd
  br i1 %epil.iter.cmp.not, label %vc1_unescape_buffer.exit.i, label %.preheader.i.epil, !llvm.loop !508

vc1_unescape_buffer.exit.i:                       ; preds = %.preheader.i.epil, %vc1_unescape_buffer.exit.loopexit248.i
  %.031.i.i = phi i32 [ %i.db, %vc1_unescape_buffer.exit.loopexit248.i ], [ %i.bd, %.preheader.i.epil ]
  %i.df = load i32, ptr %.059242.i, align 1, !tbaa !94
  %i.dg = icmp eq i32 %i.df, 251723776
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %vc1_unescape_buffer.exit.i
  %i.dh = load i32, ptr %i.ac, align 1, !tbaa !94
  %i.di = call i32 @llvm.bswap.i32(i32 %i.dh)     ; 2 uses
  %.not75.i = icmp ugt i32 %i.di, -1073741825
  br i1 %.not75.i, label %.thread.i, label %mov_write_dvc1_structs.exit.thread14

bb.p:                                             ; preds = %vc1_unescape_buffer.exit.i, %find_next_marker.exit.i
  %i.dj = icmp ult ptr %.1.i.i, %i.p
  br i1 %i.dj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !509

.thread.i:                                        ; preds = %bb.o
  %i.dk = shl nsw i32 %.031.i.i, 3                ; 2 uses
  %or.cond.i80.le.i = icmp ult i32 %i.dk, 2147483135
  %i.dl = add nuw nsw i32 %i.dk, 8
  %i.dm = select i1 %or.cond.i80.le.i, i32 %i.dl, i32 8 ; 2 uses
  %i.dn = lshr i32 %i.di, 27
  %i.do = and i32 %i.dn, 7                        ; 2 uses
  %i.dp = call i32 @llvm.smin.i32(i32 %i.dm, i32 40)
  %i.dq = or disjoint i32 %i.dp, 1
  %i.dr = call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.dq) ; 2 uses
  %i.ds = lshr i32 %i.dr, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !94
  %i.dw = zext i8 %i.dv to i32
  %i.dx = and i32 %i.dr, 7
  %i.dy = shl nuw nsw i32 %i.dw, %i.dx
  %i.dz = lshr i32 %i.dy, 7
  %i.ea = and i32 %i.dz, 1                        ; 2 uses
  %i.eb = icmp ult ptr %.1.i.i, %i.p
  br i1 %i.eb, label %.lr.ph.outer.i, label %put_bits.exit86.i, !llvm.loop !509

._crit_edge.i:                                    ; preds = %bb.p
  br i1 %i.ar, label %mov_write_dvc1_structs.exit.thread14, label %put_bits.exit86.i

put_bits.exit86.i:                                ; preds = %.thread.i, %._crit_edge.i
  %.in.i = phi i32 [ %.049245.ph.i, %._crit_edge.i ], [ %i.ea, %.thread.i ]
  %.354.ph271277.i = phi i32 [ %.051244.ph.i, %._crit_edge.i ], [ %i.do, %.thread.i ] ; 2 uses
  %.not72.i = icmp eq i32 %.048.i, 0
  %.not73.i = icmp eq i32 %.047.i, 0
  %i.ec = zext i1 %.not73.i to i32
  %i.ed = shl nuw nsw i32 %.354.ph271277.i, 14
  %i.ee = shl nuw nsw i32 %.354.ph271277.i, 10
  %i.ef = shl nuw nsw i32 %.in.i, 2
  %i.eg = or i32 %i.ee, %i.ef
  %i.eh = or i32 %i.ed, %i.eg
  %i.ei = select i1 %.not72.i, i32 2, i32 0
  %i.ej = or disjoint i32 %i.eh, %i.ei
  %i.ek = or disjoint i32 %i.ej, %i.ec
  %.not74.i = icmp eq i32 %i.v, 0
  %i.el = shl nuw nsw i32 %i.ek, 3
  %i.em = select i1 %.not74.i, i32 4, i32 0
  %.masked.i = and i32 %i.el, 2134900728
  %i.en = or disjoint i32 %.masked.i, %i.em
  %i.eo = xor i32 %i.en, 12582944                 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !113 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.es = load i32, ptr %i.er, align 8, !tbaa !363 ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %bb.q, label %bb.s

bb.q:                                             ; preds = %put_bits.exit86.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 92
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !362 ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ex = udiv i32 %i.es, %i.ev                   ; 2 uses
  %i.ey = call i32 @llvm.fshl.i32(i32 %i.eo, i32 %i.ex, i32 8)
  %i.ez = call i32 @llvm.bswap.i32(i32 %i.ey)
  store i32 %i.ez, ptr %i.c, align 4, !tbaa !94
  %i.fa = shl i32 %i.ex, 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %put_bits.exit86.i
  %i.fb = shl nuw i32 %i.eo, 8
  %i.fc = or disjoint i32 %i.fb, 255
  %i.fd = call i32 @llvm.bswap.i32(i32 %i.fc)
  store i32 %i.fd, ptr %i.c, align 4, !tbaa !94
  br label %bb.t

mov_write_dvc1_structs.exit.thread14:             ; preds = %bb.o, %bb.e, %bb.d, %._crit_edge.i
  call void @av_free(ptr noundef nonnull %i.ac) #18
  br label %mov_write_dvc1_structs.exit.thread

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0140.0.i = phi i32 [ -256, %bb.s ], [ %i.fa, %bb.r ] ; 3 uses
  %.sroa.71.27.ptr.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.fe = lshr i32 %.sroa.0140.0.i, 24
  %i.ff = trunc nuw i32 %i.fe to i8
  store i8 %i.ff, ptr %.sroa.71.27.ptr.i, align 4, !tbaa !94
  %.sroa.71.27.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.fg = lshr i32 %.sroa.0140.0.i, 16
  %i.fh = trunc i32 %i.fg to i8
  store i8 %i.fh, ptr %.sroa.71.27.ptr.1.i, align 1, !tbaa !94
  %.sroa.71.27.ptr.2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.fi = lshr exact i32 %.sroa.0140.0.i, 8
  %i.fj = trunc i32 %i.fi to i8
  store i8 %i.fj, ptr %.sroa.71.27.ptr.2.i, align 2, !tbaa !94
  call void @av_free(ptr noundef nonnull %i.ac) #18
  %i.fk = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.fl = load i32, ptr %i.f, align 8, !tbaa !112
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !33
  %i.fp = add i32 %i.fo, 15
  call void @avio_wb32(ptr noundef %0, i32 noundef %i.fp) #18
  call void @avio_wl32(ptr noundef %0, i32 noundef 828601956) #18
  call void @avio_write(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 7) #18
  %i.fq = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.fr = load i32, ptr %i.f, align 8, !tbaa !112
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !34
  %i.fv = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fs
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !33
  call void @avio_write(ptr noundef %0, ptr noundef %i.fu, i32 noundef %i.fx) #18
  br label %mov_write_dvc1_structs.exit.thread

mov_write_dvc1_structs.exit.thread:               ; preds = %bb.c, %mov_write_dvc1_structs.exit.thread14, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_write_dpxe_tag(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 12) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1165520964) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !112
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %i.h = icmp sgt i32 %i.g, 11
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 1
  %i.o = icmp ne i32 %i.n, 1165520964
  %i.p = zext i1 %i.o to i32
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 11
  %i.r = load i8, ptr %i.q, align 1, !tbaa !94
  %i.s = zext i8 %i.r to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sink = phi i32 [ %i.s, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %.sink) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_write_av3c_tag(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1664317025) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !112
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.f
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33   ; 4 uses
  %i.m = icmp slt i32 %i.l, 4
  br i1 %i.m, label %mov_write_av3c.exit, label %bb.b

end_hunk_7
begin_hunk_8_@mov_flush_fragment:bb.a
  %i.an = load i64, ptr %i.am, align 8, !tbaa !75
  %i.ao = sub nsw i64 %spec.select, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !77
  %.not257 = icmp eq i64 %i.af, -9223372036854775808
  %spec.select424 = select i1 %.not257, i64 %spec.select, i64 %i.af ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  store i64 %spec.select424, ptr %i.aq, align 8, !tbaa !167
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !177
  %i.at = and i32 %i.as, 4
  %.not258 = icmp eq i32 %i.at, 0
  br i1 %.not258, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  store i64 %spec.select424, ptr %i.au, align 8, !tbaa !168
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %i.m, align 8, !tbaa !196
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %bb.c, label %.preheader293, !llvm.loop !526

bb.i:                                             ; preds = %.lr.ph300, %bb.m
  %indvars.iv345 = phi i64 [ 0, %.lr.ph300 ], [ %indvars.iv.next346, %bb.m ] ; 2 uses
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw [1640 x i8], ptr %i.ay, i64 %indvars.iv345 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !70 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 2
  br i1 %i.bc, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = add nsw i32 %i.bb, -1
  %i.be = call fastcc i32 @get_cluster_duration(ptr noundef nonnull %i.az, i32 noundef %i.bd)
  %.not252 = icmp eq i32 %i.be, 0
  br i1 %.not252, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bf = load i32, ptr %i.ba, align 8, !tbaa !70
  %i.bg = add nsw i32 %i.bf, -2
  %i.bh = call fastcc i32 @get_cluster_duration(ptr noundef nonnull %i.az, i32 noundef %i.bg)
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !77
  %i.bl = add nsw i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !77
  %i.bm = load i32, ptr %i.ba, align 8, !tbaa !70
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = call fastcc i32 @get_cluster_duration(ptr noundef nonnull %i.az, i32 noundef %i.bn)
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 208 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !167
  %i.bs = add nsw i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !167
  %i.bt = load i32, ptr %i.u, align 4, !tbaa !527
  %.not253 = icmp eq i32 %i.bt, 0
  br i1 %.not253, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.580) #18
  store i32 1, ptr %i.u, align 4, !tbaa !527
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j, %bb.i
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %i.bu = load i32, ptr %i.q, align 4, !tbaa !116 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next346, %i.bv
  br i1 %i.bw, label %bb.i, label %._crit_edge, !llvm.loop !528

._crit_edge:                                      ; preds = %bb.m, %.preheader293
  %i.bx = phi i32 [ %i.r, %.preheader293 ], [ %i.bu, %bb.m ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 84 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !83
  %.not226 = icmp eq i32 %i.bz, 0
  br i1 %.not226, label %bb.n, label %bb.al

bb.n:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.cc = call i64 @avio_seek(ptr noundef %i.cb, i64 noundef 0, i32 noundef 1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.cd = load i32, ptr %i.q, align 4, !tbaa !116 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph326, label %is_cover_image.exit.thread.thread

.lr.ph326:                                        ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !43
  %wide.trip.count = zext nneg i32 %i.cd to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph326, %bb.q
  %indvars.iv357 = phi i64 [ 0, %.lr.ph326 ], [ %indvars.iv.next358, %bb.q ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [1640 x i8], ptr %i.cg, i64 %indvars.iv357 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !70
  %.not227 = icmp eq i32 %i.cj, 0
  br i1 %.not227, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !113 ; 2 uses
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %is_cover_image.exit.thread, label %is_cover_image.exit

is_cover_image.exit:                              ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !199
  %.not291 = icmp eq i32 %i.cn, 1024
  br i1 %.not291, label %bb.q, label %is_cover_image.exit.thread

bb.q:                                             ; preds = %bb.o, %is_cover_image.exit
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next358, %wide.trip.count
  br i1 %exitcond.not, label %is_cover_image.exit.thread.thread, label %bb.o, !llvm.loop !529

is_cover_image.exit.thread:                       ; preds = %is_cover_image.exit, %bb.p
  %i.co = trunc nuw nsw i64 %indvars.iv357 to i32
  %i.cp = icmp sle i32 %i.cd, %i.co
  %i.cq = icmp ne i32 %1, 0
  %or.cond = or i1 %i.cq, %i.cp
  br i1 %or.cond, label %is_cover_image.exit.thread.thread, label %bb.ak

is_cover_image.exit.thread.thread:                ; preds = %bb.q, %bb.n, %is_cover_image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cr = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.cs = call i32 @ffio_open_null_buf(ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %get_moov_size.exit, label %bb.r

bb.r:                                             ; preds = %is_cover_image.exit.thread.thread
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.cv = call fastcc i32 @mov_write_moov_tag(ptr noundef %i.cu, ptr noundef %i.cr, ptr noundef nonnull %0) ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %get_moov_size.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.cy = call i32 @ffio_close_null_buf(ptr noundef %i.cx) #18
  br label %get_moov_size.exit

get_moov_size.exit:                               ; preds = %is_cover_image.exit.thread.thread, %bb.r, %bb.s
  %.0.i = phi i32 [ %i.cy, %bb.s ], [ %i.cs, %is_cover_image.exit.thread.thread ], [ %i.cv, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.cz = load i32, ptr %i.q, align 4, !tbaa !116 ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph335, label %._crit_edge336

.lr.ph335:                                        ; preds = %get_moov_size.exit
  %i.db = sext i32 %.0.i to i64
  %i.dc = add i64 %i.cc, 8
  %i.dd = add i64 %i.dc, %i.db                    ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !43 ; 9 uses
  %wide.trip.count363 = zext nneg i32 %i.cz to i64 ; 2 uses
  %xtraiter448 = and i64 %wide.trip.count363, 7   ; 3 uses
  %i.dg = icmp ult i32 %i.cz, 8
  br i1 %i.dg, label %.epil.preheader447, label %.lr.ph335.new

.lr.ph335.new:                                    ; preds = %.lr.ph335
  %unroll_iter452 = and i64 %wide.trip.count363, 2147483640
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph335.new
  %indvars.iv360 = phi i64 [ 0, %.lr.ph335.new ], [ %indvars.iv.next361.7, %bb.t ] ; 9 uses
  %niter453 = phi i64 [ 0, %.lr.ph335.new ], [ %niter453.next.7, %bb.t ]
  %i.dh = getelementptr inbounds nuw [1640 x i8], ptr %i.df, i64 %indvars.iv360
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 336
  store i64 %i.dd, ptr %i.di, align 8, !tbaa !262
  %i.dj = getelementptr inbounds nuw [1640 x i8], ptr %i.df, i64 %indvars.iv360
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1976
  store i64 %i.dd, ptr %i.dk, align 8, !tbaa !262
  %i.dl = getelementptr inbounds nuw [1640 x i8], ptr %i.df, i64 %indvars.iv360
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 3616
  store i64 %i.dd, ptr %i.dm, align 8, !tbaa !262
  %i.dn = getelementptr inbounds nuw [1640 x i8], ptr %i.df, i64 %indvars.iv360
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 5256
  store i64 %i.dd, ptr %i.do, align 8, !tbaa !262
  %i.dp = getelementptr inbounds nuw [1640 x i8], ptr %i.df, i64 %indvars.iv360
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 6896
  store i64 %i.dd, ptr %i.dq, align 8, !tbaa !262
  %i.dr = getelementptr inbounds nuw [1640 x i8], ptr %i.df, i64 %indvars.iv360
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8536
  store i64 %i.dd, ptr %i.ds, align 8, !tbaa !262
  %i.dt = getelementptr inbounds nuw [1640 x i8], ptr %i.df, i64 %indvars.iv360
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 10176
  store i64 %i.dd, ptr %i.du, align 8, !tbaa !262
  %i.dv = getelementptr inbounds nuw [1640 x i8], ptr %i.df, i64 %indvars.iv360
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 11816
  store i64 %i.dd, ptr %i.dw, align 8, !tbaa !262
  %indvars.iv.next361.7 = add nuw nsw i64 %indvars.iv360, 8 ; 2 uses
  %niter453.next.7 = add nuw i64 %niter453, 8     ; 2 uses
  %niter453.ncmp.7 = icmp eq i64 %niter453.next.7, %unroll_iter452
  br i1 %niter453.ncmp.7, label %._crit_edge336.loopexit.unr-lcssa, label %bb.t, !llvm.loop !530

._crit_edge336.loopexit.unr-lcssa:                ; preds = %bb.t
  %lcmp.mod450.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod450.not, label %._crit_edge336, label %.epil.preheader447

.epil.preheader447:                               ; preds = %._crit_edge336.loopexit.unr-lcssa, %.lr.ph335
  %indvars.iv360.epil.init = phi i64 [ 0, %.lr.ph335 ], [ %indvars.iv.next361.7, %._crit_edge336.loopexit.unr-lcssa ]
  %lcmp.mod451 = icmp ne i64 %xtraiter448, 0
  call void @llvm.assume(i1 %lcmp.mod451)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader447
  %indvars.iv360.epil = phi i64 [ %indvars.iv360.epil.init, %.epil.preheader447 ], [ %indvars.iv.next361.epil, %bb.u ] ; 2 uses
  %epil.iter449 = phi i64 [ 0, %.epil.preheader447 ], [ %epil.iter449.next, %bb.u ]
  %i.dx = getelementptr inbounds nuw [1640 x i8], ptr %i.df, i64 %indvars.iv360.epil
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 336
  store i64 %i.dd, ptr %i.dy, align 8, !tbaa !262
  %indvars.iv.next361.epil = add nuw nsw i64 %indvars.iv360.epil, 1
  %epil.iter449.next = add i64 %epil.iter449, 1   ; 2 uses
  %epil.iter449.cmp.not = icmp eq i64 %epil.iter449.next, %xtraiter448
  br i1 %epil.iter449.cmp.not, label %._crit_edge336, label %bb.u, !llvm.loop !531

._crit_edge336:                                   ; preds = %._crit_edge336.loopexit.unr-lcssa, %bb.u, %get_moov_size.exit
  %i.dz = load ptr, ptr %i.ca, align 8, !tbaa !26
  call void @avio_write_marker(ptr noundef %i.dz, i64 noundef -9223372036854775808, i32 noundef 0) #18
  %i.ea = load i32, ptr %i.h, align 8, !tbaa !81
  %i.eb = and i32 %i.ea, 16785408
  %or.cond259 = icmp eq i32 %i.eb, 8192
  br i1 %or.cond259, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge336
  %i.ec = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.ed = call fastcc i32 @mov_write_identification(ptr noundef %i.ec, ptr noundef nonnull %0) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge336
  %i.ee = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.ef = call fastcc i32 @mov_write_moov_tag(ptr noundef %i.ee, ptr noundef nonnull %i.g, ptr noundef nonnull %0) ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = load i32, ptr %i.h, align 8, !tbaa !81  ; 2 uses
  %i.ei = and i32 %i.eh, 8192
  %.not231 = icmp eq i32 %i.ei, 0
  br i1 %.not231, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = and i32 %i.eh, 16384
  %.not233 = icmp eq i32 %i.ej, 0
  br i1 %.not233, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ek = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.el = call i64 @avio_seek(ptr noundef %i.ek, i64 noundef 0, i32 noundef 1) #18
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store i64 %i.el, ptr %i.em, align 8, !tbaa !220
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.en = load ptr, ptr %i.ca, align 8, !tbaa !26
  call void @avio_write_marker(ptr noundef %i.en, i64 noundef -9223372036854775808, i32 noundef 5) #18
  store i32 1, ptr %i.by, align 4, !tbaa !83
  br label %bb.ak

bb.ab:                                            ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !88
  %i.eq = call i32 @avio_get_dyn_buf(ptr noundef %i.ep, ptr noundef nonnull %i.d) #18 ; 2 uses
  %i.er = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.es = add nsw i32 %i.eq, 8
  call void @avio_wb32(ptr noundef %i.er, i32 noundef %i.es) #18
  %i.et = load ptr, ptr %i.ca, align 8, !tbaa !26
  call void @avio_wl32(ptr noundef %i.et, i32 noundef 1952539757) #18
  %i.eu = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.ev = load ptr, ptr %i.d, align 8, !tbaa !34
  call void @avio_write(ptr noundef %i.eu, ptr noundef %i.ev, i32 noundef %i.eq) #18
  %i.ew = load ptr, ptr %i.eo, align 8, !tbaa !88
  call void @ffio_reset_dyn_buf(ptr noundef %i.ew) #18
  %i.ex = load i32, ptr %i.h, align 8, !tbaa !81
  %i.ey = and i32 %i.ex, 16384
  %.not232 = icmp eq i32 %i.ey, 0
  br i1 %.not232, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.fa = call i64 @avio_seek(ptr noundef %i.ez, i64 noundef 0, i32 noundef 1) #18
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !220
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store i32 1, ptr %i.by, align 4, !tbaa !83
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 0, ptr %i.fc, align 8, !tbaa !181
  %i.fd = load i32, ptr %i.q, align 4, !tbaa !116
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.lr.ph339, label %._crit_edge340

.lr.ph339:                                        ; preds = %bb.ad
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph339, %mov_finish_fragment.exit
  %indvars.iv365 = phi i64 [ 0, %.lr.ph339 ], [ %indvars.iv.next366, %mov_finish_fragment.exit ] ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !43
  %i.fh = getelementptr inbounds nuw [1640 x i8], ptr %i.fg, i64 %indvars.iv365 ; 9 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 4 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !70 ; 6 uses
  %.not.i261 = icmp eq i32 %i.fj, 0
  br i1 %.not.i261, label %mov_finish_fragment.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fk = load i32, ptr %i.h, align 8, !tbaa !81
  %i.fl = and i32 %i.fk, 16777216
  %.not32.i = icmp eq i32 %i.fl, 0
  br i1 %.not32.i, label %bb.aj, label %.preheader34.i

.preheader34.i:                                   ; preds = %bb.af
  %i.fm = icmp sgt i32 %i.fj, 0
  br i1 %i.fm, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.preheader34.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 160
  br label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader34.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 336
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !262 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 152
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !71 ; 10 uses
  %wide.trip.count.i = zext nneg i32 %i.fj to i64 ; 4 uses
  %xtraiter455 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.fs = icmp ult i32 %i.fj, 4
  br i1 %i.fs, label %.epil.preheader454, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter459 = and i64 %wide.trip.count.i, 2147483644
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.ag ] ; 5 uses
  %niter460 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter460.next.3, %bb.ag ]
  %i.ft = getelementptr inbounds nuw [72 x i8], ptr %i.fr, i64 %indvars.iv.i ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !159
  %i.fv = add i64 %i.fu, %i.fp
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !159
  %i.fw = getelementptr inbounds nuw [72 x i8], ptr %i.fr, i64 %indvars.iv.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 72 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !159
  %i.fz = add i64 %i.fy, %i.fp
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !159
  %i.ga = getelementptr inbounds nuw [72 x i8], ptr %i.fr, i64 %indvars.iv.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 144 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !159
  %i.gd = add i64 %i.gc, %i.fp
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !159
  %i.ge = getelementptr inbounds nuw [72 x i8], ptr %i.fr, i64 %indvars.iv.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 216 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !159
  %i.gh = add i64 %i.gg, %i.fp
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !159
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter460.next.3 = add nuw i64 %niter460, 4     ; 2 uses
  %niter460.ncmp.3 = icmp eq i64 %niter460.next.3, %unroll_iter459
  br i1 %niter460.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.ag, !llvm.loop !532

._crit_edge.i.unr-lcssa:                          ; preds = %bb.ag
  %lcmp.mod457.not = icmp eq i64 %xtraiter455, 0
  br i1 %lcmp.mod457.not, label %._crit_edge.i, label %.epil.preheader454

.epil.preheader454:                               ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod458 = icmp ne i64 %xtraiter455, 0
  call void @llvm.assume(i1 %lcmp.mod458)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader454
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader454 ], [ %indvars.iv.next.i.epil, %bb.ah ] ; 2 uses
  %epil.iter456 = phi i64 [ 0, %.epil.preheader454 ], [ %epil.iter456.next, %bb.ah ]
  %i.gi = getelementptr inbounds nuw [72 x i8], ptr %i.fr, i64 %indvars.iv.i.epil ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !159
  %i.gk = add i64 %i.gj, %i.fp
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !159
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter456.next = add i64 %epil.iter456, 1   ; 2 uses
  %epil.iter456.cmp.not = icmp eq i64 %epil.iter456.next, %xtraiter455
  br i1 %epil.iter456.cmp.not, label %._crit_edge.i, label %bb.ah, !llvm.loop !533

._crit_edge.i:                                    ; preds = %bb.ah, %._crit_edge.i.unr-lcssa
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fh, i64 160 ; 4 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !263
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %.lr.ph37.i.preheader, label %.loopexit.i

.lr.ph37.i.preheader:                             ; preds = %._crit_edge.i
  %xtraiter461 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.go = icmp ult i32 %i.fj, 4
  br i1 %i.go, label %.lr.ph37.i.epil.preheader, label %.lr.ph37.i.preheader.new

.lr.ph37.i.preheader.new:                         ; preds = %.lr.ph37.i.preheader
  %unroll_iter465 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph37.i, %.lr.ph37.i.preheader.new
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph37.i.preheader.new ], [ %indvars.iv.next40.i.3, %.lr.ph37.i ] ; 5 uses
  %niter466 = phi i64 [ 0, %.lr.ph37.i.preheader.new ], [ %niter466.next.3, %.lr.ph37.i ]
  %i.gp = getelementptr inbounds nuw [72 x i8], ptr %i.fr, i64 %indvars.iv39.i ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 36
  store i32 0, ptr %i.gq, align 4, !tbaa !162
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !164
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store i32 %i.gs, ptr %i.gt, align 8, !tbaa !161
  %i.gu = getelementptr inbounds nuw [72 x i8], ptr %i.fr, i64 %indvars.iv39.i ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 108
  store i32 0, ptr %i.gv, align 4, !tbaa !162
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 112
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !164
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 104
  store i32 %i.gx, ptr %i.gy, align 8, !tbaa !161
  %i.gz = getelementptr inbounds nuw [72 x i8], ptr %i.fr, i64 %indvars.iv39.i ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 180
  store i32 0, ptr %i.ha, align 4, !tbaa !162
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 184
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !164
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 176
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !161
  %i.he = getelementptr inbounds nuw [72 x i8], ptr %i.fr, i64 %indvars.iv39.i ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 252
  store i32 0, ptr %i.hf, align 4, !tbaa !162
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 256
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !164
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 248
  store i32 %i.hh, ptr %i.hi, align 8, !tbaa !161
  %indvars.iv.next40.i.3 = add nuw nsw i64 %indvars.iv39.i, 4 ; 2 uses
  %niter466.next.3 = add nuw i64 %niter466, 4     ; 2 uses
  %niter466.ncmp.3 = icmp eq i64 %niter466.next.3, %unroll_iter465
  br i1 %niter466.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph37.i, !llvm.loop !534

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph37.i
  %lcmp.mod463.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod463.not, label %.loopexit.i, label %.lr.ph37.i.epil.preheader

.lr.ph37.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph37.i.preheader
  %indvars.iv39.i.epil.init = phi i64 [ 0, %.lr.ph37.i.preheader ], [ %indvars.iv.next40.i.3, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod464 = icmp ne i64 %xtraiter461, 0
  call void @llvm.assume(i1 %lcmp.mod464)
  br label %.lr.ph37.i.epil

.lr.ph37.i.epil:                                  ; preds = %.lr.ph37.i.epil, %.lr.ph37.i.epil.preheader
  %indvars.iv39.i.epil = phi i64 [ %indvars.iv.next40.i.epil, %.lr.ph37.i.epil ], [ %indvars.iv39.i.epil.init, %.lr.ph37.i.epil.preheader ] ; 2 uses
  %epil.iter462 = phi i64 [ %epil.iter462.next, %.lr.ph37.i.epil ], [ 0, %.lr.ph37.i.epil.preheader ]
  %i.hj = getelementptr inbounds nuw [72 x i8], ptr %i.fr, i64 %indvars.iv39.i.epil ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 36
  store i32 0, ptr %i.hk, align 4, !tbaa !162
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !164
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store i32 %i.hm, ptr %i.hn, align 8, !tbaa !161
  %indvars.iv.next40.i.epil = add nuw nsw i64 %indvars.iv39.i.epil, 1
  %epil.iter462.next = add i64 %epil.iter462, 1   ; 2 uses
  %epil.iter462.cmp.not = icmp eq i64 %epil.iter462.next, %xtraiter461
  br i1 %epil.iter462.cmp.not, label %.loopexit.i, label %.lr.ph37.i.epil, !llvm.loop !535

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph37.i.epil, %._crit_edge.i, %._crit_edge.thread.i
  %i.ho = phi ptr [ %i.fn, %._crit_edge.thread.i ], [ %i.gl, %._crit_edge.i ], [ %i.gl, %.lr.ph37.i.epil ], [ %i.gl, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fh, i64 12 ; 4 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !264
  %i.hr = add nsw i32 %i.hq, %i.fj
  %i.hs = sext i32 %i.hr to i64
  %i.ht = call i32 @av_reallocp_array(ptr noundef nonnull %i.ho, i64 noundef %i.hs, i64 noundef 72) #18
  %.not33.i = icmp eq i32 %i.ht, 0
  br i1 %.not33.i, label %bb.ai, label %mov_finish_fragment.exit

bb.ai:                                            ; preds = %.loopexit.i
  %i.hu = load ptr, ptr %i.ho, align 8, !tbaa !263
  %i.hv = load i32, ptr %i.hp, align 4, !tbaa !264
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [72 x i8], ptr %i.hu, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fh, i64 152
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !71
  %i.ia = load i32, ptr %i.fi, align 8, !tbaa !70
  %i.ib = sext i32 %i.ia to i64
  %i.ic = mul nsw i64 %i.ib, 72
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hx, ptr align 8 %i.hz, i64 %i.ic, i1 false)
  %i.id = load i32, ptr %i.fi, align 8, !tbaa !70
  %i.ie = load i32, ptr %i.hp, align 4, !tbaa !264
  %i.if = add nsw i32 %i.ie, %i.id
  store i32 %i.if, ptr %i.hp, align 4, !tbaa !264
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  store i32 0, ptr %i.fi, align 8, !tbaa !70
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fh, i64 348
  store i32 0, ptr %i.ig, align 4, !tbaa !86
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fh, i64 224
  store i32 0, ptr %i.ih, align 8, !tbaa !525
  br label %mov_finish_fragment.exit

mov_finish_fragment.exit:                         ; preds = %bb.ae, %.loopexit.i, %bb.aj
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.ii = load i32, ptr %i.q, align 4, !tbaa !116
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp slt i64 %indvars.iv.next366, %i.ij
  br i1 %i.ik, label %bb.ae, label %._crit_edge340, !llvm.loop !536

._crit_edge340:                                   ; preds = %mov_finish_fragment.exit, %bb.ad
  %i.il = load ptr, ptr %i.ca, align 8, !tbaa !26
  call void @avio_write_marker(ptr noundef %i.il, i64 noundef -9223372036854775808, i32 noundef 5) #18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.w, %is_cover_image.exit.thread, %._crit_edge340, %bb.aa
  %.0211 = phi i32 [ 0, %is_cover_image.exit.thread ], [ 0, %bb.aa ], [ 0, %._crit_edge340 ], [ %i.ef, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %.loopexit

bb.al:                                            ; preds = %._crit_edge
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 184 ; 3 uses
  %i.in = load i32, ptr %i.im, align 8, !tbaa !84
  %.not234 = icmp eq i32 %i.in, 0
  br i1 %.not234, label %bb.ap, label %.preheader

.preheader:                                       ; preds = %bb.al
  %i.io = icmp sgt i32 %i.bx, 0
  br i1 %i.io, label %.lr.ph302, label %._crit_edge303

.lr.ph302:                                        ; preds = %.preheader
  %i.ip = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  br label %bb.an

bb.am:                                            ; preds = %bb.an
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %i.iq = load i32, ptr %i.q, align 4, !tbaa !116
  %i.ir = sext i32 %i.iq to i64
  %i.is = icmp slt i64 %indvars.iv.next349, %i.ir
  br i1 %i.is, label %bb.an, label %._crit_edge303, !llvm.loop !537

bb.an:                                            ; preds = %.lr.ph302, %bb.am
  %indvars.iv348 = phi i64 [ 0, %.lr.ph302 ], [ %indvars.iv.next349, %bb.am ] ; 2 uses
  %i.it = load ptr, ptr %i.ip, align 8, !tbaa !43
  %i.iu = getelementptr inbounds nuw [1640 x i8], ptr %i.it, i64 %indvars.iv348
  %.val = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.iv = call fastcc i32 @mov_flush_fragment_interleaving(ptr %.val, ptr noundef %i.iu) ; 2 uses
  %i.iw = icmp sgt i32 %i.iv, -1
  br i1 %i.iw, label %bb.am, label %.loopexit

._crit_edge303:                                   ; preds = %bb.am, %.preheader
  %i.ix = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !88 ; 2 uses
  %.not235 = icmp eq ptr %i.iy, null
  br i1 %.not235, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge303
  %i.iz = call i64 @avio_seek(ptr noundef nonnull %i.iy, i64 noundef 0, i32 noundef 1) #18
  %.pre = load i32, ptr %i.q, align 4, !tbaa !116
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %i.ja = phi i32 [ %.pre, %bb.ao ], [ %i.bx, %bb.al ] ; 3 uses
  %.0198 = phi i64 [ %i.iz, %bb.ao ], [ 0, %bb.al ] ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %.lr.ph311, label %._crit_edge312

.lr.ph311:                                        ; preds = %bb.ap
  %i.jc = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph311, %bb.ba
  %.pre368372 = phi i32 [ %i.ja, %.lr.ph311 ], [ %.pre368373, %bb.ba ] ; 2 uses
  %i.jd = phi i32 [ %i.ja, %.lr.ph311 ], [ %i.kd, %bb.ba ]
  %indvars.iv351 = phi i64 [ 0, %.lr.ph311 ], [ %indvars.iv.next352, %bb.ba ] ; 3 uses
  %.0190309 = phi i32 [ 1, %.lr.ph311 ], [ %.1, %bb.ba ] ; 2 uses
  %.0191308 = phi i32 [ 0, %.lr.ph311 ], [ %.2, %bb.ba ] ; 3 uses
  %.0193307 = phi i32 [ 0, %.lr.ph311 ], [ %.1194, %bb.ba ]
  %.1199306 = phi i64 [ %.0198, %.lr.ph311 ], [ %.3, %bb.ba ] ; 4 uses
  %.0201305 = phi i32 [ -1, %.lr.ph311 ], [ %.2203, %bb.ba ] ; 3 uses
  %i.je = load ptr, ptr %i.jc, align 8, !tbaa !43
  %i.jf = getelementptr inbounds nuw [1640 x i8], ptr %i.je, i64 %indvars.iv351 ; 6 uses
  %i.jg = load i32, ptr %i.h, align 8, !tbaa !81
  %i.jh = and i32 %i.jg, 16
  %.not246 = icmp eq i32 %i.jh, 0
  br i1 %.not246, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ji = load i32, ptr %i.im, align 8, !tbaa !84
  %.not247 = icmp eq i32 %i.ji, 0
  %spec.select425 = select i1 %.not247, i64 %.1199306, i64 0
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1199306.sink = phi i64 [ 0, %bb.aq ], [ %spec.select425, %bb.ar ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 336
  store i64 %.1199306.sink, ptr %i.jj, align 8, !tbaa !262
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 136
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !49
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !201
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %.not248 = icmp eq i32 %.0190309, 0
  br i1 %.not248, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !70
  %.not249 = icmp eq i32 %i.jp, 0
  br i1 %.not249, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 152
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !71
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !175
  %i.ju = and i32 %i.jt, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.at, %bb.as
  %.1194 = phi i32 [ %.0193307, %bb.as ], [ 1, %bb.at ], [ 1, %bb.av ], [ 1, %bb.au ] ; 2 uses
  %.2 = phi i32 [ %.0191308, %bb.as ], [ %.0191308, %bb.at ], [ %i.ju, %bb.av ], [ %.0191308, %bb.au ] ; 2 uses
  %.1 = phi i32 [ %.0190309, %bb.as ], [ 0, %bb.at ], [ 0, %bb.av ], [ 0, %bb.au ]
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !70
  %.not250 = icmp eq i32 %i.jw, 0
  br i1 %.not250, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jf, i64 328
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !87 ; 2 uses
  %.not251 = icmp eq ptr %i.jy, null
  br i1 %.not251, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jz = call i64 @avio_seek(ptr noundef nonnull %i.jy, i64 noundef 0, i32 noundef 1) #18
  %i.ka = add nsw i64 %i.jz, %.1199306
  %.pre368.pre = load i32, ptr %i.q, align 4, !tbaa !116
end_hunk_8
begin_hunk_9_@mov_flush_fragment:bb.a
  br label %bb.ck

bb.ck:                                            ; preds = %mov_write_tfrf_tags.exit.i.i, %bb.cb, %bb.ca
  %i.re = phi i32 [ %.pre54.i.i, %mov_write_tfrf_tags.exit.i.i ], [ %i.oh, %bb.ca ], [ %i.oh, %bb.cb ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.rf = sext i32 %i.re to i64
  %i.rg = icmp slt i64 %indvars.iv.next.i.i, %i.rf
  br i1 %i.rg, label %bb.ca, label %.loopexit.loopexit.i, !llvm.loop !548

.loopexit.loopexit.i:                             ; preds = %bb.ck
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !81
  br label %.loopexit.i262

.loopexit.i262:                                   ; preds = %.loopexit.loopexit.i, %bb.bz
  %i.rh = phi i32 [ %i.re, %.loopexit.loopexit.i ], [ %i.od, %bb.bz ] ; 3 uses
  %i.ri = phi i32 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.nx, %bb.bz ]
  %i.rj = and i32 %i.ri, 278528
  %or.cond48.not.i = icmp eq i32 %i.rj, 262144
  br i1 %or.cond48.not.i, label %bb.cl, label %mov_prune_frag_info.exit.i

bb.cl:                                            ; preds = %.loopexit.i262
  %i.rk = load i32, ptr %i.le, align 8, !tbaa !284
  %i.rl = add nsw i32 %i.rk, 1                    ; 7 uses
  %i.rm = icmp sgt i32 %i.rh, 0
  br i1 %i.rm, label %.lr.ph.i50.i, label %mov_prune_frag_info.exit.i

.lr.ph.i50.i:                                     ; preds = %bb.cl
  %i.rn = icmp slt i32 %.0289, 0
  %i.ro = sext i32 %i.rl to i64
  %i.rp = mul nsw i64 %i.ro, 40                   ; 2 uses
  br i1 %i.rn, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i50.i
  %i.rq = zext nneg i32 %.0289 to i64
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i50.i, %bb.co
  %i.rr = phi i32 [ %i.se, %bb.co ], [ %i.rh, %.lr.ph.i50.i ] ; 2 uses
  %indvars.iv24.i.i = phi i64 [ %indvars.iv.next25.i.i, %bb.co ], [ 0, %.lr.ph.i50.i ] ; 2 uses
  %i.rs = load ptr, ptr %i.kj, align 8, !tbaa !43
  %i.rt = getelementptr inbounds nuw [1640 x i8], ptr %i.rs, i64 %indvars.iv24.i.i ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !70
  %.not20.us.i.i = icmp eq i32 %i.rv, 0
  br i1 %.not20.us.i.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.split.us.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 352 ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !269 ; 2 uses
  %i.ry = icmp sgt i32 %i.rx, %i.rl
  br i1 %i.ry, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rt, i64 360
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !270 ; 2 uses
  %i.sb = sub nsw i32 %i.rx, %i.rl
  %i.sc = zext nneg i32 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [40 x i8], ptr %i.sa, i64 %i.sc
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.sa, ptr align 8 %i.sd, i64 %i.rp, i1 false)
  store i32 %i.rl, ptr %i.rw, align 8, !tbaa !269
  %.pre27.i.i = load i32, ptr %i.q, align 4, !tbaa !116
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %.lr.ph.split.us.i.i
  %i.se = phi i32 [ %.pre27.i.i, %bb.cn ], [ %i.rr, %bb.cm ], [ %i.rr, %.lr.ph.split.us.i.i ] ; 2 uses
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %i.sf = sext i32 %i.se to i64
  %i.sg = icmp slt i64 %indvars.iv.next25.i.i, %i.sf
  br i1 %i.sg, label %.lr.ph.split.us.i.i, label %mov_prune_frag_info.exit.i, !llvm.loop !549

.lr.ph.split.i.i:                                 ; preds = %bb.cs, %.lr.ph.split.preheader.i.i
  %i.sh = phi i32 [ %i.rh, %.lr.ph.split.preheader.i.i ], [ %i.su, %bb.cs ] ; 3 uses
  %indvars.iv.i51.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i ], [ %indvars.iv.next.i53.i, %bb.cs ] ; 3 uses
  %i.si = load ptr, ptr %i.kj, align 8, !tbaa !43
  %i.sj = getelementptr inbounds nuw [1640 x i8], ptr %i.si, i64 %indvars.iv.i51.i ; 3 uses
  %.not.i52.i = icmp eq i64 %indvars.iv.i51.i, %i.rq
  br i1 %.not.i52.i, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %.lr.ph.split.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !70
  %.not20.i.i = icmp eq i32 %i.sl, 0
  br i1 %.not20.i.i, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 352 ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !269 ; 2 uses
  %i.so = icmp sgt i32 %i.sn, %i.rl
  br i1 %i.so, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 360
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !270 ; 2 uses
  %i.sr = sub nsw i32 %i.sn, %i.rl
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw [40 x i8], ptr %i.sq, i64 %i.ss
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.sq, ptr align 8 %i.st, i64 %i.rp, i1 false)
  store i32 %i.rl, ptr %i.sm, align 8, !tbaa !269
  %.pre.i54.i = load i32, ptr %i.q, align 4, !tbaa !116
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cp, %.lr.ph.split.i.i
  %i.su = phi i32 [ %i.sh, %bb.cq ], [ %.pre.i54.i, %bb.cr ], [ %i.sh, %bb.cp ], [ %i.sh, %.lr.ph.split.i.i ] ; 2 uses
  %indvars.iv.next.i53.i = add nuw nsw i64 %indvars.iv.i51.i, 1 ; 2 uses
  %i.sv = sext i32 %i.su to i64
  %i.sw = icmp slt i64 %indvars.iv.next.i53.i, %i.sv
  br i1 %i.sw, label %.lr.ph.split.i.i, label %mov_prune_frag_info.exit.i, !llvm.loop !549

mov_prune_frag_info.exit.i:                       ; preds = %bb.cs, %bb.co, %bb.cl, %.loopexit.i262, %bb.by
  call fastcc void @mov_write_moof_tag_internal(ptr noundef %i.lt, ptr noundef nonnull %i.g, i32 noundef %.0289, i32 noundef %i.ly)
  br label %mov_write_moof_tag.exit

mov_write_moof_tag.exit:                          ; preds = %bb.cd, %bb.bh, %bb.bi, %mov_prune_frag_info.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.sx = load i32, ptr %i.lf, align 8, !tbaa !85
  %i.sy = add nsw i32 %i.sx, 1
  store i32 %i.sy, ptr %i.lf, align 8, !tbaa !85
  %i.sz = getelementptr inbounds nuw i8, ptr %i.li, i64 408 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !117
  %.not242 = icmp eq ptr %i.ta, null
  br i1 %.not242, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %mov_write_moof_tag.exit
  call void @ff_mov_cenc_flush(ptr noundef nonnull %i.sz) #18
  br label %bb.cu

bb.cu:                                            ; preds = %mov_write_moof_tag.exit, %bb.ct
  %i.tb = load ptr, ptr %i.kh, align 8, !tbaa !26
  %i.tc = trunc i64 %.5287 to i32
  %i.td = add i32 %i.tc, 8
  call void @avio_wb32(ptr noundef %i.tb, i32 noundef %i.td) #18
  %i.te = load ptr, ptr %i.kh, align 8, !tbaa !26
  call void @avio_wl32(ptr noundef %i.te, i32 noundef 1952539757) #18
  %i.tf = load ptr, ptr %i.kh, align 8, !tbaa !26
  %i.tg = call i64 @avio_seek(ptr noundef %i.tf, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %.pre369 = load ptr, ptr %i.kj, align 8, !tbaa !43 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [1640 x i8], ptr %.pre369, i64 %indvars.iv354
  %.phi.trans.insert370 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre371 = load i32, ptr %.phi.trans.insert370, align 8, !tbaa !70 ; 2 uses
  %.not.i264 = icmp eq i32 %.pre371, 0
  br i1 %.not.i264, label %mov_finish_fragment.exit282, label %.thread411

.thread411:                                       ; preds = %bb.bg, %bb.cu
  %.pn = phi ptr [ %.pre369, %bb.cu ], [ %i.lh, %bb.bg ]
  %.1196417 = phi i64 [ %i.tg, %bb.cu ], [ %.0195320, %bb.bg ] ; 3 uses
  %.5288415 = phi i64 [ %.5287, %bb.cu ], [ %.4319, %bb.bg ] ; 2 uses
  %i.th = phi i32 [ %.pre371, %bb.cu ], [ %i.lk, %bb.bg ] ; 5 uses
  %i.ti = getelementptr inbounds [1640 x i8], ptr %.pn, i64 %indvars.iv354 ; 9 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 3 uses
  %i.tk = load i32, ptr %i.h, align 8, !tbaa !81
  %i.tl = and i32 %i.tk, 16777216
  %.not32.i265 = icmp eq i32 %i.tl, 0
  br i1 %.not32.i265, label %bb.cy, label %.preheader34.i266

.preheader34.i266:                                ; preds = %.thread411
  %i.tm = icmp sgt i32 %i.th, 0
  br i1 %i.tm, label %.lr.ph.i271, label %._crit_edge.thread.i267

._crit_edge.thread.i267:                          ; preds = %.preheader34.i266
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ti, i64 160
  br label %.loopexit.i268

.lr.ph.i271:                                      ; preds = %.preheader34.i266
  %i.to = getelementptr inbounds nuw i8, ptr %i.ti, i64 336
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !262
  %i.tq = add nsw i64 %i.tp, %.1196417            ; 5 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ti, i64 152
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !71 ; 10 uses
  %wide.trip.count.i272 = zext nneg i32 %i.th to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i272, 3    ; 3 uses
  %i.tt = icmp ult i32 %i.th, 4
  br i1 %i.tt, label %.epil.preheader, label %.lr.ph.i271.new

.lr.ph.i271.new:                                  ; preds = %.lr.ph.i271
  %unroll_iter = and i64 %wide.trip.count.i272, 2147483644
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph.i271.new
  %indvars.iv.i273 = phi i64 [ 0, %.lr.ph.i271.new ], [ %indvars.iv.next.i274.3, %bb.cv ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i271.new ], [ %niter.next.3, %bb.cv ]
  %i.tu = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %indvars.iv.i273 ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !159
  %i.tw = add i64 %i.tq, %i.tv
  store i64 %i.tw, ptr %i.tu, align 8, !tbaa !159
  %i.tx = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %indvars.iv.i273
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 72 ; 2 uses
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !159
  %i.ua = add i64 %i.tq, %i.tz
  store i64 %i.ua, ptr %i.ty, align 8, !tbaa !159
  %i.ub = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %indvars.iv.i273
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 144 ; 2 uses
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !159
  %i.ue = add i64 %i.tq, %i.ud
  store i64 %i.ue, ptr %i.uc, align 8, !tbaa !159
  %i.uf = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %indvars.iv.i273
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 216 ; 2 uses
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !159
  %i.ui = add i64 %i.tq, %i.uh
  store i64 %i.ui, ptr %i.ug, align 8, !tbaa !159
  %indvars.iv.next.i274.3 = add nuw nsw i64 %indvars.iv.i273, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i276.unr-lcssa, label %bb.cv, !llvm.loop !532

._crit_edge.i276.unr-lcssa:                       ; preds = %bb.cv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i276, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i276.unr-lcssa, %.lr.ph.i271
  %indvars.iv.i273.epil.init = phi i64 [ 0, %.lr.ph.i271 ], [ %indvars.iv.next.i274.3, %._crit_edge.i276.unr-lcssa ]
  %lcmp.mod440 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod440)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.epil.preheader
  %indvars.iv.i273.epil = phi i64 [ %indvars.iv.i273.epil.init, %.epil.preheader ], [ %indvars.iv.next.i274.epil, %bb.cw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cw ]
  %i.uj = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %indvars.iv.i273.epil ; 2 uses
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !159
  %i.ul = add i64 %i.tq, %i.uk
  store i64 %i.ul, ptr %i.uj, align 8, !tbaa !159
  %indvars.iv.next.i274.epil = add nuw nsw i64 %indvars.iv.i273.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i276, label %bb.cw, !llvm.loop !550

._crit_edge.i276:                                 ; preds = %bb.cw, %._crit_edge.i276.unr-lcssa
  %i.um = getelementptr inbounds nuw i8, ptr %i.ti, i64 160 ; 4 uses
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !263
  %i.uo = icmp eq ptr %i.un, null
  br i1 %i.uo, label %.lr.ph37.i277.preheader, label %.loopexit.i268

.lr.ph37.i277.preheader:                          ; preds = %._crit_edge.i276
  %xtraiter441 = and i64 %wide.trip.count.i272, 3 ; 3 uses
  %i.up = icmp ult i32 %i.th, 4
  br i1 %i.up, label %.lr.ph37.i277.epil.preheader, label %.lr.ph37.i277.preheader.new

.lr.ph37.i277.preheader.new:                      ; preds = %.lr.ph37.i277.preheader
  %unroll_iter445 = and i64 %wide.trip.count.i272, 2147483644
  br label %.lr.ph37.i277

.lr.ph37.i277:                                    ; preds = %.lr.ph37.i277, %.lr.ph37.i277.preheader.new
  %indvars.iv39.i279 = phi i64 [ 0, %.lr.ph37.i277.preheader.new ], [ %indvars.iv.next40.i280.3, %.lr.ph37.i277 ] ; 5 uses
  %niter446 = phi i64 [ 0, %.lr.ph37.i277.preheader.new ], [ %niter446.next.3, %.lr.ph37.i277 ]
  %i.uq = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %indvars.iv39.i279 ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 36
  store i32 0, ptr %i.ur, align 4, !tbaa !162
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 40
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !164
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 32
  store i32 %i.ut, ptr %i.uu, align 8, !tbaa !161
  %i.uv = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %indvars.iv39.i279 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 108
  store i32 0, ptr %i.uw, align 4, !tbaa !162
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 112
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !164
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uv, i64 104
  store i32 %i.uy, ptr %i.uz, align 8, !tbaa !161
  %i.va = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %indvars.iv39.i279 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 180
  store i32 0, ptr %i.vb, align 4, !tbaa !162
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 184
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !164
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 176
  store i32 %i.vd, ptr %i.ve, align 8, !tbaa !161
  %i.vf = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %indvars.iv39.i279 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 252
  store i32 0, ptr %i.vg, align 4, !tbaa !162
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 256
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !164
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 248
  store i32 %i.vi, ptr %i.vj, align 8, !tbaa !161
  %indvars.iv.next40.i280.3 = add nuw nsw i64 %indvars.iv39.i279, 4 ; 2 uses
  %niter446.next.3 = add nuw i64 %niter446, 4     ; 2 uses
  %niter446.ncmp.3 = icmp eq i64 %niter446.next.3, %unroll_iter445
  br i1 %niter446.ncmp.3, label %.loopexit.i268.loopexit.unr-lcssa, label %.lr.ph37.i277, !llvm.loop !534

.loopexit.i268.loopexit.unr-lcssa:                ; preds = %.lr.ph37.i277
  %lcmp.mod443.not = icmp eq i64 %xtraiter441, 0
  br i1 %lcmp.mod443.not, label %.loopexit.i268, label %.lr.ph37.i277.epil.preheader

.lr.ph37.i277.epil.preheader:                     ; preds = %.loopexit.i268.loopexit.unr-lcssa, %.lr.ph37.i277.preheader
  %indvars.iv39.i279.epil.init = phi i64 [ 0, %.lr.ph37.i277.preheader ], [ %indvars.iv.next40.i280.3, %.loopexit.i268.loopexit.unr-lcssa ]
  %lcmp.mod444 = icmp ne i64 %xtraiter441, 0
  call void @llvm.assume(i1 %lcmp.mod444)
  br label %.lr.ph37.i277.epil

.lr.ph37.i277.epil:                               ; preds = %.lr.ph37.i277.epil, %.lr.ph37.i277.epil.preheader
  %indvars.iv39.i279.epil = phi i64 [ %indvars.iv.next40.i280.epil, %.lr.ph37.i277.epil ], [ %indvars.iv39.i279.epil.init, %.lr.ph37.i277.epil.preheader ] ; 2 uses
  %epil.iter442 = phi i64 [ %epil.iter442.next, %.lr.ph37.i277.epil ], [ 0, %.lr.ph37.i277.epil.preheader ]
  %i.vk = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %indvars.iv39.i279.epil ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 36
  store i32 0, ptr %i.vl, align 4, !tbaa !162
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 40
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !164
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 32
  store i32 %i.vn, ptr %i.vo, align 8, !tbaa !161
  %indvars.iv.next40.i280.epil = add nuw nsw i64 %indvars.iv39.i279.epil, 1
  %epil.iter442.next = add i64 %epil.iter442, 1   ; 2 uses
  %epil.iter442.cmp.not = icmp eq i64 %epil.iter442.next, %xtraiter441
  br i1 %epil.iter442.cmp.not, label %.loopexit.i268, label %.lr.ph37.i277.epil, !llvm.loop !551

.loopexit.i268:                                   ; preds = %.loopexit.i268.loopexit.unr-lcssa, %.lr.ph37.i277.epil, %._crit_edge.i276, %._crit_edge.thread.i267
  %i.vp = phi ptr [ %i.tn, %._crit_edge.thread.i267 ], [ %i.um, %._crit_edge.i276 ], [ %i.um, %.lr.ph37.i277.epil ], [ %i.um, %.loopexit.i268.loopexit.unr-lcssa ] ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ti, i64 12 ; 4 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !264
  %i.vs = add nsw i32 %i.vr, %i.th
  %i.vt = sext i32 %i.vs to i64
  %i.vu = call i32 @av_reallocp_array(ptr noundef nonnull %i.vp, i64 noundef %i.vt, i64 noundef 72) #18
  %.not33.i269 = icmp eq i32 %i.vu, 0
  br i1 %.not33.i269, label %bb.cx, label %mov_finish_fragment.exit282

bb.cx:                                            ; preds = %.loopexit.i268
  %i.vv = load ptr, ptr %i.vp, align 8, !tbaa !263
  %i.vw = load i32, ptr %i.vq, align 4, !tbaa !264
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds [72 x i8], ptr %i.vv, i64 %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ti, i64 152
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !71
  %i.wb = load i32, ptr %i.tj, align 8, !tbaa !70
  %i.wc = sext i32 %i.wb to i64
  %i.wd = mul nsw i64 %i.wc, 72
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.vy, ptr align 8 %i.wa, i64 %i.wd, i1 false)
  %i.we = load i32, ptr %i.tj, align 8, !tbaa !70
  %i.wf = load i32, ptr %i.vq, align 4, !tbaa !264
  %i.wg = add nsw i32 %i.wf, %i.we
  store i32 %i.wg, ptr %i.vq, align 4, !tbaa !264
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.thread411
  store i32 0, ptr %i.tj, align 8, !tbaa !70
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ti, i64 348
  store i32 0, ptr %i.wh, align 4, !tbaa !86
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ti, i64 224
  store i32 0, ptr %i.wi, align 8, !tbaa !525
  br label %mov_finish_fragment.exit282

mov_finish_fragment.exit282:                      ; preds = %bb.cu, %.loopexit.i268, %bb.cy
  %.1196418 = phi i64 [ %i.tg, %bb.cu ], [ %.1196417, %.loopexit.i268 ], [ %.1196417, %bb.cy ] ; 3 uses
  %.5288416 = phi i64 [ %.5287, %bb.cu ], [ %.5288415, %.loopexit.i268 ], [ %.5288415, %bb.cy ] ; 3 uses
  %i.wj = load i32, ptr %i.im, align 8, !tbaa !84
  %.not243 = icmp eq i32 %i.wj, 0
  br i1 %.not243, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %mov_finish_fragment.exit282
  %i.wk = getelementptr inbounds nuw i8, ptr %i.li, i64 328 ; 2 uses
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !87 ; 2 uses
  %.not244 = icmp eq ptr %i.wl, null
  br i1 %.not244, label %bb.db, label %.sink.split

bb.da:                                            ; preds = %mov_finish_fragment.exit282
  %i.wm = load ptr, ptr %i.lg, align 8, !tbaa !88 ; 2 uses
  %.not245 = icmp eq ptr %i.wm, null
  br i1 %.not245, label %bb.db, label %.sink.split

.sink.split:                                      ; preds = %bb.da, %bb.cz
  %.sink434 = phi ptr [ %i.wl, %bb.cz ], [ %i.wm, %bb.da ]
  %.sink.in = phi ptr [ %i.wk, %bb.cz ], [ %i.lg, %bb.da ]
  %i.wn = call i32 @avio_get_dyn_buf(ptr noundef nonnull %.sink434, ptr noundef nonnull %i.e) #18
  %i.wo = load ptr, ptr %i.kh, align 8, !tbaa !26
  %i.wp = load ptr, ptr %i.e, align 8, !tbaa !34
  call void @avio_write(ptr noundef %i.wo, ptr noundef %i.wp, i32 noundef %i.wn) #18
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !89
  call void @ffio_reset_dyn_buf(ptr noundef %.sink) #18
  br label %bb.db

bb.db:                                            ; preds = %.sink.split, %bb.da, %bb.cz, %bb.be
  %.6 = phi i64 [ %.5288416, %bb.da ], [ %.5288416, %bb.cz ], [ %.4319, %bb.be ], [ %.5288416, %.sink.split ]
  %.2197 = phi i64 [ %.1196418, %bb.da ], [ %.1196418, %bb.cz ], [ %.0195320, %bb.be ], [ %.1196418, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %indvars.iv.next355 = add nsw i64 %indvars.iv354, 1 ; 2 uses
  %i.wq = load i32, ptr %i.q, align 4, !tbaa !116
  %i.wr = sext i32 %i.wq to i64
  %i.ws = icmp slt i64 %indvars.iv.next355, %i.wr
  br i1 %i.ws, label %bb.be, label %._crit_edge323, !llvm.loop !552

._crit_edge323:                                   ; preds = %bb.db, %bb.bd
  %i.wt = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 0, ptr %i.wt, align 8, !tbaa !181
  %i.wu = load ptr, ptr %i.kh, align 8, !tbaa !26
  call void @avio_write_marker(ptr noundef %i.wu, i64 noundef -9223372036854775808, i32 noundef 5) #18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.an, %._crit_edge312, %._crit_edge303, %bb.b, %bb.a, %._crit_edge323, %bb.ak
  %.3214 = phi i32 [ 0, %bb.a ], [ 0, %._crit_edge312 ], [ 0, %._crit_edge323 ], [ 0, %._crit_edge303 ], [ %i.k, %bb.b ], [ %.0211, %bb.ak ], [ %i.iv, %bb.an ]
  ret i32 %.3214
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mov_write_single_packet(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 22 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 136 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70   ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr [72 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !72
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.z = load i64, ptr %i.y, align 8, !tbaa !75   ; 2 uses
  %.not34.i = icmp eq i64 %i.z, -9223372036854775808
  br i1 %.not34.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 344
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !76
  %.not35.i = icmp eq i32 %i.ab, 0
  br i1 %.not35.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.ae = add nsw i64 %i.ad, %i.z
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !78
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.0.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %bb.f ], [ %i.ae, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 232 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !79 ; 2 uses
  %.not36.i = icmp eq i64 %i.ai, -9223372036854775808
  %i.aj = select i1 %.not36.i, i64 0, i64 %i.ai
  %spec.select.i = sub nsw i64 %.0.i, %i.aj       ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !78 ; 4 uses
  %i.am = sub nsw i64 %i.al, %spec.select.i       ; 2 uses
  %i.an = icmp slt i64 %i.al, %spec.select.i
  %i.ao = icmp ugt i64 %i.am, 2147483646
  %or.cond.i = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.38, i64 noundef %i.am, i64 noundef %i.al, i32 noundef %i.g) #18
  %i.ap = add nsw i64 %spec.select.i, 1           ; 2 uses
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -9223372036854775808, ptr %i.aq, align 8, !tbaa !80
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = phi i64 [ %i.ap, %bb.h ], [ %i.al, %bb.g ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = load i64, ptr %i.as, align 8, !tbaa !27 ; 2 uses
  %or.cond37.i = icmp ugt i64 %i.at, 2147483647
  br i1 %or.cond37.i, label %check_pkt.exit.thread, label %check_pkt.exit

check_pkt.exit.thread:                            ; preds = %bb.i
  %i.au = load i32, ptr %i.f, align 4, !tbaa !35
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.39, i64 noundef %i.at, i32 noundef %i.au) #18
  br label %bb.as

check_pkt.exit:                                   ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !81 ; 3 uses
  %i.ax = and i32 %i.aw, 4096
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.l, label %.preheader

.preheader:                                       ; preds = %check_pkt.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !196 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !43 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.az to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.bd = icmp ult i32 %i.az, 8
  br i1 %i.bd, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod145 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.be = getelementptr inbounds nuw [1640 x i8], ptr %i.bc, i64 %indvars.iv.epil
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 344
  store i32 1, ptr %i.bf, align 8, !tbaa !76
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.j, !llvm.loop !553

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.j, %.preheader
  %i.bg = and i32 %i.aw, -4097                    ; 2 uses
  store i32 %i.bg, ptr %i.av, align 8, !tbaa !81
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.k ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.k ]
  %i.bh = getelementptr inbounds nuw [1640 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 344
  store i32 1, ptr %i.bi, align 8, !tbaa !76
  %i.bj = getelementptr inbounds nuw [1640 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1984
  store i32 1, ptr %i.bk, align 8, !tbaa !76
  %i.bl = getelementptr inbounds nuw [1640 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3624
  store i32 1, ptr %i.bm, align 8, !tbaa !76
  %i.bn = getelementptr inbounds nuw [1640 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 5264
  store i32 1, ptr %i.bo, align 8, !tbaa !76
  %i.bp = getelementptr inbounds nuw [1640 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 6904
  store i32 1, ptr %i.bq, align 8, !tbaa !76
  %i.br = getelementptr inbounds nuw [1640 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8544
  store i32 1, ptr %i.bs, align 8, !tbaa !76
  %i.bt = getelementptr inbounds nuw [1640 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 10184
  store i32 1, ptr %i.bu, align 8, !tbaa !76
  %i.bv = getelementptr inbounds nuw [1640 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 11824
  store i32 1, ptr %i.bw, align 8, !tbaa !76
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !554

bb.l:                                             ; preds = %._crit_edge, %check_pkt.exit
  %i.bx = phi i32 [ %i.bg, %._crit_edge ], [ %i.aw, %check_pkt.exit ]
  %i.by = and i32 %i.bx, 524288
  %.not104 = icmp eq i32 %i.by, 0
  br i1 %.not104, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = load i64, ptr %i.ah, align 8, !tbaa !79 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, -9223372036854775808
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !80
  %i.cd = sub nsw i64 %i.cc, %i.ar                ; 2 uses
  store i64 %i.cd, ptr %i.ah, align 8, !tbaa !79
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ce = phi i64 [ %i.cd, %bb.n ], [ %i.bz, %bb.m ]
  %i.cf = add nsw i64 %i.ar, %i.ce
  store i64 %i.cf, ptr %i.ak, align 8, !tbaa !78
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !90
  switch i32 %i.ci, label %bb.v [
    i32 86061, label %bb.q
    i32 86018, label %bb.q
    i32 222, label %bb.q
    i32 86028, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.cj = call ptr @av_packet_get_side_data(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.a) #18
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !351 ; 2 uses
  %.not105 = icmp eq i64 %i.ck, 0
  br i1 %.not105, label %.critedge125, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = load i32, ptr %i.o, align 8, !tbaa !32
  %.not106 = icmp eq i32 %i.cl, 0
  br i1 %.not106, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !100
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !112
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !33
  %.not107 = icmp eq i32 %i.cs, 0
  br i1 %.not107, label %bb.t, label %.critedge125

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ct = add i64 %i.ck, 64
  %i.cu = call noalias ptr @av_malloc(i64 noundef %i.ct) #18 ; 4 uses
  %.not108.not = icmp eq ptr %i.cu, null
  br i1 %.not108.not, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !351 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cw, i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %i.cj, i64 %i.cv, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !104
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !112
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !34
  call void @av_free(ptr noundef %i.dd) #18
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !104
  %i.df = load i32, ptr %i.cz, align 8, !tbaa !112
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dg
  store ptr %i.cu, ptr %i.dh, align 8, !tbaa !34
  %i.di = load i64, ptr %i.a, align 8, !tbaa !351
  %i.dj = trunc i64 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !100
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dg
  store i32 %i.dj, ptr %i.dm, align 4, !tbaa !33
  br label %.critedge125

.critedge125:                                     ; preds = %bb.u, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.v

.critedge:                                        ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.as

bb.v:                                             ; preds = %.critedge125, %bb.p
  %i.dn = load i32, ptr %i.o, align 8, !tbaa !32
  %.not109 = icmp eq i32 %i.dn, 0
  br i1 %.not109, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !75
  %i.dq = icmp eq i64 %i.dp, -9223372036854775808
  br i1 %i.dq, label %bb.x, label %bb.as

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 344
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !76
  %.not110 = icmp eq i32 %i.ds, 0
  br i1 %.not110, label %bb.as, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = load i64, ptr %i.ak, align 8, !tbaa !78 ; 2 uses
  store i64 %i.dt, ptr %i.do, align 8, !tbaa !75
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !80 ; 2 uses
  %.not111 = icmp eq i64 %i.dv, -9223372036854775808
  br i1 %.not111, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = sub nsw i64 %i.dv, %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !176
  br label %bb.as

bb.aa:                                            ; preds = %bb.y
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  store i64 0, ptr %i.dy, align 8, !tbaa !176
  br label %bb.as

bb.ab:                                            ; preds = %bb.v
  %i.dz = load i32, ptr %i.q, align 8, !tbaa !70
  %.not112 = icmp eq i32 %i.dz, 0                 ; 3 uses
  br i1 %.not112, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = load i32, ptr %i.f, align 4, !tbaa !35  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !196
  %i.ed = icmp slt i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ee = load i64, ptr %i.ak, align 8, !tbaa !78
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !71
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !72
  %i.ej = sub nsw i64 %i.ee, %i.ei
  %i.ek = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.el = sext i32 %i.ea to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !38
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = call i64 @av_rescale_q(i64 noundef %i.ej, i64 %i.ep, i64 4294967296000001) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.096 = phi i64 [ %i.eq, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.es = load i32, ptr %i.er, align 4, !tbaa !221 ; 2 uses
  %.not113 = icmp eq i32 %i.es, 0
  %i.et = sext i32 %i.es to i64
  %.not114 = icmp slt i64 %.096, %i.et
  %or.cond = select i1 %.not113, i1 true, i1 %.not114
  br i1 %or.cond, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !222 ; 2 uses
  %.not115 = icmp eq i32 %i.ev, 0
  br i1 %.not115, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !181
  %i.ey = sext i32 %i.p to i64
  %i.ez = add i64 %i.ex, %i.ey
  %i.fa = sext i32 %i.ev to i64
  %.not116 = icmp ult i64 %i.ez, %i.fa
  br i1 %.not116, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fb = load i32, ptr %i.av, align 8, !tbaa !81 ; 2 uses
  %i.fc = and i32 %i.fb, 8
  %.not117 = icmp eq i32 %i.fc, 0
  br i1 %.not117, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fd = load i32, ptr %i.n, align 8, !tbaa !201
  %i.fe = icmp ne i32 %i.fd, 0
  %brmerge = or i1 %.not112, %i.fe
end_hunk_9
begin_hunk_10_@mov_write_trun_tag:bb.a
  %i.dq = getelementptr i8, ptr %i.dp, i64 48
  %.val.us = load i32, ptr %i.dq, align 8, !tbaa !175
  %i.dr = and i32 %.val.us, 1
  %.not.i103.us = icmp eq i32 %i.dr, 0
  %i.ds = select i1 %.not.i103.us, i32 16842752, i32 33554432
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %i.ds) #18
  %i.dt = load ptr, ptr %i.cd, align 8, !tbaa !71
  %i.du = getelementptr inbounds [72 x i8], ptr %i.dt, i64 %indvars.iv127
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 44
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !174
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %i.dw) #18
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1 ; 2 uses
  %lftr.wideiv130 = trunc i64 %indvars.iv.next128 to i32
  %exitcond131.not = icmp eq i32 %5, %lftr.wideiv130
  br i1 %exitcond131.not, label %._crit_edge109, label %.lr.ph108.split.split.us.split.split, !llvm.loop !570

.lr.ph108.split.split:                            ; preds = %.lr.ph108.split, %bb.u
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %bb.u ], [ %i.cg, %.lr.ph108.split ] ; 5 uses
  br i1 %.not88, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph108.split.split
  %i.dx = trunc nsw i64 %indvars.iv122 to i32
  %i.dy = tail call fastcc i32 @get_cluster_duration(ptr noundef nonnull %2, i32 noundef %i.dx)
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %i.dy) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph108.split.split
  %i.dz = load ptr, ptr %i.cd, align 8, !tbaa !71
  %i.ea = getelementptr inbounds [72 x i8], ptr %i.dz, i64 %indvars.iv122
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !163
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %i.ec) #18
  %i.ed = load ptr, ptr %i.cd, align 8, !tbaa !71
  %i.ee = getelementptr inbounds [72 x i8], ptr %i.ed, i64 %indvars.iv122
  %i.ef = getelementptr i8, ptr %i.ee, i64 48
  %.val = load i32, ptr %i.ef, align 8, !tbaa !175
  %i.eg = and i32 %.val, 1
  %.not.i103 = icmp eq i32 %i.eg, 0
  %i.eh = select i1 %.not.i103, i32 16842752, i32 33554432
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %i.eh) #18
  br i1 %.not91, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = load ptr, ptr %i.cd, align 8, !tbaa !71
  %i.ej = getelementptr inbounds [72 x i8], ptr %i.ei, i64 %indvars.iv122
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 44
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !174
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %i.el) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %lftr.wideiv125 = trunc i64 %indvars.iv.next123 to i32
  %exitcond126.not = icmp eq i32 %5, %lftr.wideiv125
  br i1 %exitcond126.not, label %._crit_edge109, label %.lr.ph108.split.split, !llvm.loop !570

._crit_edge109:                                   ; preds = %bb.u, %.lr.ph108.split.split.us.split.split, %.lr.ph108.split.split.us.split.split.us, %.lr.ph108.split.split.us.split.us.split, %.lr.ph108.split.split.us.split.us.split.us, %bb.q, %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 0, ptr %i.em, align 8, !tbaa !559
  %i.en = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.eo = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %i.a, i32 noundef 0) #18 ; 0 uses
  %i.ep = sub nsw i64 %i.en, %i.a
  %i.eq = trunc i64 %i.ep to i32
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %i.eq) #18
  %i.er = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %i.en, i32 noundef 0) #18 ; 0 uses
  ret void
}

declare i64 @ff_get_formatted_ntp_time(i64 noundef) local_unnamed_addr #2

declare i64 @ff_ntp_time() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @ff_iamf_write_parameter_blocks(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_iamf_write_audio_frame(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @av_buffer_unref(ptr noundef) local_unnamed_addr #2

declare ptr @av_buffer_create(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_write_mdat_size(ptr nofree readonly captures(none) %.24.val, ptr %.32.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.24.val, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !181
  %i.c = add i64 %i.b, 8
  %i.d = icmp ult i64 %i.c, 4294967296
  %i.e = getelementptr inbounds nuw i8, ptr %.24.val, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !223  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @avio_seek(ptr noundef %.32.val, i64 noundef %i.f, i32 noundef 0) #18 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !181
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, 8
  tail call void @avio_wb32(ptr noundef %.32.val, i32 noundef %i.j) #18
  %i.k = getelementptr inbounds nuw i8, ptr %.24.val, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !81
  %i.m = and i32 %i.l, 16777216
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @avio_wl32(ptr noundef %.32.val, i32 noundef 1952539757) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = add nsw i64 %i.f, -8
  %i.o = tail call i64 @avio_seek(ptr noundef %.32.val, i64 noundef %i.n, i32 noundef 0) #18 ; 0 uses
  tail call void @avio_wb32(ptr noundef %.32.val, i32 noundef 1) #18
  tail call void @avio_wl32(ptr noundef %.32.val, i32 noundef 1952539757) #18
  %i.p = load i64, ptr %i.a, align 8, !tbaa !181
  %i.q = add i64 %i.p, 16
  tail call void @avio_wb64(ptr noundef %.32.val, i64 noundef %i.q) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @shift_data(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !81
  %i.h = and i32 %i.g, 2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.i = call i32 @ffio_open_null_buf(ptr noundef nonnull %i.c) #18 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %get_sidx_size.exit.thread.i, label %get_sidx_size.exit.i

get_sidx_size.exit.thread.i:                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %compute_sidx_size.exit.thread

get_sidx_size.exit.i:                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !89
  call fastcc void @mov_write_sidx_tags(ptr noundef %i.k, ptr noundef nonnull readonly %i.e, i32 noundef -1, i32 noundef 0)
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.m = call i32 @ffio_close_null_buf(ptr noundef %i.l) #18 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %compute_sidx_size.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %get_sidx_size.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !116  ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %compute_sidx_size.exit.thread19

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.r = zext nneg i32 %i.m to i64                ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43   ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.p to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.u = icmp ult i32 %i.p, 4
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.v = getelementptr inbounds nuw [1640 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 336 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !262
  %i.y = add nsw i64 %i.x, %i.r
  store i64 %i.y, ptr %i.w, align 8, !tbaa !262
  %i.z = getelementptr inbounds nuw [1640 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1976 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !262
  %i.ac = add nsw i64 %i.ab, %i.r
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !262
  %i.ad = getelementptr inbounds nuw [1640 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 3616 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !262
  %i.ag = add nsw i64 %i.af, %i.r
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !262
  %i.ah = getelementptr inbounds nuw [1640 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 5256 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !262
  %i.ak = add nsw i64 %i.aj, %i.r
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !262
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %compute_sidx_size.exit.thread19.loopexit38.unr-lcssa, label %bb.c, !llvm.loop !571

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.al = call i32 @ffio_open_null_buf(ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %get_moov_size.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.ao = call fastcc i32 @mov_write_moov_tag(ptr noundef %i.an, ptr noundef nonnull %i.e, ptr noundef nonnull %0) ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %get_moov_size.exit.thread.i, label %get_moov_size.exit.i

get_moov_size.exit.thread.i:                      ; preds = %bb.e, %bb.d
  %.0.i.ph.i = phi i32 [ %i.ao, %bb.e ], [ %i.al, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %compute_sidx_size.exit.thread

get_moov_size.exit.i:                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.ar = call i32 @ffio_close_null_buf(ptr noundef %i.aq) #18 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %compute_sidx_size.exit.thread, label %.preheader34.i

.preheader34.i:                                   ; preds = %get_moov_size.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 28 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !116 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i11, label %._crit_edge.i

.lr.ph.i11:                                       ; preds = %.preheader34.i
  %i.aw = zext nneg i32 %i.ar to i64              ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 5 uses
  %wide.trip.count.i12 = zext nneg i32 %i.au to i64 ; 2 uses
  %xtraiter41 = and i64 %wide.trip.count.i12, 3   ; 3 uses
  %i.az = icmp ult i32 %i.au, 4
  br i1 %i.az, label %.epil.preheader40, label %.lr.ph.i11.new

.lr.ph.i11.new:                                   ; preds = %.lr.ph.i11
  %unroll_iter45 = and i64 %wide.trip.count.i12, 2147483644
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i11.new
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.i11.new ], [ %indvars.iv.next.i14.3, %bb.f ] ; 5 uses
  %niter46 = phi i64 [ 0, %.lr.ph.i11.new ], [ %niter46.next.3, %bb.f ]
  %i.ba = getelementptr inbounds nuw [1640 x i8], ptr %i.ay, i64 %indvars.iv.i13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 336 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !262
  %i.bd = add nsw i64 %i.bc, %i.aw
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !262
  %i.be = getelementptr inbounds nuw [1640 x i8], ptr %i.ay, i64 %indvars.iv.i13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1976 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !262
  %i.bh = add nsw i64 %i.bg, %i.aw
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !262
  %i.bi = getelementptr inbounds nuw [1640 x i8], ptr %i.ay, i64 %indvars.iv.i13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 3616 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !262
  %i.bl = add nsw i64 %i.bk, %i.aw
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !262
  %i.bm = getelementptr inbounds nuw [1640 x i8], ptr %i.ay, i64 %indvars.iv.i13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 5256 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !262
  %i.bp = add nsw i64 %i.bo, %i.aw
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !262
  %indvars.iv.next.i14.3 = add nuw nsw i64 %indvars.iv.i13, 4 ; 2 uses
  %niter46.next.3 = add nuw i64 %niter46, 4       ; 2 uses
  %niter46.ncmp.3 = icmp eq i64 %niter46.next.3, %unroll_iter45
  br i1 %niter46.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !572

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod43.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod43.not, label %._crit_edge.i, label %.epil.preheader40

.epil.preheader40:                                ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i11
  %indvars.iv.i13.epil.init = phi i64 [ 0, %.lr.ph.i11 ], [ %indvars.iv.next.i14.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter41, 0
  call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader40
  %indvars.iv.i13.epil = phi i64 [ %indvars.iv.i13.epil.init, %.epil.preheader40 ], [ %indvars.iv.next.i14.epil, %bb.g ] ; 2 uses
  %epil.iter42 = phi i64 [ 0, %.epil.preheader40 ], [ %epil.iter42.next, %bb.g ]
  %i.bq = getelementptr inbounds nuw [1640 x i8], ptr %i.ay, i64 %indvars.iv.i13.epil
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 336 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !262
  %i.bt = add nsw i64 %i.bs, %i.aw
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !262
  %indvars.iv.next.i14.epil = add nuw nsw i64 %indvars.iv.i13.epil, 1
  %epil.iter42.next = add i64 %epil.iter42, 1     ; 2 uses
  %epil.iter42.cmp.not = icmp eq i64 %epil.iter42.next, %xtraiter41
  br i1 %epil.iter42.cmp.not, label %._crit_edge.i, label %bb.g, !llvm.loop !573

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.g, %.preheader34.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.bv = call i32 @ffio_open_null_buf(ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %get_moov_size.exit29.thread.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.by = call fastcc i32 @mov_write_moov_tag(ptr noundef %i.bx, ptr noundef %i.bu, ptr noundef nonnull %0) ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %get_moov_size.exit29.thread.i, label %get_moov_size.exit29.i

get_moov_size.exit29.thread.i:                    ; preds = %bb.h, %._crit_edge.i
  %.0.i28.ph.i = phi i32 [ %i.by, %bb.h ], [ %i.bv, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %compute_sidx_size.exit.thread

get_moov_size.exit29.i:                           ; preds = %bb.h
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.cb = call i32 @ffio_close_null_buf(ptr noundef %i.ca) #18 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.cc = icmp slt i32 %i.cb, 0                   ; 2 uses
  %.not.i = icmp eq i32 %i.cb, %i.ar
  %or.cond.i = or i1 %i.cc, %.not.i
  br i1 %or.cond.i, label %compute_sidx_size.exit, label %.preheader.i10

.preheader.i10:                                   ; preds = %get_moov_size.exit29.i
  %i.cd = load i32, ptr %i.at, align 4, !tbaa !116 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph37.i, label %compute_sidx_size.exit.thread19

.lr.ph37.i:                                       ; preds = %.preheader.i10
  %i.cf = sub nsw i32 %i.cb, %i.ar
  %i.cg = sext i32 %i.cf to i64                   ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !43 ; 5 uses
  %wide.trip.count42.i = zext nneg i32 %i.cd to i64 ; 2 uses
  %xtraiter48 = and i64 %wide.trip.count42.i, 3   ; 3 uses
  %i.cj = icmp ult i32 %i.cd, 4
  br i1 %i.cj, label %.epil.preheader47, label %.lr.ph37.i.new

.lr.ph37.i.new:                                   ; preds = %.lr.ph37.i
  %unroll_iter52 = and i64 %wide.trip.count42.i, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph37.i.new
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph37.i.new ], [ %indvars.iv.next40.i.3, %bb.i ] ; 5 uses
  %niter53 = phi i64 [ 0, %.lr.ph37.i.new ], [ %niter53.next.3, %bb.i ]
  %i.ck = getelementptr inbounds nuw [1640 x i8], ptr %i.ci, i64 %indvars.iv39.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 336 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !262
  %i.cn = add nsw i64 %i.cm, %i.cg
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !262
  %i.co = getelementptr inbounds nuw [1640 x i8], ptr %i.ci, i64 %indvars.iv39.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1976 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !262
  %i.cr = add nsw i64 %i.cq, %i.cg
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !262
  %i.cs = getelementptr inbounds nuw [1640 x i8], ptr %i.ci, i64 %indvars.iv39.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 3616 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !262
  %i.cv = add nsw i64 %i.cu, %i.cg
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !262
  %i.cw = getelementptr inbounds nuw [1640 x i8], ptr %i.ci, i64 %indvars.iv39.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 5256 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !262
  %i.cz = add nsw i64 %i.cy, %i.cg
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !262
  %indvars.iv.next40.i.3 = add nuw nsw i64 %indvars.iv39.i, 4 ; 2 uses
  %niter53.next.3 = add nuw i64 %niter53, 4       ; 2 uses
  %niter53.ncmp.3 = icmp eq i64 %niter53.next.3, %unroll_iter52
  br i1 %niter53.ncmp.3, label %compute_sidx_size.exit.thread19.loopexit.unr-lcssa, label %bb.i, !llvm.loop !574

compute_sidx_size.exit:                           ; preds = %get_moov_size.exit29.i
  br i1 %i.cc, label %compute_sidx_size.exit.thread, label %compute_sidx_size.exit.thread19

compute_sidx_size.exit.thread19.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod50.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod50.not, label %compute_sidx_size.exit.thread19, label %.epil.preheader47

.epil.preheader47:                                ; preds = %compute_sidx_size.exit.thread19.loopexit.unr-lcssa, %.lr.ph37.i
  %indvars.iv39.i.epil.init = phi i64 [ 0, %.lr.ph37.i ], [ %indvars.iv.next40.i.3, %compute_sidx_size.exit.thread19.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter48, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader47
  %indvars.iv39.i.epil = phi i64 [ %indvars.iv39.i.epil.init, %.epil.preheader47 ], [ %indvars.iv.next40.i.epil, %bb.j ] ; 2 uses
  %epil.iter49 = phi i64 [ 0, %.epil.preheader47 ], [ %epil.iter49.next, %bb.j ]
  %i.da = getelementptr inbounds nuw [1640 x i8], ptr %i.ci, i64 %indvars.iv39.i.epil
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 336 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !262
  %i.dd = add nsw i64 %i.dc, %i.cg
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !262
  %indvars.iv.next40.i.epil = add nuw nsw i64 %indvars.iv39.i.epil, 1
  %epil.iter49.next = add i64 %epil.iter49, 1     ; 2 uses
  %epil.iter49.cmp.not = icmp eq i64 %epil.iter49.next, %xtraiter48
  br i1 %epil.iter49.cmp.not, label %compute_sidx_size.exit.thread19, label %bb.j, !llvm.loop !575

compute_sidx_size.exit.thread19.loopexit38.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %compute_sidx_size.exit.thread19, label %.epil.preheader

.epil.preheader:                                  ; preds = %compute_sidx_size.exit.thread19.loopexit38.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %compute_sidx_size.exit.thread19.loopexit38.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod39)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.k ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.de = getelementptr inbounds nuw [1640 x i8], ptr %i.t, i64 %indvars.iv.i.epil
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 336 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !262
  %i.dh = add nsw i64 %i.dg, %i.r
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !262
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %compute_sidx_size.exit.thread19, label %bb.k, !llvm.loop !576

compute_sidx_size.exit.thread19:                  ; preds = %compute_sidx_size.exit.thread19.loopexit38.unr-lcssa, %bb.k, %compute_sidx_size.exit.thread19.loopexit.unr-lcssa, %bb.j, %.preheader.i, %.preheader.i10, %compute_sidx_size.exit
  %.021 = phi i32 [ %i.cb, %compute_sidx_size.exit ], [ %i.m, %.preheader.i ], [ %i.cb, %.preheader.i10 ], [ %i.cb, %compute_sidx_size.exit.thread19.loopexit.unr-lcssa ], [ %i.cb, %bb.j ], [ %i.m, %bb.k ], [ %i.m, %compute_sidx_size.exit.thread19.loopexit38.unr-lcssa ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !220
  %i.dk = call i32 @ff_format_shift_data(ptr noundef nonnull %0, i64 noundef %i.dj, i32 noundef %.021) #18
  br label %compute_sidx_size.exit.thread

compute_sidx_size.exit.thread:                    ; preds = %get_moov_size.exit.thread.i, %get_moov_size.exit29.thread.i, %get_moov_size.exit.i, %get_sidx_size.exit.i, %get_sidx_size.exit.thread.i, %compute_sidx_size.exit, %compute_sidx_size.exit.thread19
  %.09 = phi i32 [ %i.dk, %compute_sidx_size.exit.thread19 ], [ %i.cb, %compute_sidx_size.exit ], [ %.0.i.ph.i, %get_moov_size.exit.thread.i ], [ %.0.i28.ph.i, %get_moov_size.exit29.thread.i ], [ %i.ar, %get_moov_size.exit.i ], [ %i.m, %get_sidx_size.exit.i ], [ %i.i, %get_sidx_size.exit.thread.i ]
  ret i32 %.09
}

declare i32 @ff_format_shift_data(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @mov_init_iamf_track(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !287  ; 4 uses
  %.not143 = icmp eq i32 %i.d, 0
  br i1 %.not143, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !288  ; 3 uses
  %wide.trip.count = zext i32 %i.d to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %i.d, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x i32> [ zeroinitializer, %.lr.ph ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod187 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod187)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !289
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !291
  %i.l = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.m = shufflevector <2 x i32> %i.l, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.n = icmp eq <2 x i32> %i.m, <i32 1, i32 2>
  %i.o = zext <2 x i1> %i.n to <2 x i32>
  %i.p = add nuw nsw <2 x i32> %.epil.init, %i.o
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.q = phi <2 x i32> [ zeroinitializer, %bb.a ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %.epil.preheader ] ; 3 uses
  %i.r = icmp ne <2 x i32> %i.q, zeroinitializer  ; 2 uses
  %i.s = extractelement <2 x i1> %i.r, i64 0
  %i.t = extractelement <2 x i1> %i.r, i64 1
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %bb.c, label %bb.p

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %i.u = phi <2 x i32> [ zeroinitializer, %.lr.ph.new ], [ %i.an, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !289
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !291
  %i.z = insertelement <2 x i32> poison, i32 %i.y, i64 0
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ab = icmp eq <2 x i32> %i.aa, <i32 1, i32 2>
  %i.ac = zext <2 x i1> %i.ab to <2 x i32>
  %i.ad = add nuw nsw <2 x i32> %i.u, %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !289
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !291
  %i.aj = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %i.ak = shufflevector <2 x i32> %i.aj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.al = icmp eq <2 x i32> %i.ak, <i32 1, i32 2>
  %i.am = zext <2 x i1> %i.al to <2 x i32>
  %i.an = add nuw nsw <2 x i32> %i.ad, %i.am      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !577

bb.c:                                             ; preds = %._crit_edge
  %i.ao = extractelement <2 x i32> %i.q, i64 0
  %i.ap = add nsw i32 %i.ao, -3
  %or.cond4 = icmp ult i32 %i.ap, -2
  %i.aq = extractelement <2 x i32> %i.q, i64 1
  %i.ar = icmp eq i32 %i.aq, 0
  %or.cond6 = select i1 %or.cond4, i1 true, i1 %i.ar
  br i1 %or.cond6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.635) #18
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.as = tail call noalias ptr @av_mallocz(i64 noundef 64) #18 ; 6 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.p, label %.preheader115

.preheader115:                                    ; preds = %bb.e
  %i.at = load i32, ptr %i.c, align 8, !tbaa !287
  %.not104131.not = icmp eq i32 %i.at, 0
  br i1 %.not104131.not, label %.thread108, label %.lr.ph135

.lr.ph135:                                        ; preds = %.preheader115
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.g

bb.f:                                             ; preds = %bb.k
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.av = load i32, ptr %i.c, align 8, !tbaa !287 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.not104 = icmp samesign ult i64 %indvars.iv.next157, %i.aw
  br i1 %.not104, label %bb.g, label %.thread108, !llvm.loop !578

bb.g:                                             ; preds = %.lr.ph135, %bb.f
  %indvars.iv156 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next157, %bb.f ] ; 2 uses
  %.090133 = phi i32 [ 0, %.lr.ph135 ], [ %.2, %bb.f ] ; 4 uses
  %.092132 = phi i32 [ 2147483647, %.lr.ph135 ], [ %.294, %bb.f ] ; 4 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !288
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv156
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !289 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !291
  switch i32 %i.bb, label %bb.j [
    i32 1, label %.preheader114
    i32 2, label %bb.i
  ]

.preheader114:                                    ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !293 ; 4 uses
  %.not144 = icmp eq i32 %i.bd, 0
  br i1 %.not144, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %.preheader114
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !294 ; 3 uses
  %wide.trip.count154 = zext i32 %i.bd to i64     ; 2 uses
  %xtraiter189 = and i64 %wide.trip.count154, 1
  %i.bg = icmp eq i32 %i.bd, 1
  br i1 %i.bg, label %.epil.preheader188, label %.lr.ph127.new

.lr.ph127.new:                                    ; preds = %.lr.ph127
  %unroll_iter194 = and i64 %wide.trip.count154, 4294967294
  br label %bb.h

._crit_edge128.loopexit.unr-lcssa:                ; preds = %bb.h
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %._crit_edge128, label %.epil.preheader188

.epil.preheader188:                               ; preds = %._crit_edge128.loopexit.unr-lcssa, %.lr.ph127
  %indvars.iv151.epil.init = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next152.1, %._crit_edge128.loopexit.unr-lcssa ]
  %.191125.epil.init = phi i32 [ %.090133, %.lr.ph127 ], [ %i.bx, %._crit_edge128.loopexit.unr-lcssa ]
  %.193124.epil.init = phi i32 [ %.092132, %.lr.ph127 ], [ %.193..1, %._crit_edge128.loopexit.unr-lcssa ]
  %lcmp.mod193 = trunc i32 %i.bd to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv151.epil.init
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !252 ; 2 uses
  %.193..epil = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %.193124.epil.init)
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 %.191125.epil.init)
  br label %._crit_edge128

._crit_edge128:                                   ; preds = %.epil.preheader188, %._crit_edge128.loopexit.unr-lcssa, %.preheader114
  %.193.lcssa = phi i32 [ %.092132, %.preheader114 ], [ %.193..1, %._crit_edge128.loopexit.unr-lcssa ], [ %.193..epil, %.epil.preheader188 ]
  %.191.lcssa = phi i32 [ %.090133, %.preheader114 ], [ %i.bx, %._crit_edge128.loopexit.unr-lcssa ], [ %i.bl, %.epil.preheader188 ]
  %i.bm = tail call i32 @ff_iamf_add_audio_element(ptr noundef nonnull %i.as, ptr noundef nonnull %i.az, ptr noundef nonnull %0) #18
  br label %bb.k

bb.h:                                             ; preds = %bb.h, %.lr.ph127.new
  %indvars.iv151 = phi i64 [ 0, %.lr.ph127.new ], [ %indvars.iv.next152.1, %bb.h ] ; 3 uses
  %.191125 = phi i32 [ %.090133, %.lr.ph127.new ], [ %i.bx, %bb.h ]
  %.193124 = phi i32 [ %.092132, %.lr.ph127.new ], [ %.193..1, %bb.h ]
  %niter195 = phi i64 [ 0, %.lr.ph127.new ], [ %niter195.next.1, %bb.h ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv151
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !252 ; 2 uses
  %.193. = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %.193124)
  %i.br = tail call i32 @llvm.smax.i32(i32 %i.bq, i32 %.191125)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv151
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !252 ; 2 uses
  %.193..1 = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 %.193.) ; 3 uses
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 %i.br) ; 3 uses
  %indvars.iv.next152.1 = add nuw nsw i64 %indvars.iv151, 2 ; 2 uses
  %niter195.next.1 = add nuw i64 %niter195, 2     ; 2 uses
  %niter195.ncmp.1 = icmp eq i64 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %._crit_edge128.loopexit.unr-lcssa, label %bb.h, !llvm.loop !579

bb.i:                                             ; preds = %bb.g
  %i.by = tail call i32 @ff_iamf_add_mix_presentation(ptr noundef nonnull %i.as, ptr noundef nonnull %i.az, ptr noundef nonnull %0) #18
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.385, ptr noundef nonnull @.str.8, i32 noundef 8098) #18
  tail call void @abort() #19
  unreachable

bb.k:                                             ; preds = %bb.i, %._crit_edge128
  %.294 = phi i32 [ %.193.lcssa, %._crit_edge128 ], [ %.092132, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %.191.lcssa, %._crit_edge128 ], [ %.090133, %bb.i ] ; 2 uses
  %.085 = phi i32 [ %i.bm, %._crit_edge128 ], [ %i.by, %bb.i ] ; 2 uses
  %i.bz = icmp sgt i32 %.085, -1
  br i1 %i.bz, label %bb.f, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ff_iamf_uninit_context(ptr noundef nonnull %i.as) #18
  tail call void @av_free(ptr noundef nonnull %i.as) #18
  br label %bb.p

.thread108:                                       ; preds = %bb.f, %.preheader115
  %i.ca = phi i32 [ 0, %.preheader115 ], [ %i.av, %bb.f ] ; 2 uses
  %.092.lcssa = phi i32 [ 2147483647, %.preheader115 ], [ %.294, %bb.f ] ; 2 uses
  %.090.lcssa = phi i32 [ 0, %.preheader115 ], [ %.2, %bb.f ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !43
  %i.cd = sext i32 %.092.lcssa to i64
  %i.ce = getelementptr inbounds [1640 x i8], ptr %i.cc, i64 %i.cd ; 14 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1608
  store ptr %i.as, ptr %i.cf, align 8, !tbaa !246
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1616
  store i32 %.092.lcssa, ptr %i.cg, align 8, !tbaa !247
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 1620
  store i32 %.090.lcssa, ptr %i.ch, align 4, !tbaa !250
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 120
  store i32 1718444393, ptr %i.ci, align 8, !tbaa !102
  %.not145 = icmp eq i32 %i.ca, 0
  br i1 %.not145, label %._crit_edge142, label %.lr.ph141

.lr.ph141:                                        ; preds = %.thread108
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !288
  %wide.trip.count167 = zext i32 %i.ca to i64
  br label %bb.m

._crit_edge142:                                   ; preds = %.loopexit, %.thread108
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 1624
  %i.cm = tail call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.cl) #18
  %. = tail call i32 @llvm.smin.i32(i32 %i.cm, i32 0)
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph141, %.loopexit
  %indvars.iv164 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next165, %.loopexit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv164
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !289 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !291
  %.not105 = icmp eq i32 %i.cq, 1
  br i1 %.not105, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !293 ; 3 uses
  %.not146 = icmp eq i32 %i.cs, 0
  br i1 %.not146, label %.loopexit, label %.lr.ph139

.lr.ph139:                                        ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !294 ; 9 uses
  %wide.trip.count162 = zext i32 %i.cs to i64     ; 2 uses
  %xtraiter197 = and i64 %wide.trip.count162, 7   ; 3 uses
  %i.cv = icmp ult i32 %i.cs, 8
  br i1 %i.cv, label %.epil.preheader196, label %.lr.ph139.new

.lr.ph139.new:                                    ; preds = %.lr.ph139
  %unroll_iter200 = and i64 %wide.trip.count162, 4294967288
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph139.new
  %indvars.iv159 = phi i64 [ 0, %.lr.ph139.new ], [ %indvars.iv.next160.7, %bb.n ] ; 9 uses
  %niter201 = phi i64 [ 0, %.lr.ph139.new ], [ %niter201.next.7, %bb.n ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv159
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !38
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %i.ce, ptr %i.cy, align 8, !tbaa !40
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv159
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !38
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr %i.ce, ptr %i.dc, align 8, !tbaa !40
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv159
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store ptr %i.ce, ptr %i.dg, align 8, !tbaa !40
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv159
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !38
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store ptr %i.ce, ptr %i.dk, align 8, !tbaa !40
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv159
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !38
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store ptr %i.ce, ptr %i.do, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv159
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store ptr %i.ce, ptr %i.ds, align 8, !tbaa !40
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv159
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !38
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store ptr %i.ce, ptr %i.dw, align 8, !tbaa !40
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv159
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !38
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store ptr %i.ce, ptr %i.ea, align 8, !tbaa !40
  %indvars.iv.next160.7 = add nuw nsw i64 %indvars.iv159, 8 ; 2 uses
  %niter201.next.7 = add nuw i64 %niter201, 8     ; 2 uses
  %niter201.ncmp.7 = icmp eq i64 %niter201.next.7, %unroll_iter200
  br i1 %niter201.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !580

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %.loopexit, label %.epil.preheader196

.epil.preheader196:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph139
  %indvars.iv159.epil.init = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next160.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter197, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader196
  %indvars.iv159.epil = phi i64 [ %indvars.iv159.epil.init, %.epil.preheader196 ], [ %indvars.iv.next160.epil, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader196 ], [ %epil.iter.next, %bb.o ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv159.epil
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !38
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %i.ce, ptr %i.ed, align 8, !tbaa !40
  %indvars.iv.next160.epil = add nuw nsw i64 %indvars.iv159.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter197
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.o, !llvm.loop !581

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %.preheader, %bb.m
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge142, label %bb.m, !llvm.loop !582

bb.p:                                             ; preds = %bb.l, %._crit_edge142, %bb.e, %._crit_edge, %bb.d
  %.399 = phi i32 [ -22, %bb.d ], [ %., %._crit_edge142 ], [ -12, %bb.e ], [ %.085, %bb.l ], [ 0, %._crit_edge ]
  ret i32 %.399
}

declare i64 @av_gcd_q(i64, i64, i32 noundef, i64) local_unnamed_addr #2

declare i32 @ff_isom_init_apvc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @ff_is_ttml_stream_paragraph_based(ptr nofree noundef readonly captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !101
  %i.e = icmp ugt i32 %i.d, 11
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 1
  %i.g = xor i64 %i.f, 7887056585723634028
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 1
  %i.j = zext i32 %i.i to i64
  %i.k = xor i64 %i.j, 1668179308
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %.not3 = icmp eq i32 %i.n, 0
  %i.o = zext i1 %.not3 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.o, %bb.c ]
  ret i32 %i.p
}

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_mov_cenc_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @enable_tracks(ptr nofree captures(none) %.24.val) unnamed_addr #10 {
.preheader3:
  %i.a = alloca [5 x i32], align 16               ; 7 uses
  %i.b = alloca [5 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, i8 -1, i64 20, i1 false), !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %.24.val, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !196  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.24.val, i64 56 ; 2 uses
  br i1 %i.e, label %.lr.ph, label %.thread26

.thread26:                                        ; preds = %.preheader3
  %i.g = getelementptr inbounds nuw i8, ptr %.24.val, i64 152
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader3
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !43
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.i = getelementptr inbounds nuw [1640 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !113  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !200
  %i.n = load i32, ptr %i.m, align 8, !tbaa !201  ; 2 uses
  %or.cond = icmp ugt i32 %i.n, 4
  br i1 %or.cond, label %bb.d, label %is_cover_image.exit

is_cover_image.exit:                              ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !199  ; 2 uses
  %.not2 = icmp eq i32 %i.p, 1024
  br i1 %.not2, label %bb.d, label %bb.b

bb.b:                                             ; preds = %is_cover_image.exit
  %i.q = zext nneg i32 %i.n to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33   ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %spec.store.select = select i1 %i.t, i32 %i.u, i32 %i.s
  store i32 %spec.store.select, ptr %i.r, align 4
  %i.v = and i32 %i.p, 1
  %.not31 = icmp eq i32 %i.v, 0
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !173
  %i.y = or i32 %i.x, 4
  store i32 %i.y, ptr %i.w, align 8, !tbaa !173
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !33
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a, %is_cover_image.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.e, label %bb.a, !llvm.loop !583

bb.e:                                             ; preds = %bb.d
  %.pr = load i32, ptr %i.a, align 16, !tbaa !33  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.24.val, i64 56 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.24.val, i64 152 ; 4 uses
  %i.ae = icmp sgt i32 %.pr, 1
  br i1 %i.ae, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  store i32 1, ptr %i.ad, align 8, !tbaa !400
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread26, %bb.f
  %i.af = phi ptr [ %i.f, %.thread26 ], [ %i.ac, %bb.f ] ; 3 uses
  %i.ag = phi ptr [ %i.g, %.thread26 ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ah = load i32, ptr %i.b, align 16, !tbaa !33 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ak = zext nneg i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw [1640 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !173
  %i.ao = or i32 %i.an, 4
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !173
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %.thread
  %i.ap = phi ptr [ %i.ad, %.thread ], [ %i.ag, %bb.h ], [ %i.ag, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %i.aq = phi ptr [ %i.ac, %.thread ], [ %i.af, %bb.h ], [ %i.af, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %.thread.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.1 = icmp eq i32 %i.as, 0
  br i1 %.not.1, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !33 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.ay = zext nneg i32 %i.av to i64
end_hunk_10
