inline.NumInlined: 233
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@decode_audio_specific_config_gb:bb.a

._crit_edge.i52:                                  ; preds = %bb.al, %.preheader.i
  %i.ld = icmp slt i32 %i.hj, 1
  br i1 %i.ld, label %ff_aac_set_default_channel_config.exit.i60, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i52
  %i.le = add nsw i32 %i.hj, -8
  %or.cond.i.i53 = icmp ult i32 %i.le, 3
  %i.lf = icmp samesign ugt i32 %i.hj, 14
  %or.cond3.i.i54 = or i1 %i.lf, %or.cond.i.i53
  br i1 %or.cond3.i.i54, label %ff_aac_set_default_channel_config.exit.i60, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lg = zext nneg i32 %i.hj to i64              ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr @ff_tags_per_config, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !30  ; 2 uses
  %i.lj = sext i8 %i.li to i32
  %i.lk = getelementptr [48 x i8], ptr @ff_aac_channel_layout_map, i64 %i.lg
  %i.ll = getelementptr i8, ptr %i.lk, i64 -48
  %i.lm = sext i8 %i.li to i64
  %i.ln = mul nsw i64 %i.lm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 16 %i.ll, i64 %i.ln, i1 false)
  %i.lo = icmp eq i32 %i.hj, 7
  br i1 %i.lo, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !85
  %i.lr = icmp slt i32 %i.lq, 1
  br i1 %i.lr, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ls = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 3, ptr %i.ls, align 8, !tbaa !30
  %.not.i.i58 = icmp eq ptr %0, null
  br i1 %.not.i.i58, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 36428 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !86 ; 2 uses
  %i.lv = add i32 %i.lu, 1
  store i32 %i.lv, ptr %i.lt, align 4, !tbaa !86
  %.not22.i.i59 = icmp eq i32 %i.lu, 0
  br i1 %.not22.i.i59, label %bb.ar, label %.thread61.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %1, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef 1) #12
  br label %bb.as

ff_aac_set_default_channel_config.exit.i60:       ; preds = %bb.am, %._crit_edge.i52
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %i.hj) #12
  br label %decode_eld_specific_config.exit.thread

bb.as:                                            ; preds = %bb.ar, %bb.ao, %bb.an
  %.not48.i55 = icmp eq ptr %0, null
  br i1 %.not48.i55, label %bb.at, label %.thread61.i

.thread61.i:                                      ; preds = %bb.as, %bb.aq
  %i.lw = call i32 @ff_aac_output_configure(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %i.lj, i32 noundef 3, i32 noundef 0) ; 2 uses
  %.not49.i56 = icmp eq i32 %i.lw, 0
  br i1 %.not49.i56, label %bb.at, label %decode_eld_specific_config.exit.thread

bb.at:                                            ; preds = %.thread61.i, %bb.as
  %i.lx = load i32, ptr %i.s, align 8, !tbaa !117 ; 3 uses
  %i.ly = load i32, ptr %i.v, align 8, !tbaa !116
  %i.lz = load ptr, ptr %3, align 8, !tbaa !113
  %i.ma = lshr i32 %i.lx, 3
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 1, !tbaa !30
  %i.me = call i32 @llvm.bswap.i32(i32 %i.md)
  %i.mf = and i32 %i.lx, 7
  %i.mg = shl i32 %i.me, %i.mf
  %i.mh = lshr i32 %i.mg, 30                      ; 2 uses
  %i.mi = add i32 %i.lx, 2
  %i.mj = call i32 @llvm.umin.i32(i32 %i.ly, i32 %i.mi)
  store i32 %i.mj, ptr %i.s, align 8, !tbaa !117
  %.not50.i57 = icmp eq i32 %i.mh, 0
  br i1 %.not50.i57, label %decode_eld_specific_config.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %i.mh) #12
  br label %decode_eld_specific_config.exit.thread

decode_eld_specific_config.exit.thread:           ; preds = %bb.af, %bb.ah, %.thread56.i, %.thread61.i, %ff_aac_set_default_channel_config.exit.i60, %bb.au
  %.2.i.ph = phi i32 [ -1163346256, %bb.au ], [ -1094995529, %ff_aac_set_default_channel_config.exit.i60 ], [ %i.lw, %.thread61.i ], [ -1094995529, %.thread56.i ], [ -1163346256, %bb.ah ], [ -1163346256, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ay

decode_eld_specific_config.exit:                  ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ax

bb.av:                                            ; preds = %bb.h
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !187
  %i.mm = call i32 @ff_aac_usac_config_decode(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef %i.ml) #12 ; 2 uses
  %i.mn = icmp slt i32 %i.mm, 0
  br i1 %i.mn, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %bb.h
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !191
  %i.mq = icmp eq i32 %i.mp, 1
  %i.mr = select i1 %i.mq, ptr @.str.25, ptr @.str.26
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.mr, i32 noundef %i.h) #12
  br label %bb.ay

bb.ax:                                            ; preds = %decode_eld_specific_config.exit, %decode_ga_specific_config.exit, %bb.av
  %i.ms = phi ptr [ %i.ad, %decode_ga_specific_config.exit ], [ %i.s, %decode_eld_specific_config.exit ], [ %i.s, %bb.av ]
  %.val = load i32, ptr %i.ms, align 8, !tbaa !117
  br label %bb.ay

bb.ay:                                            ; preds = %decode_eld_specific_config.exit.thread, %decode_ga_specific_config.exit.thread, %bb.av, %bb.ax, %bb.aw, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.d ], [ -1094995529, %bb.g ], [ -38, %bb.aw ], [ %.2.i.ph, %decode_eld_specific_config.exit.thread ], [ %.val, %bb.ax ], [ %.0.i.ph, %decode_ga_specific_config.exit.thread ], [ %i.mm, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i32 %.0
}

