Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec?download=true
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
  %.pre159 = load ptr, ptr %2, align 8, !tbaa !113
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %.pre159, %bb.b ], [ %i.i, %bb.a ] ; 9 uses
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
  %i.bg = shl i32 %i.be, %i.bf
  %i.bh = lshr i32 %i.bg, 30                      ; 9 uses
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
  %i.ca = shl i32 %i.by, %i.bz
  %i.cb = lshr i32 %i.ca, 28                      ; 9 uses
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
  br label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %.lr.ph.i224.preheader, %.lr.ph.i224
  %.in.i225 = phi i32 [ %i.gp, %.lr.ph.i224 ], [ %i.ax, %.lr.ph.i224.preheader ]
  %.01113.i226 = phi ptr [ %i.hu, %.lr.ph.i224 ], [ %i.go, %.lr.ph.i224.preheader ] ; 4 uses
  %i.gp = add nsw i32 %.in.i225, -1               ; 2 uses
  %i.gq = load i32, ptr %i.c, align 8, !tbaa !117 ; 4 uses
  %i.gr = load ptr, ptr %2, align 8, !tbaa !113
  %i.gs = lshr i32 %i.gq, 3
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !30
  %i.gw = load i32, ptr %i.e, align 8, !tbaa !116
  %i.gx = icmp slt i32 %i.gq, %i.gw
  %i.gy = zext i1 %i.gx to i32
  %spec.select.i.i227 = add i32 %i.gq, %i.gy
  %i.gz = zext i8 %i.gv to i32
  %i.ha = and i32 %i.gq, 7
  %i.hb = shl nuw nsw i32 %i.gz, %i.ha
  store i32 %spec.select.i.i227, ptr %i.c, align 8, !tbaa !117
  %i.hc = trunc i32 %i.hb to i8
  %i.hd = lshr i8 %i.hc, 7
  store i8 %i.hd, ptr %.01113.i226, align 1, !tbaa !30
end_hunk_0
begin_hunk_1_@decode_pce:bb.a
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
  %.pre164168 = phi i32 [ %.promoted31, %.preheader12 ], [ %i.oo, %.preheader11.loopexit ]
  %.2185.lcssa = phi i32 [ %.1184.lcssa, %.preheader12 ], [ %i.or, %.preheader11.loopexit ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader12 ], [ %i.nz, %.preheader11.loopexit ] ; 3 uses
  br i1 %.not12.i230, label %.preheader10, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader11
  %i.oa = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ob = zext i32 %.2.lcssa to i64
  %i.oc = mul nuw nsw i64 %i.ob, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.oc
  %4 = add nsw i32 %i.bh, -1
  %5 = zext nneg i32 %4 to i64
  %6 = mul nuw nsw i64 %5, 3
  %7 = add nuw nsw i64 %6, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.oa, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %7, i1 false)
  %i.od = add i32 %.2.lcssa, %i.bh
  br label %.preheader10

bb.m:                                             ; preds = %.lr.ph28, %bb.m
  %indvars.iv96 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next97, %bb.m ] ; 3 uses
  %indvars.iv94 = phi i64 [ %i.ng, %.lr.ph28 ], [ %indvars.iv.next95, %bb.m ] ; 2 uses
  %i.oe = phi i32 [ %.promoted31, %.lr.ph28 ], [ %i.oo, %bb.m ] ; 3 uses
  %.218526 = phi i32 [ %.1184.lcssa, %.lr.ph28 ], [ %i.or, %bb.m ]
  %i.of = lshr i32 %i.oe, 3
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 1, !tbaa !30
  %i.oj = tail call i32 @llvm.bswap.i32(i32 %i.oi)
  %i.ok = and i32 %i.oe, 7
  %i.ol = shl i32 %i.oj, %i.ok
  %i.om = lshr i32 %i.ol, 30                      ; 2 uses
  %i.on = add i32 %i.oe, 2
  %i.oo = tail call i32 @llvm.umin.i32(i32 %.pre161, i32 %i.on) ; 3 uses
  store i32 %i.oo, ptr %i.c, align 8, !tbaa !117
  %i.op = icmp eq i32 %i.om, 3
  %i.oq = zext i1 %i.op to i32
  %i.or = or i32 %.218526, %i.oq                  ; 2 uses
  %i.os = trunc nuw nsw i32 %i.om to i8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ne, i64 %indvars.iv96
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !30
  %i.ou = getelementptr inbounds nuw [3 x i8], ptr %i.nf, i64 %indvars.iv96
  %i.ov = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ou, ptr noundef nonnull align 1 dereferenceable(3) %i.ov, i64 3, i1 false)
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count101
  br i1 %exitcond102.not, label %.preheader11.loopexit, label %bb.m, !llvm.loop !195