declare i32 @ff_mpeg4audio_get_config_gb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_aac_usac_config_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 64) i32 @decode_pce(ptr noundef %0, i32 %.4.val, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x [16 x i8]], align 16         ; 8 uses
  %i.b = alloca [6 x [16 x [3 x i8]]], align 16   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 46 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 16 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !116  ; 3 uses
  %i.g = add i32 %i.d, 2
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.g) ; 4 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !117
  %i.i = load ptr, ptr %2, align 8, !tbaa !113    ; 2 uses
  %i.j = lshr i32 %i.h, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 1, !tbaa !30
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.o = and i32 %i.h, 7
  %i.p = shl i32 %i.n, %i.o
  %i.q = lshr i32 %i.p, 28                        ; 2 uses
  %i.r = add i32 %i.h, 4
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.r) ; 2 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !117
  %.not = icmp eq i32 %.4.val, %i.q
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.29, i32 noundef %i.q, i32 noundef %.4.val) #12
  %.pre = load i32, ptr %i.c, align 8, !tbaa !117
  %.pre158 = load i32, ptr %i.e, align 8, !tbaa !116
  %.pre159.a = load ptr, ptr %2, align 8, !tbaa !113
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %.pre159.a, %bb.b ], [ %i.i, %bb.a ] ; 9 uses
  %i.u = phi i32 [ %.pre158, %bb.b ], [ %i.f, %bb.a ] ; 12 uses
  %i.v = phi i32 [ %.pre, %bb.b ], [ %i.s, %bb.a ] ; 3 uses
  %i.w = lshr i32 %i.v, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %i.z = load i32, ptr %i.y, align 1, !tbaa !30
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = and i32 %i.v, 7
  %i.ac = shl i32 %i.aa, %i.ab
  %i.ad = lshr i32 %i.ac, 28                      ; 12 uses
  %i.ae = add i32 %i.v, 4
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.ae) ; 4 uses
  store i32 %i.af, ptr %i.c, align 8, !tbaa !117
  %i.ag = lshr i32 %i.af, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 1, !tbaa !30
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.al = and i32 %i.af, 7
  %i.am = shl i32 %i.ak, %i.al
  %i.an = lshr i32 %i.am, 28                      ; 13 uses
  %i.ao = add i32 %i.af, 4
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.ao) ; 4 uses
  store i32 %i.ap, ptr %i.c, align 8, !tbaa !117
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 1, !tbaa !30
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = and i32 %i.ap, 7
  %i.aw = shl i32 %i.au, %i.av
  %i.ax = lshr i32 %i.aw, 28                      ; 13 uses
  %i.ay = add i32 %i.ap, 4
  %i.az = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.ay) ; 4 uses
  store i32 %i.az, ptr %i.c, align 8, !tbaa !117
  %i.ba = lshr i32 %i.az, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !30
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = and i32 %i.az, 7
  %i.bg = shl i32 %i.be, %i.bf                    ; 3 uses
  %i.bh = lshr i32 %i.bg, 30                      ; 7 uses
  %i.bi = add i32 %i.az, 2
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.bi) ; 4 uses
  store i32 %i.bj, ptr %i.c, align 8, !tbaa !117
  %i.bk = lshr i32 %i.bj, 3
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 1, !tbaa !30
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  %i.bp = and i32 %i.bj, 7
  %i.bq = shl i32 %i.bo, %i.bp
  %i.br = lshr i32 %i.bq, 29                      ; 2 uses
  %i.bs = add i32 %i.bj, 3
  %i.bt = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.bs) ; 4 uses
  store i32 %i.bt, ptr %i.c, align 8, !tbaa !117
  %i.bu = lshr i32 %i.bt, 3
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 1, !tbaa !30
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  %i.bz = and i32 %i.bt, 7
  %i.ca = shl i32 %i.by, %i.bz                    ; 3 uses
  %i.cb = lshr i32 %i.ca, 28                      ; 7 uses
  %i.cc = add i32 %i.bt, 4
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.cc) ; 5 uses
  store i32 %i.cd, ptr %i.c, align 8, !tbaa !117
  %i.ce = lshr i32 %i.cd, 3
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !30
  %i.ci = icmp slt i32 %i.cd, %i.u
  %i.cj = zext i1 %i.ci to i32
  %spec.select.i = add i32 %i.cd, %i.cj           ; 2 uses
  %i.ck = zext i8 %i.ch to i32
  %i.cl = and i32 %i.cd, 7
  %i.cm = lshr exact i32 128, %i.cl
  %i.cn = and i32 %i.cm, %i.ck
  %.not203 = icmp eq i32 %i.cn, 0
  %i.co = add i32 %spec.select.i, 4
  %i.cp = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.co)
  %storemerge = select i1 %.not203, i32 %spec.select.i, i32 %i.cp ; 5 uses
  store i32 %storemerge, ptr %i.c, align 8, !tbaa !117
  %i.cq = lshr i32 %storemerge, 3
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !30
  %i.cu = icmp slt i32 %storemerge, %i.u
  %i.cv = zext i1 %i.cu to i32
  %spec.select.i214 = add i32 %storemerge, %i.cv  ; 2 uses
  %i.cw = zext i8 %i.ct to i32
  %i.cx = and i32 %storemerge, 7
  %i.cy = lshr exact i32 128, %i.cx
  %i.cz = and i32 %i.cy, %i.cw
  %.not204 = icmp eq i32 %i.cz, 0
  %i.da = add i32 %spec.select.i214, 4
  %i.db = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.da)
  %storemerge1 = select i1 %.not204, i32 %spec.select.i214, i32 %i.db ; 5 uses
  store i32 %storemerge1, ptr %i.c, align 8, !tbaa !117
  %i.dc = lshr i32 %storemerge1, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !30
  %i.dg = icmp slt i32 %storemerge1, %i.u
  %i.dh = zext i1 %i.dg to i32
  %spec.select.i215 = add i32 %storemerge1, %i.dh ; 2 uses
  %i.di = zext i8 %i.df to i32
  %i.dj = and i32 %storemerge1, 7
  %i.dk = lshr exact i32 128, %i.dj
  %i.dl = and i32 %i.dk, %i.di
  %.not205 = icmp eq i32 %i.dl, 0
  %i.dm = add i32 %spec.select.i215, 3
  %i.dn = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.dm)
  %storemerge2 = select i1 %.not205, i32 %spec.select.i215, i32 %i.dn ; 2 uses
  store i32 %storemerge2, ptr %i.c, align 8, !tbaa !117
  %i.do = getelementptr i8, ptr %2, i64 12        ; 2 uses
  %.val211 = load i32, ptr %i.do, align 4, !tbaa !115
  %i.dp = sub nsw i32 %.val211, %storemerge2
  %i.dq = add nuw nsw i32 %i.an, %i.ad            ; 2 uses
  %i.dr = add nuw nsw i32 %i.ax, %i.dq            ; 4 uses
  %i.ds = add nuw nsw i32 %i.cb, %i.dr
  %i.dt = mul nuw nsw i32 %i.ds, 5
  %i.du = add nuw nsw i32 %i.br, %i.bh
  %i.dv = add nuw nsw i32 %i.du, %i.cb
  %i.dw = shl nuw nsw i32 %i.dv, 2
  %i.dx = add nuw nsw i32 %i.dt, %i.dw
  %i.dy = icmp slt i32 %i.dp, %i.dx
  br i1 %i.dy, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.30) #12
  br label %bb.bb

bb.e:                                             ; preds = %bb.c
  %.not12.i = icmp eq i32 %i.ad, 0                ; 5 uses
  br i1 %.not12.i, label %decode_channel_map.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.in.i = phi i32 [ %i.dz, %.lr.ph.i ], [ %i.ad, %bb.e ]
  %.01113.i = phi ptr [ %i.fe, %.lr.ph.i ], [ %1, %bb.e ] ; 4 uses
  %i.dz = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.ea = load i32, ptr %i.c, align 8, !tbaa !117 ; 4 uses
  %i.eb = load ptr, ptr %2, align 8, !tbaa !113
  %i.ec = lshr i32 %i.ea, 3
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !30
  %i.eg = load i32, ptr %i.e, align 8, !tbaa !116
  %i.eh = icmp slt i32 %i.ea, %i.eg
  %i.ei = zext i1 %i.eh to i32
  %spec.select.i.i = add i32 %i.ea, %i.ei
  %i.ej = zext i8 %i.ef to i32
  %i.ek = and i32 %i.ea, 7
  %i.el = shl nuw nsw i32 %i.ej, %i.ek
  store i32 %spec.select.i.i, ptr %i.c, align 8, !tbaa !117
  %i.em = trunc i32 %i.el to i8
  %i.en = lshr i8 %i.em, 7
  store i8 %i.en, ptr %.01113.i, align 1, !tbaa !30
  %i.eo = load i32, ptr %i.c, align 8, !tbaa !117 ; 3 uses
  %i.ep = load i32, ptr %i.e, align 8, !tbaa !116
  %i.eq = load ptr, ptr %2, align 8, !tbaa !113
  %i.er = lshr i32 %i.eo, 3
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 1, !tbaa !30
  %i.ev = tail call i32 @llvm.bswap.i32(i32 %i.eu)
  %i.ew = and i32 %i.eo, 7
  %i.ex = shl i32 %i.ev, %i.ew
  %i.ey = lshr i32 %i.ex, 28
  %i.ez = add i32 %i.eo, 4
  %i.fa = tail call i32 @llvm.umin.i32(i32 %i.ep, i32 %i.ez)
  store i32 %i.fa, ptr %i.c, align 8, !tbaa !117
  %i.fb = trunc nuw nsw i32 %i.ey to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %.01113.i, i64 1
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !30
  %i.fd = getelementptr inbounds nuw i8, ptr %.01113.i, i64 2
  store i8 1, ptr %i.fd, align 1, !tbaa !30
  %i.fe = getelementptr inbounds nuw i8, ptr %.01113.i, i64 3
  %.not.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i, label %decode_channel_map.exit, label %.lr.ph.i, !llvm.loop !192

decode_channel_map.exit:                          ; preds = %.lr.ph.i, %bb.e
  %i.ff = zext nneg i32 %i.ad to i64              ; 8 uses
  %.not12.i216 = icmp eq i32 %i.an, 0             ; 5 uses
  br i1 %.not12.i216, label %decode_channel_map.exit222, label %.lr.ph.i217.preheader

.lr.ph.i217.preheader:                            ; preds = %decode_channel_map.exit
  %i.fg = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.ff
  br label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %.lr.ph.i217.preheader, %.lr.ph.i217
  %.in.i218 = phi i32 [ %i.fh, %.lr.ph.i217 ], [ %i.an, %.lr.ph.i217.preheader ]
  %.01113.i219 = phi ptr [ %i.gm, %.lr.ph.i217 ], [ %i.fg, %.lr.ph.i217.preheader ] ; 4 uses
  %i.fh = add nsw i32 %.in.i218, -1               ; 2 uses
  %i.fi = load i32, ptr %i.c, align 8, !tbaa !117 ; 4 uses
  %i.fj = load ptr, ptr %2, align 8, !tbaa !113
  %i.fk = lshr i32 %i.fi, 3
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !30
  %i.fo = load i32, ptr %i.e, align 8, !tbaa !116
  %i.fp = icmp slt i32 %i.fi, %i.fo
  %i.fq = zext i1 %i.fp to i32
  %spec.select.i.i220 = add i32 %i.fi, %i.fq
  %i.fr = zext i8 %i.fn to i32
  %i.fs = and i32 %i.fi, 7
  %i.ft = shl nuw nsw i32 %i.fr, %i.fs
  store i32 %spec.select.i.i220, ptr %i.c, align 8, !tbaa !117
  %i.fu = trunc i32 %i.ft to i8
  %i.fv = lshr i8 %i.fu, 7
  store i8 %i.fv, ptr %.01113.i219, align 1, !tbaa !30
  %i.fw = load i32, ptr %i.c, align 8, !tbaa !117 ; 3 uses
  %i.fx = load i32, ptr %i.e, align 8, !tbaa !116
  %i.fy = load ptr, ptr %2, align 8, !tbaa !113
  %i.fz = lshr i32 %i.fw, 3
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 1, !tbaa !30
  %i.gd = tail call i32 @llvm.bswap.i32(i32 %i.gc)
  %i.ge = and i32 %i.fw, 7
  %i.gf = shl i32 %i.gd, %i.ge
  %i.gg = lshr i32 %i.gf, 28
  %i.gh = add i32 %i.fw, 4
  %i.gi = tail call i32 @llvm.umin.i32(i32 %i.fx, i32 %i.gh)
  store i32 %i.gi, ptr %i.c, align 8, !tbaa !117
  %i.gj = trunc nuw nsw i32 %i.gg to i8
  %i.gk = getelementptr inbounds nuw i8, ptr %.01113.i219, i64 1
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !30
  %i.gl = getelementptr inbounds nuw i8, ptr %.01113.i219, i64 2
  store i8 2, ptr %i.gl, align 1, !tbaa !30
  %i.gm = getelementptr inbounds nuw i8, ptr %.01113.i219, i64 3
  %.not.i221 = icmp eq i32 %i.fh, 0
  br i1 %.not.i221, label %decode_channel_map.exit222, label %.lr.ph.i217, !llvm.loop !192

decode_channel_map.exit222:                       ; preds = %.lr.ph.i217, %decode_channel_map.exit
  %.not12.i223 = icmp eq i32 %i.ax, 0             ; 5 uses
  br i1 %.not12.i223, label %decode_channel_map.exit229, label %.lr.ph.i224.preheader

.lr.ph.i224.preheader:                            ; preds = %decode_channel_map.exit222
  %i.gn = zext nneg i32 %i.dq to i64
  %i.go = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.gn
end_hunk_0
begin_hunk_1_@decode_pce:bb.a
  %.01113.i239 = phi ptr [ %i.la, %.lr.ph.i237 ], [ %i.ke, %.lr.ph.i237.preheader ] ; 4 uses
  %i.kf = add nsw i32 %.in.i238, -1               ; 2 uses
  %i.kg = load i32, ptr %i.c, align 8, !tbaa !117
  %i.kh = load i32, ptr %i.e, align 8, !tbaa !116
  %i.ki = add i32 %i.kg, 1
  %i.kj = tail call i32 @llvm.umin.i32(i32 %i.kh, i32 %i.ki)
  store i32 %i.kj, ptr %i.c, align 8, !tbaa !117
  store i8 2, ptr %.01113.i239, align 1, !tbaa !30
  %i.kk = load i32, ptr %i.c, align 8, !tbaa !117 ; 3 uses
  %i.kl = load i32, ptr %i.e, align 8, !tbaa !116
  %i.km = load ptr, ptr %2, align 8, !tbaa !113
  %i.kn = lshr i32 %i.kk, 3
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 1, !tbaa !30
  %i.kr = tail call i32 @llvm.bswap.i32(i32 %i.kq)
  %i.ks = and i32 %i.kk, 7
  %i.kt = shl i32 %i.kr, %i.ks
  %i.ku = lshr i32 %i.kt, 28
  %i.kv = add i32 %i.kk, 4
  %i.kw = tail call i32 @llvm.umin.i32(i32 %i.kl, i32 %i.kv)
  store i32 %i.kw, ptr %i.c, align 8, !tbaa !117
  %i.kx = trunc nuw nsw i32 %i.ku to i8
  %i.ky = getelementptr inbounds nuw i8, ptr %.01113.i239, i64 1
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !30
  %i.kz = getelementptr inbounds nuw i8, ptr %.01113.i239, i64 2
  store i8 5, ptr %i.kz, align 1, !tbaa !30
  %i.la = getelementptr inbounds nuw i8, ptr %.01113.i239, i64 3
  %.not.i240 = icmp eq i32 %i.kf, 0
  br i1 %.not.i240, label %decode_channel_map.exit241.loopexit, label %.lr.ph.i237, !llvm.loop !192

decode_channel_map.exit241.loopexit:              ; preds = %.lr.ph.i237
  %.val.i.pre = load i32, ptr %i.c, align 8, !tbaa !117
  %.pre161.pre = load i32, ptr %i.e, align 8, !tbaa !116
  br label %decode_channel_map.exit241

decode_channel_map.exit241:                       ; preds = %decode_channel_map.exit241.loopexit, %decode_channel_map.exit235
  %.pre161 = phi i32 [ %.pre161.pre, %decode_channel_map.exit241.loopexit ], [ %i.jz, %decode_channel_map.exit235 ] ; 9 uses
  %.val.i = phi i32 [ %.val.i.pre, %decode_channel_map.exit241.loopexit ], [ %i.kc, %decode_channel_map.exit235 ] ; 3 uses
  %i.lb = add nuw nsw i32 %i.cb, %i.jv            ; 3 uses
  %i.lc = sub nsw i32 %3, %.val.i
  %i.ld = and i32 %i.lc, 7                        ; 2 uses
  %.not.i242 = icmp eq i32 %i.ld, 0
  br i1 %.not.i242, label %relative_align_get_bits.exit, label %bb.f

bb.f:                                             ; preds = %decode_channel_map.exit241
  %i.le = add i32 %i.ld, %.val.i
  %i.lf = tail call i32 @llvm.umin.i32(i32 %.pre161, i32 %i.le) ; 2 uses
  store i32 %i.lf, ptr %i.c, align 8, !tbaa !117
  br label %relative_align_get_bits.exit

relative_align_get_bits.exit:                     ; preds = %decode_channel_map.exit241, %bb.f
  %i.lg = phi i32 [ %.val.i, %decode_channel_map.exit241 ], [ %i.lf, %bb.f ] ; 3 uses
  %i.lh = load ptr, ptr %2, align 8, !tbaa !113   ; 5 uses
  %i.li = lshr i32 %i.lg, 3
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 1, !tbaa !30
  %i.lm = tail call i32 @llvm.bswap.i32(i32 %i.ll)
  %i.ln = and i32 %i.lg, 7
  %i.lo = shl i32 %i.lm, %i.ln
  %i.lp = add i32 %i.lg, 8
  %i.lq = tail call i32 @llvm.umin.i32(i32 %.pre161, i32 %i.lp) ; 7 uses
  store i32 %i.lq, ptr %i.c, align 8, !tbaa !117
  %i.lr = lshr i32 %i.lo, 21
  %i.ls = and i32 %i.lr, 2040                     ; 5 uses
  %.val209 = load i32, ptr %i.do, align 4, !tbaa !115
  %i.lt = sub nsw i32 %.val209, %i.lq
  %i.lu = icmp slt i32 %i.lt, %i.ls
  br i1 %i.lu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %relative_align_get_bits.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.30) #12
  br label %bb.bb

bb.h:                                             ; preds = %relative_align_get_bits.exit
  %i.lv = shl nuw nsw i32 %i.dr, 1                ; 2 uses
  %i.lw = add nuw nsw i32 %i.lv, 16
  %.not206 = icmp samesign ult i32 %i.ls, %i.lw
  br i1 %.not206, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.lx = lshr i32 %i.lq, 3
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 1, !tbaa !30
  %i.mb = tail call i32 @llvm.bswap.i32(i32 %i.ma)
  %i.mc = and i32 %i.lq, 7
  %i.md = shl i32 %i.mb, %i.mc
  %.mask = and i32 %i.md, -16777216
  %.not3 = icmp eq i32 %.mask, -1409286144
  br i1 %.not3, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.me = add i32 %i.lq, 8
  %i.mf = tail call i32 @llvm.umin.i32(i32 %.pre161, i32 %i.me) ; 3 uses
  store i32 %i.mf, ptr %i.c, align 8, !tbaa !117
  br i1 %.not12.i, label %.preheader13, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.mg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.k

.preheader13:                                     ; preds = %bb.k, %bb.j
  %.promoted24 = phi i32 [ %i.mf, %bb.j ], [ %i.mv, %bb.k ] ; 2 uses
  %.0183.lcssa = phi i32 [ 0, %bb.j ], [ %i.my, %bb.k ] ; 2 uses
  br i1 %.not12.i216, label %.preheader12, label %.lr.ph21

.lr.ph21:                                         ; preds = %.preheader13
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.mj = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.mk = zext nneg i32 %i.ad to i64
  %wide.trip.count92 = zext nneg i32 %i.an to i64
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.ml = phi i32 [ %i.mf, %.lr.ph ], [ %i.mv, %bb.k ] ; 3 uses
  %.018315 = phi i32 [ 0, %.lr.ph ], [ %i.my, %bb.k ]
  %i.mm = lshr i32 %i.ml, 3
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 1, !tbaa !30
  %i.mq = tail call i32 @llvm.bswap.i32(i32 %i.mp)
  %i.mr = and i32 %i.ml, 7
  %i.ms = shl i32 %i.mq, %i.mr
  %i.mt = lshr i32 %i.ms, 30                      ; 2 uses
  %i.mu = add i32 %i.ml, 2
  %i.mv = tail call i32 @llvm.umin.i32(i32 %.pre161, i32 %i.mu) ; 3 uses
  store i32 %i.mv, ptr %i.c, align 8, !tbaa !117
  %i.mw = icmp eq i32 %i.mt, 3
  %i.mx = zext i1 %i.mw to i32
  %i.my = or i32 %.018315, %i.mx                  ; 2 uses
  %i.mz = trunc nuw nsw i32 %i.mt to i8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mg, i64 %indvars.iv
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !30
  %i.nb = getelementptr inbounds nuw [3 x i8], ptr %i.mh, i64 %indvars.iv
  %i.nc = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.nb, ptr noundef nonnull align 1 dereferenceable(3) %i.nc, i64 3, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ff
  br i1 %exitcond.not, label %.preheader13, label %bb.k, !llvm.loop !193