.preheader10:                                     ; preds = %.lr.ph34, %.preheader11
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader11 ], [ %i.od, %.lr.ph34 ] ; 3 uses
  br i1 %.not12.i236, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader10
  %i.ow = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ox = zext nneg i32 %.3.lcssa to i64
  %i.oy = mul nuw nsw i64 %i.ox, 3
  %scevgep112 = getelementptr i8, ptr %1, i64 %i.oy
  %8 = add nsw i32 %i.cb, -1
  %9 = zext nneg i32 %8 to i64
  %10 = mul nuw nsw i64 %9, 3
  %11 = add nuw nsw i64 %10, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ow, ptr noundef nonnull align 1 dereferenceable(1) %scevgep112, i64 %11, i1 false)
  %i.oz = add i32 %.3.lcssa, %i.cb
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph38, %.preheader10
  %.4.lcssa = phi i32 [ %.3.lcssa, %.preheader10 ], [ %i.oz, %.lr.ph38 ]
  %i.pa = icmp eq i32 %.4.lcssa, %i.lb
  br i1 %i.pa, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 921) #12
  tail call void @abort() #14
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %.not208 = icmp eq i32 %.2185.lcssa, 0
  br i1 %.not208, label %.preheader9, label %bb.ba

.preheader9:                                      ; preds = %bb.o
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 9 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 9 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 9 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 9 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 9 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 9 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.pi = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %12 = add nsw i32 %i.bh, -1
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, 3
  %15 = add nuw nsw i64 %14, 3
  %16 = add nsw i32 %i.cb, -1
  %i.pj = zext i32 %16 to i64
  %17 = mul nuw nsw i64 %i.pj, 3
  %18 = add nuw nsw i64 %17, 3
  br i1 %.not12.i, label %.preheader7, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %.preheader9
  %xtraiter = and i64 %i.ff, 1
  %i.pk = icmp eq i32 %i.ad, 1
  br i1 %i.pk, label %.lr.ph42.epil.preheader, label %.lr.ph42.preheader.new

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
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv122.epil.init
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !30
  %i.pn = icmp eq i8 %i.pm, 0
  br i1 %i.pn, label %bb.p, label %.preheader7

bb.p:                                             ; preds = %.lr.ph42.epil.preheader
  %i.po = sext i32 %.640.epil.init to i64
  %i.pp = getelementptr inbounds [3 x i8], ptr %1, i64 %i.po
  %i.pq = getelementptr inbounds nuw [3 x i8], ptr %i.pc, i64 %indvars.iv122.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pp, ptr noundef nonnull align 1 dereferenceable(3) %i.pq, i64 3, i1 false)
  %i.pr = add nsw i32 %.640.epil.init, 1
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.loopexit.unr-lcssa, %bb.p, %.lr.ph42.epil.preheader, %.preheader9
  %.6.lcssa = phi i32 [ 0, %.preheader9 ], [ %.7.1208, %.preheader7.loopexit.unr-lcssa ], [ %i.pr, %bb.p ], [ %.640.epil.init, %.lr.ph42.epil.preheader ] ; 3 uses
  br i1 %.not12.i216, label %.preheader6, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %.preheader7
  %wide.trip.count130 = zext nneg i32 %i.an to i64 ; 2 uses
  %xtraiter210 = and i64 %wide.trip.count130, 1
  %i.ps = icmp eq i32 %i.an, 1
  br i1 %i.ps, label %.lr.ph46.epil.preheader, label %.lr.ph46.preheader.new

.lr.ph46.preheader.new:                           ; preds = %.lr.ph46.preheader
  %unroll_iter214 = and i64 %wide.trip.count130, 14
  br label %.lr.ph46

.lr.ph42:                                         ; preds = %bb.s, %.lr.ph42.preheader.new
  %indvars.iv122 = phi i64 [ 0, %.lr.ph42.preheader.new ], [ %indvars.iv.next123.1209, %bb.s ] ; 4 uses
  %.640 = phi i32 [ 0, %.lr.ph42.preheader.new ], [ %.7.1208, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph42.preheader.new ], [ %niter.next.1, %bb.s ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv122
  %i.pu = load i8, ptr %i.pt, align 2, !tbaa !30
  %i.pv = icmp eq i8 %i.pu, 0
  br i1 %i.pv, label %bb.q, label %.lr.ph42.1207

bb.q:                                             ; preds = %.lr.ph42
  %i.pw = sext i32 %.640 to i64
  %i.px = getelementptr inbounds [3 x i8], ptr %1, i64 %i.pw
  %i.py = getelementptr inbounds nuw [3 x i8], ptr %i.pc, i64 %indvars.iv122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.px, ptr noundef nonnull align 2 dereferenceable(3) %i.py, i64 3, i1 false)
  %i.pz = add nsw i32 %.640, 1
  br label %.lr.ph42.1207

.lr.ph42.1207:                                    ; preds = %.lr.ph42, %bb.q
  %.7 = phi i32 [ %i.pz, %bb.q ], [ %.640, %.lr.ph42 ] ; 3 uses
  %indvars.iv.next123 = or disjoint i64 %indvars.iv122, 1 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv.next123
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !30
  %i.qc = icmp eq i8 %i.qb, 0
  br i1 %i.qc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph42.1207
  %i.qd = sext i32 %.7 to i64
  %i.qe = getelementptr inbounds [3 x i8], ptr %1, i64 %i.qd
  %i.qf = getelementptr inbounds nuw [3 x i8], ptr %i.pc, i64 %indvars.iv.next123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qe, ptr noundef nonnull align 1 dereferenceable(3) %i.qf, i64 3, i1 false)
  %i.qg = add nsw i32 %.7, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph42.1207
  %.7.1208 = phi i32 [ %i.qg, %bb.r ], [ %.7, %.lr.ph42.1207 ] ; 3 uses
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
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pd, i64 %indvars.iv127.epil.init
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !30
  %i.qj = icmp eq i8 %i.qi, 0
  br i1 %i.qj, label %bb.t, label %.preheader6

bb.t:                                             ; preds = %.lr.ph46.epil.preheader
  %i.qk = sext i32 %.844.epil.init to i64
  %i.ql = getelementptr inbounds [3 x i8], ptr %1, i64 %i.qk
  %i.qm = getelementptr inbounds nuw [3 x i8], ptr %i.pe, i64 %indvars.iv127.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ql, ptr noundef nonnull align 1 dereferenceable(3) %i.qm, i64 3, i1 false)
  %i.qn = add nsw i32 %.844.epil.init, 1
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.loopexit.unr-lcssa, %bb.t, %.lr.ph46.epil.preheader, %.preheader7
  %.8.lcssa = phi i32 [ %.6.lcssa, %.preheader7 ], [ %.9.1219, %.preheader6.loopexit.unr-lcssa ], [ %i.qn, %bb.t ], [ %.844.epil.init, %.lr.ph46.epil.preheader ] ; 3 uses
  br i1 %.not12.i223, label %.preheader5, label %.lr.ph50.preheader

.lr.ph50.preheader:                               ; preds = %.preheader6
  %wide.trip.count135 = zext nneg i32 %i.ax to i64 ; 2 uses
  %xtraiter221 = and i64 %wide.trip.count135, 1
  %i.qo = icmp eq i32 %i.ax, 1
  br i1 %i.qo, label %.lr.ph50.epil.preheader, label %.lr.ph50.preheader.new

.lr.ph50.preheader.new:                           ; preds = %.lr.ph50.preheader
  %unroll_iter225 = and i64 %wide.trip.count135, 14
  br label %.lr.ph50

.lr.ph46:                                         ; preds = %bb.w, %.lr.ph46.preheader.new
  %indvars.iv127 = phi i64 [ 0, %.lr.ph46.preheader.new ], [ %indvars.iv.next128.1220, %bb.w ] ; 4 uses
  %.844 = phi i32 [ %.6.lcssa, %.lr.ph46.preheader.new ], [ %.9.1219, %bb.w ] ; 3 uses
  %niter215 = phi i64 [ 0, %.lr.ph46.preheader.new ], [ %niter215.next.1, %bb.w ]
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pd, i64 %indvars.iv127
  %i.qq = load i8, ptr %i.qp, align 2, !tbaa !30
  %i.qr = icmp eq i8 %i.qq, 0
  br i1 %i.qr, label %bb.u, label %.lr.ph46.1218