.preheader12.loopexit:                            ; preds = %bb.l
  %i.nd = trunc nuw nsw i64 %indvars.iv.next86 to i32
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.loopexit, %.preheader13
  %.promoted31 = phi i32 [ %.promoted24, %.preheader13 ], [ %i.nr, %.preheader12.loopexit ] ; 2 uses
  %.1184.lcssa = phi i32 [ %.0183.lcssa, %.preheader13 ], [ %i.nu, %.preheader12.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %i.ad, %.preheader13 ], [ %i.nd, %.preheader12.loopexit ] ; 2 uses
  br i1 %.not12.i223, label %.preheader11, label %.lr.ph28

.lr.ph28:                                         ; preds = %.preheader12
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.nf = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ng = zext nneg i32 %.1.lcssa to i64
  %wide.trip.count101 = zext nneg i32 %i.ax to i64
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph21, %bb.l
  %indvars.iv87 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next88, %bb.l ] ; 3 uses
  %indvars.iv85 = phi i64 [ %i.mk, %.lr.ph21 ], [ %indvars.iv.next86, %bb.l ] ; 2 uses
  %i.nh = phi i32 [ %.promoted24, %.lr.ph21 ], [ %i.nr, %bb.l ] ; 3 uses
  %.118419 = phi i32 [ %.0183.lcssa, %.lr.ph21 ], [ %i.nu, %bb.l ]
  %i.ni = lshr i32 %i.nh, 3
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.nj
  %i.nl = load i32, ptr %i.nk, align 1, !tbaa !30
  %i.nm = tail call i32 @llvm.bswap.i32(i32 %i.nl)
  %i.nn = and i32 %i.nh, 7
  %i.no = shl i32 %i.nm, %i.nn
  %i.np = lshr i32 %i.no, 30                      ; 2 uses
  %i.nq = add i32 %i.nh, 2
  %i.nr = tail call i32 @llvm.umin.i32(i32 %.pre161, i32 %i.nq) ; 3 uses
  store i32 %i.nr, ptr %i.c, align 8, !tbaa !117
  %i.ns = icmp eq i32 %i.np, 3
  %i.nt = zext i1 %i.ns to i32
  %i.nu = or i32 %.118419, %i.nt                  ; 2 uses
  %i.nv = trunc nuw nsw i32 %i.np to i8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mi, i64 %indvars.iv87
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !30
  %i.nx = getelementptr inbounds nuw [3 x i8], ptr %i.mj, i64 %indvars.iv87
  %i.ny = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.nx, ptr noundef nonnull align 1 dereferenceable(3) %i.ny, i64 3, i1 false)
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count92
  br i1 %exitcond93.not, label %.preheader12.loopexit, label %bb.l, !llvm.loop !194

.preheader11.loopexit:                            ; preds = %bb.m
  %i.nz = trunc nuw nsw i64 %indvars.iv.next95 to i32
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.loopexit, %.preheader12
  %.pre164168 = phi i32 [ %.promoted31, %.preheader12 ], [ %i.oq, %.preheader11.loopexit ]
  %.2185.lcssa = phi i32 [ %.1184.lcssa, %.preheader12 ], [ %i.ot, %.preheader11.loopexit ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader12 ], [ %i.nz, %.preheader11.loopexit ] ; 3 uses
  br i1 %.not12.i230, label %.preheader10, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader11
  %i.oa = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ob = zext i32 %.2.lcssa to i64
  %i.oc = mul nuw nsw i64 %i.ob, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.oc
  %i.od = lshr i32 %i.bg, 30
  %narrow = mul nuw nsw i32 %i.od, 3
  %i.oe = zext nneg i32 %narrow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.oa, ptr align 1 %scevgep, i64 %i.oe, i1 false)
  %i.of = add i32 %.2.lcssa, %i.bh
  br label %.preheader10

bb.m:                                             ; preds = %.lr.ph28, %bb.m
  %indvars.iv96 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next97, %bb.m ] ; 3 uses
  %indvars.iv94 = phi i64 [ %i.ng, %.lr.ph28 ], [ %indvars.iv.next95, %bb.m ] ; 2 uses
  %i.og = phi i32 [ %.promoted31, %.lr.ph28 ], [ %i.oq, %bb.m ] ; 3 uses
  %.218526 = phi i32 [ %.1184.lcssa, %.lr.ph28 ], [ %i.ot, %bb.m ]
  %i.oh = lshr i32 %i.og, 3
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 1, !tbaa !30
  %i.ol = tail call i32 @llvm.bswap.i32(i32 %i.ok)
  %i.om = and i32 %i.og, 7
  %i.on = shl i32 %i.ol, %i.om
  %i.oo = lshr i32 %i.on, 30                      ; 2 uses
  %i.op = add i32 %i.og, 2
  %i.oq = tail call i32 @llvm.umin.i32(i32 %.pre161, i32 %i.op) ; 3 uses
  store i32 %i.oq, ptr %i.c, align 8, !tbaa !117
  %i.or = icmp eq i32 %i.oo, 3
  %i.os = zext i1 %i.or to i32
  %i.ot = or i32 %.218526, %i.os                  ; 2 uses
  %i.ou = trunc nuw nsw i32 %i.oo to i8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ne, i64 %indvars.iv96
  store i8 %i.ou, ptr %i.ov, align 1, !tbaa !30
  %i.ow = getelementptr inbounds nuw [3 x i8], ptr %i.nf, i64 %indvars.iv96
  %i.ox = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ow, ptr noundef nonnull align 1 dereferenceable(3) %i.ox, i64 3, i1 false)
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count101
  br i1 %exitcond102.not, label %.preheader11.loopexit, label %bb.m, !llvm.loop !195

.preheader10:                                     ; preds = %.lr.ph34, %.preheader11
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader11 ], [ %i.of, %.lr.ph34 ] ; 3 uses
  br i1 %.not12.i236, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader10
  %i.oy = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.oz = zext nneg i32 %.3.lcssa to i64
  %i.pa = mul nuw nsw i64 %i.oz, 3
  %scevgep112 = getelementptr i8, ptr %1, i64 %i.pa
  %i.pb = lshr i32 %i.ca, 28
  %narrow185.a = mul nuw nsw i32 %i.pb, 3
  %i.pc = zext nneg i32 %narrow185.a to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.oy, ptr align 1 %scevgep112, i64 %i.pc, i1 false)
  %i.pd = add i32 %.3.lcssa, %i.cb
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph38, %.preheader10
  %.4.lcssa = phi i32 [ %.3.lcssa, %.preheader10 ], [ %i.pd, %.lr.ph38 ]
  %i.pe = icmp eq i32 %.4.lcssa, %i.lb
  br i1 %i.pe, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 921) #12
  tail call void @abort() #14
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %.not208 = icmp eq i32 %.2185.lcssa, 0
  br i1 %.not208, label %.preheader9, label %bb.ba

.preheader9:                                      ; preds = %bb.o
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 9 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 9 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 9 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 9 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 9 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 9 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.pm = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.pn = lshr i32 %i.bg, 30
  %narrow186.a = mul nuw nsw i32 %i.pn, 3
  %i.po = zext nneg i32 %narrow186.a to i64
  %i.pp = lshr i32 %i.ca, 28
  %narrow187 = mul nuw nsw i32 %i.pp, 3
  %i.pq = zext nneg i32 %narrow187 to i64
  br i1 %.not12.i, label %.preheader7, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %.preheader9
  %xtraiter = and i64 %i.ff, 1
  %i.pr = icmp eq i32 %i.ad, 1
  br i1 %i.pr, label %.lr.ph42.epil.preheader, label %.lr.ph42.preheader.new

.lr.ph42.preheader.new:                           ; preds = %.lr.ph42.preheader
  %unroll_iter = and i64 %i.ff, 14
  br label %.lr.ph42

.preheader7.loopexit.unr-lcssa:                   ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader7, label %.lr.ph42.epil.preheader

.lr.ph42.epil.preheader:                          ; preds = %.preheader7.loopexit.unr-lcssa, %.lr.ph42.preheader
  %indvars.iv122.epil.init = phi i64 [ 0, %.lr.ph42.preheader ], [ %indvars.iv.next123.1209, %.preheader7.loopexit.unr-lcssa ] ; 2 uses
  %.640.epil.init = phi i32 [ 0, %.lr.ph42.preheader ], [ %.7.1208, %.preheader7.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod204 = trunc i32 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod204)
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pf, i64 %indvars.iv122.epil.init
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !30
  %i.pu = icmp eq i8 %i.pt, 0
  br i1 %i.pu, label %bb.p, label %.preheader7