bb.u:                                             ; preds = %.lr.ph46
  %i.qs = sext i32 %.844 to i64
  %i.qt = getelementptr inbounds [3 x i8], ptr %1, i64 %i.qs
  %i.qu = getelementptr inbounds nuw [3 x i8], ptr %i.pe, i64 %indvars.iv127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qt, ptr noundef nonnull align 2 dereferenceable(3) %i.qu, i64 3, i1 false)
  %i.qv = add nsw i32 %.844, 1
  br label %.lr.ph46.1218

.lr.ph46.1218:                                    ; preds = %.lr.ph46, %bb.u
  %.9 = phi i32 [ %i.qv, %bb.u ], [ %.844, %.lr.ph46 ] ; 3 uses
  %indvars.iv.next128 = or disjoint i64 %indvars.iv127, 1 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pd, i64 %indvars.iv.next128
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !30
  %i.qy = icmp eq i8 %i.qx, 0
  br i1 %i.qy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph46.1218
  %i.qz = sext i32 %.9 to i64
  %i.ra = getelementptr inbounds [3 x i8], ptr %1, i64 %i.qz
  %i.rb = getelementptr inbounds nuw [3 x i8], ptr %i.pe, i64 %indvars.iv.next128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ra, ptr noundef nonnull align 1 dereferenceable(3) %i.rb, i64 3, i1 false)
  %i.rc = add nsw i32 %.9, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph46.1218
  %.9.1219 = phi i32 [ %i.rc, %bb.v ], [ %.9, %.lr.ph46.1218 ] ; 3 uses
  %indvars.iv.next128.1220 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %niter215.next.1 = add i64 %niter215, 2         ; 2 uses
  %niter215.ncmp.1 = icmp eq i64 %niter215.next.1, %unroll_iter214
  br i1 %niter215.ncmp.1, label %.preheader6.loopexit.unr-lcssa, label %.lr.ph46, !llvm.loop !197

.preheader5.loopexit.unr-lcssa:                   ; preds = %bb.aa
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %.preheader5, label %.lr.ph50.epil.preheader

.lr.ph50.epil.preheader:                          ; preds = %.preheader5.loopexit.unr-lcssa, %.lr.ph50.preheader
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph50.preheader ], [ %indvars.iv.next133.1231, %.preheader5.loopexit.unr-lcssa ] ; 2 uses
  %.1048.epil.init = phi i32 [ %.8.lcssa, %.lr.ph50.preheader ], [ %.11.1230, %.preheader5.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod224 = trunc i32 %i.ax to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pf, i64 %indvars.iv132.epil.init
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !30
  %i.rf = icmp eq i8 %i.re, 0
  br i1 %i.rf, label %bb.x, label %.preheader5

bb.x:                                             ; preds = %.lr.ph50.epil.preheader
  %i.rg = sext i32 %.1048.epil.init to i64
  %i.rh = getelementptr inbounds [3 x i8], ptr %1, i64 %i.rg
  %i.ri = getelementptr inbounds nuw [3 x i8], ptr %i.pg, i64 %indvars.iv132.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rh, ptr noundef nonnull align 1 dereferenceable(3) %i.ri, i64 3, i1 false)
  %i.rj = add nsw i32 %.1048.epil.init, 1
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.loopexit.unr-lcssa, %bb.x, %.lr.ph50.epil.preheader, %.preheader6
  %.10.lcssa = phi i32 [ %.8.lcssa, %.preheader6 ], [ %.11.1230, %.preheader5.loopexit.unr-lcssa ], [ %i.rj, %bb.x ], [ %.1048.epil.init, %.lr.ph50.epil.preheader ] ; 3 uses
  br i1 %.not12.i230, label %.preheader, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.preheader5
  %i.rk = sext i32 %.10.lcssa to i64
  %i.rl = mul nsw i64 %i.rk, 3
  %scevgep137 = getelementptr i8, ptr %1, i64 %i.rl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep137, ptr noundef nonnull align 16 dereferenceable(1) %i.ph, i64 %15, i1 false)
  %i.rm = add i32 %i.bh, %.10.lcssa
  br label %.preheader

.lr.ph50:                                         ; preds = %bb.aa, %.lr.ph50.preheader.new
  %indvars.iv132 = phi i64 [ 0, %.lr.ph50.preheader.new ], [ %indvars.iv.next133.1231, %bb.aa ] ; 4 uses
  %.1048 = phi i32 [ %.8.lcssa, %.lr.ph50.preheader.new ], [ %.11.1230, %bb.aa ] ; 3 uses
  %niter226 = phi i64 [ 0, %.lr.ph50.preheader.new ], [ %niter226.next.1, %bb.aa ]
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pf, i64 %indvars.iv132
  %i.ro = load i8, ptr %i.rn, align 2, !tbaa !30
  %i.rp = icmp eq i8 %i.ro, 0
  br i1 %i.rp, label %bb.y, label %.lr.ph50.1229

bb.y:                                             ; preds = %.lr.ph50
  %i.rq = sext i32 %.1048 to i64
  %i.rr = getelementptr inbounds [3 x i8], ptr %1, i64 %i.rq
  %i.rs = getelementptr inbounds nuw [3 x i8], ptr %i.pg, i64 %indvars.iv132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rr, ptr noundef nonnull align 2 dereferenceable(3) %i.rs, i64 3, i1 false)
  %i.rt = add nsw i32 %.1048, 1
  br label %.lr.ph50.1229

.lr.ph50.1229:                                    ; preds = %.lr.ph50, %bb.y
  %.11 = phi i32 [ %i.rt, %bb.y ], [ %.1048, %.lr.ph50 ] ; 3 uses
  %indvars.iv.next133 = or disjoint i64 %indvars.iv132, 1 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pf, i64 %indvars.iv.next133
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !30
  %i.rw = icmp eq i8 %i.rv, 0
  br i1 %i.rw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph50.1229
  %i.rx = sext i32 %.11 to i64
  %i.ry = getelementptr inbounds [3 x i8], ptr %1, i64 %i.rx
  %i.rz = getelementptr inbounds nuw [3 x i8], ptr %i.pg, i64 %indvars.iv.next133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ry, ptr noundef nonnull align 1 dereferenceable(3) %i.rz, i64 3, i1 false)
  %i.sa = add nsw i32 %.11, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph50.1229
  %.11.1230 = phi i32 [ %i.sa, %bb.z ], [ %.11, %.lr.ph50.1229 ] ; 3 uses
  %indvars.iv.next133.1231 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %niter226.next.1 = add i64 %niter226, 2         ; 2 uses
  %niter226.ncmp.1 = icmp eq i64 %niter226.next.1, %unroll_iter225
  br i1 %niter226.ncmp.1, label %.preheader5.loopexit.unr-lcssa, label %.lr.ph50, !llvm.loop !198

.preheader:                                       ; preds = %.lr.ph55.preheader, %.preheader5
  %.12.lcssa = phi i32 [ %.10.lcssa, %.preheader5 ], [ %i.rm, %.lr.ph55.preheader ] ; 3 uses
  br i1 %.not12.i236, label %.loopexit, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %.preheader
  %i.sb = sext i32 %.12.lcssa to i64
  %i.sc = mul nsw i64 %i.sb, 3
  %scevgep147 = getelementptr i8, ptr %1, i64 %i.sc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep147, ptr noundef nonnull align 16 dereferenceable(1) %i.pi, i64 %18, i1 false)
  %i.sd = add i32 %i.cb, %.12.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph59.preheader, %.preheader
  %.14 = phi i32 [ %i.sd, %.lr.ph59.preheader ], [ %.12.lcssa, %.preheader ] ; 3 uses
  br i1 %.not12.i, label %.preheader7.1, label %.lr.ph42.1.preheader

.lr.ph42.1.preheader:                             ; preds = %.loopexit
  %xtraiter232 = and i64 %i.ff, 1
  %i.se = icmp eq i32 %i.ad, 1
  br i1 %i.se, label %.lr.ph42.1.epil.preheader, label %.lr.ph42.1.preheader.new

.lr.ph42.1.preheader.new:                         ; preds = %.lr.ph42.1.preheader
  %unroll_iter236 = and i64 %i.ff, 14
  br label %.lr.ph42.1

.lr.ph42.1:                                       ; preds = %bb.ad, %.lr.ph42.1.preheader.new
  %indvars.iv122.1 = phi i64 [ 0, %.lr.ph42.1.preheader.new ], [ %indvars.iv.next123.1.1, %bb.ad ] ; 4 uses
  %.640.1 = phi i32 [ %.14, %.lr.ph42.1.preheader.new ], [ %.7.1.1, %bb.ad ] ; 3 uses
  %niter237 = phi i64 [ 0, %.lr.ph42.1.preheader.new ], [ %niter237.next.1, %bb.ad ]
  %i.sf = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv122.1
  %i.sg = load i8, ptr %i.sf, align 2, !tbaa !30
  %i.sh = icmp eq i8 %i.sg, 1
  br i1 %i.sh, label %bb.ab, label %.lr.ph42.1.1