bb.p:                                             ; preds = %.lr.ph42.epil.preheader
  %i.pv = sext i32 %.640.epil.init to i64
  %i.pw = getelementptr inbounds [3 x i8], ptr %1, i64 %i.pv
  %i.px = getelementptr inbounds nuw [3 x i8], ptr %i.pg, i64 %indvars.iv122.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pw, ptr noundef nonnull align 1 dereferenceable(3) %i.px, i64 3, i1 false)
  %i.py = add nsw i32 %.640.epil.init, 1
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.loopexit.unr-lcssa, %bb.p, %.lr.ph42.epil.preheader, %.preheader9
  %.6.lcssa = phi i32 [ 0, %.preheader9 ], [ %.7.1208, %.preheader7.loopexit.unr-lcssa ], [ %i.py, %bb.p ], [ %.640.epil.init, %.lr.ph42.epil.preheader ] ; 3 uses
  br i1 %.not12.i216, label %.preheader6, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %.preheader7
  %wide.trip.count130 = zext nneg i32 %i.an to i64 ; 2 uses
  %xtraiter210 = and i64 %wide.trip.count130, 1
  %i.pz = icmp eq i32 %i.an, 1
  br i1 %i.pz, label %.lr.ph46.epil.preheader, label %.lr.ph46.preheader.new

.lr.ph46.preheader.new:                           ; preds = %.lr.ph46.preheader
  %unroll_iter214 = and i64 %wide.trip.count130, 14
  br label %.lr.ph46

.lr.ph42:                                         ; preds = %bb.s, %.lr.ph42.preheader.new
  %indvars.iv122 = phi i64 [ 0, %.lr.ph42.preheader.new ], [ %indvars.iv.next123.1209, %bb.s ] ; 4 uses
  %.640 = phi i32 [ 0, %.lr.ph42.preheader.new ], [ %.7.1208, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph42.preheader.new ], [ %niter.next.1, %bb.s ]
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pf, i64 %indvars.iv122
  %i.qb = load i8, ptr %i.qa, align 2, !tbaa !30
  %i.qc = icmp eq i8 %i.qb, 0
  br i1 %i.qc, label %bb.q, label %.lr.ph42.1207

bb.q:                                             ; preds = %.lr.ph42
  %i.qd = sext i32 %.640 to i64
  %i.qe = getelementptr inbounds [3 x i8], ptr %1, i64 %i.qd
  %i.qf = getelementptr inbounds nuw [3 x i8], ptr %i.pg, i64 %indvars.iv122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qe, ptr noundef nonnull align 2 dereferenceable(3) %i.qf, i64 3, i1 false)
  %i.qg = add nsw i32 %.640, 1
  br label %.lr.ph42.1207

.lr.ph42.1207:                                    ; preds = %.lr.ph42, %bb.q
  %.7 = phi i32 [ %i.qg, %bb.q ], [ %.640, %.lr.ph42 ] ; 3 uses
  %indvars.iv.next123 = or disjoint i64 %indvars.iv122, 1 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pf, i64 %indvars.iv.next123
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !30
  %i.qj = icmp eq i8 %i.qi, 0
  br i1 %i.qj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph42.1207
  %i.qk = sext i32 %.7 to i64
  %i.ql = getelementptr inbounds [3 x i8], ptr %1, i64 %i.qk
  %i.qm = getelementptr inbounds nuw [3 x i8], ptr %i.pg, i64 %indvars.iv.next123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ql, ptr noundef nonnull align 1 dereferenceable(3) %i.qm, i64 3, i1 false)
  %i.qn = add nsw i32 %.7, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph42.1207
  %.7.1208 = phi i32 [ %i.qn, %bb.r ], [ %.7, %.lr.ph42.1207 ] ; 3 uses
  %indvars.iv.next123.1209 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader7.loopexit.unr-lcssa, label %.lr.ph42, !llvm.loop !196

.preheader6.loopexit.unr-lcssa:                   ; preds = %bb.w
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %.preheader6, label %.lr.ph46.epil.preheader

.lr.ph46.epil.preheader:                          ; preds = %.preheader6.loopexit.unr-lcssa, %.lr.ph46.preheader
  %indvars.iv127.epil.init = phi i64 [ 0, %.lr.ph46.preheader ], [ %indvars.iv.next128.1220, %.preheader6.loopexit.unr-lcssa ] ; 2 uses
  %.844.epil.init = phi i32 [ %.6.lcssa, %.lr.ph46.preheader ], [ %.9.1219, %.preheader6.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod213 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod213)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ph, i64 %indvars.iv127.epil.init
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !30
  %i.qq = icmp eq i8 %i.qp, 0
  br i1 %i.qq, label %bb.t, label %.preheader6

bb.t:                                             ; preds = %.lr.ph46.epil.preheader
  %i.qr = sext i32 %.844.epil.init to i64
  %i.qs = getelementptr inbounds [3 x i8], ptr %1, i64 %i.qr
  %i.qt = getelementptr inbounds nuw [3 x i8], ptr %i.pi, i64 %indvars.iv127.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qs, ptr noundef nonnull align 1 dereferenceable(3) %i.qt, i64 3, i1 false)
  %i.qu = add nsw i32 %.844.epil.init, 1
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.loopexit.unr-lcssa, %bb.t, %.lr.ph46.epil.preheader, %.preheader7
  %.8.lcssa = phi i32 [ %.6.lcssa, %.preheader7 ], [ %.9.1219, %.preheader6.loopexit.unr-lcssa ], [ %i.qu, %bb.t ], [ %.844.epil.init, %.lr.ph46.epil.preheader ] ; 3 uses
  br i1 %.not12.i223, label %.preheader5, label %.lr.ph50.preheader

.lr.ph50.preheader:                               ; preds = %.preheader6
  %wide.trip.count135 = zext nneg i32 %i.ax to i64 ; 2 uses
  %xtraiter221 = and i64 %wide.trip.count135, 1
  %i.qv = icmp eq i32 %i.ax, 1
  br i1 %i.qv, label %.lr.ph50.epil.preheader, label %.lr.ph50.preheader.new

.lr.ph50.preheader.new:                           ; preds = %.lr.ph50.preheader
  %unroll_iter225 = and i64 %wide.trip.count135, 14
  br label %.lr.ph50

.lr.ph46:                                         ; preds = %bb.w, %.lr.ph46.preheader.new
  %indvars.iv127 = phi i64 [ 0, %.lr.ph46.preheader.new ], [ %indvars.iv.next128.1220, %bb.w ] ; 4 uses
  %.844 = phi i32 [ %.6.lcssa, %.lr.ph46.preheader.new ], [ %.9.1219, %bb.w ] ; 3 uses
  %niter215 = phi i64 [ 0, %.lr.ph46.preheader.new ], [ %niter215.next.1, %bb.w ]
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ph, i64 %indvars.iv127
  %i.qx = load i8, ptr %i.qw, align 2, !tbaa !30
  %i.qy = icmp eq i8 %i.qx, 0
  br i1 %i.qy, label %bb.u, label %.lr.ph46.1218

bb.u:                                             ; preds = %.lr.ph46
  %i.qz = sext i32 %.844 to i64
  %i.ra = getelementptr inbounds [3 x i8], ptr %1, i64 %i.qz
  %i.rb = getelementptr inbounds nuw [3 x i8], ptr %i.pi, i64 %indvars.iv127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ra, ptr noundef nonnull align 2 dereferenceable(3) %i.rb, i64 3, i1 false)
  %i.rc = add nsw i32 %.844, 1
  br label %.lr.ph46.1218

.lr.ph46.1218:                                    ; preds = %.lr.ph46, %bb.u
  %.9 = phi i32 [ %i.rc, %bb.u ], [ %.844, %.lr.ph46 ] ; 3 uses
  %indvars.iv.next128 = or disjoint i64 %indvars.iv127, 1 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ph, i64 %indvars.iv.next128
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !30
  %i.rf = icmp eq i8 %i.re, 0
  br i1 %i.rf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph46.1218
  %i.rg = sext i32 %.9 to i64
  %i.rh = getelementptr inbounds [3 x i8], ptr %1, i64 %i.rg
  %i.ri = getelementptr inbounds nuw [3 x i8], ptr %i.pi, i64 %indvars.iv.next128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rh, ptr noundef nonnull align 1 dereferenceable(3) %i.ri, i64 3, i1 false)
  %i.rj = add nsw i32 %.9, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph46.1218
  %.9.1219 = phi i32 [ %i.rj, %bb.v ], [ %.9, %.lr.ph46.1218 ] ; 3 uses
  %indvars.iv.next128.1220 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %niter215.next.1 = add i64 %niter215, 2         ; 2 uses
  %niter215.ncmp.1 = icmp eq i64 %niter215.next.1, %unroll_iter214
  br i1 %niter215.ncmp.1, label %.preheader6.loopexit.unr-lcssa, label %.lr.ph46, !llvm.loop !197

.preheader5.loopexit.unr-lcssa:                   ; preds = %bb.aa
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %.preheader5, label %.lr.ph50.epil.preheader