bb.ab:                                            ; preds = %.lr.ph42.1
  %i.si = sext i32 %.640.1 to i64
  %i.sj = getelementptr inbounds [3 x i8], ptr %1, i64 %i.si
  %i.sk = getelementptr inbounds nuw [3 x i8], ptr %i.pc, i64 %indvars.iv122.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sj, ptr noundef nonnull align 2 dereferenceable(3) %i.sk, i64 3, i1 false)
  %i.sl = add nsw i32 %.640.1, 1
  br label %.lr.ph42.1.1

.lr.ph42.1.1:                                     ; preds = %bb.ab, %.lr.ph42.1
  %.7.1 = phi i32 [ %i.sl, %bb.ab ], [ %.640.1, %.lr.ph42.1 ] ; 3 uses
  %indvars.iv.next123.1 = or disjoint i64 %indvars.iv122.1, 1 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv.next123.1
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !30
  %i.so = icmp eq i8 %i.sn, 1
  br i1 %i.so, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph42.1.1
  %i.sp = sext i32 %.7.1 to i64
  %i.sq = getelementptr inbounds [3 x i8], ptr %1, i64 %i.sp
  %i.sr = getelementptr inbounds nuw [3 x i8], ptr %i.pc, i64 %indvars.iv.next123.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sq, ptr noundef nonnull align 1 dereferenceable(3) %i.sr, i64 3, i1 false)
  %i.ss = add nsw i32 %.7.1, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph42.1.1
  %.7.1.1 = phi i32 [ %i.ss, %bb.ac ], [ %.7.1, %.lr.ph42.1.1 ] ; 3 uses
  %indvars.iv.next123.1.1 = add nuw nsw i64 %indvars.iv122.1, 2 ; 2 uses
  %niter237.next.1 = add i64 %niter237, 2         ; 2 uses
  %niter237.ncmp.1 = icmp eq i64 %niter237.next.1, %unroll_iter236
  br i1 %niter237.ncmp.1, label %.preheader7.1.loopexit.unr-lcssa, label %.lr.ph42.1, !llvm.loop !196

.preheader7.1.loopexit.unr-lcssa:                 ; preds = %bb.ad
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.preheader7.1, label %.lr.ph42.1.epil.preheader

.lr.ph42.1.epil.preheader:                        ; preds = %.preheader7.1.loopexit.unr-lcssa, %.lr.ph42.1.preheader
  %indvars.iv122.1.epil.init = phi i64 [ 0, %.lr.ph42.1.preheader ], [ %indvars.iv.next123.1.1, %.preheader7.1.loopexit.unr-lcssa ] ; 2 uses
  %.640.1.epil.init = phi i32 [ %.14, %.lr.ph42.1.preheader ], [ %.7.1.1, %.preheader7.1.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod235 = trunc i32 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod235)
  %i.st = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv122.1.epil.init
  %i.su = load i8, ptr %i.st, align 1, !tbaa !30
  %i.sv = icmp eq i8 %i.su, 1
  br i1 %i.sv, label %bb.ae, label %.preheader7.1

bb.ae:                                            ; preds = %.lr.ph42.1.epil.preheader
  %i.sw = sext i32 %.640.1.epil.init to i64
  %i.sx = getelementptr inbounds [3 x i8], ptr %1, i64 %i.sw
  %i.sy = getelementptr inbounds nuw [3 x i8], ptr %i.pc, i64 %indvars.iv122.1.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sx, ptr noundef nonnull align 1 dereferenceable(3) %i.sy, i64 3, i1 false)
  %i.sz = add nsw i32 %.640.1.epil.init, 1
  br label %.preheader7.1

.preheader7.1:                                    ; preds = %.preheader7.1.loopexit.unr-lcssa, %bb.ae, %.lr.ph42.1.epil.preheader, %.loopexit
  %.6.lcssa.1 = phi i32 [ %.14, %.loopexit ], [ %.7.1.1, %.preheader7.1.loopexit.unr-lcssa ], [ %i.sz, %bb.ae ], [ %.640.1.epil.init, %.lr.ph42.1.epil.preheader ] ; 3 uses
  br i1 %.not12.i216, label %.preheader6.1, label %.lr.ph46.preheader.1