.lr.ph50.epil.preheader:                          ; preds = %.preheader5.loopexit.unr-lcssa, %.lr.ph50.preheader
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph50.preheader ], [ %indvars.iv.next133.1231, %.preheader5.loopexit.unr-lcssa ] ; 2 uses
end_hunk_1
begin_hunk_2_@aac_decode_frame_int:bb.a
  %i.tl = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  store i32 %i.tk, ptr %i.tl, align 4, !tbaa !19
  %i.tm = icmp samesign ult i64 %indvars.iv.i.i.i.i, 50
  br i1 %i.tm, label %bb.cj, label %decode_drc_channel_exclusions.exit.loopexit.i.i.i

bb.cj:                                            ; preds = %.preheader278.i
  %indvars.iv.next12.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 7 ; 2 uses
  %i.tn = load i32, ptr %i.j, align 8, !tbaa !117 ; 4 uses
  %i.to = lshr i32 %i.tn, 3
  %i.tp = zext nneg i32 %i.to to i64
  %i.tq = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.tp
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !30
  %i.ts = load i32, ptr %i.el, align 8, !tbaa !116 ; 3 uses
  %i.tt = icmp slt i32 %i.tn, %i.ts
  %i.tu = zext i1 %i.tt to i32
  %spec.select.i8.i.i.i.i = add i32 %i.tn, %i.tu  ; 3 uses
  %i.tv = zext i8 %i.tr to i32
  %i.tw = and i32 %i.tn, 7
  store i32 %spec.select.i8.i.i.i.i, ptr %i.j, align 8, !tbaa !117
  %i.tx = lshr exact i32 128, %i.tw
  %i.ty = and i32 %i.tx, %i.tv
  %.not.i.i.i.i = icmp eq i32 %i.ty, 0
  br i1 %.not.i.i.i.i, label %.critedge.split.loop.exit15.i.i.i.i, label %.preheader278.i, !llvm.loop !226

.critedge.split.loop.exit15.i.i.i.i:              ; preds = %bb.cj
  %i.tz = trunc nuw nsw i64 %indvars.iv.next12.i.i.i.i to i8
  %i.ua = udiv i8 %i.tz, 7
  %i.ub = zext nneg i8 %i.ua to i32
  br label %decode_drc_channel_exclusions.exit.i.i.i

decode_drc_channel_exclusions.exit.loopexit.i.i.i: ; preds = %.preheader278.i
  %.pre.pre.i.i.i = load i32, ptr %i.j, align 8, !tbaa !117
  %.pre62.pre.i.i.i = load i32, ptr %i.el, align 8, !tbaa !116
  br label %decode_drc_channel_exclusions.exit.i.i.i

decode_drc_channel_exclusions.exit.i.i.i:         ; preds = %decode_drc_channel_exclusions.exit.loopexit.i.i.i, %.critedge.split.loop.exit15.i.i.i.i
  %.pre62.i.i.i = phi i32 [ %i.ts, %.critedge.split.loop.exit15.i.i.i.i ], [ %.pre62.pre.i.i.i, %decode_drc_channel_exclusions.exit.loopexit.i.i.i ]
  %.pre.i.i.i = phi i32 [ %spec.select.i8.i.i.i.i, %.critedge.split.loop.exit15.i.i.i.i ], [ %.pre.pre.i.i.i, %decode_drc_channel_exclusions.exit.loopexit.i.i.i ]
  %.lcssa.lcssa.i.i.i.i = phi i32 [ %i.ub, %.critedge.split.loop.exit15.i.i.i.i ], [ 9, %decode_drc_channel_exclusions.exit.loopexit.i.i.i ]
  %i.uc = add nuw nsw i32 %.lcssa.lcssa.i.i.i.i, %.040.i.i.i
  br label %bb.ck

bb.ck:                                            ; preds = %decode_drc_channel_exclusions.exit.i.i.i, %bb.ci
  %i.ud = phi i32 [ %.pre62.i.i.i, %decode_drc_channel_exclusions.exit.i.i.i ], [ %i.oo, %bb.ci ] ; 4 uses
  %i.ue = phi i32 [ %.pre.i.i.i, %decode_drc_channel_exclusions.exit.i.i.i ], [ %spec.select.i47.i.i.i, %bb.ci ] ; 4 uses
  %.141.i.i.i = phi i32 [ %i.uc, %decode_drc_channel_exclusions.exit.i.i.i ], [ %.040.i.i.i, %bb.ci ] ; 2 uses
  %i.uf = lshr i32 %i.ue, 3
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !30
  %i.uj = icmp slt i32 %i.ue, %i.ud
  %i.uk = zext i1 %i.uj to i32
  %spec.select.i48.i.i.i = add i32 %i.ue, %i.uk   ; 5 uses
  %i.ul = zext i8 %i.ui to i32
  %i.um = and i32 %i.ue, 7
  store i32 %spec.select.i48.i.i.i, ptr %i.j, align 8, !tbaa !117
  %i.un = lshr exact i32 128, %i.um
  %i.uo = and i32 %i.un, %i.ul
  %.not44.i.i.i = icmp eq i32 %i.uo, 0
  br i1 %.not44.i.i.i, label %.loopexit.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.up = lshr i32 %spec.select.i48.i.i.i, 3
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.uq
  %i.us = load i32, ptr %i.ur, align 1, !tbaa !30
  %i.ut = call i32 @llvm.bswap.i32(i32 %i.us)
  %i.uu = and i32 %spec.select.i48.i.i.i, 7
  %i.uv = shl i32 %i.ut, %i.uu
  %i.uw = lshr i32 %i.uv, 28                      ; 3 uses
  %i.ux = add i32 %spec.select.i48.i.i.i, 4
  %i.uy = call i32 @llvm.umin.i32(i32 %i.ud, i32 %i.ux) ; 4 uses
  store i32 %i.uy, ptr %i.j, align 8, !tbaa !117
  store i32 %i.uw, ptr %i.es, align 16, !tbaa !227
  %i.uz = lshr i32 %i.uy, 3
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.va
  %i.vc = load i32, ptr %i.vb, align 1, !tbaa !30
  %i.vd = call i32 @llvm.bswap.i32(i32 %i.vc)
  %i.ve = and i32 %i.uy, 7
  %i.vf = shl i32 %i.vd, %i.ve
  %i.vg = lshr i32 %i.vf, 28
  %i.vh = add i32 %i.uy, 4
  %i.vi = call i32 @llvm.umin.i32(i32 %i.ud, i32 %i.vh)
  store i32 %i.vi, ptr %i.j, align 8, !tbaa !117
  store i32 %i.vg, ptr %i.et, align 4, !tbaa !228
  %i.vj = add nuw nsw i32 %i.uw, 1                ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.vj to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %bb.cl
  %indvars.iv.i.i212.i = phi i64 [ 0, %bb.cl ], [ %indvars.iv.next.i.i213.i, %bb.cm ] ; 2 uses
  %i.vk = load i32, ptr %i.j, align 8, !tbaa !117 ; 3 uses
  %i.vl = load i32, ptr %i.el, align 8, !tbaa !116
  %i.vm = lshr i32 %i.vk, 3
  %i.vn = zext nneg i32 %i.vm to i64
  %i.vo = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.vn
  %i.vp = load i32, ptr %i.vo, align 1, !tbaa !30
  %i.vq = call i32 @llvm.bswap.i32(i32 %i.vp)
  %i.vr = and i32 %i.vk, 7
  %i.vs = shl i32 %i.vq, %i.vr
  %i.vt = lshr i32 %i.vs, 24
  %i.vu = add i32 %i.vk, 8
  %i.vv = call i32 @llvm.umin.i32(i32 %i.vl, i32 %i.vu)
  store i32 %i.vv, ptr %i.j, align 8, !tbaa !117
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i.i212.i
  store i32 %i.vt, ptr %i.vw, align 4, !tbaa !19
  %indvars.iv.next.i.i213.i = add nuw nsw i64 %indvars.iv.i.i212.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i213.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.loopexit.i.i.i, label %bb.cm, !llvm.loop !229

.loopexit.loopexit.i.i.i:                         ; preds = %bb.cm
  %i.vx = add nsw i32 %.141.i.i.i, 2
  %i.vy = add nsw i32 %i.vx, %i.uw
  %.pre63.i.i.i = load i32, ptr %i.j, align 8, !tbaa !117
  %.pre64.i.i.i = load i32, ptr %i.el, align 8, !tbaa !116
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %bb.ck
  %i.vz = phi i32 [ %i.ud, %bb.ck ], [ %.pre64.i.i.i, %.loopexit.loopexit.i.i.i ] ; 3 uses
  %i.wa = phi i32 [ %spec.select.i48.i.i.i, %bb.ck ], [ %.pre63.i.i.i, %.loopexit.loopexit.i.i.i ] ; 4 uses
  %.3.i.i.i = phi i32 [ %.141.i.i.i, %bb.ck ], [ %i.vy, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %.039.i.i.i = phi i32 [ 1, %bb.ck ], [ %i.vj, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %i.wb = lshr i32 %i.wa, 3
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !30
  %i.wf = icmp slt i32 %i.wa, %i.vz
  %i.wg = zext i1 %i.wf to i32
  %spec.select.i49.i.i.i = add i32 %i.wa, %i.wg   ; 4 uses
  %i.wh = zext i8 %i.we to i32
  %i.wi = and i32 %i.wa, 7
  store i32 %spec.select.i49.i.i.i, ptr %i.j, align 8, !tbaa !117
  %i.wj = lshr exact i32 128, %i.wi
  %i.wk = and i32 %i.wj, %i.wh
  %.not46.i.i.i = icmp eq i32 %i.wk, 0
  br i1 %.not46.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.loopexit.i.i.i
  %i.wl = lshr i32 %spec.select.i49.i.i.i, 3
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.wm
  %i.wo = load i32, ptr %i.wn, align 1, !tbaa !30
  %i.wp = call i32 @llvm.bswap.i32(i32 %i.wo)
  %i.wq = and i32 %spec.select.i49.i.i.i, 7
  %i.wr = shl i32 %i.wp, %i.wq
  %i.ws = lshr i32 %i.wr, 25
  %i.wt = add i32 %spec.select.i49.i.i.i, 7
  %i.wu = call i32 @llvm.umin.i32(i32 %i.vz, i32 %i.wt)
  store i32 %i.ws, ptr %i.ev, align 4, !tbaa !230
  %i.wv = add i32 %i.wu, 1
  %i.ww = call i32 @llvm.umin.i32(i32 %i.vz, i32 %i.wv)
  store i32 %i.ww, ptr %i.j, align 8, !tbaa !117
  %i.wx = add nsw i32 %.3.i.i.i, 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.loopexit.i.i.i
  %.4.i.i.i = phi i32 [ %i.wx, %bb.cn ], [ %.3.i.i.i, %.loopexit.i.i.i ]
  %wide.trip.count60.i.i.i = zext nneg i32 %.039.i.i.i to i64
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %bb.co
  %indvars.iv57.i.i.i = phi i64 [ 0, %bb.co ], [ %indvars.iv.next58.i.i.i, %bb.cp ] ; 3 uses
  %i.wy = load i32, ptr %i.j, align 8, !tbaa !117 ; 4 uses
  %i.wz = lshr i32 %i.wy, 3
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.xa
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !30
  %i.xd = load i32, ptr %i.el, align 8, !tbaa !116
  %i.xe = icmp slt i32 %i.wy, %i.xd
  %i.xf = zext i1 %i.xe to i32
  %spec.select.i50.i.i.i = add i32 %i.wy, %i.xf
  %i.xg = zext i8 %i.xc to i32
  %i.xh = and i32 %i.wy, 7
  %i.xi = shl nuw nsw i32 %i.xg, %i.xh
  %i.xj = lshr i32 %i.xi, 7
  store i32 %spec.select.i50.i.i.i, ptr %i.j, align 8, !tbaa !117
  %i.xk = and i32 %i.xj, 1
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv57.i.i.i
  store i32 %i.xk, ptr %i.xl, align 4, !tbaa !19
  %i.xm = load i32, ptr %i.j, align 8, !tbaa !117 ; 3 uses
  %i.xn = load i32, ptr %i.el, align 8, !tbaa !116
  %i.xo = lshr i32 %i.xm, 3
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.xp
  %i.xr = load i32, ptr %i.xq, align 1, !tbaa !30
  %i.xs = call i32 @llvm.bswap.i32(i32 %i.xr)
  %i.xt = and i32 %i.xm, 7
  %i.xu = shl i32 %i.xs, %i.xt
  %i.xv = lshr i32 %i.xu, 25
  %i.xw = add i32 %i.xm, 7
  %i.xx = call i32 @llvm.umin.i32(i32 %i.xn, i32 %i.xw)
  store i32 %i.xx, ptr %i.j, align 8, !tbaa !117
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv57.i.i.i
  store i32 %i.xv, ptr %i.xy, align 4, !tbaa !19
  %indvars.iv.next58.i.i.i = add nuw nsw i64 %indvars.iv57.i.i.i, 1 ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i64 %indvars.iv.next58.i.i.i, %wide.trip.count60.i.i.i
  br i1 %exitcond61.not.i.i.i, label %decode_dynamic_range.exit.i.i, label %bb.cp, !llvm.loop !231

decode_dynamic_range.exit.i.i:                    ; preds = %bb.cp
  %i.xz = add i32 %.4.i.i.i, %.039.i.i.i
  br label %decode_extension_payload.exit.i

bb.cq:                                            ; preds = %bb.bq
  %i.ya = shl nsw i32 %.1156.i, 3                 ; 3 uses
  %i.yb = add nsw i32 %i.ya, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.yc = icmp samesign ult i32 %.1156.i, 10
  br i1 %i.yc, label %decode_fill.exit.i.i, label %.lr.ph.i.i210.i

.lr.ph.i.i210.i:                                  ; preds = %bb.cq
  %i.yd = load i32, ptr %i.j, align 8, !tbaa !117
  %i.ye = load i32, ptr %i.el, align 8, !tbaa !116 ; 2 uses
  %i.yf = load ptr, ptr %3, align 8, !tbaa !113
  %i.yg = add i32 %i.yd, 13
  %i.yh = call i32 @llvm.umin.i32(i32 %i.ye, i32 %i.yg) ; 2 uses
  store i32 %i.yh, ptr %i.j, align 8, !tbaa !117
  %i.yi = add nsw i32 %i.ya, -17
  %i.yj = add nsw i32 %i.ya, -32
  %i.yk = lshr exact i32 %i.yj, 3
  %umin.i.i.i = call i32 @llvm.umin.i32(i32 %i.yk, i32 254)
  %i.yl = add nuw nsw i32 %umin.i.i.i, 1
  %wide.trip.count.i63.i.i = zext nneg i32 %i.yl to i64 ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %.lr.ph.i.i210.i
  %indvars.iv.i64.i.i = phi i64 [ 0, %.lr.ph.i.i210.i ], [ %indvars.iv.next.i65.i.i, %bb.cr ] ; 2 uses
  %i.ym = phi i32 [ %i.yh, %.lr.ph.i.i210.i ], [ %i.yw, %bb.cr ] ; 3 uses
  %.01417.i.i.i = phi i32 [ %i.yi, %.lr.ph.i.i210.i ], [ %i.yz, %bb.cr ]
  %indvars.iv.next.i65.i.i = add nuw nsw i64 %indvars.iv.i64.i.i, 1 ; 2 uses
  %i.yn = lshr i32 %i.ym, 3
  %i.yo = zext nneg i32 %i.yn to i64
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.yo
  %i.yq = load i32, ptr %i.yp, align 1, !tbaa !30
  %i.yr = call i32 @llvm.bswap.i32(i32 %i.yq)
  %i.ys = and i32 %i.ym, 7
  %i.yt = shl i32 %i.yr, %i.ys
  %i.yu = lshr i32 %i.yt, 24
  %i.yv = add i32 %i.ym, 8
  %i.yw = call i32 @llvm.umin.i32(i32 %i.ye, i32 %i.yv) ; 2 uses
  store i32 %i.yw, ptr %i.j, align 8, !tbaa !117
  %i.yx = trunc nuw i32 %i.yu to i8
  %i.yy = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i64.i.i
  store i8 %i.yx, ptr %i.yy, align 1, !tbaa !30
  %i.yz = add nsw i32 %.01417.i.i.i, -8           ; 3 uses
  %exitcond.not.i66.i.i = icmp eq i64 %indvars.iv.next.i65.i.i, %wide.trip.count.i63.i.i
  br i1 %exitcond.not.i66.i.i, label %._crit_edge.i.i.i, label %bb.cr, !llvm.loop !232

._crit_edge.i.i.i:                                ; preds = %bb.cr
  %i.za = getelementptr inbounds nuw i8, ptr %i.a, i64 %wide.trip.count.i63.i.i
  store i8 0, ptr %i.za, align 1, !tbaa !30
  %i.zb = load ptr, ptr %i.eb, align 8, !tbaa !9  ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 524
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !219
  %i.ze = and i32 %i.zd, 1
  %.not.i67.i.i = icmp eq i32 %i.ze, 0
  br i1 %.not.i67.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge.i.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.zb, i32 noundef 48, ptr noundef nonnull @.str.76, ptr noundef nonnull %i.a) #12
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %._crit_edge.i.i.i
  %i.zf = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.77, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %i.zg = icmp eq i32 %i.zf, 2
  br i1 %i.zg, label %bb.cu, label %decode_fill.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.zh = load ptr, ptr %i.eb, align 8, !tbaa !9
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 40
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !233
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 108
  store i32 1024, ptr %i.zk, align 4, !tbaa !234
  br label %decode_fill.exit.i.i

decode_fill.exit.i.i:                             ; preds = %bb.cu, %bb.ct, %bb.cq
  %.1.i.i.i = phi i32 [ %i.yb, %bb.cq ], [ %i.yz, %bb.cu ], [ %i.yz, %bb.ct ] ; 2 uses
  %i.zl = load i32, ptr %i.j, align 8, !tbaa !117 ; 3 uses
  %i.zm = sub nsw i32 0, %i.zl                    ; 2 uses
  %i.zn = load i32, ptr %i.el, align 8, !tbaa !116
  %i.zo = sub nsw i32 %i.zn, %i.zl
  %i.zp = icmp slt i32 %.1.i.i.i, %i.zm
  %..i.i.i.i.i = call i32 @llvm.smin.i32(i32 %.1.i.i.i, i32 %i.zo)
  %.0.i.i.i.i.i = select i1 %i.zp, i32 %i.zm, i32 %..i.i.i.i.i
  %i.zq = add nsw i32 %.0.i.i.i.i.i, %i.zl
  store i32 %i.zq, ptr %i.j, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %decode_extension_payload.exit.i

bb.cv:                                            ; preds = %bb.bq
  %i.zr = shl nsw i32 %.1156.i, 3
  %i.zs = add nsw i32 %i.zr, -4                   ; 2 uses
  %i.zt = load i32, ptr %i.j, align 8, !tbaa !117 ; 3 uses
  %i.zu = sub nsw i32 0, %i.zt                    ; 2 uses
  %i.zv = load i32, ptr %i.el, align 8, !tbaa !116
  %i.zw = sub nsw i32 %i.zv, %i.zt
  %i.zx = icmp slt i32 %i.zs, %i.zu
  %..i.i68.i.i = call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.zw)
  %.0.i.i69.i.i = select i1 %i.zx, i32 %i.zu, i32 %..i.i68.i.i
  %i.zy = add nsw i32 %.0.i.i69.i.i, %i.zt
  store i32 %i.zy, ptr %i.j, align 8, !tbaa !117
  br label %decode_extension_payload.exit.i