.lr.ph46.preheader.1:                             ; preds = %.preheader7.1
  %wide.trip.count130.1 = zext nneg i32 %i.an to i64 ; 2 uses
  %xtraiter238 = and i64 %wide.trip.count130.1, 1
  %i.ta = icmp eq i32 %i.an, 1
  br i1 %i.ta, label %.lr.ph46.1.epil.preheader, label %.lr.ph46.preheader.1.new

.lr.ph46.preheader.1.new:                         ; preds = %.lr.ph46.preheader.1
  %unroll_iter242 = and i64 %wide.trip.count130.1, 14
  br label %.lr.ph46.1

.lr.ph46.1:                                       ; preds = %bb.ah, %.lr.ph46.preheader.1.new
  %indvars.iv127.1 = phi i64 [ 0, %.lr.ph46.preheader.1.new ], [ %indvars.iv.next128.1.1, %bb.ah ] ; 4 uses
  %.844.1 = phi i32 [ %.6.lcssa.1, %.lr.ph46.preheader.1.new ], [ %.9.1.1, %bb.ah ] ; 3 uses
  %niter243 = phi i64 [ 0, %.lr.ph46.preheader.1.new ], [ %niter243.next.1, %bb.ah ]
  %i.tb = getelementptr inbounds nuw i8, ptr %i.pd, i64 %indvars.iv127.1
  %i.tc = load i8, ptr %i.tb, align 2, !tbaa !30
  %i.td = icmp eq i8 %i.tc, 1
  br i1 %i.td, label %bb.af, label %.lr.ph46.1.1

bb.af:                                            ; preds = %.lr.ph46.1
  %i.te = sext i32 %.844.1 to i64
  %i.tf = getelementptr inbounds [3 x i8], ptr %1, i64 %i.te
  %i.tg = getelementptr inbounds nuw [3 x i8], ptr %i.pe, i64 %indvars.iv127.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tf, ptr noundef nonnull align 2 dereferenceable(3) %i.tg, i64 3, i1 false)
  %i.th = add nsw i32 %.844.1, 1
  br label %.lr.ph46.1.1

.lr.ph46.1.1:                                     ; preds = %bb.af, %.lr.ph46.1
  %.9.1 = phi i32 [ %i.th, %bb.af ], [ %.844.1, %.lr.ph46.1 ] ; 3 uses
  %indvars.iv.next128.1 = or disjoint i64 %indvars.iv127.1, 1 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pd, i64 %indvars.iv.next128.1
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !30
  %i.tk = icmp eq i8 %i.tj, 1
  br i1 %i.tk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph46.1.1
  %i.tl = sext i32 %.9.1 to i64
  %i.tm = getelementptr inbounds [3 x i8], ptr %1, i64 %i.tl
  %i.tn = getelementptr inbounds nuw [3 x i8], ptr %i.pe, i64 %indvars.iv.next128.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tm, ptr noundef nonnull align 1 dereferenceable(3) %i.tn, i64 3, i1 false)
  %i.to = add nsw i32 %.9.1, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph46.1.1
  %.9.1.1 = phi i32 [ %i.to, %bb.ag ], [ %.9.1, %.lr.ph46.1.1 ] ; 3 uses
  %indvars.iv.next128.1.1 = add nuw nsw i64 %indvars.iv127.1, 2 ; 2 uses
  %niter243.next.1 = add i64 %niter243, 2         ; 2 uses
  %niter243.ncmp.1 = icmp eq i64 %niter243.next.1, %unroll_iter242
  br i1 %niter243.ncmp.1, label %.preheader6.1.loopexit.unr-lcssa, label %.lr.ph46.1, !llvm.loop !197

.preheader6.1.loopexit.unr-lcssa:                 ; preds = %bb.ah
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %.preheader6.1, label %.lr.ph46.1.epil.preheader

.lr.ph46.1.epil.preheader:                        ; preds = %.preheader6.1.loopexit.unr-lcssa, %.lr.ph46.preheader.1
  %indvars.iv127.1.epil.init = phi i64 [ 0, %.lr.ph46.preheader.1 ], [ %indvars.iv.next128.1.1, %.preheader6.1.loopexit.unr-lcssa ] ; 2 uses
  %.844.1.epil.init = phi i32 [ %.6.lcssa.1, %.lr.ph46.preheader.1 ], [ %.9.1.1, %.preheader6.1.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod241 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod241)
  %i.tp = getelementptr inbounds nuw i8, ptr %i.pd, i64 %indvars.iv127.1.epil.init
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !30
  %i.tr = icmp eq i8 %i.tq, 1
  br i1 %i.tr, label %bb.ai, label %.preheader6.1