decode_extension_payload.exit.i:                  ; preds = %bb.cv, %decode_fill.exit.i.i, %decode_dynamic_range.exit.i.i, %bb.cf, %bb.ce, %bb.cd, %bb.bx, %bb.bv, %bb.bt
  %.055.i.i = phi i32 [ %.1156.i, %bb.bt ], [ %.1156.i, %bb.bx ], [ %.1156.i, %bb.bv ], [ %.1156.i, %bb.cv ], [ %.1156.i, %bb.ce ], [ %.1156.i, %bb.cf ], [ %.1156.i, %bb.cd ], [ %i.xz, %decode_dynamic_range.exit.i.i ], [ %.1156.i, %decode_fill.exit.i.i ] ; 3 uses
  %i.zz = icmp slt i32 %.055.i.i, 0
  %i.aaa = sub nsw i32 %.1156.i, %.055.i.i
  br i1 %i.zz, label %decode_frame_ga.exit.thread, label %bb.bn

skip_data_stream_element.exit.i:                  ; preds = %pop_output_configuration.exit.i, %bb.au, %bb.at, %bb.as, %bb.ar
  %.5.i = phi i32 [ %.2160.i, %pop_output_configuration.exit.i ], [ %i.hd, %bb.ar ], [ %i.hf, %bb.as ], [ %i.hh, %bb.at ], [ %i.hj, %bb.au ] ; 4 uses
  %.1146.i = phi i32 [ %.0145.i, %pop_output_configuration.exit.i ], [ 1, %bb.ar ], [ 1, %bb.as ], [ %.0145.i, %bb.at ], [ 1, %bb.au ]
  %.3.i = phi i32 [ %.2144.i, %pop_output_configuration.exit.i ], [ %.0142.i, %bb.ar ], [ %.0142.i, %bb.as ], [ %.0142.i, %bb.at ], [ %.0142.i, %bb.au ]
  %.1141.i = phi i32 [ %.0140.i, %pop_output_configuration.exit.i ], [ %i.he, %bb.ar ], [ %.0140.i, %bb.as ], [ %.0140.i, %bb.at ], [ %.0140.i, %bb.au ]
  %.not188.i = icmp eq i32 %.5.i, 0
  br i1 %.not188.i, label %skip_data_stream_element.exit._crit_edge.i, label %decode_frame_ga.exit

skip_data_stream_element.exit._crit_edge.i:       ; preds = %bb.bn, %skip_data_stream_element.exit.i
  %.1141339.i = phi i32 [ %.1141.i, %skip_data_stream_element.exit.i ], [ %.0140.i, %bb.bn ]
  %.3338.i = phi i32 [ %.3.i, %skip_data_stream_element.exit.i ], [ %.0142.i, %bb.bn ]
  %.1146337.i = phi i32 [ %.1146.i, %skip_data_stream_element.exit.i ], [ %.0145.i, %bb.bn ]
  %spec.select.i44 = select i1 %i.gp, i32 %i.fx, i32 %.0153.i
  %.val191.pre.i = load i32, ptr %i.j, align 8, !tbaa !117
  %.val192.pre.i = load i32, ptr %i.ep, align 4, !tbaa !115
  br label %bb.cw

bb.cw:                                            ; preds = %skip_data_stream_element.exit._crit_edge.i, %skip_data_stream_element.exit.thread225.i
  %.val192.i = phi i32 [ %.val15.i.i, %skip_data_stream_element.exit.thread225.i ], [ %.val192.pre.i, %skip_data_stream_element.exit._crit_edge.i ]
  %.val191.i = phi i32 [ %i.je, %skip_data_stream_element.exit.thread225.i ], [ %.val191.pre.i, %skip_data_stream_element.exit._crit_edge.i ] ; 2 uses
  %spec.select236.i = phi i32 [ %spec.select230.i, %skip_data_stream_element.exit.thread225.i ], [ %spec.select.i44, %skip_data_stream_element.exit._crit_edge.i ]
  %.1141235.i = phi i32 [ %.0140.i, %skip_data_stream_element.exit.thread225.i ], [ %.1141339.i, %skip_data_stream_element.exit._crit_edge.i ]
  %.3234.i = phi i32 [ %.0142.i, %skip_data_stream_element.exit.thread225.i ], [ %.3338.i, %skip_data_stream_element.exit._crit_edge.i ]
  %.1146233.i = phi i32 [ %.0145.i, %skip_data_stream_element.exit.thread225.i ], [ %.1146337.i, %skip_data_stream_element.exit._crit_edge.i ]
  %i.aab = sub nsw i32 %.val192.i, %.val191.i
  %i.aac = icmp slt i32 %i.aab, 3
  br i1 %i.aac, label %bb.cx, label %bb.ag, !llvm.loop !240

bb.cx:                                            ; preds = %bb.cw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.36) #12
  br label %decode_frame_ga.exit.thread

bb.cy:                                            ; preds = %bb.ag
  %i.aad = load i32, ptr %i.en, align 4, !tbaa !76
  %.not179.i = icmp eq i32 %i.aad, 0
  br i1 %.not179.i, label %decode_frame_ga.exit.thread8, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aae = load i32, ptr %i.ey, align 8, !tbaa !102
  %i.aaf = icmp eq i32 %i.aae, 1
  br i1 %i.aaf, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.aag = getelementptr inbounds nuw i8, ptr %i.h, i64 23284
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !241
  %i.aai = getelementptr inbounds nuw i8, ptr %i.h, i64 23264
  %i.aaj = load i32, ptr %i.aai, align 16, !tbaa !105
  %i.aak = icmp sgt i32 %i.aah, %i.aaj
  %i.aal = zext i1 %i.aak to i32
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.aam = phi i32 [ %i.aal, %bb.da ], [ 0, %bb.cz ] ; 2 uses
  %i.aan = shl nuw nsw i32 %.0147.i, %i.aam       ; 3 uses
  call fastcc void @spectral_to_sample(ptr noundef nonnull %i.h, i32 noundef %i.aan)
  %i.aao = load i32, ptr %i.ez, align 8, !tbaa !52
  %i.aap = icmp ne i32 %i.aao, 0
  %i.aaq = icmp ne i32 %.0145.i, 0
  %or.cond6.i = select i1 %i.aap, i1 %i.aaq, i1 false
  br i1 %or.cond6.i, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.aar = getelementptr inbounds nuw i8, ptr %i.h, i64 23264
  %i.aas = load i32, ptr %i.aar, align 16, !tbaa !105
  %i.aat = shl i32 %i.aas, %i.aam
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 %i.aat, ptr %i.aau, align 8, !tbaa !104
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %i.aan, ptr %i.aav, align 8, !tbaa !242
  store i32 4, ptr %i.ez, align 8, !tbaa !52
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.not240.i = icmp eq i32 %.0147.i, 0
  br i1 %.not240.i, label %bb.dj, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aax = load i32, ptr %i.aaw, align 8, !tbaa !104 ; 2 uses
  %i.aay = icmp slt i32 %i.aax, 1
  br i1 %i.aay, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.69) #12
  br label %decode_frame_ga.exit.thread

bb.dg:                                            ; preds = %bb.de
  %i.aaz = load ptr, ptr %i.i, align 8, !tbaa !20 ; 4 uses
end_hunk_2