bb.ai:                                            ; preds = %.lr.ph46.1.epil.preheader
  %i.ts = sext i32 %.844.1.epil.init to i64
  %i.tt = getelementptr inbounds [3 x i8], ptr %1, i64 %i.ts
  %i.tu = getelementptr inbounds nuw [3 x i8], ptr %i.pe, i64 %indvars.iv127.1.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tt, ptr noundef nonnull align 1 dereferenceable(3) %i.tu, i64 3, i1 false)
  %i.tv = add nsw i32 %.844.1.epil.init, 1
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6.1.loopexit.unr-lcssa, %bb.ai, %.lr.ph46.1.epil.preheader, %.preheader7.1
  %.8.lcssa.1 = phi i32 [ %.6.lcssa.1, %.preheader7.1 ], [ %.9.1.1, %.preheader6.1.loopexit.unr-lcssa ], [ %i.tv, %bb.ai ], [ %.844.1.epil.init, %.lr.ph46.1.epil.preheader ] ; 3 uses
  br i1 %.not12.i223, label %.loopexit.1, label %.lr.ph50.preheader.1

.lr.ph50.preheader.1:                             ; preds = %.preheader6.1
  %wide.trip.count135.1 = zext nneg i32 %i.ax to i64 ; 2 uses
  %xtraiter244 = and i64 %wide.trip.count135.1, 1
  %i.tw = icmp eq i32 %i.ax, 1
  br i1 %i.tw, label %.lr.ph50.1.epil.preheader, label %.lr.ph50.preheader.1.new

.lr.ph50.preheader.1.new:                         ; preds = %.lr.ph50.preheader.1
  %unroll_iter248 = and i64 %wide.trip.count135.1, 14
  br label %.lr.ph50.1

.lr.ph50.1:                                       ; preds = %bb.al, %.lr.ph50.preheader.1.new
  %indvars.iv132.1 = phi i64 [ 0, %.lr.ph50.preheader.1.new ], [ %indvars.iv.next133.1.1, %bb.al ] ; 4 uses
  %.1048.1 = phi i32 [ %.8.lcssa.1, %.lr.ph50.preheader.1.new ], [ %.11.1.1, %bb.al ] ; 3 uses
  %niter249 = phi i64 [ 0, %.lr.ph50.preheader.1.new ], [ %niter249.next.1, %bb.al ]
  %i.tx = getelementptr inbounds nuw i8, ptr %i.pf, i64 %indvars.iv132.1
  %i.ty = load i8, ptr %i.tx, align 2, !tbaa !30
  %i.tz = icmp eq i8 %i.ty, 1
  br i1 %i.tz, label %bb.aj, label %.lr.ph50.1.1

bb.aj:                                            ; preds = %.lr.ph50.1
  %i.ua = sext i32 %.1048.1 to i64
  %i.ub = getelementptr inbounds [3 x i8], ptr %1, i64 %i.ua
  %i.uc = getelementptr inbounds nuw [3 x i8], ptr %i.pg, i64 %indvars.iv132.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ub, ptr noundef nonnull align 2 dereferenceable(3) %i.uc, i64 3, i1 false)
  %i.ud = add nsw i32 %.1048.1, 1
  br label %.lr.ph50.1.1

.lr.ph50.1.1:                                     ; preds = %bb.aj, %.lr.ph50.1
  %.11.1 = phi i32 [ %i.ud, %bb.aj ], [ %.1048.1, %.lr.ph50.1 ] ; 3 uses
  %indvars.iv.next133.1 = or disjoint i64 %indvars.iv132.1, 1 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.pf, i64 %indvars.iv.next133.1
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !30
  %i.ug = icmp eq i8 %i.uf, 1
  br i1 %i.ug, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph50.1.1
  %i.uh = sext i32 %.11.1 to i64
  %i.ui = getelementptr inbounds [3 x i8], ptr %1, i64 %i.uh
  %i.uj = getelementptr inbounds nuw [3 x i8], ptr %i.pg, i64 %indvars.iv.next133.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ui, ptr noundef nonnull align 1 dereferenceable(3) %i.uj, i64 3, i1 false)
  %i.uk = add nsw i32 %.11.1, 1
  br label %bb.al
end_hunk_1
